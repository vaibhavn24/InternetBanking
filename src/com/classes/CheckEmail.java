package com.classes;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbutility.DbUtil;

public class CheckEmail extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 718488979799253330L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		 String sn=request.getParameter("email1");
         Connection con = DbUtil.getConnection();
         Statement st = null;
		try {
			st = con.createStatement();
			PrintWriter out = response.getWriter();
	         ResultSet rs = st.executeQuery("select * from user where email='"+sn+"'");  // this is for name
	         if(rs.next())
	         {   
	             out.println("<font color=red>");
	             out.println("<p>Email already taken</p>");
	             out.println("<input type='hidden' id='actual' name='actual' value='taken'>");
	             out.println("</font>");
	             

	         }else {         
	        	 
	        	 out.println("<font color=green>");
	             out.println("<input type='hidden' id='actual' name='actual' value='available'>");
	             out.println("Available");
	             out.println("</font>");
	             
	        }
	         
	         
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			
	         try {
				st.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	         
		}

	}
}
