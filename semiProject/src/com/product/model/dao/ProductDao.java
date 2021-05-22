package com.product.model.dao;

import static com.common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.common.*;
import com.product.model.vo.*;

public class ProductDao {
	
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	//데이터베이스 접속 설정 정보
	//jdbc driver 패키지 정보
	private final String JDBC_DRIVER="oracle.jdbc.driver.OracleDriver";
	//데이터베이스 url
	private final String DB_URL="jdbc:oracle:thin:@rclass.iptime.org:1521:xe";
	//데이터베이스 아이디
	private final String DB_ID="MOBIUS";
	//데이터베이스 비밀번호
	private final String DB_PWD="MOBIUS";
	private Properties prop= new Properties();

	//list
	public List<Product> selectProductListAll(){
		
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<Product> list = null;
		
		try {
			pstmt = conn.prepareStatement("SELECT * FROM Product");
			rs = pstmt.executeQuery();
			
			list = new ArrayList<Product>();
			while(rs.next()) {
				Product product = new Product();
				product.setpCode(rs.getString("pCode"));
				product.setCateCode(rs.getString("cateCode"));
				product.setPrice(rs.getInt("price"));
				product.setStock(rs.getInt("stock"));
				product.setpEnrollDate(rs.getDate("date"));
				product.setDeliveryFee(rs.getInt("deliveryfee"));
				product.setSize(rs.getString("size"));
				product.setpName(rs.getString("pName"));
				
				list.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				close(rs);
				close(pstmt);
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return list;
	
	}
	
	//insert
	public void insertProduct(Product product) {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			Class.forName(this.JDBC_DRIVER);
			this.conn = DriverManager.getConnection(this.DB_URL, this.DB_ID, this.DB_PWD);
			stmt = conn.prepareStatement("INSERT INTO PRODUCT(PCODE, CATECODE, PRICE, STOCK,PENROLLDATE,DELIVERYFEE,SIZE,PNAME) VALUES(?,?,?,?,?,?,?,?)");
			stmt.setString(1, product.getpCode());
			stmt.setString(2, product.getCateCode());
			stmt.setInt(3, product.getPrice());
			stmt.setInt(4, product.getStock());
			stmt.setDate(5, (Date) product.getpEnrollDate());
			stmt.setInt(6, product.getDeliveryFee());
			stmt.setString(7, product.getSize());
			stmt.setString(8, product.getpName());
			
			stmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				close(conn);
				close(stmt);
				close(rs);
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	//update form
		public Product selectProductOne(int pCode) {
			
			Connection conn = null;
			PreparedStatement stmt = null;
			ResultSet rs = null;
			
			Product product = new Product();
			
			try {
				Class.forName(this.JDBC_DRIVER);
				this.conn = DriverManager.getConnection(this.DB_URL, this.DB_ID, this.DB_PWD);
				stmt = conn.prepareStatement("SELECT pCode,cateCode,price,stock,pEnrollDate,DeliveryFee,size,pName FROM product WHERE pCode=?");
				stmt.setInt(1,pCode);
				
				rs = stmt.executeQuery();
				
				if(rs.next()) {
					product.setpCode(rs.getString("pCode"));
					product.setCateCode(rs.getString("cateCode"));
					product.setPrice(rs.getInt("price"));
					product.setStock(rs.getInt("stock"));
					product.setpEnrollDate(rs.getDate("pEnrollDate"));
					product.setDeliveryFee(rs.getInt("deliveryfee"));
					product.setSize(rs.getString("size"));
					product.setpName(rs.getString("pName"));
					
				}
				
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					close(conn);
					close(rs);
					close(stmt);
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
			
			return product;
		}
		
		
public void updateProduct(Product product) {
			
			PreparedStatement stmt = null;
			ResultSet rs = null;
			
			try {
				Class.forName(this.JDBC_DRIVER);
				this.conn = DriverManager.getConnection(this.DB_URL, this.DB_ID, this.DB_PWD);
				stmt = conn.prepareStatement("UPDATE PRODUCT SET pCode=?,cateCode=?,price=?,stock=?,pEnrollDate=?,DeliveryFee=?,Size=?,pName=? WHERE pCode=?");
				stmt.setString(1, product.getCateCode());
				stmt.setInt(2, product.getPrice());
				stmt.setInt(3, product.getStock());
				stmt.setDate(4,(Date) product.getpEnrollDate());
				stmt.setInt(5, product.getDeliveryFee());
				stmt.setString(6, product.getSize());
				stmt.setString(7, product.getpName());
				
				rs = stmt.executeQuery();
				
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					close(conn);
					close(rs);
					close(stmt);
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
	}
}


	