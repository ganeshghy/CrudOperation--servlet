package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DeleteDao {
	public boolean deleteRecord(int id) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		int i = 0;
		try {
			String url = "jdbc:mysql://localhost:3306/servlet";
			String user = "root";
			String password = "root";
			String sql = "delete from crud where id=?";
			Class.forName("com.mysql.cj.jdbc.Driver"); 
	        con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
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
