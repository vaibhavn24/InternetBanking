package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.Account;
import com.helper.AccountHelper;
import com.helper.AccountInterface;
import com.helper.AddressHelper;
import com.helper.CustomerTypeHelper;
import com.helper.UserHelper;
import com.model.Address;
import com.model.CustomerType;
import com.model.User;
import com.model.UserType;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	User user = null;
	UserType userType = null;
	CustomerType customerType = null;
	RequestDispatcher rd;
	int userId;
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		User user = UserHelper.populateUserByRequest(request);
		user.insertUser();
		userId = user.getCurrentUserId(user.getEmail());
		 Long AcNumber = Account.AcNum(userId);
		 System.out.println("Your A/C Num is >> "+AcNumber);
		 AccountHelper.insertAcNumber(AcNumber,userId);
		 
		CustomerType customerType = CustomerTypeHelper.populateCustomerType(
				request);
		customerType.insertCustomerType();
		Address localAddress = AddressHelper.populateLocalAddress(request,
				userId);
		localAddress.insertAddress();
		Address permanantAddress = AddressHelper.populatePermanantAddress(
				request, userId);
		permanantAddress.insertAddress();
		rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}

}
