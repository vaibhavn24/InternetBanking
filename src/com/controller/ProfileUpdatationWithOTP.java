package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.SendMailForOTP;

public class ProfileUpdatationWithOTP extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4233337420797236795L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*int id = Integer.parseInt(request.getParameter("id)"));
		System.out.println("id>>>"+id);*/
		String UserOTP = request.getParameter("otp");
		String OriginalOTP1 = SendMailForOTP.OTP ;
		String OriginalOTP = String.valueOf(OriginalOTP1);
		if (SendMailForOTP.validate(UserOTP, OriginalOTP))
		{
			RequestDispatcher rd = request.getRequestDispatcher("updated_current_customerprofile.jsp");
			rd.forward(request, response);
		}
	   
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("customer_home.jsp");
			rd.forward(request, response);
		}
		
		
	}
}
