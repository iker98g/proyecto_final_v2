package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ProductoFinalModel extends ProductoFinalClass{
	private ArrayList<ProductoFinalClass> list = new ArrayList<ProductoFinalClass>();
//getters and Setters
	public ArrayList<ProductoFinalClass> getList() {
		return list;
	}

	public void setList(ArrayList<ProductoFinalClass> list) {
		this.list = list;
	}
//constructors
	public ProductoFinalModel() {
		super();
	}

	public ProductoFinalModel(int idFactura, int idProducos, int cantidad, ArrayList<ProductoFinalClass> list) {
		super(idFactura, idProducos, cantidad);
		this.list = list;
	}

	public void loadData()
	{
		this.CreateConnection();
		
		Statement st;
		try {
			st = this.con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM productosfinal ");

			while (rs.next()) // reads the table line by line
			{
				ProductoFinalModel newP = new ProductoFinalModel();
				newP.idFactura=Integer.parseInt(rs.getString(1));
				newP.idProducos=Integer.parseInt(rs.getString(2));
				newP.cantidad=Integer.parseInt(rs.getString(3));

			}
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.disconnect();
	}
	
}
