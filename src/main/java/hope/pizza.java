package hope;

public class pizza extends food{

	

	public String[] getToppings() {
		return toppings;
	}

	public void setToppings(String[] toppings) {
		this.toppings = toppings;
	}

	public String getCrust() {
		return crust;
	}

	public void setCrust(String crust) {
		this.crust = crust;
	}
	public void setSize(String size) {
		this.size = size;
	}

	public String getThickness() {
		return thickness;
	}

	public void setThickness(String thickness) {
		this.thickness = thickness;
	}

	String[] toppings;
	String size,crust,thickness;
	
	public pizza() {
		// TODO Auto-generated constructor stub
	}

}
