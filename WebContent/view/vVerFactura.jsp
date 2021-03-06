<%@page import="model.FacturaClass"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ver Facturas</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<div class="container w-50 m-auto">
		<h1 class="my-5 w-75 mx-auto " >VER FACTURAS</h1>
		
		<%
			//Sacar los datos del Atributo
			
			ArrayList<FacturaClass> list=(ArrayList<FacturaClass>) request.getAttribute("list");
		%>
		<table class="table table-striped table-responsive h-50" >
		
		<tr>
			<th>IDFACTURA</th>
			<th>FECHA</th>
			<th>PRECIOTOTAL</th>
			<th>NOMBRE</th>
			<th>APELLIDO</th>
			<!-- <th>EMAIL</th>
			<th>CIUDAD</th>
			<th>CODIGOPOSTAL</th>
			<th>DIRECCION</th>
			<th>NUMEROTARJETA</th> -->
		</tr>
		
		<% for (int i=0;i<list.size();i++) 
		{
		%>
			<tr>
				<td><%=list.get(i).getIdFactura() %></td>
				<td><%=list.get(i).getFecha() %></td>
				<td><%=list.get(i).getPrecioTotal() %></td>
				<td><%=list.get(i).getNombreCliente() %></td>
				<td><%=list.get(i).getApellidoCliente() %></td>
				<%-- <td><%=list.get(i).getEmailCliente() %></td>
				<td><%=list.get(i).getCiudadCliente() %></td>
				<td><%=list.get(i).getCodigoPostalCliente() %></td>
				<td><%=list.get(i).getDireccionCliente() %></td>
				<td><%=list.get(i).getNumeroTarjetaCliente() %></td> --%>
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