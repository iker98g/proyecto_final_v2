$( document ).ready(function() {
   
	var vCarrito=JSON.parse(localStorage.getItem('carrito'));
	var htmlCode="";
	
	for (let i = 0; i < vCarrito.length; i++) {
	
	htmlCode += '<tr>';
    htmlCode += 	'<td><img class="card-img-top" src="'+ vCarrito[i].imagen +'" width="100%" style="height: 225px; width: 100%; display: block;"/></td>';
    htmlCode += 	'<td>'+ vCarrito[i].nombre +'</td>';

    htmlCode += 	'<td>'+ vCarrito[i].precio +'€'+'</td>';
    htmlCode += 	'<td>"CANTIDAD"</td>';

    htmlCode += '</tr>';
	}
	$('#compra > tbody').html(htmlCode);
});