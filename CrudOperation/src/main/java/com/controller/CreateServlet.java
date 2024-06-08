package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CreateDao;

/**
 * Servlet implementation class CreateServlet
 */
public class CreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     
		String uname = request.getParameter("name");
		String email = request.getParameter("email");
		String phno = request.getParameter("phno");
		String pwd = request.getParameter("pwd");
		CreateDao cdao = new CreateDao();
		boolean res = cdao.newRecord(uname, email, phno, pwd);
		if(res) {
			request.setAttribute("res", true);
			RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
			rd.forward(request, response);
		}
	}

}
