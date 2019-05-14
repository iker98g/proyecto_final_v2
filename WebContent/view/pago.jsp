<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pago</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<div class="container w-50 m-auto">
		<h1 class="my-5 w-75 mx-auto" >PAGAR</h1>
		<div class="mb-3">
          <label for="nombre">Nombre</label>
          <input type="text" class="form-control" id="nombre" placeholder="Nombre..." required>
          <div class="invalid-feedback">
            Por favor ingrese su nombre.
          </div>
        </div>
        <div class="mb-3">
          <label for="apellido">Apellido</label>
          <input type="text" class="form-control" id="apellido" placeholder="Apellido..." required>
          <div class="invalid-feedback">
            Por favor ingrese su primer apellido.
          </div>
        </div>
        <div class="mb-3">
          <label for="direccion">Dirección</label>
          <input type="text" class="form-control" id="direccion" placeholder="Dirección..." required>
          <div class="invalid-feedback">
            Por favor ingrese su dirección.
          </div>
        </div>
        <h4 class="mb-3">Método de pago</h4>

      	<div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h2 class="mb-0">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Tarjeta de crédito
        </button>
      </h2>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
      	<div class="mb-3">
          <label for="numero">Número de tarjeta</label>
          <input type="number" class="form-control" id="numero" placeholder="Número de tarjeta..." required>
          <div class="invalid-feedback">
            Por favor ingrese su número de tarjeta.
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Tarjeta de débito
        </button>
      </h2>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
        <div class="mb-3">
          <label for="numero">Número de tarjeta</label>
          <input type="number" class="form-control" id="numero" placeholder="Número de tarjeta..." required>
          <div class="invalid-feedback">
            Por favor ingrese su número de tarjeta.
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Paypal
        </button>
      </h2>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
      <div class="card-body">
        <div class="mb-3">
          <label for="numero">Número de tarjeta</label>
          <input type="number" class="form-control" id="numero" placeholder="Número de tarjeta..." required>
          <div class="invalid-feedback">
            Por favor ingrese su número de tarjeta.
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
        
        <button class="btn btn-primary btn-lg btn-block" type="submit">Continuar</button>
		
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>