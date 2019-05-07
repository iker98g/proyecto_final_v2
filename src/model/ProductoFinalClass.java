package model;

public class ProductoFinalClass extends Connect{
	protected int idFactura;
	protected int idProducos;
	protected int cantidad;
	
	
	//Constructors
	public ProductoFinalClass() {
		super();
	}
	public ProductoFinalClass(int idFactura, int idProducos, int cantidad) {
		super();
		this.idFactura = idFactura;
		this.idProducos = idProducos;
		this.cantidad = cantidad;
	}
	//GettersAndSetters
	public int getIdFactura() {
		return idFactura;
	}
	public void setIdFactura(int idFactura) {
		this.idFactura = idFactura;
	}
	public int getIdProducos() {
		return idProducos;
	}
	public void setIdProducos(int idProducos) {
		this.idProducos = idProducos;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	
}
