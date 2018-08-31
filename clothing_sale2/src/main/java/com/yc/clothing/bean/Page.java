package com.yc.clothing.bean;

import java.util.List;

public class Page<T> {
	private long total;
	private List<T> rows;
	public Page() {
		super();
	}
	public Page(long total, List<T> rows) {
		super();
		this.total = total;
		this.rows = rows;
	}
	public long getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public List<?> getRows() {
		return rows;
	}
	public void setRows(List<T> rows) {
		this.rows = rows;
	}
	@Override
	public String toString() {
		return "Page [total=" + total + ", rows=" + rows + "]";
	}
	
}
