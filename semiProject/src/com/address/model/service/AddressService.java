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
	
	
	public List<Address> selectAddress(String userId, int cPage, int numPerPage){
		Connection conn=getConnection();
		List<Address> list=dao.selectAddress(conn,userId,cPage,numPerPage);
		close(conn);
		return list;
	}
	
	
	public int selectAddressCount(String userId) {
		Connection conn=getConnection();
		int result=dao.selectAddressCount(conn,userId);
		close(conn);
		return result;
	}
	
	
	public int clearDefaultAddr(String addrNo) {
		Connection conn=getConnection();
		int result=dao.clearDefaultAddr(conn,addrNo);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
	
	public int setDefaultAddr(String addrNo) {
		Connection conn=getConnection();
		int result=dao.setDefaultAddr(conn,addrNo);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
	
	public String selectDefaultAddr(String userId) {
		Connection conn=getConnection();
		String oldAddrNo=dao.selectDefaultAddr(conn,userId);
		close(conn);
		return oldAddrNo;
	}
	
	
	public int insertAnotherAddress(Address a) {
		Connection conn = getConnection();
		int result = dao.insertAnotherAddress(conn,a);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
	
	public int deleteAddress(String addrNo) {
		Connection conn = getConnection();
		int result = dao.deleteAddress(conn,addrNo);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
	
	public Address selectAddressOne(String addrNo) {
		Connection conn=getConnection();
		Address a=dao.selectAddressOne(conn,addrNo);
		close(conn);
		return a;
	}
	
	
	public int updateAddress(Address a) {
		Connection conn = getConnection();
		int result = dao.updateAddress(conn,a);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
}
