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
		htmlCode += '<td>'+vCarrito[i].total+'</td>';
		htmlCode += '<td>"ELIMINAR"</td>';
		htmlCode += '</tr>';
	}
	$('#compra > tbody').html(htmlCode);

	$('#pagar').on("click", function () {
		//####Mandar los datos al servidor
		datos = {
			carrito: localStorage.getItem('carrito'),

			subTotal: localStorage.getItem('subTotal'),
			nombre: $('#nombre').val(),
			apellido: $('#apellido').val(),
			email: $('#email').val(),
			ciudad: $('#ciudad').val(),
			codigoPostal: $('#codigoPostal').val(),
			direccion: $('#direccion').val(),
			numeroTarjeta: $('#numeroTarjeta').val()
		};
		enlace = "http://10.22.72.80:8080/Proyecto_v2/cGuardarFactura";

		$.get(enlace, datos, function (response) {
			var respuesta = JSON.parse(response);
				console.log(respuesta);
				
		});

	});
});