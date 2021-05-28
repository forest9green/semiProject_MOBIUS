package com.showroom.model.dao;

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

import com.showroom.model.vo.ShowRoom;
import com.showroom.model.vo.ShowRoomDetail;

public class ShowRoomDao {
	
	private Properties prop=new Properties();
	
	
	public ShowRoomDao() {
		String path=ShowRoomDao.class.getResource("/sql/showroom_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public List<ShowRoomDetail> selectSR(Connection conn, String srMenu){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<ShowRoomDetail> list=new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectSR"));
			pstmt.setString(1, srMenu);
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				ShowRoomDetail s=new ShowRoomDetail();
				s.setSrImgPath(rs.getString("sr_imgpath"));
				s.setpCode(rs.getString("p_code"));
				s.setSrMenu(rs.getString("sr_menu"));
				s.setPrice(rs.getInt("price"));
				s.setpName(rs.getString("P_NAME"));
				list.add(s);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
	}

}
