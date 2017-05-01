<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%-- <jsp:include page="usertype.jsp"></jsp:include> --%>
<%-- <%@ include file="usertype.jsp" %> --%>

</head>
<script type="text/javascript" src="validation.js" ></script>
<body>
	<form action="login" method="post" onsubmit="return checklogin(this);">
		<table>
			<tr>
				<td align='center' colspan="2"><font size="2"><strong>Username:</strong></font>
					<input type="text" name="userName" id="TextBox"></td><br>
			</tr>
			<tr>
				<td align='center' colspan="2"><font size="2"><strong>Password:</strong></font>
					<input type="password" name="password" id="TextBox"></td>
			</tr>

			<tr>
				<td colspan="2" align='center'>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit"
					name="submit" value="Login"> <input type="Reset"
					name="Reset" value="Reset">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="getGmailForSendingEmail.jsp">forget
						password</a>
				</td>
			</tr>
		</table>
		<br> <br> <br> Yet Not Registered!! <a
			href="register.jsp">Register Here</a>

	
	</form>
</body>
</html>