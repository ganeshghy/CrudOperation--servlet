package com.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

@MultipartConfig
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String excelFilePath = "C:\\Users\\GANESH\\Downloads\\spdclmasterdata.xlsx";
		PrintWriter out = response.getWriter();
		boolean res = false;
		try {
			res = excel.insert(excelFilePath);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(res) {
			out.println("excel data inserted into db");
		}
		else {
			out.println("err");
		}
    }
}
//Connection con = null;
//PreparedStatement pstmt = null;
//int i = 0;
//try {
//    Part file = request.getPart("file");
//    InputStream fileContent = file.getInputStream();
//    String url = "jdbc:mysql://localhost:3306/servlet";
//    String user = "root";
//    String password = "root";
//    String sql = "INSERT INTO crud(name, email, phno, pwd) VALUES (?, ?, ?, ?)";
//    Class.forName("com.mysql.cj.jdbc.Driver");
//    con = DriverManager.getConnection(url, user, password);
//    pstmt = con.prepareStatement(sql);
//
//    Workbook workbook = new XSSFWorkbook(fileContent);
//    Sheet firstSheet = workbook.getSheetAt(0);
//    for (Row row : firstSheet) {
//        String name = null;
//        if(row.getCell(0).getCellType() == CellType.NUMERIC) {
//            name = String.valueOf((int)row.getCell(0).getNumericCellValue());
//        } else {
//            name = row.getCell(0).getStringCellValue();
//        }
//        String email = row.getCell(1).getStringCellValue();
//        String phno = null;
//        if (row.getCell(2).getCellType() == CellType.NUMERIC) {
//            phno = String.valueOf((int) row.getCell(2).getNumericCellValue());
//        } else {
//            phno = row.getCell(2).getStringCellValue();
//        }
//        String pwd = row.getCell(3).getStringCellValue();
//        
//        pstmt.setString(1, name);
//        pstmt.setString(2, email);
//        pstmt.setString(3, phno);
//        pstmt.setString(4, pwd);
//        
//        i = pstmt.executeUpdate();
//       
//    }
//    if (i > 0) {
//        System.out.println("Success");
//    } else {
//        System.out.println("Fail");
//    }
//} catch (Exception e) {
//    e.printStackTrace();
//} finally {
//    try {
//        if (pstmt != null)
//            pstmt.close();
//        if (con != null)
//            con.close();
//    } catch (SQLException ex) {
//        ex.printStackTrace();
//    }
//}