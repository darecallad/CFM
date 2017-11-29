<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
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
								<h1>Payment Information</h1>
								<br>
								<form id="paymentForm" action="payConfirm.jsp" method="POST"
									style="margin: 0 auto; width: 40%; text-align: left">

									<div>

										<label>Name: </label> <input id="name" type="text"
											maxlength="20" value="" name="name" />

									</div>
									<br>
									<div>

										<label>Credit Card Number: </label> <input id="ccNumber"
											type="text" maxlength="20" onkeypress='return event.charCode >= 48 && event.charCode <= 57' value="" name="ccNumber" />

									</div>
									<br>
									<div>

										<label>CVC: </label> <input id="cvc" type="text" maxlength="4"
											value="" name="cvc" style="width: 50px;" />

									</div>
									<br>
									<div>

										<label>Expiration Date: </label> <select name="ccExpMonth">

											<option value="01">Jan</option>

											<option value="02">Feb</option>

											<option value="03">Mar</option>

											<option value="04">Apr</option>

											<option value="05">May</option>

											<option value="06">Jun</option>

											<option value="07">Jul</option>

											<option value="08">Aug</option>

											<option value="09">Sep</option>

											<option value="10">Oct</option>

											<option value="11">Nov</option>

											<option value="12">Dec</option>

										</select> <select name="ccExpYear">

											<option value="17">2017</option>

											<option value="18">2018</option>

											<option value="19">2019</option>

											<option value="20">2020</option>

											<option value="21">2021</option>

											<option value="22">2022</option>

											<option value="23">2023</option>

											<option value="24">2024</option>

											<option value="25">2025</option>

											<option value="26">2026</option>

											<option value="27">2027</option>

											<option value="28">2028</option>

										</select>

									</div>
									<br>
									</ul>
									<div class=buttonCenter style="text-align: center">
										<button id="pay-confirm-btn" type="submit"
											style="margin: 0 auto; width: 25%;">Confirm</button>
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