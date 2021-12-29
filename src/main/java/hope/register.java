package hope;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class register
 */
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String username, email, password, adress,passconfirmation;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException {
		
		username = request.getParameter("name");
		email = request.getParameter("email");
		password = request.getParameter("password");
		adress = request.getParameter("adress");
		passconfirmation = request.getParameter("passconfirmation");
		PrintWriter out = response.getWriter();
		
		if(password == passconfirmation) {
			
			try {
				
			Class.forName("com.mysql.jdbc.Driver");
				
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pizzadelivery","root","123456789258ak");
			ResultSet rs = null;
			PreparedStatement ps2 = null;
	
			String query = "SELECT email FROM customer where email=?";
			    
			ps2 = con.prepareStatement(query);
			ps2.setString(1, email);
			rs = ps2.executeQuery();
			    
			 if(rs.next()) {
					

				out.println("<meta http-equiv='refresh' content='3;URL=register.jsp'>");
				out.println("<p style='color:red;'>Email already in-use!</p>");
					
			}else {
					
				PreparedStatement ps = con.prepareStatement(
							"Insert into customer (username,email,password,adress) values (?,?,?,?)"
				);
					
				ps.setString(1, username);
				ps.setString(2, email);
				ps.setString(3, password);
				ps.setString(4, adress);
				ps.executeUpdate();
				
				ps.close();
				ps2.close();
				rs.close();
					
				response.sendRedirect(request.getContextPath() + "/index.html");
					
			}
				
			} catch (SQLException | ClassNotFoundException e) {

				e.printStackTrace();
			}

		}else {
			
			out.println("<meta http-equiv='refresh' content='3;URL=register.jsp'>");
			out.println("<p style='color:red;'>Passwords do not match!</p>");
				

		}
	}
}
