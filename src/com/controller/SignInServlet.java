package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.classes.LoginDao;
import com.model.User;

public class SignInServlet extends HttpServlet {

	RequestDispatcher rd;
	
//hi this is git hub testing.....

	//hello..

	//hi this is nilesh testing
//hi bhushan how are you
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String username = request.getParameter("userName");
		String originalPwd = request.getParameter("password");
		int userType = LoginDao.validate(username, originalPwd);
		HttpSession session = request.getSession();
		List<User> currentuserlist = LoginDao.SelectedUserlist();
		for(User user : currentuserlist){
		session.setAttribute("CurrentUserList", user);
		}
		switch (userType) {
		case 1: {
			rd = request.getRequestDispatcher("superadmin_home.jsp");
			rd.forward(request, response);
			break;
		}
		case 2: {
			rd = request.getRequestDispatcher("admin_home.jsp");
			rd.forward(request, response);
			break;
		}
		case 3: {
			rd = request.getRequestDispatcher("employee_home.jsp");
			rd.forward(request, response);
			break;
		}
		case 4: {
			rd = request.getRequestDispatcher("customer_home.jsp");
			rd.forward(request, response);
			break;
		}
		default: {
			rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);

		}

		}

	}
}
