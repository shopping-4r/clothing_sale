package com.yc.clothing.action;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.clothing.bean.Orders;
import com.yc.clothing.bean.User;
import com.yc.clothing.biz.OrdersBiz;

@Controller
public class OrdersAction {
	@Resource
	private OrdersBiz obiz;
	@RequestMapping("/showOrder.do")
	public void ajaxFindAllOrders(HttpServletResponse res,HttpSession session) throws IOException {
		User user=(User) session.getAttribute("user");
		if(user==null) {
			user=new User();
			user.setUid(1);
		}
		List<Orders> orders=obiz.findAllOrdersByUid(user.getUid());
		Gson gson=new Gson();
		String json=gson.toJson(orders);
		res.getWriter().print(json);
	}
	@RequestMapping("/deleteOrders.do")
	public void deleteOrderById(int id,HttpServletResponse res) throws IOException {
		obiz.deleteOrderById(id);
		res.getWriter().print("删除成功");
	}
}