<%@ include file="/other/importclasses.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/InternetBanking/css/tables.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBanking/css/verticaltab.css" rel="stylesheet"
	type="text/css" />
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
		<button class="tablinks" onclick="openTab(event, 'LinkyourAadhar')">Link
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
				<td>Rs-</td>
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
				<%-- <%=user.getId()%> --%>
				<td width="10%">Name</td>
				<%-- <td><a href="updated_current_customerprofile.jsp?ilRecId=<%=user.getId()%>"> --%>
				<td><button id="myBtn"><%=user.getFirstName()+" "+user.getLastName()%></button>
					<u></u> &nbsp;</td>
			</tr>
			<tr>
				<td width="8%">Mother Name</td>
				<td><%=user.getMotherName()%></td>
			</tr>
			<tr>
				<td width="10%">Email</td>
				<td><%=user.getEmail()%></td>
			</tr>
			<tr>
				<td width="8%">Mobile</td>
				<td><%=" "+user.getPrimaryPhoneNumber()+" \n   "+user.getSecondaryPhoneNumber()%></td>
			</tr>
			<tr>
				<td width="8%">DOB</td>
				<td><%=user.getDateOfBirth()%></td>
			</tr>
			<tr>
				<td width="8%">Aadharcard</td>
				<td><%=user.getAadharcard()%></td>
			</tr>
			<tr>
				<td width="8%">Pancard</td>
				<td><%=user.getPancard()%></td>
			</tr>
			<tr>
				<td width="20%">Local Address</td>
				<%
				AddressInterface address1 = new AddressHelper();
				Address address = address1.showSelectedlocalAddress(user.getId());
				%>
				<td><%=address.getLine1()+", "+address.getLine2()+"\n"+
				address.getCity()+", "+address.getState()+"\n"+
				address.getCountry()+"\n "+address.getPincode()%></td>
			</tr>
			<tr>
				<td width="20%">Permanant Address</td>

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
		<form action="customer_forgetpassword" method="post"
			onsubmit="return checkConformPwd(this);">
			<table class="table50" align='center'>
				<tr>
					<th colspan=2>Enter the New Password</th>

				</tr>
				<tr>
					<td width=40%>New Password</td>
					<td width=60%><input type="password" name="password" size=60
						maxlength=60 title="max. 60 characters" /> &nbsp;&nbsp;&nbsp;</td>
				</tr>

				<tr>
					<td width=40%>Confirm Password</td>
					<td width=60%><input type="password" name="confirmpassword"
						size=60 maxlength=60 title="max. 60 characters" />
						&nbsp;&nbsp;&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2" align='center'>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="hidden"
						name="id" value="<%=user.getId()%>" /> <input type="submit"
						name="submit" value="Save" /> <input type="Reset" name="Reset"
						value="Reset" />
					</td>
				</tr>
			</table>
		</form>
	</div>

	<div id="myModal" class="modal">

		<!-- Modal content -->
		<div class="modal-content">
			<span class="close">&times;</span>
			<p>Check your Mail for OTP to update your Profile</p>
			<form action="ProfileUpdatationWithOTP">
				OTP : <input type="text" name="otp" /> <input type="text" name="id"
					value="<%=user.getId()%>" /> <input type="submit" value="Submit" />
			</form>
		</div>

	</div>



	<div id="LinkyourAadhar" class="tabcontent">
		<h3>Link your Aadhar Card Number</h3>
		<form action="customerAadharNumber" method="post"
			onsubmit="return checkAadharForm(this);">
			<table class="table50" align='center'>
				<tr>
					<th colspan=2>Enter Aadhar Card Number</th>

				</tr>
				<tr>
					<td width=30%>Aadhar Card Number</td>
					<td width=70%><input type="text" name="aadharNumber" size=15
						maxlength=150 title="max. 15 characters" /> &nbsp;&nbsp;&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2" align='center'>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="hidden"
						name="customerId" value="<%=user.getId()%>" /> <input
						type="hidden" name="email" value="<%=user.getEmail()%>" id="email" />
						<input type="submit" name="submit" value="Save" /> <input
						type="Reset" name="Reset" value="Reset" />
					</td>
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






