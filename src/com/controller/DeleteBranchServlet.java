package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helper.BranchesHelper;
import com.helper.BranchesHelperInterface;
import com.helper.SecurityQuestionHelper;
import com.helper.SecurityQuestionInterface;

public class DeleteBranchServlet extends HttpServlet {
	RequestDispatcher rd;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		BranchesHelperInterface bInterface = new BranchesHelper();
		String selectedId[] = request.getParameterValues("id");

		/*
		 * For Checking 
		 * 
		 * if (selectedId != null && selectedId.length != 0) {
			System.out.println("You have selected: ");
			for (int i = 0; i < selectedId.length; i++) {
				System.out.println("selected Ids>> " + selectedId[i]);
			}
		}*/

		String selectedMuliipleIds = "";
		StringBuffer sb = new StringBuffer();

		for (int i = 0; i < selectedId.length; i++) {
			sb.append(selectedId[i] + ",");
		}

		String id = sb.toString();
		id = id.substring(0, id.length() - 1);
		System.out.print("selected ID>>  " + id);

		int i = bInterface.deleteBranch(id);
		if (i > 0) {
			System.out.println("Delete record successifully>> ");
		}
		rd = request.getRequestDispatcher("superadmin_showabranches.jsp");
		rd.forward(request, response);
	}
}
