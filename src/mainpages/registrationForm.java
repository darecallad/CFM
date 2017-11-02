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


@WebServlet("/mainpages/registrationForm")
public class registrationForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public registrationForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = request.getParameter("username");
		String email = request.getParameter("useremail");
		
		Connection c = null;
	
		try
        {
            String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu07";

            String username = "cs3337stu07";
            String password = "CJNI06oM";

            c = DriverManager.getConnection( url, username,
                password );
            Statement stmt = c.createStatement();
            
            stmt.executeUpdate("insert into departments (name) value ('"+ name +"');");
         //   ResultSet rs = stmt.executeQuery( "select * from chefs where id = '"+ chefID +"';");

          //  while( rs.next() )
          //  {
            	// chefID = rs.getInt("id");
               // chefName = rs.getString("name");
               // chefEmail = rs.getString("email");
               // chefDescription = rs.getString("description");
               // chefRate = rs.getInt("rate");
                
                // Chefs.add(new Chefs_CFM(chefID,chefName,chefEmail,chefDescription,chefRate));
          //  }          
            


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
	}

}
