<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chefs View</title>
</head>
<body>
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
                             <c:forEach items="${Chefs }" var="Chefs">
                             	<div class="col-sm-4 text=center">
                             		<div>
                             			<a href="Chefs?id=${Chefs.id}">
                             			<img  style="height: 100px;"  alt="${Chefs.name }" src="${Chefs.profImg }" class="img-responsive img-thumbnail">
                             			</a>
                             		</div>
                             	</div>
                             </c:forEach>
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