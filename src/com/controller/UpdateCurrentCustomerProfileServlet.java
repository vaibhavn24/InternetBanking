package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Address;
import com.model.CustomerType;
import com.model.User;
import com.model.UserType;

@MultipartConfig
public class UpdateCurrentCustomerProfileServlet extends HttpServlet {
	private static final long serialVersionUID = -2544900615931254722L;
	

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = null;
		RequestDispatcher rd;
		int userId;

		user = User.populateUserForUpadteByRequest(request);
		int id = Integer.parseInt(request.getParameter("updateEmpId"));
		user.updateUser(id);
		userId = user.getCurrentUserId(user.getEmail());
		Address localAddress = Address.populateLocalAddress(request, userId);
		localAddress.updateAddress();
		Address permanantAddress = Address.populatePermanantAddress(request,
				userId);
		permanantAddress.insertAddress();

		rd = request.getRequestDispatcher("customer_home.jsp");
		rd.forward(request, response);

	}
}