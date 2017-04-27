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
<jsp:include page="outside_header.jsp"></jsp:include>
<body>
	<div id="content">

<%if (request.getAttribute("msg1")!= null){%>
	<%=request.getAttribute("msg1") %>
	
<%} else {%>

<h4 style="color: red"><%=request.getAttribute("msg2") %></h4>
	
<%} %><br>
</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>