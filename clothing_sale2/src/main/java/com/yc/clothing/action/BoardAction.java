package com.yc.clothing.action;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.clothing.bean.Board;
import com.yc.clothing.biz.BoardBiz;

@Controller
public class BoardAction {
	@Resource
	private BoardBiz bbiz;
	@RequestMapping("/showParentBoard.do")
	public String ajaxFindParentBoard(Model model) {
		List<Board> board=bbiz.findAllParentBoard();
		model.addAttribute("Board",board);
		return "shop";
	}
	@RequestMapping("/showChildBoard.do")
	public void ajaxFindChildBoard(String op,HttpServletResponse res,String parentName) throws IOException {
		List<Board> board=bbiz.findBoardByParentName(parentName);
		Gson g=new Gson();
		String json=g.toJson(board);
		res.getWriter().println(json);
	}
}
