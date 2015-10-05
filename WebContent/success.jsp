<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%-- <%@ include file="Index.jsp" %>   --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success page</title>

<script language="javascript" src="ScriptFunctions/functions.js"></script>
<link rel="stylesheet"  href="cssFunctions/styles.css"/>


</head>
<body >
<div id="logSuccess">${success}</div>
<div id="sessionVal">${seesionValue}</div>
<div id="messageDiv">${name}

<br>${number} 
</div>
<a href="session.jsp">session here</a>
	<%-- <table align="center" cellspacing="7" bordercolor="red">
		<tr>
			<td>${message}</td>
			<td>${PhqqNumber}</td>
		</tr>
	</table> --%>
</body>
</html>