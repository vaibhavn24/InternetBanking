function checklogin(form) {
	var userName = document.getElementById('userName').value;
	var password = document.getElementById('password').value;
	submit = true;
	
	if(userName == '')
	{
	    document.getElementById('userName_error').innerHTML = "*UserName Is Required";
	    return false;
	}
	if(password == '')
	{
	    document.getElementById('password_error').innerHTML = "*Password Is Required";
	    return false;
	}
	return submit;
	document.getElementById('userName').onkeyup = removewarning;
	document.getElementById('password').onkeyup = removewarning;
}
function removewarning()
{
document.getElementById(this.id +'_error').innerHTML = "";
} 


function registerform(form) {
	/*var e = document.getElementById("gender");
	var strUser = e.options[e.selectedIndex].value;
	var strUser1 = e.options[e.selectedIndex].text;
	var rs = document.getElementById("residentialstatus");
	var residentialstatus1 = rs.options[rs.selectedIndex].value;
	var strUser2 = rs.options[rs.selectedIndex].text;
	var ct = document.getElementById("customerType");
	var custType = ct.options[ct.selectedIndex].value;
	var strUser3 = ct.options[ct.selectedIndex].text;
	*/
	if (form.firstName.value == "") {
		alert("Error: First Name cannot be blank!");
		form.firstName.focus();
		return false;
	}
	if (form.lastName.value == "") {
		alert("Error: Last Name cannot be blank!");
		form.lastName.focus();
		return false;
	}

	if (form.motherName.value == "") {
		alert("Error: Mother Name cannot be blank!");
		form.motherName.focus();
		return false;
	}

	/*if (strUser == 0) {
		alert("Please select a Gender");
		return false;
	}*/

	if (form.email.value == "") {
		alert("Error: Email cannot be blank!");
		form.email.focus();
		return false;
	}
	var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
	if (!emailRegex.test(form.email.value)) {
		alert("Error: Enter the valid email");
		form.email.focus();
		return false;
	}

	if (form.primaryPhoneNumber.value == "") {
		alert("Error: PhoneNumber cannot be blank!");
		form.primaryPhoneNumber.focus();
		return false;
	}

	if (form.secondaryPhoneNumber.value == "") {
		alert("Error: PhoneNumber cannot be blank!");
		form.secondaryPhoneNumber.focus();
		return false;
	}
	if (form.aadharcard.value == "") {
		alert("Error: Aadharcard cannot be blank!");
		form.aadharcard.focus();
		return false;
	}

	if (form.pancard.value == "") {
		alert("Error: Pancard cannot be blank!");
		form.pancard.focus();
		return false;
	}
	/*if (residentialstatus1 == 0) {
		alert("Please select Residential Status");
		return false;
	}*/

	/*if (form.answer.value == "") {
		alert("Error: Answer cannot be blank!");
		form.answer.focus();
		return false;
	}*/
	if (form.userName.value == "") {
		alert("Error: userName cannot be blank!");
		form.userName.focus();
		return false;
	}
	if (form.password.value == "") {
		alert("Error: Password cannot be blank!");
		form.password.focus();
		return false;
	}
	if (form.password.value.length < 6) {
			alert("Error: Password must contain at least six characters!");
			form.password.focus();
			return false;
	}
	if (form.password.value == form.userName.value) {
			alert("Error: Password must be different from userName!");
			form.password.focus();
			return false;
	}
	re = /[0-9]/;
	if (!re.test(form.password.value)) {
			alert("Error: password must contain at least one number (0-9)!");
			form.password.focus();
			return false;
	}
	re = /[a-z]/;
		if (!re.test(form.password.value)) {
			alert("Error: password must contain at least one lowercase letter (a-z)!");
			form.password.focus();
			return false;
	}
	re = /[A-Z]/;
	if (!re.test(form.password.value)) {
			alert("Error: password must contain at least one uppercase letter (A-Z)!");
			form.password.focus();
			return false;
	}
	if (form.confirmpassword.value == "") {
		alert("Error: confirm Password cannot be blank!");
		form.confirmpassword.focus();
		return false;
}	
	if (form.password.value != form.confirmpassword.value) {
		alert("Error: password and confirmpassword must be same!");
		form.password.focus();
		return false;
	} 
	/*if (custType == 0) {
		alert("Please select a Customer Type");
		return false;
	}
	*/
	if (form.localline1.value == "") {
		alert("Error: localline1 cannot be blank!");
		form.localline1.focus();
		return false;
	}
	if (form.localline2.value == "") {
		alert("Error: localline2 cannot be blank!");
		form.localline2.focus();
		return false;
	}
	if (form.localcity.value == "") {
		alert("Error: localcity cannot be blank!");
		form.localcity.focus();
		return false;
	}
	if (form.localpincode.value == "") {
		alert("Error: localpincode cannot be blank!");
		form.localpincode.focus();
		return false;
	}
	if (form.localstate.value == "") {
		alert("Error: localstate cannot be blank!");
		form.localstate.focus();
		return false;
	}
	if (form.localcountry.value == "") {
		alert("Error: localcountry cannot be blank!");
		form.localcountry.focus();
		return false;
	}
	if (form.permanantline1.value == "") {
		alert("Error: permanantline1 cannot be blank!");
		form.permanantline1.focus();
		return false;
	}
	if (form.permanantline2.value == "") {
		alert("Error: permanantline2 cannot be blank!");
		form.permanantline2.focus();
		return false;
	}
	if (form.permanantcity.value == "") {
		alert("Error: permanantcity cannot be blank!");
		form.permanantcity.focus();
		return false;
	}
	if (form.permanantpincode.value == "") {
		alert("Error: permanantpincode cannot be blank!");
		form.permanantpincode.focus();
		return false;
	}
	if (form.permanantstate.value == "") {
		alert("Error: permanantstate cannot be blank!");
		form.permanantstate.focus();
		return false;
	}
	if (form.permanantcountry.value == "") {
		alert("Error: permanantcountry cannot be blank!");
		form.permanantcountry.focus();
		return false;
	}
 return true;
}


