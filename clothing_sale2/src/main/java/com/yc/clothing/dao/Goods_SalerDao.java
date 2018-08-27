package com.yc.clothing.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.yc.clothing.bean.Goods_Saler;

@Repository
public interface Goods_SalerDao {
	//按销售量排序（根据商品分组）
	public List<Goods_Saler> OrderByCount();
}
