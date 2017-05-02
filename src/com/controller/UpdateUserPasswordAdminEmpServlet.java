package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.EncryptDecrypt;
import com.dbutility.DbUtil;

public class UpdateUserPasswordAdminEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Connection connection;
		PreparedStatement statement;
		String eid = request.getParameter("eid");
		String did = EncryptDecrypt.decryptData(eid);
		int id = Integer.parseInt(did);
		String userName = request.getParameter("userName");
		String password1 = request.getParameter("confirmpassword");
		String password = EncryptDecrypt.encryptData(password1);
		String sql = "update user set user_name= ?, password =?  where id='"
				+ id + "'";
		connection = DbUtil.getConnection();
		try {
			statement = connection.prepareStatement(sql);
			statement.setString(1, userName);
			statement.setString(2, password);
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}

}
