<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Chefs CFM</title>
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
						<li><a href="foods.jsp">Extras</a></li>
						<li><a href="shopCart.jsp">Cart</a></li>
						<li><a href="registration.jsp">Registration</a></li>
						<li><a href="contact.jsp">Contact</a></li>

					</ul>
				</div>
			</div>
			<div id="contents">
				<div class="box">
					<div>
						<div class="body">
							<h1>Chefs</h1>
							<ul id="chefs">
								<li><a href="searchChefs?foodType=Italian_style"><img
										src="images/ItalianChef.jpg" alt="Img"></a>
									<h2>
										<a href="searchChefs?foodType=Italian_style">Italian
											Chefs</a>
									</h2>
									<p>Cras dui sapien, feugiat vitae tristique ut, lobortis
										tempor orci. Donec pulvinar sagittis metus ut tristique.
										Pellentes que habitant morbi tristique senectus et netus et
										malesuada fames ac turpis egestas idios.</p></li>
								<li><a href="searchChefs?foodType=Indian_style"><img
										src="images/IndianChef.jpg" alt="Img"></a>
									<h2>
										<a href="searchChefs?foodType=Indian_style">Indian Chefs</a>
									</h2>
									<p>Sed et augue lorem. In sit amet placerat arcu. Mauris
										volutpat ipsum ac justo mollis vel vestibulum orci gravida.
										Vestibulum sit amet porttitor odio. Nulla facilisi. Fusce at
										pretium felis.</p></li>
								<li><a href="searchChefs?foodType=Asian_style"><img
										src="images/AsianChef.jpg" alt="Img"></a>
									<h2>
										<a href="searchChefs?foodType=Asian_style">Asian Chefs</a>
									</h2>
									<p>Sed et augue lorem. In sit amet placerat arcu. Mauris
										volutpat ipsum ac justo mollis vel vestibulum orci gravida.
										Vestibulum sit amet porttitor odio. Nulla facilisi. Fusce at
										pretium felis.</p></li>
							</ul>
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
					<li><a href="foods.jsp">Extras</a></li>
					<li><a href="shopCart.jsp">Cart</a></li>
					<li><a href="registration.jsp">Registration</a></li>
					<li><a href="contact.jsp">Contact</a></li>
				</ul>
				<div id="connect">
					<a href="http://pinterest.com" target="_blank" class="pinterest"></a>
					<a href="http://CFM.com/go/facebook/" target="_blank"
						class="facebook"></a> <a href="http://CFM.com/go/twitter/"
						target="_blank" class="twitter"></a> <a
						href="http://CFM.com/go/googleplus/" target="_blank"
						class="googleplus"></a>
				</div>
			</div>
			<p>© CFM. All Rights Reserved</p>
		</div>
	</div>
</body>
</html>

