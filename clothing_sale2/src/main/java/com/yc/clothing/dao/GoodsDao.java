package com.yc.clothing.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yc.clothing.bean.Goods;

@Repository
public interface GoodsDao {
	//按上架时间排序
	List<Goods> OrderByTime();
	/**
	 * 根据商品id查询商品信息
	 * @param goods 商品对象
	 * @return 返回存有商品信息的商品对象
	 */
	@Select(value = { "SELECT * FROM CS_GOODS WHERE id=#{id}" })
	public Goods selectGoodInfoById(Goods goods);
	/**
	 * 根据商品name查询商品信息
	 * @param goods  商品对象
	 * @return  返回存有商品信息的商品对象集合
	 */
	//修改================
	@Select(value={"SELECT * FROM size_color WHERE gid=#{arg0}"})
	public List<Map<String,Object>> selectGoodInfoByName(Integer gid);
	//修改================
	@Select(value = { "SELECT b.stock,a.price, a.rebate ,a.feature ,a.describe , a.image, a.time , b.id FROM cs_goods a JOIN size_color b ON a.id=b.gid WHERE b.color=#{arg0} AND b.size=#{arg1} AND a.name=#{arg2}" })
	public Map<String,Object> selectCountByColorAndSize(String color, String size, String name);
}
