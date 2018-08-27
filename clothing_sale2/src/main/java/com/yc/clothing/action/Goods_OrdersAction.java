package com.yc.clothing.action;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.clothing.biz.Goods_OrdersBiz;

@Controller
public class Goods_OrdersAction {
	@Resource
	private Goods_OrdersBiz gobiz;
	@RequestMapping("/findOrders.do")
	public void findAllById(HttpServletResponse res,int id) throws IOException{
		List<Map<String,Object>> orders=gobiz.findAllById(id);
		Gson g=new Gson();
		String json=g.toJson(orders);
		res.getWriter().print(json);
	}
}
