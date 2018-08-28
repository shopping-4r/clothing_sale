package com.yc.clothing.action;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.clothing.bean.Cart;
import com.yc.clothing.bean.Goods;
import com.yc.clothing.bean.Size_Color;
import com.yc.clothing.bean.User;
import com.yc.clothing.biz.CartBiz;
import com.yc.clothing.biz.GoodsBiz;
import com.yc.clothing.util.sessionUtil;

@Controller
public class CartAction {
	@Resource
	CartBiz cbiz;
	@Resource
	GoodsBiz gbiz;
	sessionUtil sutil=new sessionUtil();
	Size_Color sc=new Size_Color();
	@RequestMapping("/selectAll.do")
	public String selectAll(Cart cart,Model model,HttpSession session){
		if(cart.getUid()!=null){
		//工具类，修改会话
		sutil.rsession(cart, session, cbiz);
		}else{
			return "login";
		}
		return "index";
	}
	
	
	//ajax添加商品,不跳转页面
	@RequestMapping("/ajax_addCart.do")
	public void ajax_addCart(Cart cart,PrintWriter out,HttpSession session){
		SimpleDateFormat sft=new  SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		cart.setTime(sft.format(System.currentTimeMillis()));
		User user=(User) session.getAttribute("user");
		cart.setUid(user.getUid());
		
		if(cbiz.selectByScid(cart)){
			System.out.println("下面是合并");
			cbiz.updataById2(cart);
			Integer id=cart.getId();
			String data=id+"|~|id";
			out.print(data);
		}else{
			System.out.println("下面是添加纪录");

			int cid=cbiz.ajax_addCart(cart);
			cart.setId(cid);
			Map<String,Object> map=cbiz.selectById(cart);
			int count=(int) map.get("count");
			double price=(double) map.get("price");
			String name=(String) map.get("name");
			String image=(String) map.get("image");
			int id=(Integer)map.get("id");
			String data="<div class='cart-single-wraper' id='headerId_"+id+"'>"+
                    "<div class='cart-img'>"+
                    "<a href='#'><img src='images/product/"+image.split("、")[0]+"' alt=''></a>"+
                      "</div><div class='cart-content'>"+
                     "<div class='cart-name'> <a href='#'>"+name+"</a> </div>"+
                     "<div class='cart-price id='priceId_"+id+"'>"+ price +"</div>"+
                      "<div class=cart-qty > 数量 <span id='countId_"+id+"'>"+count+"</span> </div>"+
                         "</div><div class='remove'> <a onclick='delHeaderCart("+id+","+price+")'><i class='zmdi zmdi-close'></i></a> </div></div>";
			 data=data+"|~|data";
			out.printf(data);
		}
		System.out.println("下面是更新会话");
		//購物車中商品購買數量-count
		sc.setId(cart.getScid());
		sc.setStock(cart.getCount());
		cbiz.updataById3(sc);
		//修改会话
		sutil.rsession(cart, session, cbiz);
		
	}
	
	//商品添加到购物车（跳转到购物车页面）
	@RequestMapping("/addCart.do")
	public String addCart(Cart cart,Model mdoel,HttpSession session){
		SimpleDateFormat sft=new  SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		cart.setTime(sft.format(System.currentTimeMillis()));
		User user=(User) session.getAttribute("user");
		cart.setUid(user.getUid());
		cart.setStatus(0);
		cbiz.ajax_addCart(cart);
;
		sutil.rsession(cart, session, cbiz);
		return "cart";
	}
	@RequestMapping("/addCart2.do")
	public void  addCart2(Cart cart,HttpSession session,PrintWriter out){
		SimpleDateFormat sft=new  SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		cart.setTime(sft.format(System.currentTimeMillis()));
		User user=(User) session.getAttribute("user");
		cart.setUid(user.getUid());
		if(cbiz.selectByScid(cart)){
			cbiz.updataById2(cart);
		}else{
			cbiz.ajax_addCart(cart);
		}
		//購物車中商品購買數量-count
		sc.setId(cart.getScid());
		sc.setStock(cart.getCount());
		cbiz.updataById3(sc);
		sutil.rsession(cart, session, cbiz);
		out.print(true);
		
	}
	//按id查询商品
	@RequestMapping("/selectById.do")
	public void selectById(PrintWriter out,Model model,Goods goods,HttpSession session ){
		goods=gbiz.selectGoodInfoById(goods);
		model.addAttribute("goods", goods);
		session.setAttribute("goods", goods);
		out.print(goods.getDescribe()+"/"+goods.getName()+"/"+goods.getPrice()+"/"+goods.getRebate()+"/"+goods.getId());
	}
	
	//删除购物车
	@RequestMapping("/deleteCart.do")
	public void delCartById(Cart cart,HttpSession session,PrintWriter out){
		User user=(User) session.getAttribute("user");
		cart.setUid(user.getUid());
		boolean bol=cbiz.deleteById(cart);
		//修改会话
		sutil.rsession(cart, session, cbiz);
		if(bol){
			out.print(bol);
		}
	}
	
	//ajax 更新购物车
	@RequestMapping("/updataCart.do")
	public void updataCart(Cart cart,HttpSession session,PrintWriter out){
		
		cbiz.updateById(cart);
		sutil.rsession(cart, session, cbiz);
	}
	

	
}
