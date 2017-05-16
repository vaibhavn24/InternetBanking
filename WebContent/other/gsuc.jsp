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
<link rel="icon" type="image/png" href="/InternetBanking/images/bankicon.ico">	
</head>
<script type="text/javascript" src="validation.js"></script>
<%@ include file="/other/outside_header.jsp"%>
<body>
	<div id="content">

		<%
			if (request.getAttribute("msg1") != null) {
		%>
		<%=request.getAttribute("msg1")%>

		<%
			} else {
		%>

		<h4 style="color: red"><%=request.getAttribute("msg2")%></h4>

		<%
			}
		%><br>
	</div>
</body>
<%@ include file="/other/footer.jsp"%>
</html>