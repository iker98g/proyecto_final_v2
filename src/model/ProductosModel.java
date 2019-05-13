package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;

import model.ProductoClass;


public class ProductosModel extends ProductoClass{
	private ArrayList<ProductoClass> list = new ArrayList<ProductoClass>();
//getters and setters
	public ArrayList<ProductoClass> getList() {
		return list;
	}

	public void setList(ArrayList<ProductoClass> list) {
		this.list = list;
	}
//Constructors
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
			ResultSet rs = st.executeQuery("SELECT * FROM productos ");

			while (rs.next()) // reads the table line by line
			{
				ProductosModel newP = new ProductosModel();
				newP.idProducto=Integer.parseInt(rs.getString(1));
				newP.nombre=rs.getString(2);
				newP.idCategoria=Integer.parseInt(rs.getString(3));
				newP.precio=rs.getDouble(4);
				newP.descripcion=rs.getString(5);
				newP.imagen=rs.getString(6);
				this.list.add(newP);
			}
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.disconnect();
	}

	public String insertar() {
		
		this.CreateConnection();
		
		String mensaje="";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) this.con.prepareStatement("INSERT INTO PRODUCTOS (nombre, idCategoria, precio, descripcion, imagen)"
					+ " VALUES (?,?,?,?,?)");
			
			pst.setString(1, this.nombre);
			pst.setInt(2, this.idCategoria);
			pst.setDouble(3, this.precio);
			pst.setString(4, this.descripcion);
			pst.setString(5, this.imagen);
			
			pst.execute();
			mensaje="Producto insertado en la BBDD";
			
		} catch (SQLException e) {
			
			mensaje=e.getMessage()+"No se ha podido insertar el producto en la BBDD";
		}
		this.disconnect();
		return mensaje;
	}

	public String borrar() {
		
		this.CreateConnection();
		
		String mensaje="";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) this.con.prepareStatement("DELETE FROM PRODUCTOS "
					+ " WHERE idProducto=?");
			
			pst.setInt(1, this.idProducto);
			
			pst.execute();
			mensaje="Producto borrado en la BBDD";
			
		} catch (SQLException e) {
			
			mensaje=e.getMessage()+"No se ha podido borrar el producto de la BBDD";
		}
		return mensaje;
	}

	public String modificar() {
		
		this.CreateConnection();
		
		String mensaje="";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) this.con.prepareStatement("UPDATE PRODUCTOS "
					+ " SET nombre=? ,"
					+ "     idCategoria=? , "
					+ "     precio=? , "
					+ "     descripcion=? , "
					+ "     imagen=? , "
					+ " WHERE idProducto=?");
			
			pst.setInt(1, this.idProducto);
			pst.setString(2, this.nombre);
			pst.setInt(3, this.idCategoria);
			pst.setDouble(4, this.precio);
			pst.setString(2, this.descripcion);
			pst.setString(2, this.imagen);
			
			pst.execute();
			mensaje="Producto modificado en la BBDD";
			
		} catch (SQLException e) {
			
			mensaje=e.getMessage()+"No se ha podido modificar el producto de la BBDD";
		}
		return mensaje;
	}
}