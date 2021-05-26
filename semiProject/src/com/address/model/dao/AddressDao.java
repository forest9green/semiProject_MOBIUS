package com.address.model.dao;

import static com.common.JDBCTemplate.close;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.address.model.vo.Address;
import com.user.model.dao.UserDao;

public class AddressDao {
	
	
	private Properties prop = new Properties();
	
	public AddressDao() {
		try {
			String filePath=UserDao.class.getResource("/sql/address_sql.properties").getPath();
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
	
	
	public List<Address> selectAddress(Connection conn, String userId, int cPage, int numPerPage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<Address> list=new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectAddress"));
			pstmt.setString(1, userId);
			pstmt.setInt(2, (cPage-1)*numPerPage+1);
			pstmt.setInt(3, cPage*numPerPage);
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Address a=new Address();
				a.setAddrNo(rs.getString("addr_no"));
				a.setUserId(rs.getString("user_id"));
				a.setAddName(rs.getString("add_name"));
				a.setReceiverName(rs.getString("receiver_name"));
				a.setPostCode(rs.getString("postcode"));
				a.setAddr(rs.getString("addr"));
				a.setDefaultAddr(rs.getInt("default_addr"));
				a.setAddCellPhone(rs.getString("add_cellphone"));
				a.setAddPhone(rs.getString("add_phone"));
				list.add(a);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
	}
	
	
	public int selectAddressCount(Connection conn, String userId) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectAddressCount"));
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
	
	
	public int clearDefaultAddr(Connection conn, String addrNo) {
		PreparedStatement pstmt=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("clearDefaultAddr"));
			pstmt.setString(1, addrNo);
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	public int updateAddress(Connection conn, Address adr) {
		PreparedStatement pstmt= null;
		int result2 = 0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("updateAddress"));
			pstmt.setString(1, adr.getPostCode());
			pstmt.setString(2, adr.getAddr());
			pstmt.setString(3, adr.getUserId());
			
			result2 = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		return result2;
	}

}
