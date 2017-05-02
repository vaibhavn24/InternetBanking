package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.EmailUsernameVerification;

public class AjaxUserNameServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Boolean b = false;
		String userName = request.getParameter("username");
		EmailUsernameVerification euvs = new EmailUsernameVerification();
		try {
			b = euvs.isUserNameExist(userName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (b == true) {
			PrintWriter out = response.getWriter();
			out.println("userName Exist Please Enter Different");
		}
	}

}
