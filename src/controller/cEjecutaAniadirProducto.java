package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductosModel;

/**
 * Servlet implementation class cEjecutaAniadirProducto
 */
@WebServlet("/cEjecutaAniadirProducto")
public class cEjecutaAniadirProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cEjecutaAniadirProducto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nombre=request.getParameter("nombre");
		int idCategoria=Integer.parseInt(request.getParameter("idCategoria"));
		double precio=Double.parseDouble(request.getParameter("precio"));
		String descripcion=request.getParameter("descripcion");
		String imagen=request.getParameter("imagen");
		
		ProductosModel myProductos=new ProductosModel();
		myProductos.setNombre(nombre);
		myProductos.setIdCategoria(idCategoria);
		myProductos.setPrecio(precio);
		myProductos.setDescripcion(descripcion);
		myProductos.setImagen(imagen);
		String mensaje=myProductos.insertar();
		
		request.setAttribute("mensaje", mensaje);
		request.getRequestDispatcher("view/vAviso.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
