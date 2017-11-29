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
				<div id="navigation">
					<ul>
						<li><a href="Index.jsp">Home</a></li>
						<li ><a href="about.jsp">About</a></li>
						<li><a href="Chefs.jsp">Chefs</a></li>
						<li><a href="foods.jsp">Extras</a></li>
						<li><a href="shopCart.jsp">Cart</a></li>
						<li class="selected"><a href="registration.jsp">Registration</a></li>
						<li><a href="contact">Contact</a></li>
					</ul>
				</div>
			</div>
			<div id="contents">
				<div class="box">
					<div>
						<div class="body">
							<h1>Registration Form</h1>
							<h2>Users and Chefs</h2>
							<form id="radioSubmit" action="registrationForm" method="POST">
								<label for="user">User</label>
								<input type="radio" onchange="swapConfig(this)" name="urlOptions" value ="user" id="user" checked="checked" />
								<label for="chef">Chef</label>
								<input type="radio" onchange="swapConfig(this)" name="urlOptions" value ="chef" id="chef" />
									<div id="userRegistrationDetails"> 
										<p>
											
 											Name:<br>
 											<input type="text" name="cname" value ="First Last" onclick="this.value=''" /><br> 
 											Email: <br>
 											<input type="text" name="cemail" value="Email Address" onclick="this.value=''" /><br>
											Phone Number: <br>
											<input type="text" name="cphonenumber" value="Phone Number" onclick="this.value=''" /><br> <br>
											
											
											<input type="submit" value="Register" />
    									</p>
  									</div>
  									<div id="chefRegistrationDetails" style="display:none">
    									<p>
      										
 											Name:<br>
 											<input type="text" name="fname" value ="First Last" onclick="this.value=''" /><br> <br>
 											Email: <br>
 											<input type="text" name="femail" value="Email Address" onclick="this.value=''" /><br> <br>
											Cellphone Number: <br>
											<input type="text" name="fphonenumber" value="Cellphone Number" onclick="this.value=''" /><br> <br>
											Type of Cooking: <br>
											<input type="text" name="ftype" value="Type of Cooking" onclick="this.value=''" /><br> <br>
											Description: <br>
											<textarea rows="4" cols="50" name="fdescription" form="usrform">Enter description here...</textarea> <br>
											Price per person: <br>
											<input type="text" name="frate" value="Price" onclick="this.value=''" /><br> <br>
											Enter Your Zip Code: <br>
											<input type ="text" name =fzip" value = "Zip Code" onclock = "" /> <br>
											Serving Distance in miles: <br>
											<input type ="text" name =fdistance" value = "Distance" onclock = "" /> <br>
											<input type="submit" value="Register" />
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
					<li ><a href="about.jsp">About</a></li>
					<li><a href="Chefs.jsp">Chefs</a></li>
					<li><a href="food.jsp">Extras</a></li>
					<li><a href="shopCart.jsp">Cart</a></li>
					<li class="active"><a href="registration.jsp">Registration</a></li>
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
	</div>
</body>
</html>