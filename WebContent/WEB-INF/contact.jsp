<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset ="UTF-8">
	<title>Contact - CFM</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<div id="background">
		<div id="page">
			<div id="header">
				<div id="navigation">
					<ul>
						<li>
							<a href="Index.jsp">Home</a>
						</li>
						<li>
							<a href="about.jsp">About</a>
						</li>
						<li>
							<a href="Chefs.jsp">Chefs</a>
						</li>
						<li>
							<a href="foods.jsp">Extras</a>
						</li>
						<li>
							<a href="shopCart.jsp">Cart</a>
						</li>
						<li>
							<a href="registration.jsp">Registration</a>
						</li>
						<li class="selected">
							<a href="contact.jsp">Contact</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="contents">
				<div class="box">
					<div>
						<div id="contact" class="body">
							<h1>Contact</h1>
							
							<form action="contactController" method="post">
								
									
										<tr>
											<td>Name:</td>
											<p> ${nameError}</p>
											<td><input type="text" value="" ></td>
										</tr>
							
										 <tr>
											<td>Email:</td>
											<p> ${emailError}</p>
											<td ${emailError}><input type="text" value="${param.email }" ></td>
										</tr> 
										<tr>
											<td>Subject:</td>
											<p>${subjectError}</p>
											<td><input type="text" value=""></td>
										</tr>
										 <tr>
										    
											<td class="txtarea">Message:</td>
											 <p>${messageError}</p>
											<td><textarea></textarea></td>
										</tr> 
										<tr>
											<td></td>
											<td><input type="submit" value="Send" class="btn"></td>
										</tr>
									
							</form>
							
							<h2>Cook For Me</h2>
							<p>
								<span>Address:</span> 1233 Figueroa St, Los Angeles, CA 12345
							</p>
							<p>
								<span>Telephone Number:</span> 1-800-999-9999
							</p>
							<p>
								<span>Fax Number:</span> 1-800-111-1111
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<div>
				<ul class="navigation">
					<li>
						<a href="index.html">Home</a>
					</li>
					<li>
						<a href="about.jsp">About</a>
					</li>
					<li>
						<a href="Chefs.jsp">Chefs</a>
					</li>
					<li>
						<a href="foods.jsp">Extras</a>
					</li>
					<li>
						<a href="shopCart.jsp">Cart</a>
					</li>
					<li>
						<a href="registration.jsp">Registration</a>
					</li>
					<li class="active">
						<a href="contact.jsp">Contact</a>
					</li>
				</ul>
				<div id="connect">
					<a href="http://pinterest.com/" target="_blank" class="pinterest"></a>
					 <a href="http://CFM.com/go/facebook/" target="_blank" class="facebook"></a> 
					 <a href="http://CFM.com/go/twitter/" target="_blank" class="twitter"></a>
					  <a href="http://CFM.com/go/googleplus/" target="_blank" class="googleplus"></a>
				</div>
			</div>
			<p>
				© CFM. All Rights Reserved
			</p>
		</div>
	</div>
</body>
</html>
