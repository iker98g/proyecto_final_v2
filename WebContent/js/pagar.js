$( document ).ready(function() {
   
	var vCarrito=JSON.parse(localStorage.getItem('carrito'));
	var htmlCode="";
	
	for (let i = 0; i < vCarrito.length; i++) {
	
	htmlCode += '<tr>';
    htmlCode += 	'<td><img src="'+ vCarrito[i].imagen +'" style="height: 225px; width:100%;"/></td>';
    htmlCode += 	'<td>'+ vCarrito[i].nombre +'</td>';
    htmlCode += 	'<td>'+ vCarrito[i].precio +'€'+'</td>';
    htmlCode += '</tr>';
	}
	$('#compra > tbody').html(htmlCode);
});