<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<div id="background">
		<div id="page">
			<div id="header">
				<div id="navigation">
					<ul>
						<li><a href="Index.jsp">Home</a></li>
						<li><a href="about.jsp">About</a></li>
						<li><a href="Chefs.jsp">Chefs</a></li>
						<li><a href="foods.jsp">Extras</a></li>
						<li class="selected"><a href="shopCart.jsp">Cart</a></li>
						<li><a href="registration.jsp">Registration</a></li>
						<li><a href="contact">Contact</a></li>
					</ul>
				</div>
				<div id="contents">
					<div class="box">
						<div>
							<div class="body" style="text-align: center">
								<h1>Current Shopping Cart</h1>
								<br>
								<form id="shopCartForm" action="payment.jsp" method="POST">

									<table border="1" cellpadding="2"
										style="margin: 0 auto; width: 40%; text-align: left">
										<tr>

											<th>Service Image</th>
											<th>Service Name</th>


										</tr>

										<c:forEach items="${Food }" var="Food" varStatus="counter">
											<tr>
												<td><img src="image/OtherServices/${Food.id}.jpg"></td>
												<td><strong>${Food.name }</strong><br></td>

											</tr>

										</c:forEach>

									</table>

									<p>
										<b>Total Cost: ${totalCost}</b>
									</p>


									<button type="submit" formaction="Chefs.jsp">Change
										Order</button>
									<button id="checkout-btn" type="submit">Checkout</button>


								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<div>
			<ul class="navigation">
				<li><a href="Index.jsp">Home</a></li>
				<li><a href="about.jsp">About</a></li>
				<li><a href="Chefs.jsp">Chefs</a></li>
				<li><a href="foods.jsp">Extras</a></li>
				<li class="active"><a href="shopCart.jsp">Cart</a></li>
				<li><a href="regitration.jsp">Registration</a></li>
				<li><a href="contact">Contact</a></li>
			</ul>
			<div id="connect">
				<a href="http://pinterest.com/" target="_blank" class="pinterest"></a>
				<a href="http://CFM.com/go/facebook/" target="_blank"
					class="facebook"></a> <a href="http://CFM.com/go/twitter/"
					target="_blank" class="twitter"></a> <a
					href="http://CFM.com/go/googleplus/" target="_blank"
					class="googleplus"></a>
			</div>
		</div>
		<p>© CFM. All Rights Reserved</p>
	</div>
</body>
</html>