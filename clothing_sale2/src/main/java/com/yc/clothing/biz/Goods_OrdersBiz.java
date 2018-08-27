package com.yc.clothing.biz;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.clothing.dao.Goods_OrdersDao;

@Service
public class Goods_OrdersBiz {
	@Autowired
	private Goods_OrdersDao godao;
	public List<Map<String,Object>> findAllById(int id){
		return godao.selectAllById(id);
	}
}
