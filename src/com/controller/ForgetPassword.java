package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.EncryptDecrypt;
import com.dbutility.DbUtil;

public class ForgetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection;
	Statement statement;
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String eid = request.getParameter("eid");
		EncryptDecrypt encryptDecrypt  = new EncryptDecrypt();
		String did = encryptDecrypt.DecryptData(eid);
		int id = Integer.parseInt(did);
		String password1 = request.getParameter("confirmpassword");
		String password = encryptDecrypt.EncryptData(password1);
		String sql ="update user set password ='"+password+"' where id='"+id+"'";
		connection = DbUtil.getConnection();
		try {
			statement = connection.createStatement();
			statement.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}

}
