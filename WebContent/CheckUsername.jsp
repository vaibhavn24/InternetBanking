
<%@page import="com.dbutility.DbUtil"%>
<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<% 
                    String n=request.getParameter("uname");
                    Connection con = DbUtil.getConnection();
                    Statement st=con.createStatement();
                    ResultSet rs = st.executeQuery("select * from user where user_name='"+n+"'");  // this is for name
                    if(rs.next())
                    {   %>
                        <font color=red>
                        UserName already taken
                        <input type="hidden" id="actual" name="actual" value="taken">
                      
                        </font>

                   <% }else {%>
                        <font color=green>
                        <input type="hidden" id="actual" name="actual" value="available">
                        Available
                        </font>
                       
                   <% }%>
                    
     <%               
rs.close();
st.close();
con.close();
%>