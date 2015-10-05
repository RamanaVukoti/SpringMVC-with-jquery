<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.img {
     margin: 5px;
    padding: 5px;
    border: 1px solid #0000ff;
     height: auto;
     width: auto;
     float: left;
     text-align: center;
 }

.img img {
     display: inline;
     margin: 5px;
     border: 1px solid #ffffff;
 }


#desc1 {
     text-align: center;
     font-weight: normal;
     width: 120px;
     margin: 5px;
 }
#desc2{
  text-align: center;
     font-weight: normal;
     width: 120px;
     margin: 5px;
 }
 
</style>
</head>
<body>
<c:forEach items="${list}" var="itemBean">
<div class="img">
  
     <img src="${itemBean.itemName}" alt="Klematis" width="110"height="90">
   
   <div class="desc1">${itemBean.cost}</div>
   <div class="desc2">Rs.${itemBean.availbility}</div>
 </div>
 
	</c:forEach>
 

<%-- 
	<c:forEach items="${list}" var="itemBean">

		<div id="view-cart">
			<img id="images" src="${itemBean.itemName}">
			 <label id="cost">${itemBean.cost}</label>
			<label id="availability">${itemBean.availbility}</label>

		</div>
	</c:forEach> --%>
	<!-- </table> -->
</body>
</html>