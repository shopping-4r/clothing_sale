package com.yc.clothing.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.yc.clothing.bean.Goods;
import com.yc.clothing.bean.Page;

@Repository
public interface GoodsDao {
	//按上架时间排序
	List<Goods> OrderByTime();
	/**
	 * 根据商品id查询商品信息
	 * @param goods 商品对象
	 * @return 返回存有商品信息的商品对象
	 */
	public Goods selectGoodInfoById(Goods goods);
	//根据gid查询size_color表中的一类商品
	public List<Map<String,Object>> selectGoodInfoByName(Integer gid);
	//根据颜色和尺寸查询一个商品
	public Map<String,Object> selectCountByColorAndSize(String color, String size, String name);
	//根据所有条件查询商品
	//List<Map<String,Object>> selectBySidAndCondition(int sid,SelectCondition scd,@Param("minPrice")int minPrice,@Param("maxPrice")int maxPrice);
	//查询所有商品
	List<Map<String,Object>> selectAll();
	//根据sid查询所有商品的数量
	List<Map<String,Object>> selectBySid();
	//根据sid查询所有商品的数量
	int countAll();
	//根据所有条件和按名字顺序查询
	List<Map<String,Object>> OrderByName();
	//根据sid且按名字降序查询
	List<Map<String,Object>> OrderByNameDesc();
	//根据sid和按价格顺序查询
	List<Map<String,Object>> OrderByPrice();
	//根据sid和按价格降序查询
	List<Map<String,Object>> OrderByPriceDesc();
	//按模糊查询商品
	List<Goods> fuzzySearchGoods(String name);
}
