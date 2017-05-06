<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<script type="text/javascript" src="validation.js"></script>
<script type="text/javascript">
var blink_speed = 500;
var t = setInterval(function () {
    var ele = document.getElementById('blinker');
    ele.style.visibility = (ele.style.visibility == 'hidden' ? '' : 'hidden');
}, blink_speed);
</script>
<body>
	<form action="login" method="post" onsubmit="return checklogin()">
	<fieldset style="background-color: #c1f9f3;width: 300px;border-color: red;">
		<table>
			<tr>
				<td align='center' colspan="2"><font size="2"><strong>Username:</strong></font>
					<input type="text" name="userName" id="userName" />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<div align="center" style="font-size: 12; color: red"
						id="userName_error"></div></td>
			</tr>
			<tr>
				<td align='center' colspan="2"><font size="2"><strong>Password:</strong></font>
					<input type="password" name="password" id="password" />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<div style="font-size: 12; color: red" id="password_error"></div></td>
			</tr>

			<tr>
				<td colspan="2" align='center'><input type="submit"
					name="submit" value="Login" /> <input type="Reset"
					name="Reset" value="Reset" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><a
					href="/InternetBanking/other/getGmailForSendingEmail.jsp">forget
						password</a></td>
			</tr>
		</table>
		</fieldset>
		<br> <br> <br> <span id="blinker" style="color: red;"><b>Yet
			Not Registered!!</b></span> <a href="/InternetBanking/customer/register.jsp">Register
			Here</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


	</form>
</body>
</html>