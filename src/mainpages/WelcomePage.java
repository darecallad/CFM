package mainpages;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mainpages/WelcomePage")
public class WelcomePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		//ServletContext context = (ServletContext) getServletContext();
			
		// Set the content type
		response.setContentType("text/html");
		
		// Get a reference to the PrintWriter that lets us talk to the client
		PrintWriter out = response.getWriter();
		
		// Generate the HTML
		out.println("<!DOCTYPE html>");
		out.println("<html lang=\"en\">");
		out.println("<head>");
		out.println("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">");
		out.println("    <meta charset=\"UTF-8\">");
		out.println("    <title>Metrics</title>");
		out.println("</head>");
		
		out.println("<body>");
		out.println("<div class=\"container\">");
		
		/* Page Body goes here */
		out.println("<div class=\"page-header\">");
		out.println("    <h1>COOK FOR ME<small>    Impress someone</small></h1>");
		out.println("</div>");
		out.println("<hr>");
		out.println("<div class=\"row\" class=\"list-group\">");
		out.println("	<nav class=\"navbar navbar-left col-md-3 \" role=\"navigation\">");
		out.println("		<ul style=\"list-style-type: none;\">");
		out.println("			<li><a href=\"/mainpages/WelcomePage.java\" class=\"list-group-item active\">About Cook For Me</a></li>");
		out.println("			<li><a href=\"education.html\" class=\"list-group-item\">Food Categories</a></li> ");
		out.println("			<li><a href=\"interest.html\" class=\"list-group-item\">Chefs</a></li> ");
		out.println("			<li><a href=\"aboutme.html\" class=\"list-group-item\">Other Services</a></li>");
		out.println("			<li><a href=\"aboutme.html\" class=\"list-group-item\">Gallery</a></li>");
		out.println("		</ul>");
		out.println("	</nav");
		out.println("<div class=\"paragraph col-md-8\">");
		out.println("	<h3>About Cook For Me</h3><br>");
		out.println("	<p>Cook For Me is the place where magic happens. Cook For Me helps you to make the perfect date happen."
				+ "        We have every chef for every need. It doesnt matter what kind of celebration you have in mind, we will make it happen "
				+ "     and it will be perfect. </P>");
		out.println("</div>");
		out.println("<hr>");
		
		out.println("<footer>");
		out.println("	<div style=\"text-align:center\"> &copy; By: Veronica Toriz. All rights reserved </div>");
		out.println("</footer>");
		
		out.println("</div>");
		out.println("</body>");
		out.println("</html>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
