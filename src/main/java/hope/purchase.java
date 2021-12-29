package hope;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class purchase
 */
public class purchase extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings({ "unchecked"})
	protected void doGet(HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException {
		
		ArrayList<pizza> cart = new ArrayList<pizza>();
		
		cart = (ArrayList<pizza>)request.getAttribute("cart");
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pizzadelivery","root","123456789258ak");
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			String query = "SELECT name WHERE id = ?";	
			
			for(int j = 0 ; j < cart.size() ; j++) {
				
				ps = con.prepareStatement(query);
				ps.setInt(1, cart.get(j).id);
				rs = ps.executeQuery();
				rs.next();
				cart.get(j).name = rs.getString(0);
				
			}
			String toppings = "";
			String order = "";
			
			for(int i = 0 ; i < cart.size() ; i++) {
				
				for(int k = 0 ; k < cart.get(i).toppings.length ; k++) {
					
					toppings = String.join("/", cart.get(i).toppings);
					
				}
				
				if(cart.get(i).id < 2000) {
					
					order = order +cart.get(i).quantity+" * "+ cart.get(i).name +" ( "+toppings+" )  ( " +cart.get(i).size + " ) ( " +cart.get(i).crust + " ) ( " +cart.get(i).thickness+ " ) /n" ;
						
					
				}else if(cart.get(i).id < 3000) {
					
						
					order =  order +cart.get(i).quantity+" * "+ cart.get(i).name + "/n";

				}
						
				else {
					
					order =  order +cart.get(i).quantity+" * "+ cart.get(i).name + "/n";
						
				}				
			}
			
			query = "INSERT INTO orders (customerId , order, Date_of_order) VALUES (? , ?)";
			
			int customerId = Integer.parseInt(request.getParameter("Id"));
			
			ps = con.prepareStatement(query);
			ps.setInt(1, customerId);
			ps.setString(2, order);
			ps.executeUpdate();
			
			RequestDispatcher rd = request.getRequestDispatcher("checkout.jsp");
			rd.include(request,  response);
			
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
