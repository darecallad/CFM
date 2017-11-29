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


@WebServlet("/registrationForm")
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
		String cname = request.getParameter("cname");
		String cemail = request.getParameter("cemail");
		String ccardnumber = request.getParameter("ccardnumber");
		String cphonenumber = request.getParameter("cphonenumber");
		// chefs
		String fname = request.getParameter("fname");
		String femail = request.getParameter("femail");
		String fcardnumber = request.getParameter("fcardnumber");
		String fphonenumber = request.getParameter("fphonenumber");
		String ftype = request.getParameter("ftype");
		String frate = request.getParameter("frate");
		String fdescription = request.getParameter("fdescription");
		String fzip = request.getParameter("fzip");
		String fdistance = request.getParameter("fdistance");
		
		String choose = request.getParameter("urlOptions");
		
		
		
		
		
		Connection c = null;
	
		try
        {
            String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu07";

            String username = "cs3337stu07";
            String password = "CJNI06oM";

            c = DriverManager.getConnection( url, username,
                password );
            Statement stmt = c.createStatement();
            
            
            if (choose.equals("user")){
            // customer 
            stmt.executeUpdate("insert into customeregi (name, email, phonenumber, cardnumber) "
            		+ "value ('"+cname+"', '"+cemail+"' , '"+cphonenumber+"' , '"+ccardnumber+"');");          	   
            }
            else if (choose.equals("chef")){
            
            // chefs
           stmt.executeUpdate("insert into chefregi (name, type, email, description, Zip, DistanceFromZip, rate) "
            		+ "value ('"+fname+"', '"+ftype+"' , '" +femail+"', '"+fdescription + "', '"+ frate +"', '" + fzip +"', '" +fdistance+"');");  
            }
            
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
		
		
		response.sendRedirect("main");
	}
	
	
	
	
	

}
