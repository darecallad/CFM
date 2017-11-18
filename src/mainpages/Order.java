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
 * Servlet implementation class Order
 */
@WebServlet("/Order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String foodtype = request.getParameter("type");

		String foodname = null;

		int foodid = 0;
		List<Food_CFM> Food = new ArrayList<Food_CFM>();

		Connection c = null;

		try {
			String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu07";

			String username = "cs3337stu07";
			String password = "CJNI06oM";

			c = DriverManager.getConnection(url, username, password);
			Statement stmt = c.createStatement();

			ResultSet rs = stmt.executeQuery("select * from food where food_type = '" + foodtype + "';");

			while (rs.next()) {
				foodid = rs.getInt("id");
				foodname = rs.getString("name");
				// foodtype = rs.getString("type");
				// chefDescription = rs.getString("description");
				// chefRate = rs.getInt("rate");
				foodtype = rs.getString("food_type");
				Food.add(new Food_CFM(foodid, foodname, foodtype));
				// Chefs.add(new
				// Chefs_CFM(chefID,chefName,chefEmail,chefDescription,chefRate));
			}

			c.close();
		} catch (SQLException e) {
			throw new ServletException(e);
		} finally {
			try {
				if (c != null)
					c.close();
			} catch (SQLException e) {
				throw new ServletException(e);
			}
		}
		HttpSession session = request.getSession();

		// request.setAttribute("chefemail", chefEmail);
		session.setAttribute("foodname", foodname);
		session.setAttribute("foodid", foodid);
		// request.setAttribute("chefdescription", chefDescription);
		// request.setAttribute("chefrate", chefRate);
		session.setAttribute("Food", Food);
		session.setAttribute("cheftype", foodtype);
		request.getRequestDispatcher("Order.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int chefrate = (int) request.getServletContext().getAttribute("chefrate");
		String[] array = request.getParameterValues("choose");
		int count = array.length;

		List<Food_CFM> Order = new ArrayList<Food_CFM>();
		// test
		// request.setAttribute("test", count);
		// request.getRequestDispatcher( "Confirm.jsp" ).forward( request,
		// response );

		double value = 0;
		for (int i = 0; i < count; i++) {
			String name = array[i];

			Food_CFM Orders = new Food_CFM(name);
			Order.add(Orders);
		}
		if (count == 1) {
			value = 1.2;
		} else if (count == 2) {
			value = 1.5;
		} else if (count == 3) {
			value = 1.9;
		}
		double chefprice = chefrate * value;

		HttpSession session = request.getSession();
		session.setAttribute("totalCost", chefprice);
		session.setAttribute("Food", Order);
		session.setAttribute("total", chefprice);
		request.getRequestDispatcher("Confirm.jsp").forward(request, response);

	}

}
