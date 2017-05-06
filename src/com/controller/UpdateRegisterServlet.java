package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Address;
import com.model.User;

@MultipartConfig
public class UpdateRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = null;
		RequestDispatcher rd;
		int userId;
		user = User.populateUserForUpadteByRequest(request);
		int  id = Integer.parseInt(request.getParameter("updateEmpId"));
		int userType = Integer.parseInt(request.getParameter("userType1"));
		user.updateUser(id);
		userId = user.getCurrentUserId(user.getEmail());
		Address localAddress = Address.populateLocalAddress(request, userId);
		localAddress.updateAddress();
		Address permanantAddress = Address.populatePermanantAddress(request, userId);
		permanantAddress.insertAddress();
		
		switch (userType) {
		case 1: {
			rd = request.getRequestDispatcher("/superadmin/superadmin_home.jsp");
			rd.forward(request, response);
			break;
		}
		case 2: {
			rd = request.getRequestDispatcher("/superadmin/superadmin_showadmin.jsp");
			rd.forward(request, response);
			break;
		}
		case 3: {
			rd = request.getRequestDispatcher("/superadmin/superadmin_showemployee.jsp");
			rd.forward(request, response);
			break;
		}
		case 4: {
			rd = request.getRequestDispatcher("/superadmin/superadmin_showcustomer.jsp");
			rd.forward(request, response);
			break;
		}
		default: {
			rd = request.getRequestDispatcher("/superadmin/superadmin_home.jsp");
			rd.forward(request, response);
		}
		
	}

}
}