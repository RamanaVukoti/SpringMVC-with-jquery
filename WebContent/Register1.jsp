<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<script language="javascript" src="ScriptFunctions/functions.js"></script>
<link rel="stylesheet" href="cssFunctions/styles1.css" />
<script language="javascript" src="ScriptFunctions/functions2.js"></script>

</head>
<body>
	<img class="loginImage2" src="images/companyImage.png"></img>
	<label class="loginHead2">Tech Mahindra e-shopping</label>
	<form id="regForm"">
		<div id="tableId">
			<table class="tableId2" cellspacing="10">
				<tr>
					<td>Name:</td>
					<td><input class="textField" type="text" name="name">
					</td>
				</tr>
				<tr>
					<td>GID:</td>
					<td><input class="textField" type="text" name="gid"></td>
				</tr>
				<tr>
					<td>Proxy:</td>
					<td><input class="textField" type="text" name="proxy">
					</td>
				</tr>
				<tr>
					<td>Location:</td>
					<td><input class="textField" type="text" name="location">
					</td>
				</tr>
				<tr>
					<td>Email id2:</td>
					<td><input class="textField" type="text" name="mailId">
					</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="button" value="Register" id="registerButton"
						class="buttonId">
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>