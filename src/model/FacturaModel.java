package model;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;

public class FacturaModel extends FacturaClass{
	
	private ArrayList<FacturaClass> list = new ArrayList<FacturaClass>();

	//Constructores
	public FacturaModel(int idFactura, Date fecha, double precioTotal, String nombreCliente, String apellidoCliente,
			String emailCliente, String ciudadCliente, int codigoPostalCliente, String direccionCliente,
			int numeroTarjetaCliente, ArrayList<FacturaClass> list) {
		super(idFactura, fecha, precioTotal, nombreCliente, apellidoCliente, emailCliente, ciudadCliente,
				codigoPostalCliente, direccionCliente, numeroTarjetaCliente);
		this.list = list;
	}
	
	public FacturaModel() {
		super();
	}
	
	//Getters and Setters
	public ArrayList<FacturaClass> getList() {
		return list;
	}

	public void setList(ArrayList<FacturaClass> list) {
		this.list = list;
	}
	
	public void loadData()
	{
		this.CreateConnection();
		
		Statement st;
		try {
			st = this.con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM factura ");

			while (rs.next()) // reads the table line by line
			{
				FacturaModel newF = new FacturaModel();
				newF.idFactura=Integer.parseInt(rs.getString(1));
				newF.fecha=rs.getDate(2);
				newF.precioTotal=rs.getDouble(3);
				newF.nombreCliente=rs.getString(4);
				newF.apellidoCliente=rs.getString(5);
				newF.emailCliente=rs.getString(6);
				newF.ciudadCliente=rs.getString(7);
				newF.codigoPostalCliente=Integer.parseInt(rs.getString(8));
				newF.direccionCliente=rs.getString(9);
				newF.numeroTarjetaCliente=Integer.parseInt(rs.getString(10));
				this.list.add(newF);
			}
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.disconnect();
	}

	public String borrar() {
		this.CreateConnection();
		
		String mensaje="";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) this.con.prepareStatement("DELETE FROM FACTURA "
					+ " WHERE idFactura=?");
			
			pst.setInt(1, this.idFactura);
			
			pst.execute();
			mensaje="Factura borrada en la BBDD";
			
		} catch (SQLException e) {
			
			mensaje=e.getMessage()+"No se ha podido borrar la factura de la BBDD";
		}
		return mensaje;
	}

	public int insertarFactura() {
		int id=0;
		this.CreateConnection();
		
		String mensaje="";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) this.con.prepareStatement("call insertar_factura (?,?,?,?,?,?,?,?)");
			
			
			pst.setDouble(1, this.precioTotal);
			pst.setString(2, this.nombreCliente);
			pst.setString(3, this.apellidoCliente);
			pst.setString(4, this.emailCliente);
			pst.setString(5, this.ciudadCliente);
			pst.setInt(6, this.codigoPostalCliente);
			pst.setString(7, this.direccionCliente);
			pst.setInt(8, this.numeroTarjetaCliente);
			ResultSet rs=pst.executeQuery();
			
			if (rs.next()) {
				id=rs.getInt(1);
				
			}
			
			System.out.println("Factura insertada en la BBDD con id: " + id);
			
		} catch (SQLException e) {
			
			System.out.println(e.getMessage()+"      No se ha podido insertar la factura en la BBDD");
		}
		
		this.disconnect();
		return id;
		
	}

	
}
