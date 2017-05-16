<%@ include file="/other/importclasses.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
<link rel="icon" type="image/png" href="/InternetBanking/images/bankicon.ico">	
<script type="text/javascript">
	function deleted() {
		document.showqusform.action = "./deletecustomer";
		document.showqusform.submit();
	}
</script>
<title>show employee page</title>
</head>
<body>

	<%@ include file="/superadmin/superadmin_outside_header.jsp"%>



	<table class="width100">
	</table>
	<form name="showqusform">

		<table class="table100" align="center">
			<tr>
				<th colspan="3">List of customer</th>
			</tr>
			<tr>
				<td width="12%">Sr No</td>
				<td width="86%">Name / Update</td>
				<td width="2%">Delete</td>
			</tr>
			<%
				int i = 0;
				CustomerInterface customer1 = new CustomerHelper();
				List<User> list = customer1.getAllCustomer();
				for (User customer : list) {
			%>
			<tr>
				<td><%=++i%>&nbsp; &nbsp;</td>
				<td><a
					href="/customer/updatedcustomerregister.jsp?ilRecId=<%=customer.getId()%>">
						<u><%=customer.getFirstName() + " "
						+ customer.getLastName()%>
				</a></u> &nbsp;</td>

				<td><input type="checkbox" name="id"
					value=<%=customer.getId()%> /></td>
			</tr>
			<%
				}
			%>
			<td></td>
			<td></td>
			<td><input type="submit" value="delete" onClick="deleted()" /></td>
		</table>
	</form>
	<%@ include file="/other/footer.jsp"%>
</body>
</html>