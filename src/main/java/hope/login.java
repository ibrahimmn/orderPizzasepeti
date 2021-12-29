package hope;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	String email, password;
	int id;
	ArrayList<food> cart = new ArrayList<food>();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		
		email = request.getParameter("email");
		password = request.getParameter("password");
			
		Connection con;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pizzadelivery","root","123456789258ak");
			ResultSet rs = null;
			PreparedStatement ps = null;

		    String query = "SELECT email FROM customer where email=?";
		    
		    ps = con.prepareStatement(query);
		    ps.setString(1, email);
		    rs = ps.executeQuery();
		    
			ResultSet rs1 = null;
			PreparedStatement ps1 = null;
			PreparedStatement ps2 = null;
			ResultSet rs2 = null;

		    String query1 = "SELECT password FROM customer where password=?";
		    String query2 = "SELECT id FROM customer where email = ?";
		    
		    ps1 = con.prepareStatement(query1);
		    ps1.setString(1, password);
		    rs1 = ps1.executeQuery();
		    
		    if(rs.next()) {
		    	if(rs1.next()) {
		    		ps2 = con.prepareStatement(query2);
		    		ps2.setString(1, email);
		    		rs2 = ps2.executeQuery();
		    		rs2.next();
		    		id = rs2.getInt("id");
		    		request.setAttribute("cart", cart);
		    		request.setAttribute("userid", id);
		    		getServletConfig().getServletContext().getRequestDispatcher("/PizzaSepeti.jsp").forward(request,response);

		    	}
		    }
		    response.getWriter().append("Incorrect credentials");

		    
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
