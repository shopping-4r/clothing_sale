package com.yc.clothing.biz;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.clothing.bean.Cart;
import com.yc.clothing.dao.CartDao;
@Service
public class CartBiz {
	@Autowired
	private CartDao cdao;
	
	public List<Map<String,Object>> selectAll(Cart cart) {
		
		return cdao.selectAll(cart);
		
	}
	public int ajax_addCart(Cart cart) {
		
		return cdao.ajax_addCart(cart);
		
	}
	public Map<String, Object> selectById(Cart cart) {
		
		return cdao.selectById(cart);
	}
	public boolean deleteById(Cart cart) {
		return cdao.deleteById(cart);
		
	}
	public void updateById(Cart cart) {
		// TODO Auto-generated method stub
		
	}


}
