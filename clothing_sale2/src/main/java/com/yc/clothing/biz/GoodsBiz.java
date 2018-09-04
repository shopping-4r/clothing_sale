package com.yc.clothing.biz;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.clothing.bean.Goods;
import com.yc.clothing.bean.Goods_Saler;
import com.yc.clothing.bean.Page;
import com.yc.clothing.dao.GoodsDao;
import com.yc.clothing.dao.Goods_SalerDao;

/**
 *	 商品业务
 * @author lei
 *
 */
@Service
public class GoodsBiz {
	@Autowired
	private GoodsDao gdao;
	@Autowired
	private Goods_SalerDao gsdao;
	/**
	 * 模糊查询商品(根据商品名字和颜色)
	 * @param name
	 * @return
	 */
	public List<Goods> fuzzySearchGoods(String name) {
		return gdao.fuzzySearchGoods(name);
	}
	/**
	 *	 得到商品根据时间排序的所有商品
	 * @return
	 */
	public List<Goods> OrderByTime(){
		return gdao.OrderByTime();
	}
	/**
	 *	 得到商品根据销售量排序的所有商品
	 * @return
	 */
	public List<Goods> OrderBySale(){
		List<Goods_Saler> goods_Salers=gsdao.OrderByCount();
		List<Goods> goods=new ArrayList<Goods>();
		for(Goods_Saler goods_Saler:goods_Salers) {
			goods.add(goods_Saler.getGoods());
		}
		return goods;
	}
	/**
	 * 根据商品id查询商品信息
	 * @param goods 商品对象
	 * @return 返回存有商品信息的商品对象
	 */
	public Goods selectGoodInfoById(Goods goods){
		return gdao.selectGoodInfoById(goods);
	}
	/**
	 * 根据商品name查询商品信息
	 * @param goods  商品对象
	 * @return  返回存有商品信息的商品对象集合
	 */
	//修改================
	public List<Map<String,Object>> selectGoodInfoByName(Integer gid){
		return gdao.selectGoodInfoByName(gid);
	}
	//修改================
	public Map<String,Object> selectCountByColorAndSize(String tempColor, String tempSize, String tempName) {
		return gdao.selectCountByColorAndSize(tempColor,tempSize,tempName);
		
	}
	//根据商铺id查询所有商品
	public Page<Map<String,Object>> findAllGoods(String priceRange,String name) {
		String arr[]=priceRange.split(" - ");
		int minPrice=Integer.parseInt( arr[0].replace("$", ""));
		int maxPrice=Integer.parseInt( arr[1].replace("$", "") );
		List<Map<String,Object>> rows=null;
		if(name==null||"".equals(name)) {
			rows=gdao.selectAll(minPrice,maxPrice);
		}else {
			rows=gdao.selectAllByFuzzy(minPrice,maxPrice,name);
		}
		long total=rows.size();
		return new Page<Map<String,Object>>(total,rows);
	}
	//按照不同条件查询商品
	public Page<Map<String, Object>> findByType(int type,int boardid,String priceRange,String name) {
		List<Map<String,Object>> goods=null;
		String arr[]=priceRange.split(" - ");
		int minPrice=Integer.parseInt( arr[0].replace("$", "") );
		int maxPrice=Integer.parseInt( arr[1].replace("$", "") );
		if(type==2) {
			if(name==null||"".equals(name)) {
				if(boardid==-1) {
					goods=gdao.AllGoodsOrderByName(minPrice,maxPrice);
				}else if(boardid<=3) {
					goods=gdao.findGoodsByParentidOrderByName(boardid,minPrice,maxPrice);
				}else {
					goods=gdao.findGoodsByBoardidOrderByName(boardid,minPrice,maxPrice);
				}
			}else {
				if(boardid==-1) {
					goods=gdao.AllGoodsOrderByNameFuzzy(minPrice,maxPrice,name);
				}else if(boardid<=3) {
					goods=gdao.findGoodsByParentidOrderByNameFuzzy(boardid,minPrice,maxPrice,name);
				}else {
					goods=gdao.findGoodsByBoardidOrderByNameFuzzy(boardid,minPrice,maxPrice,name);
				}
			}
		}else if(type==3) {
			if(name==null||"".equals(name)) {
				if(boardid==-1) {
					goods=gdao.AllGoodsOrderByNameDesc(minPrice,maxPrice);
				}else if(boardid<=3) {
					goods=gdao.findGoodsByParentidOrderByNameDesc(boardid,minPrice,maxPrice);
				}else {
					goods=gdao.findGoodsByBoardidOrderByNameDesc(boardid,minPrice,maxPrice);
				}
			}else {
				if(boardid==-1) {
					goods=gdao.AllGoodsOrderByNameDescFuzzy(minPrice,maxPrice,name);
				}else if(boardid<=3) {
					goods=gdao.findGoodsByParentidOrderByNameDescFuzzy(boardid,minPrice,maxPrice,name);
				}else {
					goods=gdao.findGoodsByBoardidOrderByNameDescFuzzy(boardid,minPrice,maxPrice,name);
				}
			}
		}else if(type==4) {
			if(name==null||"".equals(name)) {
				if(boardid==-1) {
					goods=gdao.AllGoodsOrderByPrice(minPrice,maxPrice);
				}else if(boardid<=3) {
					goods=gdao.findGoodsByParentidOrderByPrice(boardid,minPrice,maxPrice);
				}else {
					goods=gdao.findGoodsByBoardidOrderByPrice(boardid,minPrice,maxPrice);
				}
			}else {
				if(boardid==-1) {
					goods=gdao.AllGoodsOrderByPriceFuzzy(minPrice,maxPrice,name);
				}else if(boardid<=3) {
					goods=gdao.findGoodsByParentidOrderByPriceFuzzy(boardid,minPrice,maxPrice,name);
				}else {
					goods=gdao.findGoodsByBoardidOrderByPriceFuzzy(boardid,minPrice,maxPrice,name);
				}
			}
		}else if(type==5) {
			if(name==null||"".equals(name)) {
				if(boardid==-1) {
					goods=gdao.AllGoodsOrderByPriceDesc(minPrice,maxPrice);
				}else if(boardid<=3) {
					goods=gdao.findGoodsByParentidOrderByPriceDesc(boardid,minPrice,maxPrice);
				}else {
					goods=gdao.findGoodsByBoardidOrderByPriceDesc(boardid,minPrice,maxPrice);
				}
			}else {
				if(boardid==-1) {
					goods=gdao.AllGoodsOrderByPriceDescFuzzy(minPrice,maxPrice,name);
				}else if(boardid<=3) {
					goods=gdao.findGoodsByParentidOrderByPriceDescFuzzy(boardid,minPrice,maxPrice,name);
				}else {
					goods=gdao.findGoodsByBoardidOrderByPriceDescFuzzy(boardid,minPrice,maxPrice,name);
				}
			}
		}else {
			if(name==null||"".equals(name)) {
				if(boardid==-1) {
					goods=gdao.selectAll(minPrice,maxPrice);
				}else if(boardid<=3) {
					goods=gdao.AllGoodsByParentid(boardid,minPrice,maxPrice);
				}else {
					goods=gdao.AllGoodsByBoardid(boardid,minPrice,maxPrice);
				}
			}else {
				if(boardid==-1) {
					goods=gdao.selectAllByFuzzy(minPrice,maxPrice,name);
				}else if(boardid<=3) {
					goods=gdao.AllGoodsByParentidFuzzy(boardid,minPrice,maxPrice,name);
				}else {
					goods=gdao.AllGoodsByBoardidFuzzy(boardid,minPrice,maxPrice,name);
				}
			}
		}
		long total=goods.size();
		return new Page<Map<String, Object>>(total,goods);
	}
	/**
	 * 查询与该商品相关的商品
	 * @return
	 */
	public List<Goods> selectLikeGoods(Goods goods){
		return gdao.selectLikeGoods(goods);
	}
}
