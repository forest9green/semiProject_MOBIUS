package com.newAddress.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.newAddress.model.dao.NewAddressDao;
import com.newAddress.model.vo.NewAddress;

public class NewAddressService {
	
	private NewAddressDao dao=new NewAddressDao();
	
	
	public int insertNewAddr(NewAddress na) {
		Connection conn=getConnection();
		int result=dao.insertNewAddr(conn,na);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}

}
