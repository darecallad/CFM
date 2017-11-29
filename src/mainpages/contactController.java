package mainpages;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class contactController
 */
@WebServlet("/contact")
public class contactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/contact.jsp")
			.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Read and Validate the parameters.
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		
		boolean hasError = false;
		
		if(name == null || name.trim().length()==0) {
			request.setAttribute("nameError", "Please Enter your name");
			hasError = true;
		}
		
		if(message == null || message.trim().length()==0) {
			request.setAttribute("messageError", "Please Enter your message");
			hasError = true;
		}
		if(email == null || email.trim().length()==0) {
			request.setAttribute("nameError", "Please Enter your email");
			hasError = true;
		}
		if(subject == null || subject.trim().length()==0) {
			request.setAttribute("subjectError", "Please Enter your subject");
			hasError = true;
		}
		
		if (!hasError) {
			request.getRequestDispatcher("/WEB-INF/contactInquiry.jsp").forward(request, response);
		}
		else {
			doGet(request, response);
		}
	
	}

}
