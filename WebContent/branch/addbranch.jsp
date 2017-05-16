<%@ include file="/other/importclasses.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<link rel="icon" type="image/png" href="/InternetBanking/images/bankicon.ico">
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
<jsp:include page="/superadmin/superadmin_outside_header.jsp"></jsp:include>
<body>
	<div id="contentview">
		<h3 style="text-align: center;">
			<b>Add New branch</b>
		</h3>
		<form action="addbranch" method="post"
			onsubmit="return addbranchform(this);">
			<table class="table50" align='center'>
				<tr>
					<td width=30%>Branch Name</td>
					<td width=70%><input type="text" name="name"
						placeholder="Branch Name" size=25 maxlength=30
						title="max. 30 characters" /></td>
				</tr>
				<tr>
					<td width=40%>Branch Address</td>
					<td width=60%><input type="text" name="address"
						placeholder="Branch Address" size=80 maxlength=80
						title="max. 80 characters" /> &nbsp;&nbsp;&nbsp;</td>
				</tr>
				<tr>
					<td width=30%>Branch City</td>
					<td width=70%><input type="text" name="city"
						placeholder="City" size=25 maxlength=30 title="max. 30 characters" /></td>
				</tr>
				<tr>
					<td width=30%>Branch Code</td>
					<td width=70%><input type="text" name="code"
						placeholder="Branch Code" size=25 maxlength=30
						title="max. 30 characters" /></td>
				</tr>
				<tr>
					<td>PrimaryPhoneNumber</td>
					<td><input type="text" name="primaryPhoneNumber"
						placeholder="PrimaryPhoneNumber" size=10 maxlength=10
						title="max. 10 numbers" /></td>
				</tr>
				<tr>
					<td>SecondaryPhoneNumber</td>
					<td><input type="text" name="secondaryPhoneNumber"
						placeholder="SecondaryPhoneNumber" size=10 maxlength=10
						title="max. 10 numbers" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email" placeholder="Email"
						id="email" size=50 maxlength=50 title="max. 50 characters" /></td>
				</tr>
				<tr>
					<td width=30%>IFSC Code</td>
					<td width=70%><input type="text" name="IFSCcode"
						placeholder="IFSC Code" size=25 maxlength=30
						title="max. 30 characters" /></td>
				</tr>
				<tr>
					<td colspan="2" align='center'>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit"
						name="submit" value="save" /> <input type="Reset"
						name="Reset" value="Reset" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
<jsp:include page="/other/footer.jsp"></jsp:include>
</html>