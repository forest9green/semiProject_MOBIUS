package com.product.model.dao;

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

import com.product.model.vo.Product;

public class ProductDao {
	
	private Properties prop=new Properties();
	
	
	public ProductDao() {
		String path=ProductDao.class.getResource("/sql/product_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public String searchCateCode(Connection conn, String category) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String cateCode="";
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("searchCateCode"));
			pstmt.setString(1, category);
			rs=pstmt.executeQuery();
			if(rs.next()) cateCode=rs.getString(1);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return cateCode;
	}
	
	
	public List<Product> selectProductList(Connection conn, String orderBy, String cateCode, int cPage, int numPerPage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<Product> list=new ArrayList<>();
		
		try {
			if(!orderBy.equals("R_STAR DESC")) {
				pstmt=conn.prepareStatement(prop.getProperty("searchProductList").replace("$", orderBy));				
			}else {
				pstmt=conn.prepareStatement(prop.getProperty("searchProductListStar"));
			}
			pstmt.setString(1, cateCode);
			pstmt.setInt(2, (cPage-1)*numPerPage+1);
			pstmt.setInt(3, cPage*numPerPage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Product p=new Product();
				p.setpCode(rs.getString("p_code"));
				p.setCateCode(rs.getString("cate_code"));
				p.setPrice(rs.getInt("price"));
				p.setStock(rs.getInt("price"));
				p.setpEnrollDate(rs.getDate("p_enroll_date"));
				p.setDeliveryFee(rs.getInt("delivery_fee"));
				p.setSize(rs.getString("size"));
				p.setpName(rs.getString("p_name"));
				list.add(p);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
	}
	
	
	public List<Product> selectProductList(Connection conn, String orderBy, int cPage, int numPerPage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<Product> list=new ArrayList<>();
		
		try {
			if(!orderBy.equals("R_STAR DESC")) {
				pstmt=conn.prepareStatement(prop.getProperty("searchAllProductList").replace("$", orderBy));				
			}else {
				pstmt=conn.prepareStatement(prop.getProperty("searchAllProductListStar"));
			}
			pstmt.setInt(1, (cPage-1)*numPerPage+1);
			pstmt.setInt(2, cPage*numPerPage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Product p=new Product();
				p.setpCode(rs.getString("p_code"));
				p.setCateCode(rs.getString("cate_code"));
				p.setPrice(rs.getInt("price"));
				p.setStock(rs.getInt("price"));
				p.setpEnrollDate(rs.getDate("p_enroll_date"));
				p.setDeliveryFee(rs.getInt("delivery_fee"));
				p.setSize(rs.getString("size"));
				p.setpName(rs.getString("p_name"));
				list.add(p);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
	}
	
	
	public int selectProductCount(Connection conn, String cateCode) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectProductCount"));
			pstmt.setString(1, cateCode);
			rs=pstmt.executeQuery();
			if(rs.next()) result=rs.getInt(1);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return result;
	}
	
	
	public int selectProductCount(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectAllProductCount"));
			rs=pstmt.executeQuery();
			if(rs.next()) result=rs.getInt(1);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return result;
	}
	
	
	public Product searchProduct(Connection conn, String pCode) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Product p=null;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("searchProduct"));
			pstmt.setString(1, pCode);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				p=new Product();
				p.setpCode(rs.getString("p_code"));
				p.setCateCode(rs.getString("cate_code"));
				p.setPrice(rs.getInt("price"));
				p.setStock(rs.getInt("price"));
				p.setpEnrollDate(rs.getDate("p_enroll_date"));
				p.setDeliveryFee(rs.getInt("delivery_fee"));
				p.setSize(rs.getString("size"));
				p.setpName(rs.getString("p_name"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return p;
	}
	
}


	