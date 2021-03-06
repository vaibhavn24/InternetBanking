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

public class DeleteServiceServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		ServiceHelper serviceHelper = new ServiceHelper();
		String selectedId[] = request.getParameterValues("id");
		// String selectedMuliipleIds = "";
		StringBuffer sb = new StringBuffer();

		for (int i = 0; i < selectedId.length; i++) {
			sb.append(selectedId[i] + ",");
		}

		String id = sb.toString();
		id = id.substring(0, id.length() - 1);
		System.out.print("selected ID>>  " + id);

		int i = serviceHelper.deleteService(id);
		if (i > 0) {
			System.out.println("Delete record successifully>> ");
		}
		rd = request.getRequestDispatcher("/superadmin/superadmin_services.jsp");
		rd.forward(request, response);
	}
}
