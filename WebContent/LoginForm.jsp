<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="cssFunctions/styles1.css" />
<link rel="stylesheet" href="cssFunctions/jquery1-ui.css" />
<script language="javascript" src="ScriptFunctions/functions2.js"></script>
<script language="javascript" src="ScriptFunctions/jquery1-1.10.2.js"></script>
<script language="javascript" src="ScriptFunctions/jquery1-ui.js"></script>


</head>

<body">

<div id="sucessParam">${parameter}</div>

	<div id="errorMesg">${message}</div>
	<div id="logSuccess">${success}</div>
	<div id="log">
		<img id="loginImage" src="images/companyImage.png"></img> <label
			id="loginHead">Tech Mahindra e-shopping</label>


		<div id="invalid">${message}</div>


		 <form id="loginForm">

		<table class="tableId">
			<tr>
				<td>Email id:</td>
				<td><input name="mailId" type="text" class="textField"></input>
				</td>
				<td><form:errors path="mailId" class="textField"></form:errors></td>
			</tr>
			<tr>
				<td>Number:</td>
				<td><input name="number" type="text" class="textField"></input>
				</td>
				<td><form:errors path="number" class="textField"></form:errors>
				</td>
			</tr>
			<tr>
				<td>
				<input type="button" class="buttonId2" id="loginButton" value="Login" >
				</td>
			</tr>
		</table>


	</form>
 
		<%-- <div id="itemC">
			<form:form id="loginForm" commandName="loginBean">

				<table class="tableId">
					<tr>
						<td>Email Id:</td>
						<td><form:input path="mailId" class="textField"></form:input>
						</td>
						<td><form:errors path="mailId" class="textField"></form:errors>
						</td>
					</tr>
					<tr>
						<td>Number:</td>
						<td><form:input path="number" class="textField"></form:input>
						</td>
						<td><form:errors path="number" class="textField"></form:errors>
						</td>
					</tr>
					<tr>
						<td>
							<button class="buttonId" value="submit" onclick="loginSuccess()">submit</button>
						</td>
					</tr>
				</table>


			</form:form>
		</div> --%>
	</div>
</body>
</html>
