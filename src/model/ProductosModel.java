package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.ProductosClass;


public class ProductosModel extends ProductosClass{
	private ArrayList<ProductosClass> list = new ArrayList<ProductosClass>();
//getters and setters
	public ArrayList<ProductosClass> getList() {
		return list;
	}

	public void setList(ArrayList<ProductosClass> list) {
		this.list = list;
	}

	public ProductosModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProductosModel(int idProducto, String nombre, int idCategoria, double precio, String descripcion,
			String imagen) {
		super(idProducto, nombre, idCategoria, precio, descripcion, imagen);
		// TODO Auto-generated constructor stub
	}
	
	public void loadData()
	{
		this.CreateConnection();
		
		Statement st;
		try {
			st = this.con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM Films ");

			while (rs.next()) // reads the table line by line
			{
				ProductosModel newF = new ProductosModel();
				newF.idProducto=Integer.parseInt(rs.getString(1));
				newF.nombre=rs.getString(2);
				newF.idCategoria=Integer.parseInt(rs.getString(3));
				newF.precio=rs.getDouble(4);
				newF.descripcion=rs.getString(5);
				newF.imagen=rs.getString(6);
				this.list.add(newF);
			}
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.disconnect();
	}
	
	
}





	
	
//
//	//----------Constructors
//	public FilmsModel() {
//		super();
//	}
//
//	public FilmsModel(int id, String title, int year, int director, String poster, String iMDB,
//			ArrayList<FilmsClass> list) {
//		super(id, title, year, director, poster, iMDB);
//		this.list = list;
//	}
//	//--------------getters and setters
//	public ArrayList<FilmsClass> getList() {
//		return list;
//	}
//
//	public void setList(ArrayList<FilmsClass> list) {
//		this.list = list;
//	}
//	//-----------methods
//	