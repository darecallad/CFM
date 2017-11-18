<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Payment</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<div id="background">
		<div id="page">
			<div id="header">
				<div id="logo">
					<a href="Index.jsp"><img src="images/WineAndCheese.jpg"
						alt="LOGO" height="112" width="118"></a>
				</div>
				<div id="navigation">
					<ul>
						<li><a href="Index.jsp">Home</a></li>
						<li><a href="about.jsp">About</a></li>
						<li><a href="Chefs.jsp">Chefs</a></li>
						<li class="selected"><a href="shopCart.jsp">Cart</a></li>
						<li><a href="foods.jsp">Food</a></li>
						<li><a href="news.html">News</a></li>
						<li><a href="contact">Contact</a></li>
					</ul>
				</div>
				<div id="contents">
					<div class="box">
						<div>
							<div class="body" style="text-align: center">
								<h1>Payment Confirmation</h1>
								<br>
								<form id="payConfirm" action="Index.jsp" method="POST"
									style="margin: 0 auto; width: 40%; text-align: left">
									<ul>

										<p>
											<b>Card Holder Name:</b>
											<%=request.getParameter("name")%>
										</p>

										<p>
											<b>Credit Card Number:</b>
											<%=request.getParameter("ccNumber")%>
										</p>
										<p>
											<b>Expiration:</b>
											<%=request.getParameter("ccExpMonth")%>
											<tt>/</tt>
											<%=request.getParameter("ccExpYear")%>
										</p>
									</ul>

									<table border="1" cellpadding="2"
										style="margin: 0 auto; width: 40%; text-align: left">
										<tr>

											<th>Image</th>
											<th>Name</th>
										</tr>
										<c:forEach items="${Food }" var="Food" varStatus="counter">
											<tr>

												<td><img src="images/OtherServices/${foodid }.jpg"
													alt="Img" height="100" width="150"></td>
												<td><strong>${foodname }</strong><br></td>
											</tr>
											<input type='hidden' name=counterValue
												value=${counter.index }>
										</c:forEach>

									</table>

									<div class=tCost
										style="margin: 0 auto; width: 50%; text-align: center">
										<b>Total Cost: ${totalCost}</b>
									</div>
									<br>
									<div class=buttonCenter style="text-align: center">
										<button id="pay-submit-btn" type="submit"
											style="margin: 0 auto; width: 30%;">Submit Payment</button>
									</div>
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
				<li class="active"><a href="shopCart.jsp">Cart</a></li>
				<li><a href="foods.jsp">Food</a></li>
				<li><a href="news.jsp">News</a></li>
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