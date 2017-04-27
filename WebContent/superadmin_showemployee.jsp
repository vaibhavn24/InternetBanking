<%@page import="com.helper.EmployeeHelper"%>
<%@page import="com.helper.EmployeeInterface"%>
<%@page import="com.model.User"%>
<%@page import="com.helper.AdminHelper"%>
<%@page import="com.helper.AdminInterface"%>
<%@page import="com.helper.SecurityQuestionInterface"%>
<%@page import="com.helper.SecurityQuestionHelper"%>
<%@page import="com.model.Question"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href="styles.css">
<link href="css/KItables.css" rel="stylesheet" type="text/css">
<link href="css/menu.css" rel="stylesheet" type="text/css">
<link href="css/standard.css" rel="stylesheet" type="text/css">
<link href="css/tables.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

function deleted(){
	document.showqusform.action="./deleteemployee";
	document.showqusform.submit();
}
</script>
<title>show employee page</title>
</head>
<body>
	<jsp:include page="superadmin_outside_header.jsp"></jsp:include>
	<table class="width100">
		<td width='66%' align='center'><a href="admin_register.jsp">
				<u> add new employee </u>
		</a></td>
		</tr>
	</table>
	<form name="showqusform">
		<center>
			<table class="table100">
				<tr>
					<th colspan="3">List of Employee</th>
				</tr>
				<tr>
					<td width="12%">Sr No</td>
					<td width="86%">Name / Update</td>
					<td width="2%">Delete</td>
				</tr>
				<%		int i = 0;
				EmployeeInterface emp1 = new EmployeeHelper();
						
				      	List<User> list = emp1.getAllEmployee();
				      			
				        for(User emp : list)
				        {
				        %>
				<tr>
					<td><%=++i %>&nbsp;
					&nbsp;</td>
					<td><a href="updatedemployeeregister.jsp?ilRecId=<%=emp.getId()%>">
					<u><%=emp.getFirstName()+" "+emp.getLastName()%></a></u> &nbsp;</td>
					
					<td><input type="checkbox" name="id" value=<%=emp.getId()%>></td>
				</tr>
				<% } %>
				<td></td>
				<td></td>
				<td><input type="submit" value="delete" onClick="deleted()"></td>
			</table>
			<table class="width100">
				<td width='66%' align='center'><a
					href="admin_register.jsp"> <u> add new employee </u>
				</a></td>
				</tr>
			</table>
	</form>
	</center>


	<%@ include file="footer.jsp"%>
</body>
</html>