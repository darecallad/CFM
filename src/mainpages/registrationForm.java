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
		// customer
		String cfirstname = request.getParameter("cfirstname");
		String clastname = request.getParameter("clastname");
		String cemail = request.getParameter("cemail");
		String ccardnumber = request.getParameter("ccardnumber");
		String cphonenumber = request.getParameter("cphonenumber");
		// chefs
		String ffirstname = request.getParameter("ffirstname");
		String flastname = request.getParameter("flastname");
		String femail = request.getParameter("femail");
		String fcardnumber = request.getParameter("fcardnumber");
		String fphonenumber = request.getParameter("fphonenumber");
		
		Connection c = null;
	
		try
        {
            String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu07";

            String username = "cs3337stu07";
            String password = "CJNI06oM";

            c = DriverManager.getConnection( url, username,
                password );
            Statement stmt = c.createStatement();
            
            // customer 
            stmt.executeUpdate("insert into customerregi (firstname, lastname, email, cardnumber, phonenumber) "
            		+ "value ('"+cfirstname+"', "+clastname+", "+cemail+" , "+ccardnumber+" , "+cphonenumber+");");          	   

            // chefs
            stmt.executeUpdate("insert into chefregi (firstname, lastname, email, cardnumber, phonenumber) "
            		+ "value ('"+ffirstname+"', "+flastname+", "+femail+" , "+fcardnumber+" , "+fphonenumber+");");  
            
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
