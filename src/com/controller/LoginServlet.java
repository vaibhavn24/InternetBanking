package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.User;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = null;
		response.setContentType("text/html");

		String username = request.getParameter("userName");
		String originalPassword = request.getParameter("password");

		User user = User.getUserByUserNameAndPassword(username,
				originalPassword);

		if (user == null) {
			rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}

		int userType = user.getUserType();
		System.out.println("In log in Servlet" + userType);
		HttpSession session = request.getSession();
		session.setAttribute("loggedInUser", user);

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
