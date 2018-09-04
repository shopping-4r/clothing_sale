package com.yc.clothing.util;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MyUtils {
	//设置是谁发送的邮件
	public static String MyEmail="q1572984715@163.com";
	//设置授权密码
	public static String MyEmailPwd="china199799";
	//设置服务器
	public static String MyEmailHost="smtp.163.com";
	//发送邮件
		public static String sendMail(String receiveMail) {
			//产生随机的验证码
				Random r=new Random();
				StringBuffer sbf=new StringBuffer();
				int count=0;
				while(count<=5){
					sbf.append(r.nextInt(10));
					count++;
				}
				String code;code=sbf.toString();
			try {
				//创建配置项 
				Properties props=new Properties();
				props.setProperty("mail.transport.protocol", "smtp");
				props.setProperty("mail.smtp.host", MyEmailHost);
				props.setProperty("mail.smtp.auth", "true");
				props.put("mail.smtp.localhost","mail.digu.com");
				//开始创建邮件信息
				Session session=Session.getInstance(props);
				session.setDebug(false);
				MimeMessage message=new MimeMessage(session);
				//这封邮件从哪里来
				message.setFrom(new InternetAddress(MyEmail,"服装销售系统客服","UTF-8"));
				//发送给谁
				message.setRecipient(MimeMessage.RecipientType.TO,new InternetAddress(receiveMail,"用户","UTF-8"));
				//设置主题
				message.setSubject("验证码");
				//设置内容
				message.setContent("亲，欢迎找回密码，您的验证码为："+code,"text/html;charset=UTF-8");
				//设置发送时间
				message.setSentDate(new Date());
				message.saveChanges();
				//发送邮件
				Transport transport=session.getTransport();
				transport.connect(MyEmail,MyEmailPwd);
				transport.sendMessage(message, message.getAllRecipients());
				transport.close();
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} catch (MessagingException e) {
				e.printStackTrace();
			}
			return code;
			
		}
}
