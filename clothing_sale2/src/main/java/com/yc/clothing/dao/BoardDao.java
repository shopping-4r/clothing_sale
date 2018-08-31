package com.yc.clothing.dao;

import java.util.List;

import com.yc.clothing.bean.Board;

public interface BoardDao {
	//根据类型名字查询类型
	Board findByName(String name);
	//查询所有父类型
	List<Board> selectAllParentBoard();
	//根据父类型名字查询所有子类型
	List<Board> selectBoardByParentName(String parentName);
}
