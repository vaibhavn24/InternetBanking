package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helper.SecurityQuestionHelper;
import com.helper.SecurityQuestionInterface;

public class DeleteQuestionServlet extends HttpServlet {
	RequestDispatcher rd;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		SecurityQuestionInterface securityQuestionHelper = new SecurityQuestionHelper();
		String selectedId[] = request.getParameterValues("id");

		/*
		 * For Checking 
		 * 
		 * if (selectedId != null && selectedId.length != 0) {
			System.out.println("You have selected: ");
			for (int i = 0; i < selectedId.length; i++) {
				System.out.println("selected Ids>> " + selectedId[i]);
			}
		}*/

		String selectedMuliipleIds = "";
		StringBuffer sb = new StringBuffer();

		for (int i = 0; i < selectedId.length; i++) {
			sb.append(selectedId[i] + ",");
		}

		String id = sb.toString();
		id = id.substring(0, id.length() - 1);
		System.out.print("selected ID>>  " + id);

		int i = securityQuestionHelper.deleteSecurityQuestion(id);
		if (i > 0) {
			System.out.println("Delete record successifully>> ");
		}
		rd = request.getRequestDispatcher("super_adminshow_questions.jsp");
		rd.forward(request, response);
	}
}
