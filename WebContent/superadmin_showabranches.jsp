<%@page import="com.model.User"%>
<%@page import="com.model.Branch"%>
<%@page import="com.helper.BranchesHelper"%>
<%@page import="com.helper.BranchesHelperInterface"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.model.Question"%>
<%@page import="java.util.List"%>
<%@page import="com.classes.QuestionCache"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>branch</title>
<link href="css/common.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="styles.css">
<link href="css/KItables.css" rel="stylesheet" type="text/css">
<link href="css/menu.css" rel="stylesheet" type="text/css">
<link href="css/standard.css" rel="stylesheet" type="text/css">
<link href="css/tables.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript" src="validation.js"></script>
<script type="text/javascript">
	function deleted() {
		document.showbranchform.action = "./deletebranch";
		document.showbranchform.submit();
	}
</script>
<%@ include file="superadmin_outside_header.jsp" %>

<body>
<input type="text" value="<%=user.getId()%>">
 			<table class="width100">
			<tr>
				<td width='66%' align='center'><a
					href="addbranch.jsp"> <u> Add new branch</u>
				</a></td>
				</tr>
			</table>
			 <form name="showbranchform">
				<table class="table100" align="center">
					<tr>
						<th colspan="3">List of Branches</th>
					</tr>
					<tr>
						<td width="12%">Sr No/Update</td>
						<td width="86%">BranchName</td>
						<td width="2%">Delete</td>
					</tr>
					<%
						int i = 0;
						BranchesHelperInterface branchHelper = new BranchesHelper();
						List<Branch> list = branchHelper.showBranch();

						for (Branch branch : list) {
					%>
					<tr>
						<td><a href="updatebranch.jsp?ilRecId=<%=branch.getId()%>">
								<u><%=++i%></u> &nbsp;
						</a>&nbsp;</td>
						<td><%=branch.getName()%> &nbsp;</td>
						<td><input type="checkbox" name="id"
							value=<%=branch.getId()%>></td>

					</tr>
					<%
						}
					%>
					<tr>
					<td></td>
					<td></td>
					<td>
					<input type="hidden" name="ilRecId" value="<%=user.getId()%>">
					<input type="submit" value="delete" onClick="deleted()"></td>
					</tr>
				</table>
				<table class="width100">
				<tr>
					<td width='66%' align="center"><a
						href="addbranch.jsp"> <u> Add New Branch </u>
					</a></td>
					</tr>
				</table> 
				</form>
				
		
</body>
<%@ include file="footer.jsp" %>
</html>