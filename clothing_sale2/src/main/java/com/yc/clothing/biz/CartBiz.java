package com.yc.clothing.biz;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.clothing.bean.Cart;
import com.yc.clothing.bean.Size_Color;
import com.yc.clothing.bean.User;
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
		cdao.updataById(cart);
	}
	
	public boolean selectByScid(Cart cart){
		if(cdao.selectByScid(cart)!=null){
			return true;
		}else{
			return false;
		}
	}
	public void updataById2(Cart cart){
		cdao.updataById2(cart);
	}
	public void delete(Cart cart) {
		cdao.delete(cart);
		
	}
	public void updataById3(Size_Color sc) {
		cdao.updataById3(sc);
		
	}
	public boolean YanZhen(User user) {
		if(cdao.YanZhen(user)!=null){
			
			return true;
		}else{
			return false;
		}
		
	}

}
