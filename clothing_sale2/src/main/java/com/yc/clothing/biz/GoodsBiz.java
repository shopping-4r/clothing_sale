package com.yc.clothing.biz;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.clothing.bean.Goods;
import com.yc.clothing.bean.Goods_Saler;
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
}
