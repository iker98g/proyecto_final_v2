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

import model.CategoriasModel;
import model.ProductosModel;

/**
 * Servlet implementation class cCategorias
 */
@WebServlet("/cCategorias")
public class cCategorias extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cCategorias() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CategoriasModel myCategorias=new CategoriasModel();
		myCategorias.loadData();
		
		//String jsonString = JSONStringer.valueToString(myProductos);
		ArrayList<JSONObject> jsonArray=new ArrayList<JSONObject>();
			
 		for (int i=0;i<myCategorias.getList().size();i++){
 			
 			JSONObject jsonObject=new JSONObject();
 			jsonObject.put("nombre", myCategorias.getList().get(i).getNombre());
 			
 			jsonArray.add(jsonObject);	
 		}		

		PrintWriter out = response.getWriter();
	
		response.setHeader("Access-Control-Allow-Origin","*"); //jsonp deia denean ez da behar
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
			
		out.print(jsonArray);
		out.flush();
//		

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
