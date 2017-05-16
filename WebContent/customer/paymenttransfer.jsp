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
<link href="/InternetBanking/css/standard.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBanking/css/tables.css" rel="stylesheet"
	type="text/css">
	<title>customer page</title>
</head>
<script type="text/javascript" src="validation.js"></script>

<%@ include file="/customer/customer_outside_header.jsp"%>
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
	width: 18.2%;
	height: 500px;
}

/* Style the buttons inside the tab */
div.tab button {
	display: block;
	background-color:activeborder;
	color: blue;
	padding: 10px 16px;
	width: 100%;
	/* border: none;
	outline: none; */
	text-align: left;
	cursor: pointer;
	transition: 0.3s;
	font-size: 13px;
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
</head>
<body>

	<div class="tab" style="color: blue;">
		<button class="tablinks" onclick="openTab(event, 'quickTransfer')"
			id="defaultOpen">Quick Transfer</button>
		<button class="tablinks" onclick="openTab(event, 'AccountStatement')">Our Bank Transfer</button>
		<!-- <button class="tablinks" onclick="openTab(event, 'Profile')">
			My Profile</button> -->
		<button class="tablinks"
			onclick="openTab(event, 'ChangeLoginPassword')">IntraBank Transfer</button>
		<button class="tablinks"
			onclick="openTab(event, 'LinkyourAadhar')">Add Beneficiary</button>
		<!-- <button class="tablinks"
			onclick="openTab(event, 'LinkyourLPGCustomerID')">Link your
			LPG CustomerID</button> -->

	</div>
	"
	<div id="quickTransfer" class="tabcontent">
	<h3>Transfer Money here</h3>
	<form action="quickpay" id="quick">
		<table class="table100" align='center'>

			<tr>
				<td>Account Number</td>
				<td>Branch</td>
				<td>Balance</td>
				<td>Transaction</td>
			</tr>
			<tr>
			<%
			AccountHelper  account = AccountHelper.getAcNumber(user.getId());
			%>
			
				<td><%=account.getAccountNumber()%></td>
				<td></td>
				<td><%=account.getBalance() %> </td>
				<td></td>
			</tr>
		</table>
		<br />
		
		<table class="tablecustomer100" align='center'>
		<tr>
		<td>Selected Account Number</td>
		<td><%=account.getAccountNumber()%></td>
		</tr>
		<tr>
		<td>beneficiary Name</td>
		<td><input type="text" name="name"
							placeholder="Beneficiary Name" size=50 maxlength=50
							title="max. 50 characters" /></td>
		</tr>
		<tr>
		<td>beneficiary Account Number</td>
		<td><input type="text" name="accountNumber"
							placeholder="Account Number" size=10 maxlength=10
							title="max. 10 numbers" /></td>
		</tr>
		<tr>
		<td>Payment Option
		</td>
		<td><input type="radio" name="paymentoption" value="male" />Within
			<input type="radio" name="paymentoption" value="female" />InterBank
		</td>
		</tr>
		<tr>
		<td>Amount</td>
		<td><input type="text" name="amount"
							placeholder="Amount" size=10 maxlength=10
							title="max. 10 numbers" /></td>
		</tr>
		</table>
		<table class="tableadmin100" align='center'> 
		<tr>
		<td align="center"><input type="button" id="pay" value="pay" onclick="payamount()"/></td>
		</tr>
		</table>
		
		</form>
		
	</div>

	<div id="AccountStatement" class="tabcontent">
		<h3>Account Statement</h3>
		<table class="tableadmin100" align='center'> 
			<tr>
				<td>Account Number</td>
				<td>Branch</td>
				<td>Balance</td>
				<td>Transaction</td>
			</tr>
			<tr>
				<td><%=account.getAccountNumber()%></td>
				<td></td>
				<td><%=account.getBalance() %> </td>
				<td></td>
			</tr>
		</table>
		<br />
		<table class="table100" align='center'>
		<tr>
		<td>
		Selected Account Number:
		</td>
		<td>
		<%=account.getAccountNumber()%>
		</td>
		</tr> 
		</table>
		<br />
		<table class="tablecustomer100" align='center'>
				<tr>
					<th colspan=2>select options for the statement period</th>
				</tr> 
				<tr>
				<td>By Date :</td>
				<td>
				<form action="statementByDate">
				Start Date: <input type="date" name="startDate"
							placeholder="yyyy/mm/dd" />&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					End Date: <input type="date" name="endDate"
							placeholder="yyyy/mm/dd" />	
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="submit" value="view">	
					</form>		
							</td>
				</tr>
		</table>
		<br />
		<table class="tablecustomer100" align='center'>
		<tr>
		<td>By Month :</td>
		<td>
		<form action="statementByMonth">
		Year:<input type="text" name="year"
							placeholder="Year" />	
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;				
			Month:<input type="text" name="month"
							placeholder="Month" />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;					
			<input type="submit" value="view">		
		</form>									
		</td>
		</tr>
		</table>
	</div>

	<div id="Profile" class="tabcontent">
	<br />
		<table class="tablecustomer100" align='center'>
				<tr>
					<th colspan=3>Profile</th>
				</tr> 
			<tr>
			<%-- <%=user.getId()%> --%>
				<td  width="10%">Name</td>
					<%-- <td><a href="updated_current_customerprofile.jsp?ilRecId=<%=user.getId()%>"> --%>
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
		<table class="tableadmin50" align='center'>
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
     <input type="text" name ="id" value="<%=user.getId()%>">
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
    //var otp = GenerateOTP.OTP();
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
     
      
    
    //var x1 = document.getElementById("username").value;
  /*   $.get("SendMailwithOTP?email="+email, function(data){
    	if(data != ""){
   		 alert(data);
   		}
    }); */
    
    //var sendmail =
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

function payamount(){
	//window.alert("hiiii");
	 document.getElementById("quick").submit(); 
}
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
<%@ include file="/other/footer.jsp"%>
</html>







