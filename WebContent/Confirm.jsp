<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>count ${test }</p>

<table border="1" cellpadding = "2" width="50%">
<tr> 

    <th>Image</th>
	<th>Name</th>
	

</tr>

<c:forEach items="${Food }" var="Food" varStatus="counter">
	<tr >
		<td><img src="image/OtherServices/${Food.id }.jpg"></td>
		<td > <strong>${Food.name }</strong><br></td>
			
	</tr>
	
</c:forEach>


</table>


</body>
</html>