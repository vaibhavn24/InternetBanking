package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helper.AddressHelper;
import com.helper.AddressInterface;
import com.helper.AdminHelper;
import com.helper.AdminInterface;

public class DeleteAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		String selectedId[] = request.getParameterValues("id");
		AdminInterface adminInterface = new AdminHelper();
		AddressInterface addressInterface = new AddressHelper();
		// String selectedMuliipleIds = "";
		StringBuffer sb = new StringBuffer();

		for (int i = 0; i < selectedId.length; i++) {
			sb.append(selectedId[i] + ",");
		}
		String id = sb.toString();
		id = id.substring(0, id.length() - 1);
		addressInterface.deleteAdminAddress(id);
		adminInterface.deleteAdmin(id);
		rd = request.getRequestDispatcher("/superadmin/superadmin_showadmin.jsp");
		rd.forward(request, response);
	}
}
