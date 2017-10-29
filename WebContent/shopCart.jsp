<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
</head>
<body>


	<form id="shopCartForm" action="payment.jsp" method="POST">


		<TABLE>

			<c:set var="totalCost" value="${0}" />
			<c:forEach items="${selectedServices} var="services">


				<tr>
					<td><c:out value="${service.name}" /></td>
					<td><c:out value="${service.cost}" /></td>
				</tr>
				<c:set var="totalCost" value="${totalCost + service.cost}" />

			</c:forEach>
		</TABLE>

		<p>
			<b>Total Cost: ${totalCost}</b>
		</p>



		<button id="checkout-btn" type="submit">Checkout</button>

	</form>
</body>
</html>