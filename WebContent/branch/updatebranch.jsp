<%@ include file="/other/importclasses.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<link rel="icon" type="image/png" href="/InternetBanking/images/bankicon.ico">
<link href="/InternetBanking/css/common.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="/InternetBanking/css/styles.css">
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
	<div id="contentview">
		<h1 style="text-align: center;">
			<b>Update Branch details</b>
		</h1>
		<form action="updatebranch" method="post"
			onsubmit="return branchform(this);">
			<table class="table50" align='center'>
				<tr>
					<!-- <td width=30%>Update Branch</td> -->

					<%
						int id = Integer.parseInt(request.getParameter("ilRecId"));
						System.out.println("Selected ID>> " + id);
						BranchesHelperInterface branchHelper = new BranchesHelper();
						Branch branch = branchHelper.showSelectedBranch(id);
					%>
				
				<tr>
					<td width=30%>Branch Name</td>
					<td width=70%><input type="text" name="name"
						value="<%=branch.getName()%>" /></td>
				</tr>
				<tr>
					<td width=40%>Branch Address</td>
					<td width=60%><input type="text" name="address"
						value="<%=branch.getAddress()%>" /></td>
				</tr>
				<tr>
					<td width=30%>Branch City</td>
					<td width=70%><input type="text" name="city"
						value="<%=branch.getCity()%>" /></td>
				</tr>
				<tr>
					<td width=30%>Branch Code</td>
					<td width=70%><input type="text" name="code"
						value="<%=branch.getCode()%>" /></td>
				</tr>
				<tr>
					<td>PrimaryPhoneNumber</td>
					<td><input type="text" name="primaryPhoneNumber"
						value="<%=branch.getPrimaryPhoneNumber()%>" /></td>
				</tr>
				<tr>
					<td>SecondaryPhoneNumber</td>
					<td><input type="text" name="secondaryPhoneNumber"
						value="<%=branch.getSecondaryPhoneNumber()%>" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email" placeholder="Email"
						value="<%=branch.getEmail()%>" /></td>
				</tr>
				<tr>
					<td width=30%>IFSC Code</td>
					<td width=70%><input type="text" name="IFSCcode"
						value="<%=branch.getIFSCCode()%>" /></td>
				<tr>
					<td colspan="2" align='center'>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="hidden"
						name="branchId" id="branchId" value="<%=branch.getId()%>" /> <input
						type="submit" name="submit" value="Update" /> <input type="Reset"
						name="Reset" value="Reset" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
<%@ include file="/other/footer.jsp"%>
</html>