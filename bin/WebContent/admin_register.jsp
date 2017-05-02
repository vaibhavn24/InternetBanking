<%@page import="com.classes.UserTypeCache"%>
<%@page import="com.model.UserType"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.model.Question"%>
<%@page import="java.util.List"%>
<%@page import="com.classes.QuestionCache"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Register page</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="styles.css">
<link href="css/KItables.css" rel="stylesheet" type="text/css">
<link href="css/menu.css" rel="stylesheet" type="text/css">
<link href="css/standard.css" rel="stylesheet" type="text/css">
<link href="css/tables.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
</head>
<script type="text/javascript" src="validation.js"></script>
<script>
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
</script>
<%@ include file="superadmin_outside_header.jsp" %>
<body>
	<h1 style="text-align: center;">
		<b>Register Here</b>
		<hr/>
	</h1>
	<form action="adminregister" method="post"
		onsubmit="return registerform(this);">
		<table class="tableadmin50" align='left'>

			<tr>
				<th colspan=2>Personal Information</th>

			</tr>
			<tr>
				<td width=30%>First Name</td>
				<td width=70%><input type="text" name="firstName"
					placeholder="First Name" size=25 maxlength=30
					title="max. 30 characters"></td>
			</tr>
			<tr>
				<td width=30%>Last Name</td>
				<td width=70%><input type="text" name="lastName"
					placeholder="Last Name" size=25 maxlength=30
					title="max. 30 characters"></td>
			</tr>
			<tr>
				<td width=30%>Mother Name</td>
				<td width=70%><input type="text" name="motherName"
					placeholder="Mother Name" size=25 maxlength=30
					title="max. 30 characters"> &nbsp;&nbsp;&nbsp;</td>
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
				<td><input type="text" name="email" placeholder="Email" id="email"  size=25
					maxlength=30 title="max. 30 characters"></td>
			</tr>
			<tr>
				<td>PrimaryPhoneNumber</td>
				<td><input type="text" name="primaryPhoneNumber"
					placeholder="PrimaryPhoneNumber" size=10 maxlength=10
					 title="max. 10 numbers"></td>
			</tr>
			<tr>
				<td>SecondaryPhoneNumber</td>
				<td><input type="text" name="secondaryPhoneNumber"
					placeholder="SecondaryPhoneNumber" size=10 maxlength=10
					 title="max. 10 numbers"></td>
			<tr>
			<tr>
				<td>Date-Of-Birth</td>
				<td><input type="date" name="dateOfBirth"
					placeholder="yyyy/mm/dd"></td>
			</tr>
			<tr>
				<td>AadharCard</td>
				<td><input type="text" name="aadharcard"
					placeholder="AadharCard" size=15 maxlength=12
					title="max. 12 numbers"></td>
			</tr>
			<tr>
				<td>PanCard</td>
				<td><input type="text" name="pancard" placeholder="PanCard"
					size=15 maxlength=12 title="max. 12 numbers"></td>
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
						<% for(Question question : questionList) {
								%>
						<option value="<%=question.getId()%>"><%=question.getName() %></option>
						<% } %>
				</select> &nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td width=30%>Answer</td>
				<td width=70%><input type="text" name="answer"
					placeholder="Answer" size=15 maxlength=30
					title="max. 20 characters"> &nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td width=30%>User Name</td>
				<td width=70%><input type="text" name="userName" id="username"
					placeholder="User Name" size=15 maxlength=30
					title="max. 20 characters"> &nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td width=30%>Password</td>
				<td width=70%><input type="password" name="password"
					placeholder="Password" size=20 maxlength=20
					title="max. 20 characters"> &nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td width=30%>Conform Password</td>
				<td width=70%><input type="password" name="confirmpassword"
					placeholder="Confirm Password" size=20 maxlength=20
					title="max. 20 characters"> &nbsp;&nbsp;&nbsp;</td>
			</tr>
			 <tr>
				<td>Customer Type</td>
				<td width=70%><select name="customerType">
						<!-- <option value="null">--select--</option>
						<option value="1">Public</option> -->
						<option value="2">Staff</option>
						<!-- <option value="3">Senior Citizen</option>
						<option value="4">Minor</option> -->
				</select> &nbsp;&nbsp;&nbsp;</td>
			</tr> 
				<%
				UserTypeCache userCache = new UserTypeCache();
				List<UserType> userTypeList=  userCache.getUserTypeFromCache();
				%>
				 <tr>
					<td>User Type</td>
					<td width=70%>
						<select name = "userType" >
							<option value = "null">--select--</option>
							<% for(UserType userType : userTypeList) {
								if(userType.getId()== 2 || userType.getId() == 3){
								%>
								
							<option value = "<%=userType.getId()%>"><%=userType.getName() %></option>
							<%} } %>
						</select>
						
					</td>
				</tr>  
				<!-- <tr>
					<td>Upload your photo</td>
					<td><input type="file" name="image" size="20"/><br /></td>
				</tr>  -->
		</table>
		<table class="tableadmin50" align='center'>

			<tr>
				<th colspan=2>Local Address</th>

			</tr>
			<tr>
				<td width=30%>line1</td>
				<td width=70%><input type="text" name="localline1"
					placeholder="line1" size=25 maxlength=45 title="max. 45 characters">
					&nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td width=30%>line2</td>
				<td width=70%><input type="text" name="localline2"
					placeholder="line2" size=25 maxlength=45 title="max. 45 characters">
					&nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td width=30%>City</td>
				<td width=70%><input type="text" name="localcity"
					placeholder="City" size=25 maxlength=45 title="max. 45 characters">
					&nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td width=30%>Pincode</td>
				<td width=70%><input type="text" name="localpincode"
					placeholder="Pincode" size=6 maxlength=6 title="max. 6 characters">
					&nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td width=30%>State</td>
				<td width=70%><input type="text" name="localstate"
					placeholder="State" size=25 maxlength=45 title="max. 45 characters">
					&nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td width=30%>Country</td>
				<td width=70%><input type="text" name="localcountry"
					placeholder="Country" size=25 maxlength=45
					title="max. 45 characters"> &nbsp;&nbsp;&nbsp;</td>
			</tr>
		</table>
		<table class="tableadmin50" align='center'>
			<tr>
				<th colspan=2>Permanant Address</th>
			</tr>
			<tr>
				<td width=30%>line1</td>
				<td width=70%><input type="text" name="permanantline1"
					placeholder="line1" size=25 maxlength=45 title="max. 45 characters">
					&nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td width=30%>line2</td>
				<td width=70%><input type="text" name="permanantline2"
					placeholder="line2" size=25 maxlength=45 title="max. 45 characters">
					&nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td width=30%>City</td>
				<td width=70%><input type="text" name="permanantcity"
					placeholder="City" size=25 maxlength=45 title="max. 45 characters">
					&nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td width=30%>Pincode</td>
				<td width=70%><input type="text" name="permanantpincode"
					placeholder="Pincode" size=6 maxlength=6 title="max. 6 characters">
					&nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td width=30%>State</td>
				<td width=70%><input type="text" name="permanantstate"
					placeholder="State" size=25 maxlength=45 title="max. 45 characters">
					&nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td width=30%>Country</td>
				<td width=70%><input type="text" name="permanantcountry"
					placeholder="Country" size=25 maxlength=45
					title="max. 45 characters"> &nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td width=30%>Captcha</td>
				<td width=70%>
				<jsp:include page="simplecaptcha.jsp"></jsp:include>
					<%-- <%@ include file="simplecaptcha.jsp" %> --%>
					</td>
				</tr>
		</table>
		<table class="tableadmin100" align='left'>
		<tr>
				<td colspan="2" align='center'>
					<input type="submit" name="submit" value="Register"> 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
				</td>
			</tr>
		</table>
	</form>
</body>
<%@ include file="footer.jsp" %>
</html>