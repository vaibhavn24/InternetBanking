<link href="css/common.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="styles.css">
<link href="css/KItables.css" rel="stylesheet" type="text/css">
<link href="css/menu.css" rel="stylesheet" type="text/css">
<link href="css/standard.css" rel="stylesheet" type="text/css">
<link href="css/tables.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<style>
.mySlides {display:none;}
</style>
<div id="container">
<%@ include file="outside_header.jsp" %>
	<div id="content-container">
		<div id="content" align="center">
		
		<p>

				Online banking, also known as internet banking, e-banking or virtual
				banking, is an electronic payment system that enables customers of a
				bank or other financial institution to conduct a range of financial
				transactions through the financial institution's website. The online
				banking system will typically connect to or be part of the core
				banking system operated by a bank and is in contrast to branch
				banking which was the traditional way customers accessed banking
				services..<br /> <br /> To access a financial institution's online
				banking facility, a customer with internet access would need to
				register with the institution for the service, and set up a password
				and other credentials for customer verification. The credentials for
				online banking is normally not the same as for telephone or mobile
				banking. Financial institutions now routinely allocate customers
				numbers, whether or not customers have indicated an intention to
				access their online banking facility. Customer numbers are normally
				not the same as account numbers, because a number of customer
				accounts can be linked to the one customer number. Technically, the
				customer number can be linked to any account with the financial
				institution that the customer controls, though the financial
				institution may limit the range of accounts that may be accessed to,
				say, cheque, savings, loan, credit card and similar accounts.<br />
				<br /> Online banking also eliminates paper waste, which is a plus
				not only for those who have to handle all the paper work, but also
				for the environment. Of course, there are also disadvantages.
				Security is always an issue with Internet transactions. Although
				information is encrypted , and the chances of an account being
				hacked are slim, it happens. Banks pay a lot of money to install
				high tech firewalls, however, and chances are good that a customer's
				money is in good hands.<br /> <br />
			</p>
		</div>
		<div id="aside">
		
		<div class="w3-content" style="max-width:400px">
  <div class="mySlides w3-container w3-red">
    <h1><b>Did You Know?</b></h1>
    <h1><i>We plan to sell trips to the moon in the 2020s</i></h1>
  </div>

  <div class="mySlides w3-container w3-xlarge w3-white w3-card-4">
    <p><span class="w3-tag w3-yellow">New!</span>
    <p>6 Crystal Glasses</p>
    <p>Only $99 !!!</p>
  </div>

</div>
		
		
		</div>
		<%@ include file="footer.jsp" %>
		
	
</div>
</div>
<script>
var slideIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none"; 
    }
    slideIndex++;
    if (slideIndex > x.length) {slideIndex = 1} 
    x[slideIndex-1].style.display = "block"; 
    setTimeout(carousel, 2000); 
}
</script>
			