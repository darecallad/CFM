<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Information</title>
</head>
<body>
	<form id="simplify-payment-form" action="payConfirm.jsp" method="POST">

		<div>

			<label>Name: </label> <input id="name" type="text" maxlength="20"
				value="" name="name" />

		</div>

		<div>

			<label>Credit Card Number: </label> <input id="ccNumber" type="text"
				maxlength="20" value="" name="ccNumber" />

		</div>

		<div>

			<label>CVC: </label> <input id="cvc" type="text" maxlength="4"
				value="" name="cvc" />

		</div>

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

		<button id="pay-confirm-btn" type="submit">Confirm</button>

	</form>
</body>
</html>