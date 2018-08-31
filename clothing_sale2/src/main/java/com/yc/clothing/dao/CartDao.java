package com.yc.clothing.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.yc.clothing.bean.Cart;
import com.yc.clothing.bean.Size_Color;
import com.yc.clothing.bean.User;
@Repository
public interface CartDao {

	List<Map<String, Object>> selectAll(Cart cart);

	int ajax_addCart(Cart cart);

	Map<String, Object> selectById(Cart cart);

	boolean  deleteById(Cart cart);
	
	@Update("update cs_cart set count=#{count} where id=#{id}")
	void updataById(Cart cart);
	
	Map<String,Object> selectByScid (Cart cart);
	
	//更新购买数量
	void updataById2(Cart cart);
	
	//清空购物车
	@Delete("delete from cs_cart where uid=#{uid}")
	void delete(Cart cart);

	void updataById3(Size_Color sc);
	@Select(value = { "select * from cs_user where email=#{email} and pwd=md5(md5(#{pwd}))" })
	User YanZhen(User user);

}
