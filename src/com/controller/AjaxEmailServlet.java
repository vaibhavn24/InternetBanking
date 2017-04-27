package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.EmailUsernameVerification;

public class AjaxEmailServlet extends HttpServlet{
	
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			  throws ServletException, IOException {
				  
				 
			    doPost(request, response);
			  }

			  public void doPost(HttpServletRequest request, HttpServletResponse response)
			  throws ServletException, IOException {
				Boolean b = false;
			    String email = request.getParameter("email");
			    EmailUsernameVerification euvs = new EmailUsernameVerification();
			    try {
					 b  = euvs.isEmailAddressExist(email);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			    
			    if (b == true){
				    PrintWriter out = response.getWriter();
				    out.println("Email Exist Please Enter Different");
			    }
			   
			    
			  
			
			    }
			  }
			  

