package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SearchDao {
	public List<Record> search(int id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Record> r = new ArrayList<>();
		
		try {
			String url = "jdbc:mysql://localhost:3306/servlet";
			String user = "root";
			String password = "root";
			String sql = "select * from crud where id=?";
			Class.forName("com.mysql.cj.jdbc.Driver"); 
	        con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Record record = new Record();
				record.setId(rs.getInt(1));
				record.setName(rs.getString(2));
				record.setEmail(rs.getString(3));
				record.setPhno(rs.getString(4));
				record.setPwd(rs.getString(5));
				r.add(record);
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
		return r;
	}
}
