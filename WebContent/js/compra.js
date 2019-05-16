$( document ).ready(function() {
   
	var vCarrito=JSON.parse(localStorage.getItem('carrito'));
	var htmlCode="";
	
	for (let i = 0; i < vCarrito.length; i++) {
	
	htmlCode += '<tr>';
		htmlCode += 	'<td><img class="card-img-top" src="'+ vCarrito[i].imagen +'" width="100%" style="height: 150px; width: auto; display: block;"/></td>';
		htmlCode += 	'<td>'+ vCarrito[i].nombre +'</td>';
		htmlCode += 	'<td>'+ vCarrito[i].precio +'€</td>';
		htmlCode += 	'<td>'+vCarrito[i].cantidad+'</td>';
		htmlCode += 	'<td>"TOTAL"</td>';
		htmlCode += 	'<td>"ELIMINAR"</td>';
    htmlCode += '</tr>';
	}
	$('#compra > tbody').html(htmlCode);

	//function calcularTotal();

});

// function calcularTotal () {
//     // Limpiamos precio anterior
//     var total = 0;
//     // Recorremos el array del carrito
//     for (let item of vCarrito) {
//         // De cada elemento obtenemos su precio
//         let miItem = baseDeDatos.filter(function(itemBaseDatos) {
//             return itemBaseDatos['id'] == item;
//         });
//         total = total + miItem[0]['precio'];
//     }
//     // Renderizamos el precio en el HTML
//     $total.textContent = total.toFixed(2);
// }