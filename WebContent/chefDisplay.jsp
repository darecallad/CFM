<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<table border="1" cellpadding = "2" width="50%">
<tr>
	<th>ID</th> 
	<th>Name</th>
	<th>Email</th>
	<th>Description</th>
	<th>Rate</th>

</tr>

<c:forEach items="${Chefs }" var="Chefs" varStatus="ChefsStatus">
	<tr >
		<td > <strong>${Chefs.id }</strong><br></td>
		<td > <a href = "Chefprofile?id=${Chefs.id }" <strong>${Chefs.name }</strong>></a><br></td>
		<td > <strong>${Chefs.email }</strong><br></td>
		<td > <strong>${Chefs.description }</strong><br></td>
		<td > <strong>${Chefs.rate }</strong><br></td>
			
	</tr>
</c:forEach>
</table>

<br>

</body>
</html>