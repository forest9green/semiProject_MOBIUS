package com.admin.board.model.dao;

import static com.common.JDBCTemplate.close;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.admin.board.model.vo.AdminBoard;
import com.board.model.vo.Board;

public class AdminBoardDao {
private Properties prop=new Properties();
	
	public AdminBoardDao() {
		String path=AdminBoardDao.class.getResource("/sql/adminBoard_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}

	public List<AdminBoard> selectAdminBoardList (Connection conn, int cPage, int numPerpage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<AdminBoard> list= new ArrayList();
	try {
		pstmt=conn.prepareStatement(prop.getProperty("selectAdminBoardList"));
		pstmt.setInt(1, (cPage-1)*numPerpage+1);
		pstmt.setInt(2, cPage*numPerpage);
		rs=pstmt.executeQuery();
		while(rs.next()) {
			AdminBoard b=new AdminBoard();
			b.setbTitle(rs.getString("B_TITLE"));
			b.setUserId(rs.getString("USER_ID"));
			b.setbWriteDate(rs.getDate("B_WRITEDATE"));
			b.setbAndate(rs.getDate("B_ANDATE"));
			list.add(b);
		}
	}catch(SQLException e) {
		e.printStackTrace();
	}finally {
		close(rs);
		close(pstmt);
	}return list;	
}
	public int selectAdminBoardCount(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectAdminBoardCount"));
			rs=pstmt.executeQuery();
			if(rs.next()) result=rs.getInt(1);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return result;
	}
	


}
