package com.yc.clothing.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	//显示订单
	@RequestMapping("/showOrder.do")
	public void ajaxFindAllOrders(HttpServletResponse res,HttpSession session) throws IOException {
		User user=(User) session.getAttribute("user");
//		if(user==null) {
//			user=new User();
//			user.setUid(1);
//		}
		List<Orders> orders=obiz.findAllOrdersByUid(user.getUid());
		Gson gson=new Gson();
		String json=gson.toJson(orders);
		res.getWriter().print(json);
	}
	//删除订单
	@RequestMapping("/deleteOrders.do")
	public void deleteOrderById(int id,HttpServletResponse res) throws IOException {
		obiz.deleteOrderById(id);
		res.getWriter().print("删除成功");
	}
	//提交订单
	@RequestMapping("/insertOrder.do")
	public void insertOrder(PrintWriter out,HttpSession session,Orders orders){
		User user =(User) session.getAttribute("user");
		orders.setUid(user.getUid());
		Cart cart=new Cart();
		cart.setUid(user.getUid());
		Date date=new Date(System.currentTimeMillis());
		orders.setTime(date);
		obiz.insertOrder(orders);
		int oid=orders.getId();
		List<Map<String,Object>> list=cbiz.selectAll(cart);
		String data=null;
		Double totalMoney = 0d;
		DecimalFormat df=new DecimalFormat("0.00");
		for(int i=0;i<list.size();i++){
			String name=(String) list.get(i).get("name");
			int count=(int) list.get(i).get("count");
			int scid=(int) list.get(i).get("scid");
			double price=(double) list.get(i).get("price");
			double rebate=(double) list.get(i).get("rebate");
			String color=(String) list.get(i).get("color");
			String size=(String) list.get(i).get("size");
			totalMoney+=price*rebate*count;
			obiz.insertgsds(oid,scid,count);
			 data=data+"<tr class='cart_item check-item prd-name'><<td class='ctg-type'>"+ name+" x<span id='count'>"+count+"</span><span>件</span>&nbsp;颜色："+color+"&nbsp;尺码："+size+"</td>"+
             "<td class='cgt-des'> <span>￥</span><span id='price_count'>"+df.format(count*price*rebate)+"</span></td> </tr>";
		}
		data = data + " <tr class='cart_item'>" + "   <td class='ctg-type' > 小计</td>"
				+ "    <td class='cgt-des' id='carttotal'>" +  df.format(totalMoney)+ "</td>" + "  </tr>" + "<tr class='cart_item'>"
				+ "   <td class='ctg-type'>邮费</td>" + "<td class='cgt-des ship-opt'>" + "<div class='shipp'>"
				+ "   <input type='radio' id='pay-toggle' onclick='airpay();' name='ship'>"
				+ "  <label for='pay-toggle'>空运: <span>￥03</span></label>" + "</div>" + " <div class='shipp'>"
				+ "<input type='radio' id='pay-toggle2' onclick='postage();' name='ship'>"
				+ " <label for='pay-toggle2'>普通包邮</label>" + " </div>" + "</td>" + " </tr>" + " <tr class='cart_item'>"
				+ "<td class='ctg-type crt-total' >总计</td>" + " <td class='cgt-des prc-total' id='cartTotal'> "
				+ df.format(totalMoney) + "</td>" + " </tr>";
		data=data+"<input id='oid' type='hidden' value='"+oid+"'/>";
		//System.out.println("=================data=="+data);
		//清空购物车
		
		cbiz.delete(cart);
		sessionutil.rsession(cart, session, cbiz);
		out.print(data);
	}
	
	
	/**
	 * 以下是管理员的代码
	 * */
	
	
	/**
	 * 查询订单状态
	 * @param Untreated（未处理）
	 * @param turnover（已成交）

	 * */
	@RequestMapping("admin_findOrders.do")
	public String admin_findOrders(HttpSession session,Model model){
		User user2=(User) session.getAttribute("user2");
		List<Orders> orders=obiz.findAllOrders();
		int notpay=0;
		int paid=0;
		int Untreated=0;
		int turnover=0;
		int failuer=0;
		for(int i=0;i<orders.size();i++){
			if(orders.get(i).getStatus()==0){
				paid++;
			}else if(orders.get(i).getStatus()==1){
				notpay++;
			}else if(orders.get(i).getStatus()==2){
				Untreated++;
			}else if(orders.get(i).getStatus()==5){
				turnover++;
			}else{
				failuer++;
			}
		}
		int[] data={Untreated,paid,notpay,turnover,failuer};
		session.setAttribute("orderData", data);
		return "management/index";
	}
	/**
	 * 评价订单
	 */
	@RequestMapping("comment.do")
	public void commentOrder(PrintWriter out,Orders orders){
		obiz.updateOrders(orders);
	}
	
	
}