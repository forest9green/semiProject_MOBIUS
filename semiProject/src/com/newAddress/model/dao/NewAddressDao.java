package com.newAddress.model.dao;

import static com.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.newAddress.model.vo.NewAddress;

public class NewAddressDao {
	
	private Properties prop=new Properties();
	
	
	public NewAddressDao() {
		String path=NewAddressDao.class.getResource("/sql/newAddress_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public int insertNewAddr(Connection conn, NewAddress na) {
		PreparedStatement pstmt=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("insertNewAddr"));
			pstmt.setString(1, na.getOrderNo());
			pstmt.setString(2, na.getoName());
			pstmt.setString(3, na.getoPostCode());
			pstmt.setString(4, na.getoAddress());
			pstmt.setString(5, na.getoCellPhone());
			pstmt.setString(6, na.getoPhone());
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
