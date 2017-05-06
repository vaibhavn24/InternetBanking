<%@ include file="/other/importclasses.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>branch</title>
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
<script type="text/javascript">
	function deleted() {
		document.showbranchform.action = "./deletebranch";
		document.showbranchform.submit();
	}
</script>
<%@ include file="/superadmin/superadmin_outside_header.jsp"%>

<body>

	<form name="showbranchform">
		<table class="table100">
			<tr>
				<th colspan="3">List of Branches</th>
			</tr>
			<tr>
				<td width="12%">Sr No</td>
				<td width="86%">BranchName/Update</td>
				<td width="2%">Delete</td>
			</tr>
			<%
				int i = 0;
				BranchesHelperInterface branchHelper = new BranchesHelper();
				List<Branch> list = branchHelper.showBranch();

				for (Branch branch : list) {
			%>
			<tr>
				<td><%=++i%> &nbsp; &nbsp;</td>
				<td><a
					href="/InternetBanking/branch/updatebranch.jsp?ilRecId=<%=branch.getId()%>"><u><%=branch.getName()%></u>
				</a> &nbsp;</td>
				<td><input type="checkbox" name="id" value=<%=branch.getId()%> /></td>

			</tr>
			<%
				}
			%>
			<tr>
				<td></td>
				<td></td>
				<td><input type="submit" value="delete" onClick="deleted()" /></td>
			</tr>
		</table>
	</form>

</body>
<%@ include file="/other/footer.jsp"%>
</html>