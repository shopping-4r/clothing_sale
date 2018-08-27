package com.yc.clothing.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.yc.clothing.bean.Cart;
@Repository
public interface CartDao {

	List<Map<String, Object>> selectAll(Cart cart);

	int ajax_addCart(Cart cart);

	Map<String, Object> selectById(Cart cart);

	boolean  deleteById(Cart cart);

}
