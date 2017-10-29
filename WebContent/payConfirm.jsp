<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Payment</title>
</head>
<body>
<form id="payConfirmForm" action="contact.jsp" method="POST">
 <h1>Payment Confirmation</h1>
      <ul>
      
         <p><b>Card Holder Name:</b>
            <%= request.getParameter("name")%>
         </p>
		
         <p><b>Credit Card Number:</b>
            <%= request.getParameter("ccNumber")%>
         </p>
			<p>
				<b>Expiration:</b>
				<%= request.getParameter("ccExpMonth")%>
				<tt>/</tt>
				<%= request.getParameter("ccExpYear")%>
			</p>

		</ul>
      <button id="pay-submit-btn" type="submit">Submit Payment</button>

	</form>
      
</body>
</html>