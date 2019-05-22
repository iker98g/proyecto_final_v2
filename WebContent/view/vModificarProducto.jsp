<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="model.*" %>
<%@ page import="java.util.ArrayList" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modificar Producto</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<div class="container w-50 m-auto">
		<h1 class="my-5 w-75 mx-auto " >MODIFICAR PRODUCTO</h1>
		
		<%
			//Sacar los datos del Atributo
			ArrayList<ProductoClass> list=(ArrayList<ProductoClass>)request.getAttribute("list");
		%>
		<table class="table table-striped table-responsive h-50" style="width="200px" >
		
		<tr>
			<th>IDPRODUCTO</th>
			<th>NOMBRE</th>
			<th>IDCATEGORIA</th>
			<th>PRECIO</th>
			<!-- <th>DESCRIPCION</th> -->
			<th>IMAGEN</th>
			<th>ACCION</th>
		</tr>
		
		<% for (int i=0;i<list.size();i++) 
		{
		%>
			<tr>
				<td><%=list.get(i).getIdProducto() %></td>
				<td><%=list.get(i).getNombre() %></td>
				<td><%=list.get(i).getIdCategoria() %></td>
				<td><%=list.get(i).getPrecio() %></td>
				<%-- <td style="width:10" nowrap><%=list.get(i).getDescripcion() %></td> --%>
				<td><img src="<%=list.get(i).getImagen() %>" style="height:100px; width:100%"/></td>
				<td> 
				
				<!-- Button trigger modal -->
				<a type="button" class="text-primary" data-toggle="modal" data-target="#p<%=list.get(i).getIdProducto() %>">
				  MODIFICAR
				</a>

				<div class="modal fade" id="p<%=list.get(i).getIdProducto() %>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">Modificar Producto</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				      	<form action="cEjecutaModificarProducto" class="w-75 m-auto ">	
	 						<div class="form-group">
								<label for="idProducto">IdProducto </label>
								<input readonly value="<%=list.get(i).getIdProducto() %>" class="form-control" type="text"  id="idProducto" name="idProducto" />
							</div>
							 <div class="form-group">
								<label for="nombre">Nombre </label>
								<input value="<%=list.get(i).getNombre() %>" class="form-control" type="text"  id="nombre" name="nombre" />
							</div>
							<div class="form-group">
								<label for="idCategoria">IdCategoria </label>
								<input value="<%=list.get(i).getIdCategoria() %>" class="form-control" type="text"  id="idCategoria" name="idCategoria" />
							</div>
							<div class="form-group">
								<label for="precio">Precio </label>
								<input value="<%=list.get(i).getPrecio() %>" class="form-control" type="decimal"  id="precio" name="precio" />
							</div>
							<div class="form-group">
								<label for="descripcion">Descripcion </label>
								<input value="<%=list.get(i).getDescripcion() %>" class="form-control" type="text" style="heigth:75px;" id="descripcion" name="descripcion" />
							</div>
							<div class="form-group">
								<label for="imagen">Imagen </label>
								<input value="<%=list.get(i).getImagen() %>" class="form-control" type="text" id="imagen" name="imagen" />
							</div>
							<input class="btn btn-primary  col-3 " type="submit" value="Guardar"/>
						</form>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
				        
				      </div>
				    </div>
				  </div>
				</div>
				
				</td>
			</tr>
		<%
		}
		%>
		</table>
		
		<div class="botones w-75 m-auto">
			<a class="btn btn-primary d-block m-2" href="cAdmin">Volver</a>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>