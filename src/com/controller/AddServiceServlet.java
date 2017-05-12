package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helper.SecurityQuestionHelper;
import com.helper.SecurityQuestionInterface;
import com.helper.ServiceHelper;
import com.helper.ServiceInterface;
import com.model.Question;
import com.model.Service;

public class AddServiceServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		ServiceInterface serviceHelper = new ServiceHelper();
		Service service = serviceHelper.setServiceValue(request);
		service.insertService(service);
		rd = request.getRequestDispatcher("/superadmin/superadmin_services.jsp");
		rd.forward(request, response);

	}
}
