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

/**
 * Servlet implementation class cProductos
 */
@WebServlet("/cProductos")
public class cProductos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cProductos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductosModel myProductos=new ProductosModel();
		myProductos.loadData();
		
		String jsonString = JSONStringer.valueToString(myProductos.getList());
		
//      En el caso que el objeto JSON sería reconstruido a partir de unos datos calculados
//		ArrayList<JSONObject> jsonArray=new ArrayList<JSONObject>();
//			
// 		for (int i=0;i<myProductos.getList().size();i++){
// 			
// 			JSONObject jsonObject=new JSONObject();
// 			jsonObject.put("c", myProductos.getList().get(i).getIdProducto());
// 			jsonObject.put("nombre", myProductos.getList().get(i).getNombre());
// 			jsonObject.put("idCategoria", myProductos.getList().get(i).getIdCategoria());
// 			jsonObject.put("precio", myProductos.getList().get(i).isPrecio());
// 			jsonObject.put("descripcion", myProductos.getList().get(i).getDescripcion());
// 			jsonObject.put("imagen", myProductos.getList().get(i).getImagen());
// 			jsonArray.add(jsonObject);	
// 		}		

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
