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
						<li><a href="Index.jsp">Home</a></li>
						<li><a href="about.jsp">About</a></li>
						<li class="selected"><a href="ChefSearch.jsp">Chefs</a></li>
						<li><a href="shopCart.jsp">Cart</a></li>
						<li><a href="registration.jsp">Registration</a></li>
						<li><a href="foods.jsp">Extras</a></li>
						<li><a href="contact.jsp">Contact</a></li>

					</ul>
				</div>
			</div>

			<div id="contents">
				<div class="box">
					<div>
						<div class="body">
							<form method="post" name="frm" action="Search">
								<h1>Search Form</h1> <br>
								Search Name<br> <input type="text" name="nameSearch"><br> 
								Search Influence<br> <input type="text" name="styleSearch"> <br> 
								Search Price<br> <input type="text" name="priceSearch"><br> 
								Search By Zip Code<br> <input type="text" name="locationSearch">
								<br> <input type="submit" name="submit" value="Search">
								<br>
							</form>
							<% 
								String stringNameSearch = request.getParameter("nameSearch");
								String stringStyleSearch = request.getParameter("styleSearch");
								String stringPriceSearch = request.getParameter("priceSearch");
								String stringLocationSearch = request.getParameter("locationSearch");
								Connection connection = null;
								if ((stringNameSearch == null && stringStyleSearch == null && stringPriceSearch == null && stringLocationSearch == null) || 
										(stringNameSearch.isEmpty() && stringStyleSearch.isEmpty() && stringPriceSearch.isEmpty() && stringLocationSearch.isEmpty())) {
									Class.forName("com.mysql.jdbc.Driver").newInstance();
									
									connection = DriverManager.getConnection(
							                "jdbc:mysql://cs3.calstatela.edu/cs3337stu07", "cs3337stu07", "CJNI06oM");
							            Statement statement = connection.createStatement() ;
							            ResultSet resultset = 
							                statement.executeQuery("select * from chefs") ; 
							            
							            %>
							<br>
							<table BORDER="1">
								<tr>
									<th></th>
									<th>Name</th>
									<th>Style</th>
									<th>Email</th>
									<th>Description</th>
									<th>Lol</th>
								</tr>
								<% while(resultset.next()){ %>
								<tr>
									<td><a href="Chefprofile?id=<%=resultset.getInt(1)%>"><img src="images/chefPhoto/<%=resultset.getInt(1)%>.jpg" alt="Img" height="100" width="150"></a></td>
									<td><%= resultset.getString(2) %></td>
									<td><%= resultset.getString(3) %></td>
									<td><%= resultset.getString(4) %></td>
									<td><%= resultset.getString(5) %></td>
									<td><%= resultset.getString(6) %></td>
								</tr>
								<% }
									%>
							</table>
							<% 
								connection.close();
								}
								else {
									Class.forName("com.mysql.jdbc.Driver").newInstance();
									connection = DriverManager.getConnection(
											
											
							                "jdbc:mysql://cs3.calstatela.edu/cs3337stu07", "cs3337stu07", "CJNI06oM");
							            Statement statement = connection.createStatement() ;
							            %>
							<table>

								<tr>
									<th>ID</th>
									<th>Name</th>
									<th>Style</th>
									<th>Email</th>
									<th>Description</th>
									<th>Lol</th>
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
									<td><b>No Record Found..</b></td>
								</tr>
								<%            }
							                 %>
							</table>
							<% 
								}
								connection.close();
								%>
						</div>
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