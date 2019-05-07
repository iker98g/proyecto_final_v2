package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.json.JSONStringer;

import model.ProductosModel;

/**
 * Servlet implementation class CProductos
 */
@WebServlet("/CProductos")
public class CProductos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CProductos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductosModel myProductos=new ProductosModel();
		myProductos.loadData();
		
		String jsonString = JSONStringer.valueToString(myProductos);
			
 		for (int i=0;i<myProductos.getList().size();i++){
 			
 			JSONObject jsonObject=new JSONObject();
 			jsonObject.put("nombre", myProductos.getList().get(i).getNombre());
 			jsonObject.put("idCategoria", myProductos.getList().get(i).getIdCategoria());
 			jsonObject.put("idprecio", myProductos.getList().get(i).getIdCategoria());
 			jsonObject.put("Descripcion", myProductos.getList().get(i).getDescripcion());
 			jsonObject.put("imagen", myProductos.getList().get(i).getImagen());
 			jsonString.add(jsonObject);	
 		}		

		PrintWriter out = response.getWriter();
	
		response.setHeader("Access-Control-Allow-Origin","*"); //jsonp deia denean ez da behar
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
			
		out.print(jsonString);
		out.flush();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
