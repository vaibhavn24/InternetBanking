package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helper.SecurityQuestionHelper;
import com.helper.SecurityQuestionInterface;
import com.model.Question;

public class AddQuestionServlet extends HttpServlet{
	RequestDispatcher rd;
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		SecurityQuestionInterface questionHelper = new SecurityQuestionHelper();
		
		Question question = questionHelper.setSecurityQuestionValue(request);
		question.insertSecurityQuestion(question);
		rd = request.getRequestDispatcher("super_adminshow_questions.jsp");
		rd.forward(request, response);
		
	}

}
