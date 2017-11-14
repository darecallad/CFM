<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index CFM</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>

	<div id="background">
		<div id="page">
			<div id="header">
				<div id="navigation">
					<ul>
						<li class="selected"><a href="Index.jsp">Home</a></li>
						<li><a href="about.jsp">About</a></li>
						<li><a href="Chefs.jsp">Chefs</a></li>
						<li><a href="shopCart.jsp">Cart</a></li>
						<li><a href="registration.jsp">Registration</a></li>
						<li><a href="foods.jsp">Extras</a></li>
						<li><a href="contact.jsp">Contact</a></li>

					</ul>
				</div>
			</div>
			<div id="contents">
				<div id="adbox">
					<img src="images/BeachScene.jpg" alt="Img" height="425" width="852">
					<h1>We will make your date MAGIC!</h1>
					<p>Lorusdfghjkl;;lkjhgfdsdfghjkllkjh</p>
				</div>
				<div id="main">
					<div class="box">
						<div>
							<div>
								<form method="post" name="frm" action="Search">

									<p>Search influences, name</p>
									<input type="text" name="pid" id="pid"> <input
										type="submit" name="submit" value="Search">
								</form>
								<% 
								String stringPID = request.getParameter("pid");
								Connection connection = null;
								if (stringPID == null) {
									Class.forName("com.mysql.jdbc.Driver").newInstance();
									
									connection = DriverManager.getConnection(
							                "jdbc:mysql://cs3.calstatela.edu/cs3337stu07", "cs3337stu07", "CJNI06oM");

							            Statement statement = connection.createStatement() ;
							            ResultSet resultset = 
							                statement.executeQuery("select * from chefs") ; 
							            %><TABLE BORDER="1">
									<TR>
										<TH>ID</TH>
										<TH>Name</TH>
										<TH>Style</TH>
										<TH>Email</TH>
										<TH>Description</TH>
									</TR>
									<% while(resultset.next()){ %>
									<TR>
										<TD><%= resultset.getString(1) %></td>
										<TD><%= resultset.getString(2) %></TD>
										<TD><%= resultset.getString(3) %></TD>
										<TD><%= resultset.getString(4) %></TD>
										<TD><%= resultset.getString(5) %></TD>
									</TR>
									<% }
									%>
								</TABLE>
								<% 
								}
								else {
									Class.forName("com.mysql.jdbc.Driver").newInstance();
									connection = DriverManager.getConnection(
											
											
							                "jdbc:mysql://cs3.calstatela.edu/cs3337stu07", "cs3337stu07", "CJNI06oM");

							            Statement statement = connection.createStatement() ;
							            %>
								<table>
									
									<tr>
										<td><b>User Name</b></td>
										<td><b>Password</b></td>
										<td><b>Email</b></td>
										<td><b>Registration Date</b></td>
									</tr>
									<%
							                     int count = 0;
							                    
							                     if (request.getAttribute("piList") != null) {
							                         ArrayList al = (ArrayList) request.getAttribute("piList");
							                         System.out.println(al);
							                         Iterator itr = al.iterator();
							                         while (itr.hasNext()) {
							      
							                             
							                             count++;
							                             ArrayList pList = (ArrayList) itr.next();
							                 %>
									<tr>
										<td><%=pList.get(0)%></td>
										<td><%=pList.get(1)%></td>
										<td><%=pList.get(2)%></td>
										<td><%=pList.get(3)%></td>
										<td><%=pList.get(4)%></td>
										<td><%=pList.get(5)%></td>
									</tr>
									<%
							                         }
							                     }
							                     if (count == 0) {
							                 %>
									<tr>
										<td><b>No
												Record Found..</b></td>
									</tr>
									<%            }
							                 %>
								</table>
								<% 
								}
								%>




							</div>
						</div>
					</div>
					<div id="testimonials" class="box">
						<div>
							<div>
								<h3>Testimonials</h3>
								<p>
									“In hac habitasse platea dictumst. Integer purus justo, egestas
									eu consectetur eu, cursus in tortor. Quisque nec nunc ac mi
									ultrices iaculis. Aenean quis elit mauris, nec vestibulum
									lorem.” <span>- <a href="Index.jsp">Joe Doe</a></span>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div id="sidebar">
					<div class="section">
						<a href="Chefs.jsp"><img src="images/Chefs.jpg" alt="Img"
							height="144" width="285"></a>
					</div>
					<div class="section">
						<a href="dives.html"><img src="images/dive-site.png" alt="Img"
							height="144" width="285"></a>
					</div>
					<div class="section">
						<a href="foods.jsp"><img src="images/food.png" alt="Img"
							height="144" width="285"></a>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<div>
				<ul class="navigation">
					<li class="active"><a href="Index.jsp">Home</a></li>
					<li><a href="about.jsp">About</a></li>
					<li><a href="Chefs.jsp">Chefs</a></li>
					<li><a href="foods.jsp">Extras</a></li>
					<li><a href="shopCart.jsp">Cart</a></li>
					<li><a href="registration.jsp">Registration</a></li>
					<li><a href="contact.jsp">Contact</a></li>
				</ul>
				<div id="connect">
					<a href="http://pinterest.com/fwtemplates/" target="_blank"
						class="pinterest"></a> <a
						href="http://freewebsitetemplates.com/go/facebook/"
						target="_blank" class="facebook"></a> <a
						href="http://freewebsitetemplates.com/go/twitter/" target="_blank"
						class="twitter"></a> <a
						href="http://freewebsitetemplates.com/go/googleplus/"
						target="_blank" class="googleplus"></a>
				</div>
			</div>
			<p>© CFM All Rights Reserved</p>
		</div>
	</div>
</body>
</html>