package com.yc.clothing.util;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.yc.clothing.bean.Cart;
import com.yc.clothing.bean.User;
import com.yc.clothing.biz.CartBiz;

public class sessionUtil {
	public void rsession(Cart cart,HttpSession session,CartBiz cbiz){
		User user=(User) session.getAttribute("user");
		cart.setUid(user.getUid());
		List<Map<String,Object>> list=cbiz.selectAll(cart);
		if(list==null){
			session.setAttribute("cart", null);
			session.setAttribute("totalMoney", 0);
			session.setAttribute("total",  0);
		}else{
			session.setAttribute("cart", list);
			double c=0;
			for(int i=0;i<list.size();i++){
				int a=(int) list.get(i).get("count");
				double b=(double) list.get(i).get("price");
				c=c+a*b;
			}
			session.setAttribute("totalMoney", c);
			session.setAttribute("total",  list.size());
		}
		
	}
}
