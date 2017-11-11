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
	<th>Name</th>
	<th>Image</th>

</tr>

<c:forEach items="${Food }" var="Food" varStatus="FoodStatus">
	<tr >
		<td><img src="image/foodPhoto/${Food.id }.jpg"></td>
		<td > <strong>${Food.name }</strong><br></td>
		<td>Option <input type="checkbox" name="choose" value="${Food.name }"></td>
			
	</tr>
</c:forEach>


</table>

<input type='submit' value='Place Order'>

</form>


</body>
</html>