package mainpages;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Chefprofile
 */
@WebServlet("/Chefprofile")
public class Chefprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Chefprofile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		String chefName=null;
		String chefID= request.getParameter("id"); // get request from jsp
		String chefEmail=null;
		String cheftype= null;
		String chefDescription = null;
		int chefRate = 0;
		
Connection c = null;
		
		try
        {
            String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu07";

            String username = "cs3337stu07";
            String password = "CJNI06oM";

            c = DriverManager.getConnection( url, username,
                password );
            Statement stmt = c.createStatement();
            
            
            ResultSet rs = stmt.executeQuery( "select * from chefs where id = '"+ chefID +"';");

            while( rs.next() )
            {
            	// chefID = rs.getInt("id");
                chefName = rs.getString("name");
                chefEmail = rs.getString("email");
                chefDescription = rs.getString("description");
                chefRate = rs.getInt("rate");
                
                // Chefs.add(new Chefs_CFM(chefID,chefName,chefEmail,chefDescription,chefRate));
            }          
            


            c.close();
        }
        catch( SQLException e )
        {
            throw new ServletException( e );
        }
		finally
	        {
	            try
	            {
	                if( c != null ) c.close();
	            }
	            catch( SQLException e )
	            {
	                throw new ServletException( e );
	            }
	        }
	
		
		request.setAttribute("chefemail", chefEmail);
		request.setAttribute("chefname", chefName);
		request.setAttribute("chefid", chefID);
		request.setAttribute("chefdescription", chefDescription);
		request.setAttribute("chefrate", chefRate);
		// request.setAttribute("Chefs", Chefs);
		request.getRequestDispatcher( "chefPro.jsp" ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
