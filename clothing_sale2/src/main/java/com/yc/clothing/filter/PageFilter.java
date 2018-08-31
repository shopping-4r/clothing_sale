package com.yc.clothing.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yc.clothing.bean.User;

/**
 * 
 * 页面过滤器
 * 
 * @author py
 *
 */

//@WebFilter("/*")
public class PageFilter implements Filter {

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest)request;
		HttpSession session=req.getSession();
		HttpServletResponse resp=(HttpServletResponse)response;
		 // 获得用户请求的URI
		String path=req.getRequestURI();
		//从会话中获取用户
		User user=(User)session.getAttribute("user");
		//对login.jsp和index.jsp、regist.jsp不进行过滤
		if(path.indexOf("/login.jsp")>-1||path.indexOf("/index.jsp")>-1||path.indexOf("/regist.jsp")>-1){
			chain.doFilter(request, response);
			return;
		}else{
			//用户未登录
			if(user==null){
				resp.sendRedirect("login.jsp");
			}else{
				chain.doFilter(request, response);
			}
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

}
