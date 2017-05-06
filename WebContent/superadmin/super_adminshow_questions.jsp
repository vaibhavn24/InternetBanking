<%@ include file="/other/importclasses.jsp"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="/InternetBanking/css/common.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="/InternetBanking/styles.css">
<link href="/InternetBanking/css/KItables.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBanking/css/menu.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBanking/css/standard.css" rel="stylesheet"
	type="text/css">
<link href="/InternetBanking/css/tables.css" rel="stylesheet"
	type="text/css">

<script type="text/javascript">
	function deleted() {
		document.showqusform.action = "./deletequestion";
		document.showqusform.submit();
	}
</script>
<title>show questions page</title>
</head>
<%@ include file="/superadmin/superadmin_outside_header.jsp"%>

<body>
	<div id="contentview">

		<table class="width100">
			<tr>
				<td width='66%' align='center'><a
					href="/InternetBanking/question/addSecurityQuestion.jsp"> <u>
							Add new question </u>
				</a></td>
			</tr>
		</table>
		<form name="showqusform">
			<table class="table100" align="center">
				<tr>
					<th colspan="3">List of Questions</th>
				</tr>
				<tr>
					<td width="12%">Sr No/Update</td>
					<td width="86%">Name</td>
					<td width="2%">Delete</td>
				</tr>
				<%
						int i = 0;
						SecurityQuestionInterface questionHelper = new SecurityQuestionHelper();
						List<Question> list = questionHelper.showQuestion();

						for (Question question : list) {
					%>
				<tr>
					<td><a
						href="/InternetBanking/question/updatequs.jsp?ilRecId=<%=question.getId()%>">
							<u><%=++i%></u> &nbsp;
					</a>&nbsp;</td>
					<td><%=question.getName()%> &nbsp;</td>
					<td><input type="checkbox" name="id"
						value=<%=question.getId()%> /></td>

				</tr>
				<%
						}
					%>
				<tr>
					<td></td>
					<td></td>
					<td><input type="submit" value="delete" onClick="deleted()"></td>
				</tr>
			</table>
			<table class="width100">
				<tr>
					<td width='66%' align="center"><a
						href="/InternetBanking/question/addSecurityQuestion.jsp"> <u>
								Add new question </u>
					</a></td>
				</tr>
			</table>
		</form>

	</div>

	<%@ include file="/other/footer.jsp"%>
</body>
</html>