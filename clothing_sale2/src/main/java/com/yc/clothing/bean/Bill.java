package com.yc.clothing.bean;

import java.sql.Timestamp;

public class Bill {
	private Integer id;
	private Integer payer;
	private Integer payee;
	private String detail;
	private Timestamp time;
	private double Money;
	private String method;
	
	public Bill() {
		super();
	}	
	
	public Bill(Integer id, Integer payer, Integer payee, String detail, Timestamp time, double money, String method) {
		super();
		this.id = id;
		this.payer = payer;
		this.payee = payee;
		this.detail = detail;
		this.time = time;
		Money = money;
		this.method = method;
	}
	

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public double getMoney() {
		return Money;
	}
	public void setMoney(double money) {
		Money = money;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getPayer() {
		return payer;
	}
	public void setPayer(Integer payer) {
		this.payer = payer;
	}
	public Integer getPayee() {
		return payee;
	}
	public void setPayee(Integer payee) {
		this.payee = payee;
	}
	public String getDatail() {
		return detail;
	}
	public void setDatail(String datail) {
		this.detail = datail;
	}
	
}
