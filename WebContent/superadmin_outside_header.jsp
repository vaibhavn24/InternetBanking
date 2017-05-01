<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div id="header">
	
	<div id="header">
	<img src="images/index.jpg" width="100%" height="50 px" />
</div>
	
	</div>

	<div id="navigation">
		<ul>

			<li><a href="home.jsp">Home</a></li>
		
			<li class="dropdown"><a href="help.jsp" class="dropbtn">User</a>
							<div class="dropdown-content">
								<a href="superadmin_showadmin.jsp">Admin</a> 
								<a href="superadmin_showemployee.jsp">Employee</a>
								<a href="superadmin_showcustomer.jsp">Customer</a>
								<!--  <a href="#">Link 3</a> -->
							</div></li>

			<li class="dropdown">
								<a href="aboutus.jsp" class="dropbtn">Add Branches</a>
									<div class="dropdown-content">
										<a href="superadmin_showabranches.jsp">Add</a>
									</div>
						</li>
			
			
		<li class="dropdown">
							 <a href="prodandserv.jsp" class="dropbtn">Services</a>
								<div class="dropdown-content">
									<a href="superadmin_showservices.jsp">show services</a>
								</div> 
						</li> 
		
			
			<li class="dropdown"><a href="prodandserv.jsp"
							class="dropbtn">Security question</a>
							  <div class="dropdown-content">				    
								<a href="super_adminshow_questions.jsp">Show</a>
											    </div> </li>
			
			
		
						</ul>
						</div>
			<table class="width100">
			<tr>
				<td>
					<table class="toplinks">
						<tr>
							<td>
								<table class="toplinks">
									<tr>
										<td align="right"><a href="#" target="_blank">Whats
												New!!</a> &nbsp;&nbsp;<font color=white>|</font>&nbsp;&nbsp;
												 <a
											href="index.jsp"> Sign out </a></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
</body>
</html>