<%@ include file="/other/importclasses.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<link rel="icon" type="image/png" href="/InternetBanking/images/bankicon.ico">
<link href="/InternetBanking/css/common.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="/InternetBanking/styles.css">
<link href="/InternetBanking/css/KItables.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBanking/css/menu.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBanking/css/standard.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBanking/css/tables.css" rel="stylesheet"
	type="text/css">

</head>
<script type="text/javascript" src="validation.js"></script>

<%@ include file="/superadmin/superadmin_outside_header.jsp"%>

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
						System.out.println("Selected ID>> " + id);
						SecurityQuestionInterface securityQuestionHelper = new SecurityQuestionHelper();
						Question question = securityQuestionHelper
								.showSelectedSecurityQuestion(id);
					%>

					<td width=70%><input type="text" name="securityQuestion"
						value="<%=question.getName()%>" placeholder="Security Question"
						size=80 maxlength=80 title="max. 80 characters" />
						&nbsp;&nbsp;&nbsp;</td>

				</tr>
				<tr>
					<td colspan="2" align='center'>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="hidden"
						name="qusId" id="qusId" value="<%=question.getId()%>" /> <input
						type="submit" name="submit" value="Save" /> <input type="Reset"
						name="Reset" value="Reset" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
<%@ include file="/other/footer.jsp"%>
</html>