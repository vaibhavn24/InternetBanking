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
		document.showqusform.action = "./deletequestion";
		document.showqusform.submit();
	}
</script>
<title>show admin</title>
</head>

<%@ include file="/superadmin/superadmin_outside_header.jsp"%>

<body>
	<div id="contentview">
		<table class="width100">
			<td width='66%' align='center'><a
				href="/InternetBanking/admin/admin_register.jsp"> <u> add
						new admin </u>
			</a></td>
			</tr>
		</table>
		<form name="showadminform">
			<table class="tableadmin100" align="center">
				<tr>
					<th colspan="3">List of Admins</th>
				</tr>
				<tr>
					<td width="12%">Sr No/Update</td>
					<td width="86%">Name</td>
					<td width="2%">Delete</td>
				</tr>
				<%
					int i = 0;
					AdminInterface admin1 = new AdminHelper();

					List<User> list = admin1.getAllAdmins();

					for (User admin : list) {
				%>
				<tr>
					<td><a
						href="/InternetBanking/admin/updatedaminregister.jsp?ilRecId=<%=admin.getId()%>">
							<u><%=++i%></u> &nbsp;
					</a>&nbsp;</td>
					<td><%=admin.getFirstName() + " " + admin.getLastName()%> &nbsp;</td>
					<td><input type="checkbox" name="id" value=<%=admin.getId()%> /></td>

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
								new admin </u>
					</a></td>
				</tr>
			</table>
		</form>
	</div>

	<%@ include file="/other/footer.jsp"%>
</body>
</html>