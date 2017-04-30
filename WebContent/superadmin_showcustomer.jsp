<%@page import="com.helper.CustomerHelper"%>
<%@page import="com.helper.CustomerInterface"%>
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

<link href="css/common.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="styles.css">
<link href="css/KItables.css" rel="stylesheet" type="text/css">
<link href="css/menu.css" rel="stylesheet" type="text/css">
<link href="css/standard.css" rel="stylesheet" type="text/css">
<link href="css/tables.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

function deleted(){
	document.showqusform.action="./deletecustomer";
	document.showqusform.submit();
}
</script>
<title>show employee page</title>
</head>
<body>
 
<%@ include file="superadmin_outside_header.jsp" %>

 
	
	<table class="width100">
		<td width='66%' align='center'><a href="addSecurityQuestion.jsp">
				<u> add new customer </u>
		</a></td>
		</tr>
	</table>
	<form name="showqusform">
		<center>
			<table class="table100">
				<tr>
					<th colspan="3">List of customer</th>
				</tr>
				<tr>
					<td width="12%">Sr No</td>
					<td width="86%">Name / Update</td>
					<td width="2%">Delete</td>
				</tr>
				<%		int i = 0;
						CustomerInterface customer1 = new CustomerHelper();
				      	List<User> list = customer1.getAllCustomer();
				        for(User customer : list)
				        {
				        %>
				<tr>
					<td><%=++i %>&nbsp;
					&nbsp;</td>
					<td><a href="updatedcustomerregister.jsp?ilRecId=<%=customer.getId()%>">
					<u><%=customer.getFirstName()+" "+customer.getLastName()%></a></u> &nbsp;</td>
					
					<td><input type="checkbox" name="id" value=<%=customer.getId()%>></td>
				</tr>
				<% } %>
				<td></td>
				<td></td>
				<td><input type="submit" value="delete" onClick="deleted()"></td>
			</table>
			<table class="width100">
				<td width='66%' align='center'><a
					href="addSecurityQuestion.jsp"> <u> add new customer </u>
				</a></td>
				</tr>
			</table>
	</form>
	</center>


	<%@ include file="footer.jsp"%>
</body>
</html>