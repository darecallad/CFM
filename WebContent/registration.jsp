<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>about CFM</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
<script language="Javascript">
function swapConfig(x) {
    var radioName = document.getElementsByName(x.name);
    for(count = 0 ; count < radioName.length; count++){
      document.getElementById(radioName[count].id.concat("RegistrationDetails")).style.display="none";
    }
    document.getElementById(x.id.concat("RegistrationDetails")).style.display="initial";
}
</script>
</head>
<body>
	<div id="background">
		<div id="page">
			<div id="header">
				<div id="logo">
					<a href="index.html"><img src="images/WineAndCheese.jpg" alt="LOGO" height="112" width="118"></a>
				</div>
				<div id="navigation">
					<ul>
						<li><a href="Index.jsp">Home</a></li>
						<li class="selected"><a href="about.jsp">About</a></li>
						<li><a href="Chefs.jsp">Chefs</a></li>
						<li><a href="dives.html">Dive Site</a></li>
						<li><a href="foods.jsp">Food</a></li>
						<li><a href="news.html">News</a></li>
						<li><a href="contact.jsp">Contact</a></li>
					</ul>
				</div>
			</div>
			<div id="contents">
				<div class="box">
					<div>
						<div class="body">
							<h1>Registration Form</h1>
							<h2>Users and Chefs</h2>
							<form id="radioSubmit" action="registrationForm" method="Post">
								<label for="user">User</label>
								<input type="radio" onchange="swapConfig(this)" name="urlOptions" id="user" checked="checked" />
								<label for="chef">Chef</label>
								<input type="radio" onchange="swapConfig(this)" name="urlOptions" id="chef" />
									<div id="userRegistrationDetails"> 
										<p>
											First name:<br>
 											<input type="text" name="cfirstname" value="First Name" onclick="this.value=''" /><br> <br>
 											Last name:<br>
 											<input type="text" name="clastname" value="Last Name" onclick="this.value=''" /><br> <br>
 											Email: <br>
 											<input type="text" name="cemail" value="Email Address" onclick="this.value=''" /><br> <br>
 											Credit/Debit Card Number: <br>
											<input type="text" name="ccardnumber" value="Card Number" onclick="this.value=''" /><br> <br>
											Phone Number: <br>
											<input type="text" name="cphonenumber" value="Phone Number" onclick="this.value=''" /><br> <br>
											
											<input type="submit" value="register" />
    									</p>
  									</div>
  									<div id="chefRegistrationDetails" style="display:none">
    									<p>
      										First name:<br>
 											<input type="text" name="ffirstname" value="First Name" onclick="this.value=''" /><br> <br>
 											Last name:<br>
 											<input type="text" name="flastname" value="Last Name" onclick="this.value=''" /><br> <br>
 											Email: <br>
 											<input type="text" name="femail" value="Email Address" onclick="this.value=''" /><br> <br>
 											Credit/Debit Card Number: <br>
											<input type="text" name="fcardnumber" value="Card Number" onclick="this.value=''" /><br> <br>
											Phone Number: <br>
											<input type="text" name="fphonenumber" value="Phone Number" onclick="this.value=''" /><br> <br>
											<input type="submit" value="register" />
    									</p>
    								</div>  
							</form>		
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<div>
				<ul class="navigation">
					<li><a href="Index.jsp">Home</a></li>
					<li class="active"><a href="about.jsp">About</a></li>
					<li><a href="Chefs.jsp">Chefs</a></li>
					<li><a href="file.jsp">Link Site</a></li>
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
	</div>
</body>
</html>