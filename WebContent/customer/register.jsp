<%@ include file="/other/importclasses.jsp"%>
<%@taglib prefix="botDetect" uri="https://captcha.com/java/jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>register page</title>
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
<link rel="stylesheet" href="stylesheet.css" type="text/css" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
</head>
<script type="text/javascript" src="validation.js"></script>
<!-- <script>
$(document).ready(function(){
    $("#email").blur(function(){
    	var x = document.getElementById("email").value;
        $.get("AjaxEmailServlet?email="+x, function(data){
        	if(data != ""){
        		 alert(data);
        	}
        });
    });
}); 
$(document).ready(function(){
    $("#username").blur(function(){
    	var x1 = document.getElementById("username").value;
        $.get("AjaxUserNameServlet?username="+x1, function(data){
        	if(data != ""){
       		 alert(data);
       	}
        });
    });
});
</script> -->

<script type="text/javascript">
	function validateForm() {
		var x = document.forms["register"]["username"].value;
		var y = document.getElementById('username').value;

		if (y == "taken") {
			alert("Name already exist in database");
			return false;
		} else {
			alert("Available");
		}

		var a = document.forms["register"]["email"].value;
		var b = document.getElementById('email').value;

		if (b == "taken") {

			alert("Email already exist in database");
			return false;
		} else {
			alert("Available");
		}

	}
