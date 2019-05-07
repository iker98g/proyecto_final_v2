package model;

import java.sql.Date;

public class FacturaClass extends Connect{
	
	protected int idFactura;
	protected Date fecha;
	
	//Constructores
	public FacturaClass(int idFactura, Date fecha) {
		super();
		this.idFactura = idFactura;
		this.fecha = fecha;
	}
	public FacturaClass() {
		super();
	}
	
	//Getters and Setters
	public int getIdFactura() {
		return idFactura;
	}
	public void setIdFactura(int idFactura) {
		this.idFactura = idFactura;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

}
