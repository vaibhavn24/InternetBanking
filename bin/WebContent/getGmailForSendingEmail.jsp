<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.model.Question"%>
<%@page import="java.util.List"%>
<%@page import="com.classes.QuestionCache"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="styles.css">
<link href="css/KItables.css" rel="stylesheet" type="text/css">
<link href="css/menu.css" rel="stylesheet" type="text/css">
<link href="css/standard.css" rel="stylesheet" type="text/css">
<link href="css/tables.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript" src="validation.js"></script>
<%@ include file="outside_header.jsp" %>
<body>
	<div id="content">
		<h3 style="text-align: left;">
			<b>Enter your email address which is register to us to reset your
				password</b>
		</h3>
		<form action="sendmail" method="post"
			onsubmit="return securitySuestionform(this);">
			<table class="table50" align='left'>
				<tr>
					<td width=30%>Email</td>
					<td width=70%><input type="text" name="email"
						placeholder="Email" size=50 maxlength=50
						title="max. 50 characters"> &nbsp;&nbsp;&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2" align='center'>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit"
						name="submit" value="send"> <input type="Reset"
						name="Reset" value="Reset">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>

<%@ include file="footer.jsp" %>
</html>