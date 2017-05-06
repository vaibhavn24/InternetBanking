package com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.captcha.botdetect.web.servlet.Captcha;
import com.classes.Account;
import com.helper.AccountHelper;
import com.helper.AddressHelper;
import com.helper.CustomerTypeHelper;
import com.helper.UserHelper;
import com.model.Address;
import com.model.CustomerType;
import com.model.User;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		User user = null;
		RequestDispatcher rd;
		int userId;
			System.out.println("I am in register servlet");
		Map<String, String> messages = new HashMap<String, String>();
		request.setAttribute("messages", messages);
		
		Captcha captcha = Captcha.load(request, "exampleCaptchaTag");
		boolean isHuman = captcha.validate(request.getParameter("captchaCode"));
		if (!isHuman) {
			System.out.println("I am in register servlet");
			messages.put("captchaIncorrect", "Incorrect code");
			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/register.jsp");
			dispatcher.forward(request, response);

		} else {
			messages.put("captchaCorrect", "Correct code");
			user = UserHelper.populateUserByRequest(request);
			user.insertUser();
			userId = user.getCurrentUserId(user.getEmail());
			Long AcNumber = Account.AcNum();
			System.out.println("Your A/C Num is >> " + AcNumber);
			AccountHelper.insertAcNumber(AcNumber, userId);

			CustomerType customerType = CustomerTypeHelper
					.populateCustomerType(request);
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

}
