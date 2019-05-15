package model;

public class ProductoClass extends Connect{
	
	protected int idProducto;
	protected String nombre;
	protected int idCategoria;
	protected double precio;
	protected String descripcion;
	protected String imagen;
	
	//Constructores 
	public ProductoClass() {
		super();
	}
	
	public ProductoClass(int idProducto, String nombre, int idCategoria, double precio, String descripcion,
			String imagen) {
		super();
		this.idProducto = idProducto;
		this.nombre = nombre;
		this.idCategoria = idCategoria;
		this.precio = precio;
		this.descripcion = descripcion;
		this.imagen = imagen;
	}
	//Getters and Setters
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
	public int getIdCategoria() {
		return idCategoria;
	}
	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getImagen() {
		return imagen;
	}
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	
}
