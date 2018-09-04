package com.yc.clothing.action;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.clothing.bean.Addr;
import com.yc.clothing.bean.User;
import com.yc.clothing.biz.AddrBiz;

@Controller
public class AddrAction {
	@Resource
	private AddrBiz abiz;

	/**
	 * 根据用户的uid查询所有的地址
	 * 
	 * @param res
	 * @param name
	 * @param session
	 * @throws IOException
	 */
	@RequestMapping("/showAddr.do")
		public void ajaxShowAddr(HttpServletResponse res, HttpSession session) throws IOException {
		User user = (User) session.getAttribute("user");
		// if(user==null) {
		// user=new User();
		// user.setUid(1);
		// }
		List<Addr> addrs = abiz.findAllAddr(user.getUid());
		Gson g = new Gson();
		String Json = g.toJson(addrs);
		res.getWriter().print(Json);
	}

	/**
	 * 修改地址
	 * 
	 * @throws IOException
	 */
	@RequestMapping("/updateAddr.do")
	public void ajaxUpdateAddr(HttpServletResponse res, Addr addr, HttpSession session) throws IOException {
		abiz.updateAddr(addr);
		Gson g = new Gson();

		String Json = g.toJson(addr);
		res.getWriter().print(Json);
	}

	/**
	 * 添加地址
	 */
	@RequestMapping("/addAddr.do")
	public void ajaxAddAddr(HttpSession session, Addr addr, HttpServletResponse res) throws IOException {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			user = new User();
			user.setUid(1);
		}
		addr.setUid(user.getUid());
		abiz.addAddr(addr);
		res.getWriter().print("添加成功");
	}

	/**
	 * 删除地址
	 * 
	 * @throws IOException
	 */
	@RequestMapping("/deleteAddr.do")
	public void ajaxDeleteAddr(int id, HttpServletResponse res) throws IOException {
		abiz.deleteAddr(id);
		res.getWriter().print("删除成功");
	}
}
