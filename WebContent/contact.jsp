<link href="css/css.css" rel="stylesheet" type="text/css" />
<div id="container">
	<jsp:include page="superadmin_outside_header.jsp"></jsp:include>
	<div id="content-container">
		<div id="content">
			<marquee>
				<h2 style="color: red;">
					<i> </i>
				</h2>
			</marquee>
			<br /> <br />
			<center>
				<h2 style="color: red;">Message Sent!!</h2>
				<br />
				<h2>Contact us by the form given below</h2>
				<br /> <br />
				<form action="contactBean.jsp" onsubmit="return check();" name="f1">
					<b>Subject: &nbsp;&nbsp;&nbsp;</b><input type="text" name="subject" /><br />
					<br /> <b>Message: </b>
					<textarea rows="8" cols="16" name="message"></textarea>
					<br /> <br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="Clear">

				</form>
			</center>

		</div>

		<div id="aside">
			<p>
				* Online banking is the practice of making bank transactions or
				paying bills via the Internet. <br /></br>* Banking online allows a
				customer to make deposits, withdrawals, transfers with the click of
				a mouse. <br /> <br />* Online banking also eliminates paper
				waste, which is a plus not only for those who have to handle all the
				paper work, but also for the environment. <br /> <br />* Security
				is always an issue with Internet transactions. Although information
				is encrypted , and the chances of an account being hacked are slim,
				it happen.
			</p>
		</div>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</div>
