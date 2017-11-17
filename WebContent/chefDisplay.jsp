<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chef List</title>
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
						<li class="selected"><a href="Chefs.jsp">Chefs</a></li>
						<li><a href="shopCart.jsp">Cart</a></li>
						<li><a href="foods.jsp">Food</a></li>
						<li><a href="news.html">News</a></li>
						<li><a href="contact.jsp">Contact</a></li>
					</ul>
				</div>
				<div id="contents">
					<div class="box">
						<div>
							<div class="body" style="text-align: center">



								<table  cellpadding="2" style="margin: 0 auto; width: 40%; text-align: left">
									
									<c:forEach items="${Chefs}" var="Chefs"
										varStatus="ChefsStatus">
										<tr>
										    <td><strong>${Chefs.name }</strong></td>
											<td><a href="Chefprofile?id=${Chefs.id }"><img src="images/chefPhoto/${Chefs.id}.jpg" alt="Img" height="100" width="150"></td>
											
											<td><strong>${Chefs.rate }</strong><br></td>

										</tr>
									</c:forEach>
								</table>
									<a href=Chefs.jsp>Back</a>
								<br>

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
				<li class="active"><a href="Chefs.jsp">Chefs</a></li>
				<li><a href="shopCart.jsp">Cart</a></li>
				<li><a href="foods.jsp">Food</a></li>
				<li><a href="news.jsp">News</a></li>
				<li><a href="contact.jsp">Contact</a></li>
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