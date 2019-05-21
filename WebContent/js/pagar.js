var enlace;
var datos;
$(document).ready(function () {

	var vCarrito = JSON.parse(localStorage.getItem('carrito'));
	var htmlCode = "";

	for (let i = 0; i < vCarrito.length; i++) {

		htmlCode += '<tr>';
		htmlCode += '<td><img class="card-img-top" src="' + vCarrito[i].imagen + '" width="100%" style="height: 150px; width: auto; display: block;"/></td>';
		htmlCode += '<td>' + vCarrito[i].nombre + '</td>';
		htmlCode += '<td>' + vCarrito[i].precio + '€</td>';
		htmlCode += '<td>' + vCarrito[i].cantidad + '</td>';
		htmlCode += '<td>"TOTAL"</td>';
		htmlCode += '<td>"ELIMINAR"</td>';
		htmlCode += '</tr>';
	}
	$('#compra > tbody').html(htmlCode);

	$('#pagar').on("click",function(){

		var vCarrito=JSON.parse(localStorage.getItem("carrito"));

		var vCliente=$('#cliente').val();

		datos={
			carrito:vCarrito,
			cliente:vCliente
		};


		enlace = "http://10.22.72.80:8080/Proyecto_v2/cProductos";
		
		$.getJSON(enlace,{nombre:'a'}, function (response) {
		
		
		});


	});
});