package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.helper.ServiceHelper;
import com.helper.ServiceInterface;

public class UpdateServiceServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7304622660582289288L;

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;

		String name = request.getParameter("service");
		int id = Integer.parseInt(request.getParameter("id"));
		ServiceInterface serviceHelper = new ServiceHelper();
		int i = serviceHelper.updateServicen(id, name);
		if (i > 0) {
			System.out.println("Service Update Successifully>> ");
		}

		rd = request.getRequestDispatcher("/superadmin/super_adminshow_service.jsp");
		rd.forward(request, response);

	}
}
