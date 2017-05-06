package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Branch;

public class UpdateBranchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		Branch branch = Branch.populateBranch(request);
		int id = Integer.parseInt(request.getParameter("branchId"));
		int i = branch.updateBranch(id);
		if (i > 0) {
			System.out.println("branch Update Successifully>> ");
		}

		RequestDispatcher rd = request
				.getRequestDispatcher("/superadmin/superadmin_showabranches.jsp");
		rd.forward(request, response);

	}

}
