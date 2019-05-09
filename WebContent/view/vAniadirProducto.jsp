<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Añadir Producto</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.*" %>
</head>
<body>

<h1 class="my-5 w-75 mx-auto" >Añadir Producto</h1>

<form action="cEjecutaAniadirProducto" class="w-50 m-auto ">	
	
	<div class="form-group">
		<label for="nombre">Nombre </label>
		<input class="form-control" type="text"  id="nombre" name="nombre" required />
	</div>
	<div class="form-group">
		<label for="idCategoria">Id Categoria </label>
		<input class="form-control" type="number"  id="idCategoria" name="idCategoria" required />
	</div>
	<div class="form-group">
		<label for="precio">Precio </label>
		<input class="form-control" type="double" id="precio" name="precio" required />
	</div>
	<div class="form-group">
		<label for="descripcion">Descripción </label>
		<input class="form-control" type="text"  id="descripcion" name="descripcion" required />
	</div>
	<div class="form-group">
		<label for="imagen">Imagen </label>
		<input class="form-control" type="text"  id="imagen" name="imagen" required />
	</div>
	
	<input class="btn btn-primary d-block col-4 offset-4" type="submit" value="Guardar"/>
</form>
<div class="botones w-25 m-auto">
	<a class="btn btn-danger d-block m-2" href="cAdmin">Volver</a>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>