package com.yc.clothing.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yc.clothing.bean.User;

@Repository
public interface UserDao {
	
	//用户注册
	@Insert("insert into cs_user(email,pwd,nickname) values(#{email},md5(md5(#{pwd})),#{nickname})")
	public void Regist(User user);
	//用户登录
	public User SelectByEmail(User user);
	//查询该用户密码
	@Select("select * from cs_user where email=#{email} and pwd=md5(md5(#{pwd}))")
	public User SelectPwdByEmail(User user);
	public void updateInformation(User user);

	public User selectUserById(User user);
	//用户充值
	public void updateMoney(User user);
}
