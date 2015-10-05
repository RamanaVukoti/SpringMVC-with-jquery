<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="beans.ItemBean"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="cssFunctions/styleIndexFile.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#CCFF99" >
<div id="itemSucMes"></div>
	<div id="displayContainer">
		<div id="itemImageDiv">
			<img src="${itemBean.item}" id=itemImage>

		</div>
		<div id="itemDesc">
			<div id="itemContent" >
				<label class="labelDesc" id=modelLabel>Model</label><label class="itemLabel"
					id="itemName" ><c:out value="${itemBean.itemName}"></c:out>
				</label> <label class="labelDesc" id="avilLabel">avail</label><label class="itemLabel"
					id="itemAvauil"><c:out value="${itemBean.availbility}"></c:out>
				</label> <label class="labelDesc" id="costLabel">cost</label><label id="itemCost"
					class="itemLabel"><c:out value="${itemBean.cost}"></c:out>
				</label>

			</div>
			<input type="submit" class="shopButton2" title="${itemBean.item}" value="add to cart" onclick="imageToController(this.title)">
		</div>
	</div>
</body>
</html>