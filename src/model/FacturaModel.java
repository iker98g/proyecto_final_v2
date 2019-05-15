package model;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class FacturaModel extends FacturaClass{
	
	private ArrayList<FacturaClass> list = new ArrayList<FacturaClass>();

	//Constructores
	public FacturaModel(int idFactura, Date fecha, double precioTotal, String nombreCliente, String apellidoCliente,
			String emailCliente, String ciudadCliente, String codigoPostalCliente, String direccionCliente,
			String numeroTarjetaCliente, ArrayList<FacturaClass> list) {
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
				newF.precioTotal=double.(rs.getString(1));
				this.list.add(newF);
			}
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.disconnect();
	}

	
}
