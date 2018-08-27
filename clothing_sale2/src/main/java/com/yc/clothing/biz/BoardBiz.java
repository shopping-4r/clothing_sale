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
	public Board findByName(String name){
		return bdao.findByName(name);
		}
}