function securitySuestionform(form)
{
	if (form.securityQuestion.value == "") {
		alert("Error: Security Question cannot be blank!");
		form.securityQuestion.focus();
		return false;
	}
	return true;
}

function forgetpasswordform(form)
{
	if (form.password.value == "") {
		alert("Error: Password cannot be blank!");
		form.password.focus();
		return false;
	}
	if (form.password.value.length < 6) {
			alert("Error: Password must contain at least six characters!");
			form.password.focus();
			return false;
	}
	re = /[0-9]/;
	if (!re.test(form.password.value)) {
			alert("Error: password must contain at least one number (0-9)!");
			form.password.focus();
			return false;
	}
	re = /[a-z]/;
		if (!re.test(form.password.value)) {
			alert("Error: password must contain at least one lowercase letter (a-z)!");
			form.password.focus();
			return false;
	}
	re = /[A-Z]/;
	if (!re.test(form.password.value)) {
			alert("Error: password must contain at least one uppercase letter (A-Z)!");
			form.password.focus();
			return false;
	}
	if (form.confirmpassword.value == "") {
		alert("Error: Conform Password cannot be blank!");
		form.confirmpassword.focus();
		return false;
}	
	if (form.password.value != form.confirmpassword.value) {
		alert("Error: password must same from conformpassword!");
		form.password.focus();
		return false;
	} 
	if (form.email.value == "") {
		alert("Error: Email cannot be blank!");
		form.email.focus();
		return false;
	}
	var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
	if (!emailRegex.test(form.email.value)) {
		alert("Error: Enter the valid email");
		form.email.focus();
		return false;
	}
	function checkConformPwd(form) {
		if (form.password.value == "") {
			alert("Error: Password cannot be blank!");
			form.password.focus();
			return false;
		}
		if (form.password.value.length < 6) {
				alert("Error: Password must contain at least six characters!");
				form.password.focus();
				return false;
		}
		re = /[0-9]/;
		if (!re.test(form.password.value)) {
				alert("Error: password must contain at least one number (0-9)!");
				form.password.focus();
				return false;
		}
		re = /[a-z]/;
			if (!re.test(form.password.value)) {
				alert("Error: password must contain at least one lowercase letter (a-z)!");
				form.password.focus();
				return false;
		}
		re = /[A-Z]/;
		if (!re.test(form.password.value)) {
				alert("Error: password must contain at least one uppercase letter (A-Z)!");
				form.password.focus();
				return false;
		}
		if (form.confirmpassword.value == "") {
			alert("Error: Conform Password cannot be blank!");
			form.conformpassword.focus();
			return false;
	}	
		if (form.password.value != form.confirmpassword.value) {
			alert("Error: password must same from confirmpassword!");
			form.confirmpassword.focus();
			return false;
		} 
		return true;
	}

	function checkAadharForm(form) {
		if (form.aadharNumber.value == "") {
			alert("Error: aadharNumber cannot be blank!");
			form.aadharNumber.focus();
			return false;
		}
		
		re = /[a-z]/;
		if (re.test(form.aadharNumber.value)) {
			alert("Error: aadharNumber must contain only number (0-9)!");
			form.aadharNumber.focus();
			return false;
	}
	re = /[A-Z]/;
	if (re.test(form.aadharNumber.value)) {
			alert("Error: aadharNumber must contain only number (0-9)!");
			form.aadharNumber.focus();
			return false;
	}
		
		return true;
	}


	}