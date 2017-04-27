<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href="styles.css">
	<link href="css/KItables.css" rel="stylesheet" type="text/css">
	<link href="css/menu.css" rel="stylesheet" type="text/css">
	<link href="css/standard.css" rel="stylesheet" type="text/css">
	<link href="css/tables.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
		var message = "<?= $sgCaption ?>";
</script>

<title>admin show</title>
</head>
<body>
<jsp:include page="superadmin_outside_header.jsp"></jsp:include>
				
			
				<center>
				<table class="table100">
				<tr>
					<th colspan="15">
						List of Vendor
					</th>
				</tr>
				<tr>
					<td width="3%">
						Sr No
					</td>
					<td width="8%">
						First Name
					</td>
					<td width="7%">
						Last Name
					</td>
					<td width="9%">
						Gender
					</td>
					<td width="7%">
						Address
					</td>
					<td width="6%">
						City
					</td>
					<td width="7%">
						State
					</td>
					<td width="6%">
						Country
					</td>
					<td width="7%">
						Mobile Number
					</td>
					<td width="8%">
						Email
					</td>
					<td width="8%">
						Account Number
					</td>
					<td width="8%">
						WebSite Name
					</td>
					<td width="4%">
						Update
					</td>
					<td width="4%">
						Delete
					</td>
				</tr>	
				 
				<%--  <%		int i = 0;
				        Session  session1 = HibernateCode.getSession();
						Transaction t = session1.beginTransaction();
				        Criteria cr = session1.createCriteria(VendorRegister.class);
				        List <VendorRegister>list = cr.list();
				        for(VendorRegister v : list)
				        	
				        {
				        %>
				        	 <tr>
				        			 <td>
				        					<%=++i %> &nbsp;
				        			 </td>
				        			  <td>
				        				 <%=v.getFirstName()%>&nbsp;
				        			 </td>
				        			  <td>
				        				 <%=v.getLastName()%>&nbsp;
				        			 </td>
				        			 <td>
				        				 <%=v.getAddress()%>&nbsp;
				        			 </td>
				        			 <td>
				        				 <%=v.getCity()%>&nbsp;
				        			 </td>
				        			  <td>
				        				 <%=v.getState()%>&nbsp;
				        			 </td>
				        			  <td>
				        				 <%=v.getCountry()%>&nbsp;
				        			 </td>
				        			  <td>
				        				 <%=v.getOfficeNumber()%>&nbsp;
				        			 </td>
				        			  <td>
				        				 <%=v.getMobileNumber()%>&nbsp;
				        			 </td>
				        			  <td>
				        				 <%=v.getEmail()%>&nbsp;
				        			 </td>
				        			  <td>
				        				 <%=v.getBankName()%>&nbsp;
				        			 </td>
				        			  <td>
				        				 <%=v.getAccountNumber()%>&nbsp;
				        			 </td>
				        			  <td>
				        				 <%=v.getWebSiteName()%>&nbsp;
				        			 </td>
										<td>
				        				<form action="updatevendor.jsp" method="GET">
  											  <input type="hidden" id=<%=v.getId()%> name="ilRecId" value=<%=v.getId()%>>
												<input type="submit" value ="update">   
										</form>
				        			 </td>
									<td>
				        				<form action="deletevendor.jsp" method="GET">
  											  <input type="hidden" id=<%=v.getId()%> name="ilRecId" value=<%=v.getId()%>>
												<input type="submit" value ="Delete">   
										</form>
				        			 </td>
				        	 </tr>
				   <% } %>   --%>
			</table>
			</center>
			
				
		<%@ include file="footer.jsp" %>
</body>
</html>