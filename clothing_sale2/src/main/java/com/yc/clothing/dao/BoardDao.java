package com.yc.clothing.dao;

import java.util.List;

import com.yc.clothing.bean.Board;

public interface BoardDao {
	Board findByName(String name);
}
