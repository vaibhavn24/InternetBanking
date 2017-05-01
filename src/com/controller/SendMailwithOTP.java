package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.SendMailForOTP;

public class SendMailwithOTP extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5806208690127675923L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//char[] OTP = SendMailForOTP.OTP;
		
		String email = request.getParameter("email");
		System.out.println("email from modal to sendmailwithOTP >>"+email);
	//	SendMailForOTP.sendMailwithOPT(email );
		
	}
}
