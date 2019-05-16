package model;

import java.sql.Date;

public class FacturaClass extends Connect{
	
	protected int idFactura;
	protected Date fecha;
	protected double precioTotal;
	protected String nombreCliente;
	protected String apellidoCliente;
	protected String emailCliente;
	protected String ciudadCliente;
	protected int codigoPostalCliente;
	protected String direccionCliente;
	protected int numeroTarjetaCliente;
	
	//Constructores
	public FacturaClass(int idFactura, Date fecha, double precioTotal, String nombreCliente, String apellidoCliente,
			String emailCliente, String ciudadCliente, int codigoPostalCliente, String direccionCliente,
			int numeroTarjetaCliente) {
		super();
		this.idFactura = idFactura;
		this.fecha = fecha;
		this.precioTotal = precioTotal;
		this.nombreCliente = nombreCliente;
		this.apellidoCliente = apellidoCliente;
		this.emailCliente = emailCliente;
		this.ciudadCliente = ciudadCliente;
		this.codigoPostalCliente = codigoPostalCliente;
		this.direccionCliente = direccionCliente;
		this.numeroTarjetaCliente = numeroTarjetaCliente;
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

	public double getPrecioTotal() {
		return precioTotal;
	}

	public void setPrecioTotal(double precioTotal) {
		this.precioTotal = precioTotal;
	}

	public String getNombreCliente() {
		return nombreCliente;
	}

	public void setNombreCliente(String nombreCliente) {
		this.nombreCliente = nombreCliente;
	}

	public String getApellidoCliente() {
		return apellidoCliente;
	}

	public void setApellidoCliente(String apellidoCliente) {
		this.apellidoCliente = apellidoCliente;
	}

	public String getEmailCliente() {
		return emailCliente;
	}

	public void setEmailCliente(String emailCliente) {
		this.emailCliente = emailCliente;
	}

	public String getCiudadCliente() {
		return ciudadCliente;
	}

	public void setCiudadCliente(String ciudadCliente) {
		this.ciudadCliente = ciudadCliente;
	}

	public int getCodigoPostalCliente() {
		return codigoPostalCliente;
	}

	public void setCodigoPostalCliente(int codigoPostalCliente) {
		this.codigoPostalCliente = codigoPostalCliente;
	}

	public String getDireccionCliente() {
		return direccionCliente;
	}

	public void setDireccionCliente(String direccionCliente) {
		this.direccionCliente = direccionCliente;
	}

	public int getNumeroTarjetaCliente() {
		return numeroTarjetaCliente;
	}

	public void setNumeroTarjetaCliente(int numeroTarjetaCliente) {
		this.numeroTarjetaCliente = numeroTarjetaCliente;
	}
	
	
	
	

}
