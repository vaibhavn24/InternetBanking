package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helper.SecurityQuestionHelper;
import com.helper.SecurityQuestionInterface;

public class UpdateQusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;

		String name = request.getParameter("securityQuestion");
		int id = Integer.parseInt(request.getParameter("qusId"));
		SecurityQuestionInterface securityQuestionHelper = new SecurityQuestionHelper();
		int i = securityQuestionHelper.updateSecurityQuestion(id, name);
		if (i > 0) {
			System.out.println("Security Question Update Successifully>> ");
		}

		rd = request.getRequestDispatcher("/superadmin/super_adminshow_questions.jsp");
		rd.forward(request, response);

	}

}
