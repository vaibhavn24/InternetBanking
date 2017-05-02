<%@page import="com.helper.CustomerHelper"%>
<%@page import="com.helper.CustomerInterface"%>
<%@page import="com.helper.EmployeeHelper"%>
<%@page import="com.helper.EmployeeInterface"%>
<%@page import="com.model.Address"%>
<%@page import="com.helper.AddressHelper"%>
<%@page import="com.helper.AddressInterface"%>
<%@page import="com.helper.SecurityQuestionHelper"%>
<%@page import="com.helper.SecurityQuestionInterface"%>
<%@page import="com.model.User"%>
<%@page import="com.helper.AdminHelper"%>
<%@page import="com.helper.AdminInterface"%>
<%@page import="com.classes.EmailUsernameVerification"%>
<%@page import="com.classes.UserTypeCache"%>
<%@page import="com.model.UserType"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.model.Question"%>
<%@page import="java.util.List"%>
<%@page import="com.classes.QuestionCache"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<title>admin customer page</title>
<head>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="styles.css">
<link href="css/KItables.css" rel="stylesheet" type="text/css">
<link href="css/menu.css" rel="stylesheet" type="text/css">
<link href="css/standard.css" rel="stylesheet" type="text/css">
<link href="css/tables.css" rel="stylesheet" type="text/css">

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

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

</head>
<script type="text/javascript" src="validation.js"></script>
<%@ include file="superadmin_outside_header.jsp" %>

