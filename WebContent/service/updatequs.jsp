<%@page import="com.model.Service"%>
<%@page import="com.helper.ServiceHelper"%>
<%@page import="com.helper.ServiceInterface"%>
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

<%@ include file="/superadmin/superadmin_outside_header.jsp"%>

<body>
	<div id="contentview">
		<h1 style="text-align: center;">
			<b>Service</b>
		</h1>
		<form action="updateservice" method="post"
			onsubmit="return serviceform(this);">
			<table class="table50" align='center'>
				<tr>
					<td width=30%>Update Service</td>

					<%
						int id = Integer.parseInt(request.getParameter("ilRecId"));
						System.out.println("Selected ID>> " + id);
						ServiceInterface serviceHelper = new ServiceHelper();
						Service service = serviceHelper.showSelectedService(id);
					%>

					<td width=70%><input type="text" name="service"
						value="<%=service.getName()%>" placeholder="Service"
						size=80 maxlength=80 title="max. 80 characters" />
						&nbsp;&nbsp;&nbsp;</td>

				</tr>
				<tr>
					<td colspan="2" align='center'>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="hidden"
						name="id" id="id" value="<%=service.getId()%>" /> <input
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