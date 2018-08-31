package com.yc.clothing.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.yc.clothing.bean.Orders;

@Repository
public interface OrdersDao {
@Select(value = { "SELECT b.uname,a.time,a.`comment`,a.`level`,d.color,d.size FROM cs_orders a JOIN cs_user b ON a.uid=b.uid JOIN goods_orders c ON c.oid=a.id JOIN size_color d ON d.id=c.scid JOIN cs_goods e ON d.gid=e.id where e.id=#{arg0} order by a.time desc LIMIT #{arg1},#{arg2}" })
public List<Map<String,Object>> queryForPage(Integer gid,Integer page,Integer size);
@Select(value = { "select count(*) cnt from (SELECT b.uname,a.time,a.`comment`,a.`level`,d.color,d.size FROM cs_orders a JOIN cs_user b ON a.uid=b.uid JOIN goods_orders c ON c.oid=a.id JOIN size_color d ON d.id=c.scid JOIN cs_goods e ON d.gid=e.id where e.id=#{arg0})f" })
public Integer countSumSize(Integer gid);
@Select("select *from cs_orders where uid=#{uid} and isdelete=0")
List<Orders> selectAllByUid(int uid);
@Update("update cs_orders set isdelete=1 where id=#{id}")
void updateIsdeleteById(int id);
//插入订单为已成交
void insertOrder1(Orders orders);
//插入订单为未成交
int insertOrder(Orders orders);

@Insert("insert into Goods_Orders(oid,scid,count) values(#{arg0},#{arg1},#{arg2})")
public void insertgsds(int oid, Integer scid, int count);

//管理员查询所有订单状态
@Select("select *from cs_orders")
public List<Orders> findAllOrders();

}
