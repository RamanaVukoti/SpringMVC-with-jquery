<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.black_overlay {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
	background-color: black;
	z-index: 1001;
	-moz-opacity: 0.8;
	opacity: .80;
	filter: alpha(opacity = 80);
}

.white_content {
	display: none;
	position: absolute;
	top: 25%;
	left: 25%;
	width: 50%;
	height: 50%;
	padding: 16px;
	border: 16px solid orange;
	background-color: white;
	z-index: 1002;
	overflow: auto;
}

#lightBoxContent {
	font-size: 15px;
}
</style>
<script>
	function dialogBox() {
		document.getElementById('light').style.display = 'block';
		document.getElementById('fade').style.display = 'block'

	}
</script>
</head>
<body onload="dialogBox()">
	
	<div id="light" class="white_content">
		<label id="lightBoxContent">you have to LOGIN before add the
			item to cart</label><a href="javascript:void(0)"
			onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">Close</a>
	</div>
	<div id="fade" class="black_overlay"></div>
</body>
</html>