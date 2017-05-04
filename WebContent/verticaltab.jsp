<%@page import="com.helper.AccountHelper"%>
<%@page import="com.model.Address"%>
<%@page import="com.helper.AddressHelper"%>
<%@page import="com.helper.AddressInterface"%>
<%@page import="com.model.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/tables.css" rel="stylesheet" type="text/css">
<style>
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
</style>
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
	font-size: 15px;
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
		User user = (User)httpSession.getAttribute("loggedInUser");
	
%>
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
			<%
			AccountHelper  account = AccountHelper.getAcNumber(user.getId());
			%>
			
				<td><%=account.getAccountNumber()%></td>
				<td><%=user.getUserName()%></td>
				<td><%=account.getBalance() %> </td>
			</tr>
		</table>
		
	</div>

	<div id="AccountStatement" class="tabcontent">
		<h3>Account Statement</h3>
		<p></p>
	</div>

	<div id="Profile" class="tabcontent">
		<table class="table100" align='center'>
				<tr>
					<th colspan=3>Profile</th>
				</tr> 
			<tr>
				<td  width="10%">Name</td>
					  <td><button id="myBtn"><%=user.getFirstName()+" "+user.getLastName()%></button>
				        <u></u> &nbsp;</td>
			</tr>
			<tr>
				<td  width="8%">Mother Name</td>
				<td><%=user.getMotherName()%></td>
			</tr>
			<tr>
				<td  width="10%">Email</td>
				<td><%=user.getEmail()%></td>
			</tr>
			<tr>
				<td  width="8%">Mobile</td>
				<td><%=" "+user.getPrimaryPhoneNumber()+" \n   "+user.getSecondaryPhoneNumber()%></td>
			</tr>
			<tr>
				<td  width="8%">DOB</td>
				<td><%=user.getDateOfBirth()%></td>
			</tr>
			<tr>
				<td  width="8%">Aadharcard</td>
				<td><%=user.getAadharcard()%></td>
			</tr>
			<tr>
				<td  width="8%">Pancard</td>
				<td><%=user.getPancard()%></td>
			</tr>
			<tr>
				<td  width="20%">Local Address</td>
				<%
				AddressInterface address1 = new AddressHelper();
				Address address = address1.showSelectedlocalAddress(user.getId());
				%>
				<td><%=address.getLine1()+", "+address.getLine2()+"\n"+
				address.getCity()+", "+address.getState()+"\n"+
				address.getCountry()+"\n "+address.getPincode()%></td>
			</tr>
			<tr>
				<td  width="20%">Permanant Address</td>
				
				<%
				AddressInterface address2 = new AddressHelper();
				Address permanantaddress = address2.showSelectedPermanantAddress(user.getId());
     			%>	
				<td><%=permanantaddress.getLine1()+", "+permanantaddress.getLine2()+"\n"+
					permanantaddress.getCity()+", "+permanantaddress.getState()+"\n"+
					permanantaddress.getCountry()+"\n"+permanantaddress.getPincode()%></td>
			</tr>
			
		</table>
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
				<input type="hidden" name = "id" value="<%=user.getId()%>">
				 <input type="submit"name="submit" value="Save"> 
				 <input type="Reset" name="Reset" value="Reset"></td>
			</tr>
			</table>
			</form>
	</div>

    <div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p>Check your Mail for OTP to update your Profile </p>
    <form action="ProfileUpdatationWithOTP">
     OTP : <input type ="text" name="otp"/>
     <input type="hidden" name ="id" value="<%=user.getId()%>">
     <input type="submit" value="Submit">
     </form>
  </div>

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
				<input type="hidden" name = "email" value="<%=user.getEmail()%>" id="email">
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
<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
    var xmlhttp;
    var email = document.getElementById("email").value;
    var url = "SendMailwithOTP.jsp?email="+email;
    if (window.XMLHttpRequest)
    {
    xmlhttp=new XMLHttpRequest();
    }
  else
    {
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.open("GET",url,true);
    xmlhttp.send();
}
// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</body>
</html>