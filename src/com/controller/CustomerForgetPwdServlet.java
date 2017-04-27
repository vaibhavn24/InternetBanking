package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.EncryptDecrypt;
import com.dbutility.DbUtil;
import java.sql.*;
public class CustomerForgetPwdServlet extends HttpServlet{
	Statement statement;
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String customerId = request.getParameter("customerId");
		EncryptDecrypt encryptDecrypt  = new EncryptDecrypt();
		
		String origialpassword = request.getParameter("confirmpassword");
		String encryptpassword = encryptDecrypt.EncryptData(origialpassword);
		String sql ="update user set password ='"+encryptpassword+"' where id='"+customerId+"'";
		Connection connection = DbUtil.getConnection();
		try {
			statement = connection.createStatement();
			statement.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("customer_home.jsp");
		rd.forward(request, response);
	}


}
