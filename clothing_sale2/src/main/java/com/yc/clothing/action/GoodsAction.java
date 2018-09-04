package com.yc.clothing.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;

import com.yc.clothing.bean.Goods;
import com.yc.clothing.bean.Page;
import com.yc.clothing.bean.Saler;
import com.yc.clothing.bean.User;
import com.yc.clothing.biz.BoardBiz;
import com.yc.clothing.biz.GoodsBiz;
import com.yc.clothing.biz.OrdersBiz;
import com.yc.clothing.biz.SalerBiz;

@Controller
public class GoodsAction {
	@Resource
	private GoodsBiz gbiz;
	@Resource
	private BoardBiz bbiz;
	@Resource
	private OrdersBiz obiz;
	@Resource
	private SalerBiz sbiz;
	/**
	 * 关键字查询商品
	 * @throws IOException 
	 * 
	 *
	 */
	@RequestMapping("/search.do")
	public void ajaxFindGoods(HttpServletResponse res,String name) throws IOException {
		System.out.println(name);
		List<Goods> goods=gbiz.fuzzySearchGoods(name);
		Gson g=new Gson();
		String Json=g.toJson(goods);
		res.getWriter().print(Json);
	}
	/**
	 * 查询该商铺所有的商品
	 * @return
	 */
	@RequestMapping("showAllGoods.do")
	public String findGoods(HttpSession session,Model model) {
		User user=(User) session.getAttribute("user");
		Saler saler=sbiz.findSaler(user.getUid());
		Page<Map<String,Object>> goods=gbiz.findAllGoods();
		List<Map<String,Object>> goods2=(List<Map<String, Object>>) goods.getRows().subList(0, 6);
		List<Map<String,Object>> goods3=(List<Map<String, Object>>) goods.getRows().subList(0, 2);
		model.addAttribute("total",goods.getTotal());
		model.addAttribute("goods",goods2);
		model.addAttribute("goods2",goods3);
		return "shop";
	}
	/**
	 * ajax查询该商铺所有的商品
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("showGoods.do")
	public void ajaxFindGoods(HttpServletResponse res,HttpSession session,
			Model model,Integer type,Integer page,Integer size) throws IOException {
		User user=(User) session.getAttribute("user");
		Saler saler=sbiz.findSaler(user.getUid());
		page=page==null?0:page;
		size=size==null?6:size;
		int min=(page-1)*size;
		int max=min+size;
		Page<Map<String,Object>> goods=null;
		if(type==1) {
			goods=gbiz.findAllGoods();
		}
		else {
			goods=gbiz.findByType(type);
		}
		if(max>goods.getTotal()) {
			max=(int) goods.getTotal();
		}
		List<Map<String,Object>> goods2=(List<Map<String, Object>>) goods.getRows().subList(min, max);
		Gson gson=new Gson();
		Map<String,Object> data=new HashMap<String, Object>();
		data.put("goods", goods2);
		data.put("total", goods.getTotal());
		data.put("page",page );
		String json=gson.toJson(data);
		res.getWriter().println(json);
	}
	/**
	 * ajax查询该商铺所有的商品
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("showGoods2.do")
	public void ajaxFindGoods2(HttpServletResponse res,HttpSession session,
			Model model,Integer type,Integer page,Integer size) throws IOException {
		User user=(User) session.getAttribute("user");
		Saler saler=sbiz.findSaler(user.getUid());
		page=page==null?0:page;
		size=size==null?2:size;
		int min=(page-1)*size;
		int max=min+size;
		Page<Map<String,Object>> goods=null;
		if(type==1) {
			goods=gbiz.findAllGoods();
		}
		else {
			goods=gbiz.findByType(type);
		}
		if(max>goods.getTotal()) {
			max=(int) goods.getTotal();
		}
		List<Map<String,Object>> goods2=(List<Map<String, Object>>) goods.getRows().subList(min, max);
		Gson gson=new Gson();
		Map<String,Object> data=new HashMap<String, Object>();
		data.put("goods2", goods2);
		data.put("total", goods.getTotal());
		data.put("page",page );
		String json=gson.toJson(data);
		res.getWriter().println(json);
	}
	/**
	 * 查询该商铺所有的商品
	 * @return
	 */
	@RequestMapping("showGoodsByType.do")
	public String findGoodsByType(HttpSession session,Model model,Integer type,Integer page,Integer size) {
		User user=(User) session.getAttribute("user");
		Saler saler=sbiz.findSaler(user.getUid());
		if(page==null){
			page=1;
		}
		if(size==null){
			size=6;
		}
		int min=(page-1)*size;
		int max=min+size;
		Page<Map<String,Object>> goods=null;
			goods=gbiz.findAllGoods();
		if(max>goods.getTotal()) {
			max=(int) goods.getTotal();
		}
		List<Map<String,Object>> goods2=(List<Map<String, Object>>) goods.getRows().subList(min, max);
		model.addAttribute("total",goods.getTotal());
		model.addAttribute("goods",goods2);
		return "shop";
	}
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
		 Page<Map<String, Object>> pages=new Page<Map<String, Object>>( total,rows);
		model.addAttribute("page",pages);
		//查询商品详细信息
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
		// 将图片路径按、分割
		String[] images = goods.getImage().split("、");
		//相关商品
		List<Goods> lstGoods=gbiz.selectLikeGoods(goods);
		model.addAttribute("lstGoods", lstGoods);
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
