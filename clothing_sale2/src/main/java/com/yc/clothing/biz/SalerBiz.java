package com.yc.clothing.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.clothing.bean.Saler;
import com.yc.clothing.dao.SalerDao;

@Service
public class SalerBiz {
	@Autowired
	private SalerDao sdao;
	public Saler findSaler(Integer uid) {
		return sdao.selectByUid(uid);
	}

}
