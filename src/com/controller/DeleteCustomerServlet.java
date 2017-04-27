package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helper.AddressHelper;
import com.helper.AddressInterface;
import com.helper.AdminHelper;
import com.helper.AdminInterface;
import com.helper.CustomerHelper;
import com.helper.CustomerInterface;
import com.helper.EmployeeHelper;
import com.helper.EmployeeInterface;
import com.helper.SecurityQuestionHelper;
import com.helper.SecurityQuestionInterface;

public class DeleteCustomerServlet extends HttpServlet {
	RequestDispatcher rd;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Delete Customer>> ");
		String selectedId[] = request.getParameterValues("id");
		CustomerInterface custInterface = new CustomerHelper();
		AddressInterface addressInterface = new AddressHelper();
		String selectedMuliipleIds = "";
		StringBuffer sb = new StringBuffer();

		for (int i = 0; i < selectedId.length; i++) {
			sb.append(selectedId[i] + ",");
		}
		String id = sb.toString();
		id = id.substring(0, id.length() - 1);
		addressInterface.deleteAdminAddress(id);
		custInterface.deleteCustomer(id);
		rd = request.getRequestDispatcher("superadmin_showcustomer.jsp");
		rd.forward(request, response);
	}
}
