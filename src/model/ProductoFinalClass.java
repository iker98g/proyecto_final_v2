package model;

public class ProductoFinalClass extends Connect{
	protected int idFactura;
	protected int idProducto;
	protected String nombre;
	protected Double precio;
	protected int cantidad;
	protected Double total;
	
	
	//Constructors
	public ProductoFinalClass() {
		super();
	}


	public ProductoFinalClass(int idFactura, int idProducto, String nombre, Double precio, int cantidad, Double total) {
		super();
		this.idFactura = idFactura;
		this.idProducto = idProducto;
		this.nombre = nombre;
		this.precio = precio;
		this.cantidad = cantidad;
		this.total = total;
	}

	public int getIdFactura() {
		return idFactura;
	}


	public void setIdFactura(int idFactura) {
		this.idFactura = idFactura;
	}


	public int getIdProducto() {
		return idProducto;
	}


	public void setIdProducto(int idProducto) {
		this.idProducto = idProducto;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public Double getPrecio() {
		return precio;
	}


	public void setPrecio(Double precio) {
		this.precio = precio;
	}


	public int getCantidad() {
		return cantidad;
	}


	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	
	
	public Double getTotal() {
		return total;
	}


	public void setTotal(Double total) {
		this.total = total;
	}

	
}
