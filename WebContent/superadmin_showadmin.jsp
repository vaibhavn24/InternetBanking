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
<link href="css/sidemenu.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

function deleted(){
	document.showqusform.action="./deletequestion";
	document.showqusform.submit();
}
</script>
<title>show admin page</title>
</head>
<jsp:include page="superadmin_outside_header.jsp"></jsp:include>
<body>
	<div id="contentview">
	<table class="width100">
		<td width='66%' align='center'><a href="admin_register.jsp">
				<u> add new admin </u>
		</a></td>
		</tr>
	</table>
	<form name="showadminform">
			<table class="tableadmin100" align="center">
				<tr>
					<th colspan="3">List of Admins</th>
				</tr>
				<tr>
					<td width="12%">Sr No/Update</td>
					<td width="86%">Name</td>
					<td width="2%">Delete</td>
				</tr>
				<%		int i = 0;
						AdminInterface admin1 = new AdminHelper();
						
				      	List<User> list = admin1.getAllAdmins();
				      			
				        for(User admin : list)
				        {
				        %>
				<tr>
					<td><a href="updatedaminregister.jsp?ilRecId=<%=admin.getId()%>">
							<u><%=++i %></u> &nbsp;
					</a>&nbsp;</td>
					<td><%=admin.getFirstName()+" "+admin.getLastName()%> &nbsp;</td>
					<td><input type="checkbox" name="id"
						value=<%=admin.getId()%>></td>

				</tr>
				<% } %>
				<td></td>
				<td></td>
				<td><input type="submit" value="delete" onClick="deleted()"></td>
			</table>
			<table class="width100">
				<td width='66%' align='center'><a
					href="admin_register.jsp"> <u> add new admin </u>
				</a></td>
				</tr>
			</table>
	</form>
</div>

	<%@ include file="footer.jsp"%>
</body>
</html>