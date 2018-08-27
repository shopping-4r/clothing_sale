package com.yc.clothing.bean;

import java.util.List;

public class Board {
	private Integer id;
	private Integer parentid;        //该类型的父类型
	private String name;
	private List<Goods> goods;      //该类型下的所有商品
	
	
	public List<Goods> getGoods() {
		return goods;
	}
	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getParentid() {
		return parentid;
	}
	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