<body>
	<h4 style="text-align: center;">
		Update Customer Register Here
		<hr>
	</h4>
	<form action="updateRegister" method="post" enctype="multipart/form-data" onsubmit="return registerform(this);">
	 <!--   --> 
		<table class="table50" align='left'>
				<tr>
					<th colspan=2>Personal Information</th>
				</tr> 
				<% 
				int id = Integer.parseInt(request.getParameter("ilRecId"));
				CustomerInterface customer1 = new CustomerHelper();
				
				 User customer = customer1.showSelectedCustomer(id);
				 %>
			<tr>
				<td width=30%>First Name</td>
				<td width=70%><input type="text" name="firstName" value="<%=customer.getFirstName()%>"
					placeholder="First Name" size=25 maxlength=30
					title="max. 30 characters"></td>
			</tr>
			<tr>
				<td width=30%>Last Name</td>
				<td width=70%><input type="text" name="lastName" value="<%=customer.getLastName()%>"
					placeholder="Last Name" size=25 maxlength=30
					title="max. 30 characters"></td>
			</tr>
			<tr>
				<td width=30%>Mother Name</td>
				<td width=70%><input type="text" name="motherName" value="<%=customer.getMotherName()%>"
					placeholder="Mother Name" size=25 maxlength=30
					title="max. 30 characters"> &nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr>
					<td width=30%>Gender</td>
					<td width=70%>
						<%!String str; %>
			<%
			
				if(customer.getGender() ==1)
				{
					str = "Male";
				}
				else if (customer.getGender() == 2)
				{
					str = "Female";
				}
				else
				{
					str = "Transgender";
				}
			
			%>
						<input type="text" name="gender" disabled="disabled" value="<%=str%>">
					     &nbsp;&nbsp;&nbsp;</td>
				
			<tr>
					<td>Email</td>
					<td>
						<input type="text" name="email" placeholder="Email" id="email" value="<%=customer.getEmail()%>"
							size=25 maxlength=30  title="max. 30 characters">
							
							
					</td>
				</tr>
			<tr>
					<td>PrimaryPhoneNumber</td>
					<td>
						<input type="text" name="primaryPhoneNumber"  placeholder="PrimaryPhoneNumber" value="<%=customer.getPrimaryPhoneNumber()%>"
							size=10 maxlength=10 class="NumTextBox" title="max. 10 numbers">
					</td>
				</tr>
			<tr>
					<td>SecondaryPhoneNumber</td>
					<td>
						<input type="text" name="secondaryPhoneNumber" placeholder="SecondaryPhoneNumber" value="<%=customer.getSecondaryPhoneNumber()%>"
							size=10 maxlength=10 class="NumTextBox" title="max. 10 numbers">
					</td>			
			<tr>
			<tr>
					<td>Date-Of-Birth</td>
					<td>
						<input type="date" name ="dateOfBirth"  placeholder="yyyy/mm/dd"  value="<%=customer.getDateOfBirth()%>">
					</td>
			</tr>
			<tr>
					<td>AadharCard</td>
					<td>
						<input type="text" name="aadharcard"  placeholder="AadharCard" value="<%=customer.getAadharcard()%>"
							size=15 maxlength=12  title="max. 12 numbers" >
					</td>
				</tr>
				<tr>
					<td>PanCard</td>
					<td>
						<input type="text" name="pancard"  placeholder="PanCard" value="<%=customer.getPancard()%>"
							size=15 maxlength=12  title="max. 12 numbers">
					</td>
				</tr>
				
				<tr>
					<td>Residential Status</td>
					<td width=70%>
					
					<%!String res_status; %>
			<%
			
				if(customer.getResidentialStatus() ==1)
				{
					res_status = "Resident Individual";
				}
				else if (customer.getResidentialStatus() == 2)
				{
					res_status = "Non Resident Indian";
				}
				else if (customer.getResidentialStatus() == 3)
				{
					res_status = "Foreign National";
				}
				else
				{
					res_status = "Person of Indian Origin";
				}
			
			%>
						<input type="text" name="residentialstatus" disabled="disabled" value="<%=res_status%>">
					     &nbsp;&nbsp;&nbsp;</td>
				</tr>
				
				<tr>
					<td width=30%>User Name</td>
					<td width=70%>
						<input type="text" name="userName" placeholder="User Name" id="username" value="<%=customer.getUserName()%>"
							size=15 maxlength=30  title="max. 20 characters">
						&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td>Customer Type<br><br></td>
					<td width=70%>
					<%!String custType; %>
			<%
			
				if(customer.getCustomerType() ==1)
				{
					custType = "Public";
				}
				else if (customer.getCustomerType() == 2)
				{
					custType = "Staff";
				}
				else if (customer.getCustomerType() == 3)
				{
					custType = "Senior Citizen";
				}
				else
				{
					custType = "Minor";
				}
			
			%>
						<input type="text" name="customerType" disabled="disabled" value="<%=custType%>">
					     &nbsp;&nbsp;&nbsp;</td>
				</tr>
				
				<%
				UserTypeCache userCache = new UserTypeCache();
				List<UserType> userTypeList=  userCache.getUserTypeFromCache();
				%>
				 <tr>
					<td>User Type</td>
					<td width=70%>
					<%!String uType; %>
			<%
				if(customer.getUserType() ==1)
				{
					uType = "SuperAdmin";
				}
				else if (customer.getUserType() == 2)
				{
					uType = "Admin";
				}
				else if (customer.getUserType() == 3)
				{
					uType = "Employee";
				}
				else
				{
					uType = "Customer";
				}
			%>	
					<input type="text" name="userType" disabled="disabled" value="<%=uType%>">
					&nbsp;&nbsp;&nbsp;
					<input type="hidden" name="userType1"  value="<%=customer.getUserType()%>">
					</td>
					
				</tr> 
				
			</table>	
			<table  class="table50" align='right'>	
			
				<tr>
					<th colspan=2>Local Address</th>
					
				</tr> 
				
			<%
				AddressInterface address1 = new AddressHelper();
				Address address = address1.showSelectedlocalAddress(customer.getId());
			
			%>		
				<tr>
					<td width=30%>line1</td>
					<td width=70%>
						<input type="text" name="localline1" placeholder="line1"  value="<%=address.getLine1() %>"
							size=25 maxlength=45  title="max. 45 characters">
						&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td width=30%>line2</td>
					<td width=70%>
						<input type="text" name="localline2" placeholder="line2" value="<%=address.getLine2() %>"
							size=25 maxlength=45  title="max. 45 characters">
						&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td width=30%>City</td>
					<td width=70%>
						<input type="text" name="localcity" placeholder="City" value="<%=address.getCity() %>"
							size=25 maxlength=45  title="max. 45 characters">
						&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td width=30%>Pincode</td>
					<td width=70%>
						<input type="text" name="localpincode" placeholder="Pincode" value="<%=address.getPincode()%>"
							size=15 maxlength=6  title="max. 6 characters">
						&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td width=30%>State</td>
					<td width=70%>
						<input type="text" name="localstate" placeholder="State" value="<%=address.getState() %>"
							size=25 maxlength=45  title="max. 45 characters">
						&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td width=30%>Country<br><br></td>
					<td width=70%>
						<input type="text" name="localcountry" placeholder="Country" value="<%=address.getCountry() %>"
							size=25 maxlength=45  title="max. 45 characters">
					
					</td>
					
				</tr>
			</table>
			<table class="table50" align='right'>
				<tr>
					<th colspan=2>Permanant Address</th>
				</tr> 
				
				<%
				AddressInterface address2 = new AddressHelper();
				Address permanantaddress = address2.showSelectedPermanantAddress(customer.getId());
			
			%>	
				
					
				<tr>
					<td width=30%>line1</td>
					<td width=70%>
						<input type="text" name="permanantline1" placeholder="line1"  value="<%=permanantaddress.getLine1() %>"
							size=25 maxlength=45  title="max. 45 characters">
						&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td width=30%>line2</td>
					<td width=70%>
						<input type="text" name="permanantline2" placeholder="line2" value="<%=permanantaddress.getLine2() %>"
							size=25 maxlength=45  title="max. 45 characters">
						&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td width=30%>City</td>
					<td width=70%>
						<input type="text" name="permanantcity" placeholder="City" value="<%=permanantaddress.getCity() %>"
							size=25 maxlength=45  title="max. 45 characters">
						&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td width=30%>Pincode</td>
					<td width=70%>
						<input type="text" name="permanantpincode" placeholder="Pincode" value="<%=permanantaddress.getPincode() %>"
							size=15 maxlength=6  title="max. 6 characters">
						&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td width=30%>State</td>
					<td width=70%>
						<input type="text" name="permanantstate" placeholder="State" value="<%=permanantaddress.getState() %>"
							size=25 maxlength=45  title="max. 45 characters">
						&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td width=30%>Country</td>
					<td width=70%>
						<input type="text" name="permanantcountry" placeholder="Country" value="<%=permanantaddress.getCountry()%>"
							size=25 maxlength=45  title="max. 45 characters">
						&nbsp;&nbsp;&nbsp;
					</td>
				</tr>
				<%-- 
				<tr>
				<td width=30%>Captcha</td>
				<td width=70%>
				<jsp:include page="simplecaptcha.jsp"></jsp:include>
					<%@ include file="simplecaptcha.jsp" %>
					</td>
				</tr> --%>
				<tr>
					<td  width=30%>Upload your photo</td>
					<td  width=70%><input type="file" name="image" size="20" /></td>
					<%-- value="<%=admin.getImage()%>" --%>
				</tr>
		</table >
		
		<table class="table100" align='left'>
		<tr>
				<td colspan="2" align='center'>
					  <input type="hidden"  name="updateEmpId" value=<%=Integer.parseInt(request.getParameter("ilRecId"))%>>
					 <input type="submit" name="submit" value="Update"> 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
				</td>
			</tr>
		</table>
	</form>
</body>
<%@ include file="footer.jsp" %>
</html>