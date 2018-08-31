package com.yc.clothing.action;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.clothing.bean.Saler;
import com.yc.clothing.bean.User;
import com.yc.clothing.biz.SalerBiz;

@Controller
public class SalerAction {
	@Resource
	private SalerBiz sbiz;
	@RequestMapping("showSaler.do")
	public void showSaler(HttpServletResponse res,HttpSession session) throws IOException {
		User user=(User) session.getAttribute("user");
		Saler saler=sbiz.findSaler(user.getUid());
		Gson g=new Gson();
		String json=g.toJson(saler);
		res.getWriter().print(json);
	}
}