</script>
<script type="text/javascript">
	function checkemail() {
		var xmlhttp;
		var k = document.getElementById("email").value;
		var urls = "CheckEmail?email1=" + k;

		if (window.XMLHttpRequest) {
			xmlhttp = new XMLHttpRequest();
		} else {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {
				document.getElementById("email_status").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", urls, true);
		xmlhttp.send();
	}
	function checkname() {
		var xmlhttp;
		var k = document.getElementById("username").value;
		var urls = "CheckUsername?uname=" + k;

		if (window.XMLHttpRequest) {
			xmlhttp = new XMLHttpRequest();
		} else {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4) {
				document.getElementById("name_status").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", urls, true);
		xmlhttp.send();
	}
</script>

<%@ include file="/other/outside_header.jsp"%>
<body>
	<div id="container">
		<div id="content-container">
			<h3 style="text-align: center;">
				<b>Register Here</b>
			</h3>
			<hr />
			<form action="register" method="post"
				onsubmit="return validateForm();" id="form1">
				<table class="tablecustomer50" align='left'>

					<tr>
						<th colspan=2>Personal Information</th>

					</tr>
					<tr>
						<td width=30%>First Name</td>
						<td width=70%><input type="text" name="firstName"
							placeholder="First Name" size=25 maxlength=30
							title="max. 30 characters" /></td>
					</tr>
					<tr>
						<td width=30%>Last Name</td>
						<td width=70%><input type="text" name="lastName"
							placeholder="Last Name" size=25 maxlength=30
							title="max. 30 characters" /></td>
					</tr>
					<tr>
						<td width=30%>Mother Name</td>
						<td width=70%><input type="text" name="motherName"
							placeholder="Mother Name" size=25 maxlength=30
							title="max. 30 characters" /> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td width=30%>Gender</td>
						<td width=70%><select name="gender">
								<option value="0">--select--</option>
								<option value="1">Male</option>
								<option value="2">Female</option>
								<option value="3">Transgender</option>
						</select> &nbsp;&nbsp;&nbsp;</td>
					<tr>
						<td>Email</td>
						<td><input type="text" name="email" placeholder="Email"
							id="email" onblur="checkemail();" size=25 maxlength=30
							title="max. 30 characters" /> <span id="email_status"></span></td>
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
					<tr>
					<tr>
						<td>Date-Of-Birth</td>
						<td><input type="date" name="dateOfBirth"
							placeholder="yyyy/mm/dd" /></td>
					</tr>
					<tr>
						<td>AadharCard</td>
						<td><input type="text" name="aadharcard"
							placeholder="AadharCard" size=15 maxlength=12
							title="max. 12 numbers" /></td>
					</tr>
					<tr>
						<td>PanCard</td>
						<td><input type="text" name="pancard" placeholder="PanCard"
							size=15 maxlength=12 title="max. 12 numbers" /></td>
					</tr>

					<tr>
						<td>Residential Status</td>
						<td width=70%><select name="residentialstatus">
								<option value="null">--select--</option>
								<option value="1">Resident Individual</option>
								<option value="2">Non Resident Indian</option>
								<option value="3">Foreign National</option>
								<option value="4">Person of Indian Origin</option>
						</select> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<%
						QuestionCache qs = new QuestionCache();
						List<Question> questionList = qs.getQuestionFromCache();
					%>
					<tr>
						<td>Security Question</td>
						<td width=70%><select name="question">
								<option value="null">--select--</option>
								<%
									for (Question question : questionList) {
								%>
								<option value="<%=question.getId()%>"><%=question.getName()%></option>
								<%
									}
								%>
						</select> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td width=30%>Answer</td>
						<td width=70%><input type="text" name="answer"
							placeholder="Answer" size=15 maxlength=30
							title="max. 20 characters" /> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td width=30%>User Name</td>
						<td width=70%><input type="text" name="username"
							id="username" onblur="checkname();" placeholder="User Name"
							size=15 maxlength=30 title="max. 20 characters" />
							&nbsp;&nbsp;&nbsp; <span id="name_status"></span></td>
					</tr>
					<tr>
						<td width=30%>Password</td>
						<td width=70%><input type="password" name="password"
							placeholder="Password" size=20 maxlength=20
							title="max. 20 characters" /> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td width=30%>Conform Password</td>
						<td width=70%><input type="password" name="confirmpassword"
							placeholder="confirm password" size=20 maxlength=20
							title="max. 20 characters" /> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td>Customer Type</td>
						<td width=70%><select name="customerType">
								<option value="null">--select--</option>
								<option value="1">Public</option>
								<option value="2">Staff</option>
								<option value="3">Senior Citizen</option>
								<option value="4">Minor</option>
						</select> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<%
						UserTypeCache userCache = new UserTypeCache();
						List<UserType> userTypeList = userCache.getUserTypeFromCache();
					%>
					<tr>
						<td>User Type</td>
						<td width=70%><select name="userType">
								<!-- <option value = "null">--select--</option> -->
								<%
									for (UserType userType : userTypeList) {
										if (userType.getId() == 4) {
								%>

								<option value="<%=userType.getId()%>"><%=userType.getName()%></option>
								<%
									}
									}
								%>
						</select> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<!-- <tr>
					<td>Upload your photo</td>
					<td><input type="file" name="image" size="20"/><br /></td>
				</tr>  -->
				</table>
				<table class="tablecustomer50" align='center'>

					<tr>
						<th colspan=2>Local Address</th>

					</tr>
					<tr>
						<td width=30%>line1</td>
						<td width=70%><input type="text" name="localline1"
							placeholder="line1" size=25 maxlength=45
							title="max. 45 characters" /> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td width=30%>line2</td>
						<td width=70%><input type="text" name="localline2"
							placeholder="line2" size=25 maxlength=45
							title="max. 45 characters" /> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td width=30%>City</td>
						<td width=70%><input type="text" name="localcity"
							placeholder="City" size=25 maxlength=45
							title="max. 45 characters" /> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td width=30%>Pincode</td>
						<td width=70%><input type="text" name="localpincode"
							placeholder="Pincode" size=6 maxlength=6
							title="max. 6 characters" /> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td width=30%>State</td>
						<td width=70%><input type="text" name="localstate"
							placeholder="State" size=25 maxlength=45
							title="max. 45 characters" /> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td width=30%>Country</td>
						<td width=70%><input type="text" name="localcountry"
							placeholder="Country" size=25 maxlength=45
							title="max. 45 characters" /> &nbsp;&nbsp;&nbsp;</td>
					</tr>
				</table>
				<table class="tablecustomer50" align='center'>
					<tr>
						<th colspan=2>Permanant Address</th>
					</tr>
					<tr>
						<td width=30%>line1</td>
						<td width=70%><input type="text" name="permanantline1"
							placeholder="line1" size=25 maxlength=45
							title="max. 45 characters" /> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td width=30%>line2</td>
						<td width=70%><input type="text" name="permanantline2"
							placeholder="line2" size=25 maxlength=45
							title="max. 45 characters" /> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td width=30%>City</td>
						<td width=70%><input type="text" name="permanantcity"
							placeholder="City" size=25 maxlength=45
							title="max. 45 characters" /> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td width=30%>Pincode</td>
						<td width=70%><input type="text" name="permanantpincode"
							placeholder="Pincode" size=6 maxlength=6
							title="max. 6 characters" /> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td width=30%>State</td>
						<td width=70%><input type="text" name="permanantstate"
							placeholder="State" size=25 maxlength=45
							title="max. 45 characters" /> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td width=30%>Country</td>
						<td width=70%><input type="text" name="permanantcountry"
							placeholder="Country" size=25 maxlength=45
							title="max. 45 characters" /> &nbsp;&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td width=30%>Captcha</td>
						<td width=70%><br />

							<h3>Retype the characters from the picture:</h3>
							<hr /> <!-- Adding BotDetect Captcha to the page --> <botDetect:captcha
								id="exampleCaptchaTag" userInputID="captchaCode" /> <br />
							<div class="validationDiv">

								<input name="captchaCode" type="text" id="captchaCode" /> <span
									class="correct">${messages.captchaCorrect}</span> <span
									class="incorrect">${messages.captchaIncorrect}</span>
								<!--   <input type="submit" value="Send" onclick= "login()"> -->
							</div></td>
					</tr>
				</table>
				<table class="tablecustomer100" align='left'>
					<tr>
						<td colspan="2" align='center'><input type="submit"
							name="submit" value="Register" name="validateCaptchaButton"
							id="validateCaptchaButton" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<%@ include file="/other/footer.jsp"%>
</body>

</html>

