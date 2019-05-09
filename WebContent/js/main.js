$( document ).ready(function() {
    var enlace="http://10.22.72.80:8080/Proyecto_v2/cProductos"
    
    $.getJSON(enlace, function(response){
    	
        console.log(response);
        var datos=response;
        
        
        for (let i = 0; i < datos.length; i++) {
        	var htmlCode="";
           
	        htmlCode += '<div class="container">';
            htmlCode += '<div class="row">';
            htmlCode += '<div class="col-md-4">';
            htmlCode += '<div class="card mb-4 shadow-sm">';
            htmlCode += '<svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Producto</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>';
            htmlCode += '<div class="card-body">';
            htmlCode += '<p class="card-text">Nombre del producto: '+ datos[i].nombre +'</p>';
            htmlCode += '<p class="card-text">Precio: '+ datos[i].precio +'</p>';
            htmlCode += '<div class="d-flex justify-content-between align-items-center">';
	        htmlCode += '<div class="btn-group">';
	        htmlCode += '<button type="button" class="btn btn-sm btn-outline-secondary"> <i class="fas fa-cart-plus aniadirCarrito"></i></button>'; 
	        htmlCode += '</div>';
            htmlCode += '</div>';
            htmlCode += '</div>';
            htmlCode += '</div>';
            htmlCode += '</div>';
            htmlCode += '</div>';
            htmlCode += '</div>';
            $('#container').html(htmlCode);
        }

    });

});