package com.yc.clothing.bean;

public class Addr {
	private Integer id;
	private String addr;
	private Integer uid;
	
	public Addr() {
		super();
	}
	public Addr(Integer id, String addr, Integer uid) {
		super();
		this.id = id;
		this.addr = addr;
		this.uid = uid;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	
}	
