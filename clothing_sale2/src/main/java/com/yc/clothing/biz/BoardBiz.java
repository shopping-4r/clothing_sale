package com.yc.clothing.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.clothing.bean.Board;
import com.yc.clothing.dao.BoardDao;
@Service
public class BoardBiz {
	@Autowired
	private BoardDao bdao;
	//根据类型名字查询类型
	public Board findByName(String name){
		return bdao.findByName(name);
		}
	//查询所有类型
	public List<Board> findAllParentBoard() {
		return bdao.selectAllParentBoard();
	}
}
