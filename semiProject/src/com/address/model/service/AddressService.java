package com.address.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.address.model.dao.AddressDao;
import com.address.model.vo.Address;

public class AddressService {

	private AddressDao dao = new AddressDao();
	
	
	public int insertAddress(Address adr) {
		Connection conn = getConnection();
		int result2 = dao.insertAddress(conn,adr);
		
		if(result2>0) commit(conn);
		else rollback(conn);
		
		close(conn);
		return result2;
	}
	
	
	public List<Address> selectAddress(String userId){
		Connection conn=getConnection();
		List<Address> list=dao.selectAddress(conn,userId);
		close(conn);
		return list;
	}
	
	
	public int updateAddress(Address adr) {
		Connection conn = getConnection();
		int result2 = dao.updateAddress(conn,adr);
		
		if(result2>0) commit(conn);
		else rollback(conn);
		
		close(conn);
		return result2;
	}
	
}
