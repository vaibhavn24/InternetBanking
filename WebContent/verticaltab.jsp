<%@page import="com.model.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/tables.css" rel="stylesheet" type="text/css">
<style>
* {
	box-sizing: border-box
}

body {
	font-family: "Lato", sans-serif;
}

/* Style the tab */
div.tab {
	float: left;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
	width: 20%;
	height: 500px;
}

/* Style the buttons inside the tab */
div.tab button {
	display: block;
	background-color: inherit;
	color: black;
	padding: 22px 16px;
	width: 100%;
	border: none;
	outline: none;
	text-align: left;
	cursor: pointer;
	transition: 0.3s;
	font-size: 17px;
}

/* Change background color of buttons on hover */
div.tab button:hover {
	background-color: #ddd;
}

/* Create an active/current "tab button" class */
div.tab button.active {
	background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
	float: left;
	padding: 0px 12px;
	border: 1px solid #ccc;
	width: 80%;
	border-left: none;
	height: 500px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>customer page</title>
</head>
<body>
<%
	HttpSession httpSession = request.getSession();
		User user = (User)httpSession.getAttribute("CurrentUserList");
	
%>
<%-- <%=user.getId()%> --%>
	<div class="tab">
		<button class="tablinks" onclick="openTab(event, 'AccountSummery')"
			id="defaultOpen">Account Summery</button>
		<button class="tablinks" onclick="openTab(event, 'AccountStatement')">Account
			Statement</button>
		<button class="tablinks" onclick="openTab(event, 'Profile')">
			My Profile</button>
		<button class="tablinks"
			onclick="openTab(event, 'ChangeLoginPassword')">Change Login
			Password</button>
		<button class="tablinks"
			onclick="openTab(event, 'LinkyourAadhar')">Link
			your Aadhar Card Number</button>
		<button class="tablinks"
			onclick="openTab(event, 'LinkyourLPGCustomerID')">Link your
			LPG CustomerID</button>

	</div>

	<div id="AccountSummery" class="tabcontent">
		<table class="table100" align='center'>
				<tr>
					<th colspan=3>AccountSummery</th>
				</tr> 
			<tr>
				<td>Account Number</td>
				<td>User Name</td>
				<td>Balance</td>
			</tr>
			<tr>
				<td>80552626261</td>
				<td><%=user.getUserName()%></td>
				<td>Rs- </td>
			</tr>
		</table>
		
	</div>

	<div id="AccountStatement" class="tabcontent">
		<h3>Account Statement</h3>
		<p></p>
	</div>

	<div id="Profile" class="tabcontent">
		<h3>Profile</h3>
		<p></p>
	</div>
	<div id="ChangeLoginPassword" class="tabcontent">
		<h3>Change Login Password</h3>
	<form action="customer_forgetpassword" method="post" onsubmit="return checkConformPwd(this);">
		<table class="table50" align='center'>
				<tr>
					<th colspan=2>Enter the New Password</th>
					
				</tr> 
			<tr>
				<td width=40%>New Password</td>
				<td width=60%><input type="password" name="password"
					 size=60 maxlength=60
					title="max. 60 characters"> &nbsp;&nbsp;&nbsp;</td>
			</tr>
			
			<tr>
				<td width=40%>Confirm Password</td>
				<td width=60%><input type="password" name="confirmpassword"
					size=60 maxlength=60
					title="max. 60 characters"> &nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
			<td colspan="2" align='center'>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="hidden" name = "customerId" value="<%=user.getId()%>">
				 <input type="submit"name="submit" value="Save"> 
				 <input type="Reset" name="Reset" value="Reset"></td>
			</tr>
			</table>
			</form>
	</div>

	<div id="LinkyourAadhar" class="tabcontent">
		<h3>Link your Aadhar Card Number</h3>
		<form action="customerAadharNumber" method="post" onsubmit="return checkAadharForm(this);">
		<table class="table50" align='center'>
				<tr>
					<th colspan=2>Enter Aadhar Card Number</th>
					
				</tr> 
			<tr>
				<td width=30%>Aadhar Card Number</td>
				<td width=70%><input type="text" name="aadharNumber"
					 size=15 maxlength=150
					title="max. 15 characters"> &nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
			<td colspan="2" align='center'>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="hidden" name = "customerId" value="<%=user.getId()%>">
				 <input type="submit"name="submit" value="Save"> 
				 <input type="Reset" name="Reset" value="Reset"></td>
			</tr>
			</table>
			</form>
	</div>

	<div id="LinkyourLPGCustomerID" class="tabcontent">
		<h3>Link your LPG Customer ID</h3>
		<p></p>
	</div>

	<script>
function openTab(evt, serviceName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(serviceName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
	<!-- <script>
function opentab(evt , tabName)
{

var i , tabcontent , tablinks;
tabcontent = document.getElementsByClassName("tabcontent");
for (i=0 ; i<tabcontent.length;i++){
	tabcontent[i].style.display = "none";
}
tablinks = document.getElementsByClassName("tablinks");
for(i=0 ; i<tablinks.length;i++){
	tablinks[i].className = tablinks[i].className.replace(" active", "");
}
document.getElementById()
	}

</script>
 -->
</body>
</html>







