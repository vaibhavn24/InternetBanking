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
<script type="text/javascript">
	function deleted() {
		document.showqusform.action = "./deleteemployee";
		document.showqusform.submit();
	}
</script>
<title>show employee page</title>
</head>
<body>
	<%@ include file="/superadmin/superadmin_outside_header.jsp"%>

	<table class="width100">
		<tr>
			<td width='66%' align='center'><a
				href="/InternetBanking/admin/admin_register.jsp"> <u> add
						new employee </u>
			</a></td>
		</tr>
	</table>
	<form name="showqusform">
		<center>
			<table class="table100">
				<tr>
					<th colspan="3">List of Employee</th>
				</tr>
				<tr>
					<td width="12%">Sr No</td>
					<td width="86%">Name / Update</td>
					<td width="2%">Delete</td>
				</tr>
				<%
					int i = 0;
					EmployeeInterface emp1 = new EmployeeHelper();

					List<User> list = emp1.getAllEmployee();

					for (User emp : list) {
				%>
				<tr>
					<td><%=++i%>&nbsp; &nbsp;</td>
					<td><a
						href="/InternetBanking/employee/updatedemployeeregister.jsp?ilRecId=<%=emp.getId()%>">
							<u><%=emp.getFirstName() + " " + emp.getLastName()%>
					</a></u> &nbsp;</td>

					<td><input type="checkbox" name="id" value=<%=emp.getId()%> /></td>
				</tr>
				<%
					}
				%>
				<td></td>
				<td></td>
				<td><input type="submit" value="delete" onClick="deleted()" /></td>
			</table>
			<table class="width100">
				<tr>
					<td width='66%' align='center'><a
						href="/InternetBanking/admin/admin_register.jsp"> <u> add
								new employee </u>
					</a></td>
				</tr>
			</table>
	</form>
	</center>


	<%@ include file="/other/footer.jsp"%>
</body>
</html>