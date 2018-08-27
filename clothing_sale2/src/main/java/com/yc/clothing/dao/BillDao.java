package com.yc.clothing.dao;

import org.springframework.stereotype.Repository;

import com.yc.clothing.bean.Bill;

@Repository
public interface BillDao {
	void  InsertBill(Bill bill);
}
