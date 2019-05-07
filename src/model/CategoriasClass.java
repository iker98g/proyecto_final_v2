package model;

public class CategoriasClass extends Connect{
	
	protected int idCategoria;
	protected String nombre;
	
	//Constructores
	public CategoriasClass(int idCategoria, String nombre) {
		super();
		this.idCategoria = idCategoria;
		this.nombre = nombre;
	}
	public CategoriasClass() {
		super();
	}
	
	//Getters and Setters
	public int getIdCategoria() {
		return idCategoria;
	}
	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

}
