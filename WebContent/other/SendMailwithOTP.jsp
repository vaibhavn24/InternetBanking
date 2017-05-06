<%@page import="com.classes.SendMailForOTP"%>
<%@page import="com.dbutility.DbUtil"%>

<%@ page import="java.io.*,java.sql.*"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<% 
                    String sn=request.getParameter("email");
                   
                    System.out.println("email >>>>"+sn);
                    
                    SendMailForOTP.sendMailwithOPT(sn);
     
%>