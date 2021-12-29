package hope;

import jakarta.servlet.http.HttpServlet;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

public class addtocart extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	ArrayList<food> cart = new ArrayList<food>();
	food f = new food();
	pizza p = new pizza();
	
	protected void doGet(HttpServletResponse response , HttpServletRequest request) throws ServletException, IOException {
		
		
		int id = Integer.parseInt(request.getParameter("p"));
		String[] toppings = request.getParameterValues("toppings");
		String thickness = request.getParameter("thickness");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String size = request.getParameter("size");
		String crust = request.getParameter("crust");
		
		if(id < 2000) {
			
			//pizza
			p.id = id;
			p.size = size;
			p.toppings = toppings;
			p.thickness = thickness;
			p.crust = crust;
			p.quantity = quantity;
		
			cart.add(p);
				
			
			
		}else {
			
			//drink & dessert
			f.id = id;
			f.quantity = quantity;
			
			cart.add(f);
				
		}
		
		HttpSession session = request.getSession();
		
		session.setAttribute("cart", cart);
		
		RequestDispatcher rd = request.getRequestDispatcher("PizzaSepeti.jsp");
		rd.include(request,  response);
		
		

	}

}
