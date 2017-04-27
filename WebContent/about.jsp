<div id="container">
    <%String name=(String)session.getAttribute("username");%>
<link href="css.css" rel="stylesheet" type="text/css"/>
<jsp:include page="outside_header.jsp"></jsp:include>

<div id="content-container">
<div id="content">
<marquee><h2 style="color: red;"><i>
            <%
            if(name==null)
            {%>
                - Welcome Guest -
            <%}
            else
            {%>
            	- Welcome <%=name%> -
            <%}%>
            </i></h2></marquee><br/><br/>

<p>

Online banking, also known as internet banking,
 e-banking or virtual banking, is an electronic payment system that enables customers
  of a bank or other financial institution to conduct a range of financial
   transactions through the financial institution's website. 
   The online banking system will typically connect to or be part of the core banking system 
   operated by a bank and is in contrast 
to branch banking which was the traditional way customers accessed banking services..<br/><br/>

To access a financial institution's online banking facility,
 a customer with internet access would need to register with 
 the institution for the service, and set up a password and other
  credentials for customer verification. The credentials for online
   banking is normally not the same as for telephone or mobile banking. 
   Financial institutions now routinely allocate customers numbers, whether
    or not customers have indicated an intention to access their online
     banking facility. Customer numbers are normally not the same as account
      numbers, because a number of customer accounts can be linked to the one
       customer number. Technically, the customer number can be linked to any
        account with the financial institution that the customer controls, 
        though the financial institution may limit the range of accounts that
         may be accessed to,
 say, cheque, savings, loan, credit card and similar accounts.<br/><br/>

Online banking also eliminates paper waste, which
is a plus not only for those who have to handle
all the paper work, but also for the environment.
Of course, there are also disadvantages. Security
is always an issue with Internet transactions.
Although information is encrypted , and the
chances of an account being hacked are slim, it
happens. Banks pay a lot of money to install high
tech firewalls, however, and chances are good that
a customer's money is in good hands.<br/><br/>



</p>
</div>

<div id="aside">
    <%
    if(name==null)
    {%>
<h2>Login :-</h2>
<jsp:include page="login.jsp"></jsp:include>
    <%}
    else
      {%>
        <p>* Online banking is the practice of making bank transactions or paying bills via the Internet.
<br/><br/>* Security is always an issue with Internet transactions. Although information is encrypted , and the chances of an account being hacked are slim, it happen.
</p>
    <%}%>
</div>

</div>
<jsp:include page="footer.jsp"></jsp:include>

</div>
