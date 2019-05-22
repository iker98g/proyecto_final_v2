package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;

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


	public ProductoFinalModel(int idFactura, int idProducto, String nombre, Double precio, int cantidad, Double total,
		ArrayList<ProductoFinalClass> list) {
	super(idFactura, idProducto, nombre, precio, cantidad, total);
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
				newP.idProducto=Integer.parseInt(rs.getString(2));
				newP.nombre=rs.getString(3);
				newP.precio=Double.parseDouble(rs.getString(4));
				newP.cantidad=Integer.parseInt(rs.getString(5));

			}
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.disconnect();
	}

	public void insertarLinea() {

		this.CreateConnection();
		
		String mensaje="";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) this.con.prepareStatement("call spInsertaLinea(?,?,?,?,?,?)");
			
			pst.setInt(1, this.idFactura);
			pst.setInt(2, this.idProducto);
			pst.setString(3, this.nombre);
			pst.setDouble(4, this.precio);
			pst.setInt(5, this.cantidad);
			pst.setDouble(6,  this.total);
			System.out.println("TOTAL : "+ this.total);
			pst.execute();
			System.out.println("Linea insertada en la BBDD");
			
		} catch (SQLException e) {
			
			System.out.println(e.getMessage()+"No se ha podido insertar la linea de la BBDD");
		}
		
	}
	
}
