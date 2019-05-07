package model;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class FacturaModel extends FacturaClass{
	
	private ArrayList<FacturaClass> list = new ArrayList<FacturaClass>();

	//Constructores
	public FacturaModel(int idFactura, Date fecha, ArrayList<FacturaClass> list) {
		super(idFactura, fecha);
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
			ResultSet rs = st.executeQuery("SELECT * FROM Factura ");

			while (rs.next()) // reads the table line by line
			{
				FacturaModel newF = new FacturaModel();
				newF.idFactura=Integer.parseInt(rs.getString(1));
				newF.fecha=rs.getDate(2);
				this.list.add(newF);
			}
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.disconnect();
	}
	
}
