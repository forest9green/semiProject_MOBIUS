package com.mileage.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.mileage.model.dao.MileageDao;
import com.mileage.model.vo.Mileage;

public class MileageService {
	
	private MileageDao dao=new MileageDao();
	
	
	public List<Mileage> selectMileageList(String userId, int cPage, int numPerPage){
		Connection conn=getConnection();
		List<Mileage> list=dao.selectMileageList(conn,userId,cPage,numPerPage);
		close(conn);
		return list;
	}
	
	
	public int selectMileageCount(String userId) {
		Connection conn=getConnection();
		int result=dao.selectMileageCount(conn,userId);
		close(conn);
		return result;
	}
	
	
	public int insertPlus(String orderNo, String userId, int mileage) {
		Connection conn=getConnection();
		int result=dao.insertPlus(conn,orderNo,userId,mileage);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
	
	public int insertMinus(String orderNo, String userId, int useMileage) {
		Connection conn=getConnection();
		int result=dao.insertMinus(conn,orderNo,userId,useMileage);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
}
