<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

Chef-ID: ${chefid }
<br>
Chef-Name: ${chefname }
<br>
Chef-Email: ${chefemail }
<br>
Chef-Description : ${chefdescription} 
<br>
Chef-Rate : ${ chefrate }

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
		<td > <strong>${Chefs.name }</strong><br></td>
		<td > <strong>${Chefs.email }</strong><br></td>
		<td > <strong>${Chefs.description }</strong><br></td>
		<td > <strong>${Chefs.rate }</strong><br></td>
			
	</tr>
</c:forEach>
</table>

<br>

</body>
</html>