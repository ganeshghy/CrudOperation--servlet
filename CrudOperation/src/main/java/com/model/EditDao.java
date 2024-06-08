package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EditDao {
	public List<Record> fetch() {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Record> record = new ArrayList<>();
		try {
			String url = "jdbc:mysql://localhost:3306/servlet";
			String user = "root";
			String password = "root";
			String sql = "select * from crud";
			Class.forName("com.mysql.cj.jdbc.Driver"); 
	        con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Record r = new Record();
				r.setId(rs.getInt(1));
				r.setName(rs.getString(2));
				r.setEmail(rs.getString(3));
				r.setPhno(rs.getString(4));
				r.setPwd(rs.getString(5));
				record.add(r);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
	        try {
	        	if(rs != null) rs.close();
	            if (pstmt != null) pstmt.close();
	            if (con != null) con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	    }
		return record;
		
		
	}
}
