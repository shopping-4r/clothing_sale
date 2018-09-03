package com.yc.clothing.biz;

import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.clothing.bean.Bill;
import com.yc.clothing.bean.User;
import com.yc.clothing.dao.BillDao;
import com.yc.clothing.dao.UserDao;

@Service
public class UserBiz {

	@Autowired
	private UserDao udao;
	@Autowired
	private BillDao bdao;
	public void Regist(User user){
		
		udao.Regist(user);
		
	}
	
	//用户	登录
	//判断用户邮箱是否存在    
	public boolean isUserExist(User user) {
		if(udao.SelectByEmail(user)!=null){
			return true;
		}
		return false;
	}
	//判断电话是否存在
	public boolean isExistPhone(User user) {
		if(udao.SelectByPhone(user)!=null){
			return true;
		}
		return false;
	}
	//判断用户昵称是否存在
	public boolean isExistNickName(User user) {
		if(udao.SelectByNickName(user)!=null){
			return true;
		}
		return false;
	}
	//根据提供的用户名拿密码
	public User getPwdByEmail(User user) {
		return udao.SelectPwdByEmail(user);
	}		
	//修改基本信息
	public void updateBaseInformation(User user) {
		udao.updateInformation(user);
	}
	//查询用户账号余额
	public User findUserById(User user) {
		return udao.selectUserById(user);
	}
	//用户充值
	public void recharge(User user,Bill bill) {
		//添加账单表
		bill.setPayee(user.getUid());
		bill.setPayer(user.getUid());
		bill.setDatail("充值");
		Timestamp now=new Timestamp(System.currentTimeMillis());
		bill.setTime(now);
		bdao.InsertBill(bill);
		//修改用户的余额
		User user2=udao.selectUserById(user);
		user.setMoney((user2.getMoney()+bill.getMoney()));
		udao.updateMoney(user);
	}
	//找回密码
	public void refindPwd(User user) {
		udao.updatePwd(user);
	}
}
