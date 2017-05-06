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

import com.dbutility.DbUtil;


public class CustomerUpdateAadharServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Statement statement;
		String customerId = request.getParameter("customerId");
		String aadharNumber = request.getParameter("aadharNumber");
		String sql = "update user set aadharcard ='" + aadharNumber
				+ "' where id='" + customerId + "'";
		Connection connection = DbUtil.getConnection();
		try {
			statement = connection.createStatement();
			statement.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = request
				.getRequestDispatcher("/customer/customer_home.jsp");
		rd.forward(request, response);
	}
}
