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
public class UpdateRegisterServlet extends HttpServlet {
	User user = null;
	UserType userType = null;
	CustomerType customerType = null;
	RequestDispatcher rd;
	int userId;

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		user = User.populateAdminValue(request);
		int  id = Integer.parseInt(request.getParameter("updateEmpId"));
		int userType = Integer.parseInt(request.getParameter("userType1"));
		user.updateAdmin(id);
		userId = user.getCurrentUserId(user.getEmail());
		Address localAddress = Address.populateLocalAddress(request, userId);
		localAddress.updateAddress();
		Address permanantAddress = Address.populatePermanantAddress(request, userId);
		permanantAddress.insertAddress();
		
		switch (userType) {
		case 1: {
			rd = request.getRequestDispatcher("superadmin_home.jsp");
			rd.forward(request, response);
			break;
		}
		case 2: {
			rd = request.getRequestDispatcher("superadmin_showadmin.jsp");
			rd.forward(request, response);
			break;
		}
		case 3: {
			rd = request.getRequestDispatcher("superadmin_showemployee.jsp");
			rd.forward(request, response);
			break;
		}
		case 4: {
			rd = request.getRequestDispatcher("superadmin_showcustomer.jsp");
			rd.forward(request, response);
			break;
		}
		default: {
			rd = request.getRequestDispatcher("superadmin_home.jsp");
			rd.forward(request, response);
		}
		
	}

}
}