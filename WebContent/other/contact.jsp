<link href="/InternetBanking/css/common.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="/InternetBanking/styles.css">
<link href="/InternetBanking/css/KItables.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBanking/css/menu.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBankingcss/standard.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBanking/css/tables.css" rel="stylesheet"
	type="text/css">
<link rel="icon" type="image/png" href="/InternetBanking/images/bankicon.ico">

<div id="container">
	<%@ include file="/other/outside_header.jsp"%>
	<div id="content-container">
		<div id="content">

			<h2>Contact us by the form given below</h2>
			<br /> <br />
			<form action="contactBean.jsp" onsubmit="return check();" name="f1">
				<b>Subject: </b><input type="text" name="subject" /><br /> <br />
				<b>Message: </b>
				<textarea rows="8" cols="16" name="message"></textarea>
				<br /> <br /> <input type="submit" value="Submit" /> <input
					type="reset" value="Clear" />

			</form>

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
		<%@ include file="/other/footer.jsp"%>

	</div>
</div>









