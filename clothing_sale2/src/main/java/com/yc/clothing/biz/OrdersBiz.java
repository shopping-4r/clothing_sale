package com.yc.clothing.biz;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.clothing.bean.Orders;
import com.yc.clothing.dao.OrdersDao;

@Service
public class OrdersBiz {
@Autowired
private OrdersDao odao;
/**
 * 分页查询结果集
 * @param gid
 * @param page
 * @param size
 * @return
 */
public List<Map<String,Object>> queryForPage(Integer gid,Integer page,Integer size){
	if(page==null){
		page=1;
	}
	if(size==null){
		size=5;
	}
	return odao.queryForPage(gid, (page-1)*size, size);
}
/**
 * 分页查询总记录数
 * @param gid
 * @return
 */
	public Integer countSumSize(Integer gid){
		return odao.countSumSize(gid);
	}
	public List<Orders> findAllOrdersByUid(int uid){
		return odao.selectAllByUid(uid);
	}
	public void deleteOrderById(int id) {
		odao.updateIsdeleteById(id);
	}
	public void insertOrder(Orders orders){
		odao.insertOrder(orders);
	}
	public void insertgsds(int oid, Integer scid, int  count) {
		odao.insertgsds(oid,scid,count);
		
	}
	//修改订单为已成交
	public void insertOrder1(Orders orders){
		odao.insertOrder1(orders);

	}
	public List<Orders> findAllOrders() {
	
		return odao.findAllOrders();
	};
}
