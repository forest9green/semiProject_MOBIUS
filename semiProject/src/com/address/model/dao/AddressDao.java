package com.address.model.dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.address.model.vo.Address;
import com.user.model.dao.UserDao;
import static com.common.JDBCTemplate.close;

public class AddressDao {
	
	
	private Properties prop = new Properties();
	
	public AddressDao() {
		try {
			String filePath=UserDao.class.getResource("/sql/user_sql.properties").getPath();
			prop.load(new FileReader(filePath));
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int insertAddress(Connection conn, Address adr) {
		PreparedStatement pstmt=null;
		int result2 = 0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("insertAddress"));
			pstmt.setString(1, adr.getUserId());
			pstmt.setString(2, adr.getReceiverName());
			pstmt.setString(3, adr.getPostCode());
			pstmt.setString(4, adr.getAddr());
			pstmt.setInt(5, adr.getDefaultAddr());
			pstmt.setString(6, adr.getAddCellPhone());
			pstmt.setString(7, adr.getAddPhone());
			
			result2=pstmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result2;
		
	}
	
}
