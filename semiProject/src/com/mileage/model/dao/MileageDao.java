package com.mileage.model.dao;

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

import com.mileage.model.vo.Mileage;

public class MileageDao {
	
	private Properties prop=new Properties();
	
	
	public MileageDao() {
		String path=MileageDao.class.getResource("/sql/mileage_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public List<Mileage> selectMileageList(Connection conn, String userId, int cPage, int numPerPage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<Mileage> list=new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectMileageList"));
			pstmt.setString(1, userId);
			pstmt.setInt(2, (cPage-1)*numPerPage+1);
			pstmt.setInt(3, cPage*numPerPage);
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Mileage m=new Mileage();
				m.setOrderNo(rs.getString("order_no"));
				m.setUserId(rs.getString("user_id"));
				m.setmContent(rs.getString("m_content"));
				m.setmPlus(rs.getInt("m_plus"));
				m.setmMinus(rs.getInt("m_minus"));
				list.add(m);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
	}
	
	
	public int selectMileageCount(Connection conn, String userId) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectMileageCount"));
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			if(rs.next()) result=rs.getInt(1);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return result;
	}
	
	
	public int insertPlus (Connection conn, String orderNo, String userId, int mileage) {
		PreparedStatement pstmt=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("insertPlus"));
			pstmt.setString(1, orderNo);
			pstmt.setString(2, userId);
			pstmt.setString(3, "구매에 대한 적립금");
			pstmt.setInt(4, mileage);
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	public int insertMinus (Connection conn, String orderNo, String userId, int useMileage) {
		PreparedStatement pstmt=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("insertMinus"));
			pstmt.setString(1, orderNo);
			pstmt.setString(2, userId);
			pstmt.setString(3, "구매 시 적립금 사용");
			pstmt.setInt(4, useMileage);
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
