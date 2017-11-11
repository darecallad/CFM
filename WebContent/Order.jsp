<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order</title>
</head>
<body>

<form action="Order" method="POST">

<table border="1" cellpadding = "2" width="50%">
<tr> 

    <th>Option</th>
    <th>Image</th>
	<th>Name</th>
	

</tr>

<c:forEach items="${Food }" var="Food" varStatus="counter">
	<tr >
	
	<td><input type="checkbox" name="choose" value="${Food.name }"></td>
		<td><img src="image/foodPhoto/${Food.id }.jpg"></td>
		<td > <strong>${Food.name }</strong><br></td>			
	</tr>
	<input type='hidden' name=counterValue value=${counter.index }>
</c:forEach>
<tr><td><input type='submit' value='Place Order'></td></tr>

</table>




</form>


</body>
</html>