<%@ include file="/other/importclasses.jsp"%>
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
		<img src="/InternetBanking/images/logo2.png" width="30%" height="50px" />
	</div>
	<hr />
	<table class="width100">

		<%
			User user1 = (User) session.getAttribute("loggedInUser");
			User user = UserHelper.getUserById(user1.getId());
			if (user.getImage() != null) {

				InputStream is = user.getImage();

				try (ByteArrayOutputStream os = new ByteArrayOutputStream();) {
					byte[] buffer = new byte[0xFFFF];

					for (int len; (len = is.read(buffer)) != -1;)
						os.write(buffer, 0, len);
					String imgDataBase64 = new String(Base64.getEncoder()
							.encode(os.toByteArray()));
		%>


		<tr>
			<td>
				<table class="toplinks">
					<tr>
						<td>
							<table class="toplinks">
								<tr>
									<td align="right"><a
										href="/InternetBanking/other/showprofile.jsp?ilRecId=<%=user.getId()%>"><img
											src="data:image/gif;base64,<%=imgDataBase64%>"
											alt="update profile" width="25" height="25" border="0"
											align="middle"></a>&nbsp;&nbsp; <a href="#" target="_blank">Whats
											New!!</a> &nbsp;&nbsp;<font color=white>|</font>&nbsp;&nbsp; <a
										href="/InternetBanking/index.jsp"> Sign out </a></td>
								</tr>
								<%
									}
									}
								%>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<div id="navigation">
		<ul>

			<li><a href="/InternetBanking/superadmin/superadmin_home.jsp">Home</a></li>

			<li class="dropdown"><a href="#" class="dropbtn">User</a>
				<div class="dropdown-content">
					<a href="/InternetBanking/superadmin/superadmin_showadmin.jsp">Admin</a>
					<a href="/InternetBanking/superadmin/superadmin_showemployee.jsp">Employee</a>
					<a href="/InternetBanking/superadmin/superadmin_showcustomer.jsp">Customer</a>
					<!--  <a href="#">Link 3</a> -->
				</div></li>

			<li class="dropdown"><a href="#" class="dropbtn"> Branches</a>
				<div class="dropdown-content">
					<a href="/InternetBanking/branch/addbranch.jsp">Add</a> <a
						href="/InternetBanking/superadmin/superadmin_showabranches.jsp">show</a>
				</div></li>


			<li class="dropdown"><a href="#" class="dropbtn">Services</a>
				<div class="dropdown-content">
					<a href="/InternetBanking/superadmin/superadmin_showservices.jsp">show
						services</a>
				</div></li>


			<li class="dropdown"><a href="#" class="dropbtn">Security
					question</a>
				<div class="dropdown-content">
					<a href="/InternetBanking/question/addSecurityQuestion.jsp">Add</a>
					<a href="/InternetBanking/superadmin/super_adminshow_questions.jsp">Show</a>
				</div></li>



		</ul>
	</div>

</body>
</html>