<%@ include file="/other/importclasses.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<link rel="icon" type="image/png" href="/InternetBanking/images/bankicon.ico">
<link href="/InternetBanking/css/common.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="/InternetBanking/css/styles.css">
<link href="/InternetBanking/css/KItables.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBanking/css/menu.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBanking/css/standard.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBanking/css/tables.css" rel="stylesheet"
	type="text/css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
</head>
<script type="text/javascript" src="validation.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#username").blur(function() {
			var x1 = document.getElementById("username").value;
			$.get("AjaxUserNameServlet?username=" + x1, function(data) {
				if (data != "") {
					alert(data);
				}
			});
		});
	});
</script>
<%@ include file="/other/outside_header.jsp"%>

<body>
	<div id="content">
		<h4 style="text-align: left;">
			<b>Please Enter the New Password Below</b>
		</h4>
		<form action="updateuserpasswordofadminemp" method="post"
			onsubmit="return forgetpasswordform(this);">
			<table class="table50" align='left'>
				<tr>
					<td width=30%>User Name</td>
					<td width=70%><input type="text" name="userName" id="username"
						placeholder="User Name" size=15 maxlength=30
						title="max. 20 characters" /> &nbsp;&nbsp;&nbsp;</td>
				</tr>
				<tr>
					<td width=30%>New Password</td>
					<td width=70%><input type="password" name="password"
						placeholder="New Password" size=20 maxlength=20
						title="max. 20 characters" /> &nbsp;&nbsp;&nbsp;</td>
				</tr>
				<tr>
					<td width=30%>Confirm Password</td>
					<td width=70%><input type="password" name="confirmpassword"
						placeholder="Confirm Password" size=20 maxlength=20
						title="max. 20 characters" /> &nbsp;&nbsp;&nbsp; <input
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
<%@ include file="/other/footer.jsp"%>
</html>