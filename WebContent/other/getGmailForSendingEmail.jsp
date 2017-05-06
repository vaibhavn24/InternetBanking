<%@ include file="/other/importclasses.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
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
<%@ include file="/other/outside_header.jsp"%>
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
						title="max. 50 characters" /> &nbsp;&nbsp;&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2" align='center'>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit"
						name="submit" value="send" /> <input type="Reset" name="Reset"
						value="Reset" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>

<%@ include file="/other/footer.jsp"%>
</html>