package mainpages;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Search")
public class Search extends HttpServlet {
	 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        Connection conn = null;
        
       
        String driver = "com.mysql.jdbc.Driver";
       
        
        String connectionURL = "jdbc:mysql://cs3.calstatela.edu/cs3337stu07";

		
 
        Statement st;
        try {
        	Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(connectionURL, "cs3337stu07", "CJNI06oM");
            System.out.println("Connected!");
            String pid = request.getParameter("pid");
 
            
            ArrayList pid_list = new ArrayList();
            String query =  "select * from chefs where (name like '%"+ pid +"%') or (id like '%"+ pid +"%') or (email like '%"+ pid +"%') or (description like '%"+ pid +"%') or (rate like '%"+ pid +"%')";
 
            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);
 
            while (rs.next()) {
               ArrayList al = new ArrayList();
 
//                out.println(rs.getString(1));
//                out.println(rs.getString(2));
//                out.println(rs.getString(3));
//                out.println(rs.getString(4));
                al.add(rs.getString(1));
                al.add(rs.getString(2));
                al.add(rs.getString(3));
                al.add(rs.getString(4));
                al.add(rs.getString(5));
                
                
                
              
 
                System.out.println("al :: " + al);
                pid_list.add(al);
            }
 
            request.setAttribute("piList", pid_list);
            RequestDispatcher view = request.getRequestDispatcher("/ChefSearch.jsp");
            view.forward(request, response);
            conn.close();
            System.out.println("Disconnected!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
 
    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
