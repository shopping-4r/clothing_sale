package com.yc.clothing.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;


@Repository
public interface Goods_OrdersDao {
	//根据订单id查询所有详情
	public List<Map<String,Object>> selectAllById(int id);
}
