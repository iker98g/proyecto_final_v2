package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class CategoriasModel extends CategoriasClass{
	
	private ArrayList<CategoriasClass> list = new ArrayList<CategoriasClass>();

	//Constructores
	public CategoriasModel(int idCategoria, String nombre, ArrayList<CategoriasClass> list) {
		super(idCategoria, nombre);
		this.list = list;
	}

	public CategoriasModel() {
		super();
	}

	//Getters and setters
	public ArrayList<CategoriasClass> getList() {
		return list;
	}

	public void setList(ArrayList<CategoriasClass> list) {
		this.list = list;
	}
	
	public void loadData()
	{
		this.CreateConnection();
		
		Statement st;
		try {
			st = this.con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM Categorias ");

			while (rs.next()) // reads the table line by line
			{
				CategoriasModel newC = new CategoriasModel();
				newC.idCategoria=Integer.parseInt(rs.getString(1));
				newC.nombre=rs.getString(2);
				this.list.add(newC);
			}
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.disconnect();
	}
	
	

	
	
}
