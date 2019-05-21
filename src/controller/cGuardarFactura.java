package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.json.JSONStringer;

import model.ProductosModel;


import model.FacturaModel;
import model.ProductoFinalModel;

/**
 * Servlet implementation class cGuardarFactura
 */
@WebServlet("/cGuardarFactura")
public class cGuardarFactura extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cGuardarFactura() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String cliente=request.getParameter("nombre");
		
		
//		FacturaModel myFactura=new FacturaModel();
//		
//		myFactura.setNombreCliente(cliente);
//		
//		
//		
//		
//		int idFactura=myFactura.insertarFactura();
//		
//		String carrito= request.getParameter("carrito");
//
//		JSONArray vCarrito=new JSONArray(carrito);
//		
//		for (int i=0;i<vCarrito.length();i++) {
//			
//			JSONObject compra=vCarrito.getJSONObject(i);
//			
//			ProductoFinalModel myLinea=new ProductoFinalModel();
//			
//			myLinea.setIdFactura(idFactura);
//			myLinea.setIdProducto(compra.getInt("idProducto"));
//			myLinea.setNombre(compra.getString("nombre"));
//			myLinea.setPrecio(compra.getDouble("precio"));
//			myLinea.setCantidad(compra.getInt("cantidad"));
//			
//			myLinea.insertar();
//			
//		}
		
//		response.setHeader("Access-Control-Allow-Origin","*"); //jsonp deia denean ez da behar
//		response.setContentType("application/json");
//		response.setCharacterEncoding("UTF-8");
//			
//		out.print(cliente);
//		out.flush();
//		
//		
//	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductosModel myProductos=new ProductosModel();
		myProductos.loadData();
		
		//la lista est� en formato JSON description:
		String jsonString = JSONStringer.valueToString(myProductos.getList());

		PrintWriter out = response.getWriter();
	
		response.setHeader("Access-Control-Allow-Origin","*"); //jsonp deia denean ez da behar
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
			
		out.print(jsonString);
		out.flush();
		
		System.out.println("DATOS JSON : "+jsonString);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}