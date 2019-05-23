package model;

import java.sql.*;

//--- To connect to a database Download the https://dev.mysql.com/downloads/connector/j/5.1.html library
//and copy the jar archive in  web-inf/lib folder

public class Connect {

protected Connection con = null;
	
	public Connect() {
      	super();
	}
	// ---------------------------------------------
	public Connection CreateConnection()
	{
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/tienda_productos";
		String userBbdd = "root";
		String passBbdd = "";
		
		
        	try {
              	// ----- connecting procedure ----//
              	Class.forName(driver);
              	this.con = DriverManager.getConnection(url, userBbdd, passBbdd);
              	//System.out.println("le llegan datos");

        	} catch (Exception ex) {
              	con = null;
              	System.out.println("no va");
        	}
        	return this.con;
  	
	}
	
	public void disconnect() {
      	try {
			this.con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
