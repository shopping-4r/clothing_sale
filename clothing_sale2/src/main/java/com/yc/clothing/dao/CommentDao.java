package com.yc.clothing.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.yc.clothing.bean.Comment;
@Repository
public interface CommentDao {
	//按评论数量排序（根据商品分组）
	List<Comment> OrderByCount();

}
