package com.yc.clothing.bean;

public class Cart {
	private Integer id;
	
	private Integer uid;
	private Integer count;
	private Integer status;
	private String time;
	private Integer scid;
	public Integer getScid() {
		return scid;
	}
	public void setScid(Integer scid) {
		this.scid = scid;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
}
