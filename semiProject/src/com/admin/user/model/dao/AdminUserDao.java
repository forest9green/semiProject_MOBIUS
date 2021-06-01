package com.admin.user.model.dao;

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

import com.admin.user.model.vo.AdminMileage;
import com.admin.user.model.vo.AdminOrder;
import com.admin.user.model.vo.AdminOrderInfo;
import com.admin.user.model.vo.AdminUserInfo;
import com.admin.user.model.vo.TotalInfo;
import com.coupon.model.vo.Coupon;

public class AdminUserDao {

private Properties prop=new Properties();
	
	public AdminUserDao() {
		String path=AdminUserDao.class.getResource("/sql/adminUser_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public List<TotalInfo> memberList(Connection conn, int cPage, int numPerpage){
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		List<TotalInfo> list = new ArrayList();
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectMemberAll"));
			pstmt.setInt(1, (cPage-1)*numPerpage+1);
			pstmt.setInt(2, cPage*numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				TotalInfo info = new TotalInfo();
				info.setUserId(rs.getString("user_Id"));
				info.setUserPwd(rs.getString("user_Pwd"));
				info.setUserName(rs.getString("user_Name"));
				info.setEmail(rs.getString("email"));
				info.setEmailSmsCk(rs.getInt("email_Sms_Ck"));
				info.setCellPhone(rs.getString("cellPhone"));
				info.setPhoneSmsCk(rs.getInt("phone_Sms_Ck"));
				info.setPhone(rs.getString("phone"));
				info.setJoinDate(rs.getDate("join_Date"));
				info.setRecentDate(rs.getDate("recent_Date"));
				info.setMileage(rs.getInt("mileage"));
				info.setSum(rs.getInt("sum"));
				list.add(info);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
		
	}
	
	
	public int selectUserCount(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectUserCount"));
			rs=pstmt.executeQuery();
			if(rs.next()) {
				result=rs.getInt(1);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return result;
	}

	
	public AdminUserInfo UserInfo(Connection conn, String userId) {
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		AdminUserInfo user = null;
		
		int rownum=1;
		try {
			pstmt = conn.prepareStatement(prop.getProperty("selectUser"));
			pstmt.setString(1, userId);
			pstmt.setInt(2, rownum);
		
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				user = new AdminUserInfo();
				user.setUserId(rs.getString("user_id"));
				user.setUserName(rs.getString("user_name"));
				user.setEmail(rs.getString("email"));
				user.setCellPhone(rs.getString("cellphone"));
				user.setPhone(rs.getString("phone"));
				user.setEnrollDate(rs.getDate("join_date"));
				user.setAddr(rs.getString("addr"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(conn);
		}
		return user;
	}
	
	public List<Coupon> CouponList(Connection conn , String userId){
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		List<Coupon> clist = new ArrayList();
		try {
			pstmt=conn.prepareStatement(prop.getProperty("couponList"));
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Coupon c = new Coupon();
				c.setcNo(rs.getString("c_no"));
				c.setUserId(rs.getString("user_id"));
				c.setcName(rs.getString("c_name"));
				c.setcDiscount(rs.getDouble("c_discount"));
				c.setcIssueDate(rs.getDate("c_issue_date"));
				c.setcFinishDate(rs.getDate("c_finish_date"));
				c.setcLimit(rs.getInt("c_limit"));
				c.setcUse(rs.getInt("c_use"));
				clist.add(c);

			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally{
			close(rs);
			close(pstmt);
		}
		return clist;

	}
	
	public int insertCoupon(Connection conn,String userId,String cName, double cDiscount,int cFinishDate,int cLimit) {
		PreparedStatement pstmt=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("insertCoupon"));
			pstmt.setString(1, userId);
			pstmt.setString(2, cName);
			pstmt.setDouble(3, cDiscount);
			pstmt.setInt(4, cFinishDate);
			pstmt.setInt(5, cLimit);
			
			result=pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return result;
	}
	
	
	public List<AdminMileage> AdminMileageList(Connection conn, String userId){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<AdminMileage> list = new ArrayList();
		try {
			pstmt = conn.prepareStatement(prop.getProperty("mileageList"));
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				AdminMileage m = new AdminMileage();
				m.setOrderDate(rs.getDate("order_date"));
				m.setUserId(rs.getString("user_id"));
				m.setmContent(rs.getString("m_content"));
				m.setmPlus(rs.getInt("m_plus"));
				m.setmMinus(rs.getInt("m_minus"));
				list.add(m);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(conn);
		}
		return list;
		
	}
	
	public List<AdminOrder> orderList(Connection conn,int cPage,int numPerpage, String userId){
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		List<AdminOrder> list = new ArrayList();
		try {
			pstmt = conn.prepareStatement(prop.getProperty("orderList"));
			pstmt.setString(1, userId);
			pstmt.setInt(2, cPage);
			pstmt.setInt(3, numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				AdminOrder a = new AdminOrder();
				a.setOrderNo(rs.getString("order_no"));
				a.setUserId(rs.getString("user_id"));
				a.setOrderDate(rs.getDate("order_date"));
				a.setPrice(rs.getInt("price"));
				a.setoState(rs.getString("o_state"));
				list.add(a);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(conn);
		}
		return list;
	}
	
	
	
	public int selectOrderCount(Connection conn, String userId) {
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		int result = 0;
		try {
			pstmt= conn.prepareStatement(prop.getProperty("selectOrdercount"));
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return result;
	}
	
	public AdminOrderInfo adminOrderInfo(Connection conn, String orderNo) {
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		AdminOrderInfo aoi = null;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("adminOrderInfo"));
			pstmt.setString(1, orderNo);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				aoi = new AdminOrderInfo();
				aoi.setOrderNo(rs.getString("order_no"));
				aoi.setOrderDate(rs.getDate("order_date"));
				aoi.setUserId(rs.getString("user_id"));
				aoi.setoState(rs.getString("o_state"));
				aoi.setpCode(rs.getString("p_code"));
				aoi.setpName(rs.getString("p_name"));
				aoi.setOrderMemo(rs.getString("order_memo"));
				aoi.setoAmount(rs.getInt("o_amount"));
				aoi.setReceiverName(rs.getString("receiver_name"));
				aoi.setAddCellphone(rs.getString("add_cellphone"));
				aoi.setAddPhone(rs.getString("add_phone"));
				aoi.setPostCode(rs.getString("postcode"));
				aoi.setAddr(rs.getString("addr"));
				
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return aoi;
		
	}
	
	
	public int updateOstate(Connection conn, String orderNo, String oState) {
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			pstmt = conn.prepareStatement(prop.getProperty("updateOstate"));
			pstmt.setString(1, oState);
			pstmt.setString(2, orderNo);
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
	
}
