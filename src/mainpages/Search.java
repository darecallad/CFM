package mainpages;

import java.io.IOException;
import java.math.BigDecimal;
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

	public static double haversineFormula(
			double lat1, double lng1, double lat2, double lng2) {
		int r = 3959; // radius of the earth in miles
		double dLat = Math.toRadians(lat2 - lat1);
		double dLon = Math.toRadians(lng2 - lng1);
		double a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
				Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2)) 
				* Math.sin(dLon / 2) * Math.sin(dLon / 2);
		double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
		double d = r * c;
		return d;
	}

	public boolean isInteger( String input ) {
		try {
			Integer.parseInt( input );
			return true;
		}
		catch( Exception e ) {
			return false;
		}
	}

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
			String nameSearch = request.getParameter("nameSearch");
			String styleSearch = request.getParameter("styleSearch");
			String priceSearch = request.getParameter("priceSearch");
			String locationSearch = request.getParameter("locationSearch");
			int priceSearchInt = -1;
			int locationSearchInt = -1;
			double latOfUser = 200;
			double lngOfUser = 200;
			double latOfChef = 200;
			double lngOfChef = 200;
			ResultSet rs;
			ResultSet latLng;

			if (nameSearch == null || nameSearch.isEmpty()) {
				nameSearch = "";
			}
			if (styleSearch == null || styleSearch.isEmpty()) {
				styleSearch = "";
			}
			if (priceSearch == null || priceSearch.isEmpty()) {
				priceSearch = "";
				priceSearchInt = 999999999;
			}
			else if (isInteger(priceSearch)) {
				priceSearchInt = Integer.parseInt(priceSearch);
			}

			if (locationSearch == null || locationSearch.isEmpty()) {
				locationSearch = "";
			}

			else if (isInteger(locationSearch)) {
				locationSearchInt = Integer.parseInt(locationSearch);
				String zipQuery = "select Latitude, Longitude from ZipLatLng where (Zip = "+ locationSearchInt +")";
				System.out.println(zipQuery);
				st = conn.createStatement();
				latLng = st.executeQuery(zipQuery);
				ArrayList latLngList = new ArrayList();
				while (latLng.next()) {
					latOfUser = latLng.getDouble(1);
					lngOfUser = latLng.getDouble(2);
				}
			}
			ArrayList pid_list = new ArrayList();
			System.out.println(latOfUser);
			System.out.println(lngOfUser);
			String chefQuery = "select c.Zip, Latitude, Longitude from ZipLatLng as z left join chefs2 as c on z.Zip = c.Zip where c.Zip = z.Zip order by c.id";
			System.out.println("query " + chefQuery);
			st = conn.createStatement();
			rs = st.executeQuery(chefQuery);
			ArrayList distanceList = new ArrayList();
			ArrayList zipList = new ArrayList();
			while (rs.next()) {

				int zip = rs.getInt("Zip");
				double distance = haversineFormula(latOfUser, lngOfUser, rs.getDouble("Latitude"), rs.getDouble("Longitude"));



				distanceList.add(distance);
				zipList.add(zip);

			}
			System.out.println(distanceList.get(0));
			String query;

			if (!locationSearch.isEmpty()) {
				for (int count = 0; count < distanceList.size(); count++) {
					query =  "select * from chefs2 where (name like '%"+ nameSearch +"%') and (rate <= "+ priceSearchInt +") and (type like '%" + styleSearch +"%') and (DistanceFromZip >= " + distanceList.get(count) + ") and (Zip = " + zipList.get(count) + ")";
					st = conn.createStatement();
					rs = st.executeQuery(query);

					while (rs.next() ) {
						ArrayList al = new ArrayList();


						al.add(rs.getString(1));
						al.add(rs.getString(2));
						al.add(rs.getString(3));
						al.add(rs.getString(4));
						al.add(rs.getString(5));
						al.add(rs.getString(6));






						if (pid_list.contains(al)) {

						}
						else {
							pid_list.add(al);
						}

					}
				}
			}
			else {
				query  = "select * from chefs2 where (name like '%"+ nameSearch +"%') and (rate <= "+ priceSearchInt +") and (type like '%" + styleSearch +"%')";
				st = conn.createStatement();
				rs = st.executeQuery(query);

				while (rs.next() ) {
					ArrayList al = new ArrayList();


					al.add(rs.getString(1));
					al.add(rs.getString(2));
					al.add(rs.getString(3));
					al.add(rs.getString(4));
					al.add(rs.getString(5));
					al.add(rs.getString(6));






					

				}
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