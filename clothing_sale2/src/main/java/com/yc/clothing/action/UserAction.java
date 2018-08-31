package com.yc.clothing.action;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.clothing.bean.Bill;
import com.yc.clothing.bean.Cart;
import com.yc.clothing.bean.User;
import com.yc.clothing.biz.CartBiz;
import com.yc.clothing.biz.UserBiz;
import com.yc.clothing.util.sessionUtil;

/**
 * 控制层
 * @author jjjjjzx
 *
 */
@Controller



public class UserAction {

	@Autowired
	private UserBiz ubiz;
	@Autowired
	private CartBiz cbiz;
	private sessionUtil sutil;
	@RequestMapping("/regist.do")
	public String Regist(User user,Model model){
		
		
		if (ubiz.isUserExist(user)) {
			model.addAttribute("msg", "邮箱已存在！");
			return "regist";
		}else if(ubiz.isExistPhone(user)) {
			model.addAttribute("msg", "电话已存在！");
			return "regist";
		}
		else if(ubiz.isExistNickName(user)) {
			model.addAttribute("msg", "昵称已存在！");
			return "regist";
		}
		else {
			ubiz.Regist(user);
			model.addAttribute("msg","注册成功");
			//注册成功之后跳转页面
			
			return "login";
		}
		
	}
	
	@RequestMapping("/login.do")
	public String Login(User user,Model model,HttpSession session){
		//关于用户登录的表单提交
		String skip=null;
			if (!ubiz.isUserExist(user)) {
				model.addAttribute("msg", "邮箱不存在！");
				model.addAttribute("msg", "用户名不存在！");
				skip= "login";
			} else {
				
				if (ubiz.getPwdByEmail(user)==null) {
					model.addAttribute("msg", "邮箱或密码错误！");
					model.addAttribute("msg", "密码错误！");
					skip= "login";
				} else {
					user=ubiz.getPwdByEmail(user);
					if(user.getRole()==2){
						session.setAttribute("user2", user);
						skip="redirect:/management/index.jsp";
					}else if(user.getRole()==0){
						Cart cart=new Cart();
						System.out.println(user.getUid());
						cart.setUid(user.getUid());
						List<Map<String,Object>> list=cbiz.selectAll(cart);
						session.setAttribute("cart", list);
						
						double c=0;
						for(int i=0;i<list.size();i++){
							int a=(int) list.get(i).get("count");
							double b=(double) list.get(i).get("price")*(double) list.get(i).get("rebate");
							c=c+a*b;
						}

				        DecimalFormat df = new DecimalFormat("0.00");
						session.setAttribute("totalMoney",  df.format(c));
						session.setAttribute("total",  list.size());
						
						
						model.addAttribute("msg", "登录成功！");
						
						session.setAttribute("user", user);
						skip= "index";
					}
				}
			}
			return skip;
			
		}
	
	//用户的注销
	@RequestMapping("/quit.do")
	public String quit(HttpSession session){
		session.invalidate();
		return "redirect:index.jsp";
	}
	@RequestMapping("/updateUser.do")
	public void updateBaseInformation(HttpSession session,HttpServletResponse res,User user) throws IOException {
		User user2=(User) session.getAttribute("user");
		user.setUid(user2.getUid());
		ubiz.updateBaseInformation(user);
		res.getWriter().print("修改成功");
	}
	//查询当前用户
	@RequestMapping("/showUser.do")
	public void showUserMoney(HttpServletResponse res,HttpSession session) throws IOException {
		User user=(User) session.getAttribute("user");
		Gson g=new Gson();
		String Json=g.toJson(user);
		res.getWriter().print(Json);
	}
	//充值
	@RequestMapping("/recharge.do")
	public void Recharge(HttpServletResponse res,HttpSession session,Bill bill) throws IOException {
		User user=(User) session.getAttribute("user");
		ubiz.recharge(user,bill);
		res.getWriter().print("充值成功");
	}
	
	
}
