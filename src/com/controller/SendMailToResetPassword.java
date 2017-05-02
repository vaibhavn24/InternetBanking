package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.EncryptDecrypt;
import com.classes.Mailer;
import com.dbutility.DbUtil;
import com.model.User;

public class SendMailToResetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		Connection con;
		Statement stmt;
		ResultSet rs;

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String to = request.getParameter("email");
		User user = new User();
		int userid = user.getCurrentUserId(to);
		String id = String.valueOf(userid);
		String eid = EncryptDecrypt.encryptData(id);

		con = DbUtil.getConnection();
		String sql = "select email from user where email like '" + to + "' ";
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				String subject = "change the password of the account";

				String msg = "Hello; "
						+ "to reset the password please click the below link.."
						+ "http://localhost:8081/InternetBanking/CallForgetPasswordServlet?eid="
						+ eid;

				Mailer.send(to, subject, msg);
				String msg1 = "message has been sent successfully "
						+ "\n"
						+ "To change password please go to your gmai inbox and click the link given in the message"
						+ "\n " + "Thank you ";
				request.setAttribute("msg1", msg1);
				rd = request.getRequestDispatcher("gsuc.jsp");

			} else {
				String msg2 = "The email address you enter is Not register Please Enter the Valied Email address";
				request.setAttribute("msg2", msg2);
				rd = request.getRequestDispatcher("gsuc.jsp");

			}

			rd.forward(request, response);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			out.close();
		}

	}
}
