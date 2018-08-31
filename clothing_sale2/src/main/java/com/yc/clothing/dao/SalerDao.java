package com.yc.clothing.dao;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yc.clothing.bean.Saler;

@Repository
public interface SalerDao {
	@Select("select *from cs_saler where uid=#{uid}")
	Saler selectByUid(Integer uid);

}
