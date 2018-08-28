package com.yc.clothing.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.clothing.bean.Cart;
import com.yc.clothing.bean.Orders;
import com.yc.clothing.bean.User;
import com.yc.clothing.biz.CartBiz;
import com.yc.clothing.biz.OrdersBiz;
import com.yc.clothing.util.sessionUtil;

@Controller
public class OrdersAction {
	@Resource
	private OrdersBiz obiz;
	@Resource
	private CartBiz cbiz;
	sessionUtil sessionutil=new sessionUtil();
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
	@RequestMapping("/insertOrder.do")
	public void insertOrder(Orders orders,PrintWriter out,HttpSession session ){
		User user =(User) session.getAttribute("user");
		orders.setUid(user.getUid());
		Cart cart=new Cart();
		cart.setUid(user.getUid());;
		Date date=new Date(System.currentTimeMillis());
		orders.setTime(date);
		obiz.insertOrder(orders);
		int oid=orders.getId();
		List<Map<String,Object>> list=cbiz.selectAll(cart);
		String data=null;
		Double totalMoney = 0d;
		for(int i=0;i<list.size();i++){
			String name=(String) list.get(i).get("name");
			int count=(int) list.get(i).get("count");
			int scid=(int) list.get(i).get("scid");
			double price=(double) list.get(i).get("price");
			totalMoney+=price*count;
			obiz.insertgsds(oid,scid,count);
			 data=data+"<tr class='cart_item check-item prd-name'><<td class='ctg-type'>"+ name+" x<span id='count'>"+count+"</span><span>件</span></td>"+
             "<td class='cgt-des'> <span>￥</span><span id='price_count'>"+count*price+"</span></td> </tr>";
		}
		data = data + " <tr class='cart_item'>" + "   <td class='ctg-type' > 小计</td>"
				+ "    <td class='cgt-des' id='carttotal'>" + totalMoney + "</td>" + "  </tr>" + "<tr class='cart_item'>"
				+ "   <td class='ctg-type'>邮费</td>" + "<td class='cgt-des ship-opt'>" + "<div class='shipp'>"
				+ "   <input type='radio' id='pay-toggle' onclick='airpay();' name='ship'>"
				+ "  <label for='pay-toggle'>空运: <span>￥03</span></label>" + "</div>" + " <div class='shipp'>"
				+ "<input type='radio' id='pay-toggle2' onclick='postage();' name='ship'>"
				+ " <label for='pay-toggle2'>普通包邮</label>" + " </div>" + "</td>" + " </tr>" + " <tr class='cart_item'>"
				+ "<td class='ctg-type crt-total'>总计</td>" + " <td class='cgt-des prc-total' id='cartTotal'> "
				+ totalMoney + "</td>" + " </tr>";
		//清空购物车
		cbiz.delete(cart);
		sessionutil.rsession(cart, session, cbiz);
		out.print(data);
	}
}