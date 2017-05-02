package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helper.BranchesHelper;
import com.helper.BranchesHelperInterface;

public class DeleteBranchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		BranchesHelperInterface bInterface = new BranchesHelper();
		String selectedId[] = request.getParameterValues("id");
		// String selectedMuliipleIds = "";
		StringBuffer sb = new StringBuffer();

		for (int i = 0; i < selectedId.length; i++) {
			sb.append(selectedId[i] + ",");
		}

		String id = sb.toString();
		id = id.substring(0, id.length() - 1);
		bInterface.deleteBranch(id);
		rd = request.getRequestDispatcher("superadmin_showabranches.jsp");
		rd.forward(request, response);
	}
}
