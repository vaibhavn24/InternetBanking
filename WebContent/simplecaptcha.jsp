<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page import="nl.captcha.Captcha"%>
<html>
<head>
<META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>register page</title>
<link href="css/captchastyle.css" type="text/css" rel="stylesheet" />
</head>
<script type="text/javascript">
function myFunction() {
    var answer,checkString,captcha2;
    <%
	Captcha captcha1 = (Captcha) session.getAttribute(Captcha.NAME);
	%>
	captcha2 = <%=captcha1%>;
    answer = document.getElementById("answer").value;
    if (captcha2.localeCompare()) {
    	checkString = "Correct Captcha Code";
    } else {
    	checkString = "In Correct Captcha Code !";
    }
    document.getElementById("demo").innerHTML = checkString;
}
</script>
<body>


<center>

 <h4>Enter the code below</h4><hr>
<img id="captcha" src="<c:url value="simpleCaptcha.jpg"  />" width="150"><br><br>
<input id="answer" type="text" name="answer" />
<br>
<!-- <button onclick="myFunction()">submit</button> -->
<br>
<p id="demo"></p>
</center>
</body>
</html>
