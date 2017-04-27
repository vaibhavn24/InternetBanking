<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.model.Question"%>
<%@page import="java.util.List"%>
<%@page import="com.classes.QuestionCache"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<link href="css/css.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles.css">
<link href="css/KItables.css" rel="stylesheet" type="text/css">
<link href="css/menu.css" rel="stylesheet" type="text/css">
<link href="css/standard.css" rel="stylesheet" type="text/css">
<link href="css/tables.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript" src="validation.js"></script>
<jsp:include page="outside_header.jsp"></jsp:include>
<body>
	<div id="content">
		<h4 style="text-align: left;">
			<b>Please Enter the New Password Below</b>
		</h4>
		<form action="forgetpassword" method="post"
			onsubmit="return forgetpasswordform(this);">
			<table class="table50" align='left'>
				<tr>
					<td width=30%>New Password</td>
					<td width=70%><input type="password" name="password"
						placeholder="New Password" size=20 maxlength=20
						title="max. 20 characters"> &nbsp;&nbsp;&nbsp;</td>
				</tr>
				<tr>
					<td width=30%>Confirm Password</td>
					<td width=70%><input type="password" name="confirmpassword"
						placeholder="Confirm Password" size=20 maxlength=20
						title="max. 20 characters"> &nbsp;&nbsp;&nbsp; <input
						type="hidden" name="eid" value="<%=request.getParameter("eid")%>">
					</td>
				</tr>
				<tr>
					<td colspan="2" align='center'>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit"
						name="submit" value="Save"> <input type="Reset"
						name="Reset" value="Reset">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>