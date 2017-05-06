<%@ include file="/other/importclasses.jsp"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Profile</title>
<link href="/InternetBanking/css/common.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="/InternetBanking/styles.css">
<link href="/InternetBanking/css/KItables.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBanking/css/menu.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBankingcss/standard.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBanking/css/tables.css" rel="stylesheet"
	type="text/css">
</head>
<script type="text/javascript" src="validation.js"></script>
<%@ include file="/superadmin/superadmin_outside_header.jsp"%>
<body>
	<table class="table100" align='center'>
		<tr>
			<th colspan=3>Profile</th>
		</tr>
		<tr>
			<%-- <%=user.getId()%> --%>
			<td width="10%">Name</td>
			<td><a
				href="/InternetBanking/superadmin/updatesuperadmin.jsp?ilRecId=<%=user.getId()%>">
					<%=user.getFirstName()+" "+user.getLastName()%></a></td>
		</tr>
		<tr>
			<td width="8%">Mother Name</td>
			<td><%=user.getMotherName()%></td>
		</tr>
		<tr>
			<td width="10%">Email</td>
			<td><%=user.getEmail()%></td>
		</tr>
		<tr>
			<td width="8%">Mobile</td>
			<td><%=" "+user.getPrimaryPhoneNumber()+" \n   "+user.getSecondaryPhoneNumber()%></td>
		</tr>
		<tr>
			<td width="8%">DOB</td>
			<td><%=user.getDateOfBirth()%></td>
		</tr>
		<tr>
			<td width="8%">Aadharcard</td>
			<td><%=user.getAadharcard()%></td>
		</tr>
		<tr>
			<td width="8%">Pancard</td>
			<td><%=user.getPancard()%></td>
		</tr>
		<tr>
			<td width="20%">Local Address</td>
			<%
				AddressInterface address1 = new AddressHelper();
				Address address = address1.showSelectedlocalAddress(user.getId());
				%>
			<td><%=address.getLine1()+", "+address.getLine2()+"\n"+
				address.getCity()+", "+address.getState()+"\n"+
				address.getCountry()+"\n "+address.getPincode()%></td>
		</tr>
		<tr>
			<td width="20%">Permanant Address</td>

			<%
				AddressInterface address2 = new AddressHelper();
				Address permanantaddress = address2.showSelectedPermanantAddress(user.getId());
     			%>
			<td><%=permanantaddress.getLine1()+", "+permanantaddress.getLine2()+"\n"+
					permanantaddress.getCity()+", "+permanantaddress.getState()+"\n"+
					permanantaddress.getCountry()+"\n"+permanantaddress.getPincode()%></td>
			<%--<td><%
					InputStream is = user.getImage();
					try (ByteArrayOutputStream os = new ByteArrayOutputStream();)
				    {
				        byte[] buffer = new byte[0xFFFF];

				        for (int len; (len = is.read(buffer)) != -1;)
				            os.write(buffer, 0, len);

				       os.toByteArray();
	
;								    }
					%></td> --%>
		</tr>
		<%-- <tr>
			<td>
			Profile picture
			</td>
			
			<td>
			
			<%if(user.getImage()!= null){
			
			InputStream is = user.getImage();
			
			try (ByteArrayOutputStream os = new ByteArrayOutputStream();)
		    {
		        byte[] buffer = new byte[0xFFFF];

		        for (int len; (len = is.read(buffer)) != -1;)
		            os.write(buffer, 0, len);		    
			String imgDataBase64=new String(Base64.getEncoder().encode( os.toByteArray()));
			%>
			
			<img src="data:image/gif;base64,<%=imgDataBase64%>" alt="images Here" width="100px" height="100px"/>
			<%} }%>
			</td>
			</tr>
			 --%>

	</table>
</body>
<%@ include file="/other/footer.jsp"%>
</html>