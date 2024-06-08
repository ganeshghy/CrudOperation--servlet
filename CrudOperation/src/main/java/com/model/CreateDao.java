package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class CreateDao {
	public boolean newRecord(String name, String email, String phno, String pwd) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		int i = 0;
		try {
			String url = "jdbc:mysql://localhost:3306/servlet";
			String user = "root";
			String password = "root";
			String sql = "insert into crud(name,email,phno,pwd) values(?,?,?,?)";
			Class.forName("com.mysql.cj.jdbc.Driver"); 
	        con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, phno);
			pstmt.setString(4,pwd);
			
			i = pstmt.executeUpdate();
			if(i > 0) {
				return true;
			}else {
				return false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
	        try {
	            if (pstmt != null) pstmt.close();
	            if (con != null) con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	    }
		
		
		return false;
	}
}
