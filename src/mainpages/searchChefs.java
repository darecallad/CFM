package mainpages;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



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
		
		List<Chefs_CFM> Chefs = new ArrayList<Chefs_CFM>();
		
		String chefName=null;
		int chefID= 0;
		String chefEmail=null;
		String cheftype= null;
		String chefDescription = null;
		int chefRate = 0;
		
		cheftype = request.getParameter("foodType");
		
		Connection c = null;
		
		try
        {
            String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu07";

            String username = "cs3337stu07";
            String password = "CJNI06oM";

            c = DriverManager.getConnection( url, username,
                password );
            Statement stmt = c.createStatement();
            
            
            ResultSet rs = stmt.executeQuery( "select * from chefs where type = '"+ cheftype +"';");

            while( rs.next() )
            {
            	chefID = rs.getInt("id");
                chefName = rs.getString("name");
                chefEmail = rs.getString("email");
                chefDescription = rs.getString("description");
                chefRate = rs.getInt("rate");
                
                Chefs.add(new Chefs_CFM(chefID,chefName,chefEmail,chefDescription,chefRate));
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
	
		HttpSession session = request.getSession();

		session.setAttribute("chefemail", chefEmail);
		session.setAttribute("chefname", chefName);
		session.setAttribute("chefid", chefID);
		session.setAttribute("chefdescription", chefDescription);
		session.setAttribute("chefrate", chefRate);
		session.setAttribute("Chefs", Chefs);
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
