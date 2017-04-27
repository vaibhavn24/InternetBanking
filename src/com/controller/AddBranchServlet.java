package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Branch;

public class AddBranchServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Branch branch = Branch.populateBranch(request);
		branch.insertBranches();
		RequestDispatcher rd =  request.getRequestDispatcher("superadmin_showabranches.jsp");
		rd.forward(request, response);
	}
	
	
}
