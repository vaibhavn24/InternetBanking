package com.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateUserPasswordAdminEmployeeRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// String eid = request.getParameter("eid");
		RequestDispatcher rd = request
				.getRequestDispatcher("updateuserpasswordadminemployee.jsp");
		rd.forward(request, response);
	}

}
