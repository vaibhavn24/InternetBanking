<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
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
		
			<li class="dropdown">
			<a href="javascript:void(0)" class="dropbtn">Employee</a>
           <div class="dropdown-content">
            <a href="addEmployee.jsp">Add Employee</a>
            <a href="viewEmployeeList.jsp">Update Employee</a>
             <!-- <a href="deleteEmployee.jsp">Delete Employee</a> -->
          </div>
			</li>
			
			<!-- <li class="dropdown">
			<a href="javascript:void(0)">Admin</a>
			<div class="dropdown-content">
			<a href="addAdmin.jsp">Add Admin</a>
			<a href="viewAdminList.jsp">Update Admin</a>
			<a href="deleteAdmin.jsp">Delete Admin</a>
			</div>
			</li> -->
			<li class="dropdown">
			<a href="javascript:void(0)">Branches</a>
			<div class="dropdown-content">
			
			<a href="viewBranchDetails.jsp">Update Branch</a>
			<!-- <a href="viewBranchDetails.jsp">Delete Branch</a>			 -->
			</div>
			</li>
			
			<li class="dropdown">
			<a href="javascript:void(0)">Questions</a>
			<div class="dropdown-content">
			
			<a href="viewQuestionList.jsp">Update Question</a>
			<!-- <a href="deleteQuestion.jsp">Delete Question</a> -->
			</div>
			</li>
			
			
			<li class="dropdown">
							 <a href="prodandserv.jsp" class="dropbtn">Services</a>
								<div class="dropdown-content">
									<a href="superadmin_showservices.jsp">show services</a>
								</div> 
						</li> 
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
												New!!</a> &nbsp;&nbsp;<font color=white>|</font>&nbsp;&nbsp; <a
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