<link href="css/common.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="styles.css">
<link href="css/KItables.css" rel="stylesheet" type="text/css">
<link href="css/menu.css" rel="stylesheet" type="text/css">
<link href="css/standard.css" rel="stylesheet" type="text/css">
<link href="css/tables.css" rel="stylesheet" type="text/css">
<div id="container">
<%@ include file="outside_header.jsp" %>
	<div id="content-container">
		<div id="content">
			<marquee>
				<h2 style="color: red;">
					<i> - Welcome - </i>
				</h2>
			</marquee>
			<br /> <br /> 
			<!-- <div style="position: relative; left: 15% ;"  >
				<img src="images/home.jpg" width ="550px" height="400px" />
			</div> -->
			<div class="w3-content w3-section" style="max-width:500px">
       <img class="mySlides" src="images/home.jpg" style="width:100%" height="400px">
       <img class="mySlides" src="images/withdraw.jpg" style="width:100%" height="400px">
       <img class="mySlides" src="images/images.jpg" style="width:100%" height="400px">
          </div>
			
		</div>
		<div id="aside">
			<h2>LOGIN</h2>
			<%@ include file="login.jsp" %>
			
			<p>
				* Online banking is the practice of making bank transactions or
				paying bills via the Internet. <br /> <br />* Security is always
				an issue with Internet transactions. Although information is
				encrypted , and the chances of an account being hacked are slim, it
				happen.
			</p>
		</div>
		<%@ include file="footer.jsp" %>
		
	</div>
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 5000); // Change image every 2 seconds
}
</script>