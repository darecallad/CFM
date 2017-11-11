<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chefs Profile</title>
</head>
<body>
<H1> Chef Profile</H1>

<img src="image/chefPhoto/${chefid }.jpg">

<table border="1" cellpadding = "2" width="50%">
<tr> 
	<th>Name</th>
	<th>Email</th>
	<th>Description</th>
	<th>Rate</th>

</tr>

	<tr >
		
		<td > <strong>${chefname }</strong>><br></td>
		<td > <strong>${chefemail }</strong><br></td>
		<td > <strong>${chefdescription }</strong><br></td>
		<td > <strong>${chefrate }</strong><br></td>
			
	</tr>
</table>

<a href="Order?type=${cheftype }">Next</a>




</body>
</html>