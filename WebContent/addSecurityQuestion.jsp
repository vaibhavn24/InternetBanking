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
<jsp:include page="superadmin_outside_header.jsp"></jsp:include>
<body>
<div id="contentview">
	<h3 style="text-align: center;">
		<b>Add New SecurityQuestion</b>
	</h3>
	<form action="addquestion" method="post" onsubmit="return securityquestionform(this);">
		<table class="table50" align='center'>
			<tr>
				<td width=40%>Security Question</td>
				<td width=60%><input type="text" name="securityQuestion"
					placeholder="Security Question" size=80 maxlength=80
					title="max. 80 characters"> &nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2" align='center'>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit"
					name="submit" value="save"> <input type="Reset"
					name="Reset" value="Reset">
				</td>
			</tr>
		</table>
	</form>
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>