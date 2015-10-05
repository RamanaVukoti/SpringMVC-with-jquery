<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="cssFunctions/styles.css" />
<link rel="stylesheet" href="cssFunctions/jquery-ui.css" />
<script language="javascript" src="ScriptFunctions/functionIndex.js"></script>
<script language="javascript" src="ScriptFunctions/jquery-1.10.2.js"></script>
<script language="javascript" src="ScriptFunctions/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	function notiFy() 
	{
		setTimeout(
				function()
				{
					var timeLeft = confirm('Your Session is going to expire in another 30 Second. Do you want to continue.');
					if (timeLeft == true)
					{
						window.location = self.location.reload(true);

					} else 
					{
						return true;
					}
				}, 10000);
	}
</script>
</head>
<body onload="notiFy()">
	<div id="itemC"></div>
	<div id="myOrder">

		<a href="#"><label id="checkOrder">check your order here</label>
		</a>
		<a href="#" onclick="history.go(-1):return false;">back</a>

	</div>
</body>
</html>