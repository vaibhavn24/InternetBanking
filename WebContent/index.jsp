		<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/css.css" rel="stylesheet" type="text/css">
<link href="css/KItables.css" rel="stylesheet" type="text/css">
<link href="css/menu.css" rel="stylesheet" type="text/css">
<link href="css/standard.css" rel="stylesheet" type="text/css">
<link href="css/tables.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript" src="validation.js"></script>
<body>
	<div id="container">
		<jsp:include page="outside_header.jsp"></jsp:include>

		<div id="content-container">
			<div id="content">

				<marquee>
					<h2 style="color: red;">
						<i> - Welcome - </i>
					</h2>
				</marquee>
				<br />
				<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img
					src="images/home.jpg" width="550" height="400px" />
			</div>

			<div id="aside">

				<h2>Login :-</h2>


				<jsp:include page="login.jsp"></jsp:include>

				<p>
					* Online banking is the practice of making bank transactions or
					paying bills via the Internet. <br />
					<br />* Security is always an issue with Internet transactions.
					Although information is encrypted , and the chances of an account
					being hacked are slim, it happen.
				</p>

			</div>


			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>