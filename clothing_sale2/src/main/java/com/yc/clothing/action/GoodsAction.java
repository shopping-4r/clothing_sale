package com.yc.clothing.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;

import com.yc.clothing.bean.Goods;
import com.yc.clothing.biz.BoardBiz;
import com.yc.clothing.biz.GoodsBiz;
import com.yc.clothing.biz.OrdersBiz;
import com.yc.clothing.util.Page;

@Controller
public class GoodsAction {
	@Resource
	private GoodsBiz gbiz;
	@Resource
	private BoardBiz bbiz;
	@Resource
	private OrdersBiz obiz;

	/**
	 * 分别 按照上架时间、销售量、评论数量查询商品的方法
	 * 
	 * @param type
	 *            从页面传来的排序条件
	 * @param model
	 *            返回值对象
	 * @return
	 */
	@RequestMapping("/showGoodsByAmong.do")
	public String showNewGoods(Model model) {

		// 所有商品的上架时间按排序
		List<Goods> newgoods = new ArrayList<Goods>();
		List<Goods> salesgoods = new ArrayList<Goods>();
		List<Goods> commentgoods = new ArrayList<Goods>();
		// 只取前5个商品(如果没有5个商品则全部展示)
		// 新品
		List<Goods> allNewGoods = gbiz.OrderByTime();
		if (allNewGoods.size() > 5) {
			for (int i = 0; i < 5; i++) {
				newgoods.add(allNewGoods.get(i));
			}
			model.addAttribute("newGoods", newgoods);
		} else {
			model.addAttribute("newGoods", allNewGoods);
		}
		// 热销
		List<Goods> allSalesGoods = gbiz.OrderBySale();
		if (allSalesGoods.size() > 5) {
			for (int i = 0; i < 5; i++) {
				salesgoods.add(allSalesGoods.get(i));
			}
			model.addAttribute("salesGoods", salesgoods);
			model.addAttribute("commentGoods", salesgoods);
			
		} else {
			model.addAttribute("salesGoods", allSalesGoods);
			model.addAttribute("commentGoods", allSalesGoods);
		}
		// 热评
		/*List<Goods> allCommentGoods = gbiz.OrderByComment();
		if (allCommentGoods.size() > 5) {
			for (int i = 0; i < 5; i++) {
				commentgoods.add(allCommentGoods.get(i));
			}
			model.addAttribute("commentGoods", commentgoods);
		} else {
			model.addAttribute("commentGoods", allCommentGoods);
		}*/
		return "index";
	}

	/**
	 * 
	 * @param goods
	 *            页面传入的商品对象
	 * @param model
	 *            用来设置参数
	 * @return 产品详情页
	 */
	//修改================
	@RequestMapping("/single-product.do")
	public String goodsInfo(Goods goods, Model model, Integer page, Integer size) {
		//分页查询  返回结果集和最大记录数
		List<Map<String, Object>> rows = obiz.queryForPage(goods.getId(), page, size);
		Long total =obiz.countSumSize(goods.getId()).longValue();
		 Page<Map<String, Object>> pages=new Page<Map<String, Object>>( rows,total);
		model.addAttribute("page",pages);
		 // 将图片路径按、分割
		goods = gbiz.selectGoodInfoById(goods);
		model.addAttribute("goods", goods);
		List<Map<String,Object>> ColorAndSize = gbiz.selectGoodInfoByName(goods.getId());
		List<String> lstColor = new ArrayList<String>();
		List<String> lstSize = new ArrayList<String>();
		for (Map<String,Object> g : ColorAndSize) {
			
			String tempColor;
			String tempSize;
			tempSize = (String) g.get("size");
			tempColor = (String) g.get("color");
			if (!lstColor.contains(tempColor)) {
				lstColor.add(tempColor);
			}
			if (!lstSize.contains(tempSize)) {
				lstSize.add(tempSize);
			}
		}
		String[] images = goods.getImage().split("、");
		model.addAttribute("lstSize", lstSize);
		model.addAttribute("lstColor", lstColor);
		model.addAttribute("lstimages", images);
		return "single-product";
	}

	@RequestMapping("/ajax1.do")
	public void Ajax1(String color, String size, String name, PrintWriter out) {
		Map<String,Object> goods = gbiz.selectCountByColorAndSize(color, size, name);
		 Gson gson=new Gson();
		 String goods1=gson.toJson(goods);
		 out.print(goods1);
		/*String price;
		String rebate;
		String feature;
		String describe;
		String image;
		String count;
		String id;
		String time;
		if (goods.get("id") != null) {
			count = (String) goods.get("stock");
			price = (String) goods.get("price");
			rebate = (String) goods.get("rebate");
			feature = (String) goods.get("feature");
			describe = (String) goods.get("describe");
			image = (String) goods.get("image");
			id = (String) goods.get("id");
			time = (String) goods.get("time");
			out.print(count + "|~|" + price + "|~|" + rebate + "|~|" + feature + "|~|" + describe + "|~|" + image
					+ "|~|" + time + "|~|" + id);

		} else {
			out.print(0 + "|~|" + 0 + "|~|" + 0 + "|~|" + 0 + "|~|" + 0 + "|~|" + 0 + "|~|" + 0 + "|~|" + 0);

		}*/
	}
	@RequestMapping("/single-product1.do")
	public void goodsInfo(Goods goods,PrintWriter out) {
	
		 // 将图片路径按、分割
		goods = gbiz.selectGoodInfoById(goods);
		List<Map<String,Object>> ColorAndSize = gbiz.selectGoodInfoByName(goods.getId());
		List<String> lstColor = new ArrayList<String>();
		List<String> lstSize = new ArrayList<String>();
		for (Map<String,Object> g : ColorAndSize) {
			
			String tempColor;
			String tempSize;
			tempSize = (String) g.get("size");
			tempColor = (String) g.get("color");
			if (!lstColor.contains(tempColor)) {
				lstColor.add(tempColor);
			}
			if (!lstSize.contains(tempSize)) {
				lstSize.add(tempSize);
			}
		}
		String[] images = goods.getImage().split("、");
		List<Object> list=new ArrayList<Object>();
		list.add(goods);
		list.add(lstColor);
		list.add(lstSize);
		list.add(images);
		Gson gson=new Gson();
		String json=gson.toJson(list);
		
		out.print(json);
	
	}
}
