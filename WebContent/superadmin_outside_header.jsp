<%@page import="com.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="header" align="center" style="background-color: white;">
		<img src="images/logo2.png" width="30%" height="80px" />
	</div>
	<table class="width100">

		<%
User user = (User)session.getAttribute("loggedInUser");
%>
		<tr>
			<td>
				<table class="toplinks">
					<tr>
						<td>
							<table class="toplinks">
								<tr>
									<td align="right"><a
										href="showprofile.jsp?ilRecId=<%=user.getId()%>"><img
											src="images/profile.png" alt="update profile" width="25"
											height="25" border="0" align="middle"></a>&nbsp;&nbsp; <a
										href="#" target="_blank">Whats New!!</a> &nbsp;&nbsp;<font
										color=white>|</font>&nbsp;&nbsp; <a href="index.jsp"> Sign
											out </a></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<div id="navigation">
		<ul>

			<li><a href="home.jsp">Home</a></li>

			<li class="dropdown"><a href="help.jsp" class="dropbtn">User</a>
				<div class="dropdown-content">
					<a href="superadmin_showadmin.jsp">Admin</a> <a
						href="superadmin_showemployee.jsp">Employee</a> <a
						href="superadmin_showcustomer.jsp">Customer</a>
					<!--  <a href="#">Link 3</a> -->
				</div></li>

			<li class="dropdown"><a href="aboutus.jsp" class="dropbtn">Add
					Branches</a>
				<div class="dropdown-content">
					<a href="addbranch.jsp">Add</a> <a
						href="superadmin_showabranches.jsp">show</a>
				</div></li>


			<li class="dropdown"><a href="prodandserv.jsp" class="dropbtn">Services</a>
				<div class="dropdown-content">
					<a href="superadmin_showservices.jsp">show services</a>
				</div></li>


			<li class="dropdown"><a href="prodandserv.jsp" class="dropbtn">Security
					question</a>
				<div class="dropdown-content">
					<a href="addSecurityQuestion.jsp">Add</a> <a
						href="super_adminshow_questions.jsp">Show</a>
				</div></li>



		</ul>
	</div>

</body>
</html>