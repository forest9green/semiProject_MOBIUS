package com.showroom.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.showroom.model.dao.ShowRoomDao;
import com.showroom.model.vo.ShowRoomDetail;

public class ShowRoomService {
	
	private ShowRoomDao dao=new ShowRoomDao();
	
	
	public List<ShowRoomDetail> selectSR(String srMenu){
		Connection conn=getConnection();
		List<ShowRoomDetail> list=dao.selectSR(conn,srMenu);
		close(conn);
		return list;
	}

}
