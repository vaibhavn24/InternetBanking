<%@page import="com.helper.SecurityQuestionInterface"%>
<%@page import="com.helper.SecurityQuestionHelper"%>
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

<%@ include file="superadmin_outside_header.jsp" %>

<body>
<div id="contentview">
	<h1 style="text-align: center;">
		<b>SecurityQuestion</b>
	</h1>
	<form action="updatesecurityquestion" method="post"
		onsubmit="return securityquestionform(this);">
		<table class="table50" align='center'>
			<tr>
				<td width=30%>Update Security Question</td>

				<% 
				 int id = Integer.parseInt(request.getParameter("ilRecId"));
				 System.out.println("Selected ID>> "+id);
				 SecurityQuestionInterface securityQuestionHelper = new SecurityQuestionHelper();
				 Question question = securityQuestionHelper.showSelectedSecurityQuestion(id);
				 %>

				<td width=70%><input type="text" name="securityQuestion"
					value="<%=question.getName()%>" placeholder="Security Question"
					size=80 maxlength=80 title="max. 80 characters">
					&nbsp;&nbsp;&nbsp;</td>

			</tr>
			<tr>
				<td colspan="2" align='center'>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="hidden"
					name="qusId" id="qusId" value="<%=question.getId() %>"> <input
					type="submit" name="submit" value="Save"> <input
					type="Reset" name="Reset" value="Reset">
				</td>
			</tr>
		</table>
	</form>
	</div>
</body>
<%@ include file="footer.jsp" %>
</html>