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
import com.yc.clothing.util.MyUtils;

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
	//获取验证码的方法
	@RequestMapping("/sendYzm.do")
	public void ajaxSendYzm(HttpSession session,HttpServletResponse res,String email) throws IOException {
		User user=new User();
		user.setEmail(email);
		if(!ubiz.isUserExist(user)) {
			res.getWriter().print("该邮箱不存在");
		}else {
			String yzm=MyUtils.sendMail(email);
			session.setAttribute("yzm",yzm);
			res.getWriter().print("验证码发送成功，请注意查收");
		}
	}
	//判断邮箱和验证码是否正确的方法
	@RequestMapping("/testEmailAndYzm.do")
	public void ajaxTestEmailAndYzm(HttpSession session,HttpServletResponse res,String email,String yzm) throws IOException {
		String yzm2=(String) session.getAttribute("yzm");
		User user=new User();
		user.setEmail(email);
		if(!yzm2.equals(yzm)&&!ubiz.isUserExist(user)) {
			res.getWriter().print("该邮箱不存在且验证码不正确");
		}else if(!yzm2.equals(yzm)){
			res.getWriter().print("验证码不正确");
		}else if(!ubiz.isUserExist(user)){
			res.getWriter().print("该邮箱不存在");
		}else {
			res.getWriter().print("正确");
		}
	}
	//判断昵称和邮箱是否已经存在
	@RequestMapping("/test.do")
	public void ajaxTest(User user,HttpServletResponse res) throws IOException {
		if(ubiz.isExistNickName(user)&&ubiz.isUserExist(user)&&ubiz.isExistPhone(user)) {
			res.getWriter().print("该昵称、邮箱和电话号码都已存在");
		}else if(ubiz.isExistNickName(user)) {
			res.getWriter().print("该昵称已存在");
		}else if(ubiz.isUserExist(user)) {
			res.getWriter().print("该邮箱已存在");
		}else if(ubiz.isExistPhone(user)){
			res.getWriter().print("该电话号码已存在");
		}else {
			res.getWriter().print("正确");
		}
	}
	//找回密码
	@RequestMapping("/refindPwd.do")
	public String refindPwd(User user) {
		ubiz.refindPwd(user);
		return "login";
	}
	//注册
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
	//登录
	@RequestMapping("/login.do")
	public String Login(String yzm,User user,Model model,HttpSession session){
		//关于用户登录的表单提交
		String skip=null;
		//验证码
		String vcode=(String) session.getAttribute("vcode");
		if(vcode.equalsIgnoreCase(yzm)) {
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
			}else {
				model.addAttribute("msg","验证码不正确");
				skip="login";
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
