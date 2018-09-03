package com.yc.clothing.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yc.clothing.bean.User;

@Repository
public interface UserDao {
	
	//用户注册
	@Insert("insert into cs_user(uname,email,tel,age,sex,pwd,nickname) values(#{uname},#{email},#{tel},#{age},#{sex},md5(md5(#{pwd})),#{nickname})")
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
	//查询电话是否已存在
	public User SelectByPhone(User user);
	//查询昵称是否已存在
	public User SelectByNickName(User user);
	//找回密码
	public void updatePwd(User user);
}
