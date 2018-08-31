package com.yc.clothing.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class translateAction {
	@RequestMapping("/translate1.do")
	public String translate() {
		return "login";
	} 
	@RequestMapping("/translate2.do")
	public String translate2() {
		return "regist";
	} 
}
