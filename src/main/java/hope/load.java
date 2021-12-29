package hope;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class load
 */
public class load extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static int price(int id) {
		int price = 0;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pizzadelivery","root","123456789258ak");
			ResultSet rs = null;
			PreparedStatement ps = null;
			
			String query = "SELECT price FROM stock WHERE id =?";
			
			ps = con.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			rs.next();
			price = rs.getInt("price");
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return price;
	
	}

	public static int stock(int id) {
		
		int stock = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pizzadelivery","root","123456789258ak");
			ResultSet rs = null;
			PreparedStatement ps = null;
		
			String query = "SELECT stock FROM stock WHERE id =?";
			ps = con.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			rs.next();
			stock = rs.getInt("stock");
			
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return stock;
	}

}
