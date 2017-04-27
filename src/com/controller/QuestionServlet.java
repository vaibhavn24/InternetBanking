package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuestionServlet extends HttpServlet{
	RequestDispatcher rd;
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	/*	RegisterHelper registerHelper = new RegisterHelper();
		Question question = registerHelper.setSecurityQuestionValue(request);
		question.insertSecurityQuestion(question);
		rd = request.getRequestDispatcher("superadmin_home.jsp");
		rd.forward(request, response);*/
		
	}

}
