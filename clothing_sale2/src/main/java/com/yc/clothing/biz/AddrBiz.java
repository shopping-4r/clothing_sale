package com.yc.clothing.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.clothing.bean.Addr;
import com.yc.clothing.dao.AddrDao;

@Service
public class AddrBiz {
	@Autowired
	private AddrDao adao;
	public List<Addr> findAllAddr(int uid){
		return adao.findAllAddr(uid);
	}
	public void updateAddr(Addr addr) {
		adao.updateAddrById(addr);
	}
	//添加地址
	public void addAddr(Addr addr) {
		adao.insertAddr(addr);
	}
	//删除地址
	public void deleteAddr(int id) {
		adao.deleteAddr(id);
	}
}
