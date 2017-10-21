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
 * Servlet implementation class searchChefs
 */
@WebServlet("/searchChefs")
public class searchChefs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchChefs() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
        
		
		String chefName=null;
		int chefID= 0;
		String chefEmail=null;
		String type= null;
		
		type = request.getParameter("foodType");
		
		Connection c = null;
		
		try
        {
            String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu07";

            String username = "cs3337stu07";
            String password = "CJNI06oM";

            c = DriverManager.getConnection( url, username,
                password );
            Statement stmt = c.createStatement();
            
            
            ResultSet rs = stmt.executeQuery( "select * from chefs where cuisine_style = '"+ type +"';");

            while( rs.next() )
            {
                chefName = rs.getString("name");
                chefEmail = rs.getString("email");
                chefID = rs.getInt("id");
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
	
	
		request.setAttribute("email123", chefEmail);
		request.setAttribute("name123", chefName);
		request.setAttribute("id123", chefID);
		
		request.getRequestDispatcher( "chefDisplay.jsp" ).forward( request, response );

	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
