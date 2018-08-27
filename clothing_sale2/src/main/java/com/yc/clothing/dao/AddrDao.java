package com.yc.clothing.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.yc.clothing.bean.Addr;

@Repository
public interface AddrDao {
	@Select("select *from cs_addr where uid=#{uid}")
	List<Addr> findAllAddr(int uid);
	@Update("update cs_addr set addr=#{addr} where id=#{id}")
	void updateAddrById(Addr addr);
	@Insert("insert into cs_addr(addr,uid) values(#{addr},#{uid})")
	void insertAddr(Addr addr);
	@Delete("delete from cs_addr where id=#{id}")
	void deleteAddr(int id);
}
