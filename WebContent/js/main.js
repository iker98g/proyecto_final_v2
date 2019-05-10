$( document ).ready(function() {
    var enlace="http://10.22.72.80:8080/Proyecto_v2/cProductos"
    	
    $.getJSON(enlace, function(response){
    	
        var datos=response;
        
//        console.log("NOMBRE 0 : "+ datos[0].nombre);
//        console.log("NOMBRE  1 : "+datos[1].nombre);
        var htmlCode="";
        for (let i = 0; i < datos.length; i++) {

        	htmlCode += '<div class="col-2  mx-5">';
        	
        	htmlCode +=	'<div class="card mb-4 shadow-sm">';
        	htmlCode += 	'<img src="'+ datos[i].imagen +'" width="100%"/>';
        	htmlCode += 	'<div class="card-body " >';
            htmlCode += 		'<p class="card-text">Nombre del producto: '+ datos[i].nombre +'</p>';
            htmlCode += 		'<p class="idProducto d-none">'+ datos[i].idProducto +'</p>';
            htmlCode += 		'<p class="card-text">Precio: '+ datos[i].precio +'</p>';
            htmlCode += 		'<div class="d-flex justify-content-between align-items-center">';
	        htmlCode += 		'<div class=" btn-group">';
	        htmlCode += 			'<button type="button" data-idproducto="'+datos[i].idProducto+'" class="boton-carrito btn btn-sm btn-outline-secondary"> <i class="fas fa-cart-plus aniadirCarrito"></i></button>'; 
	        htmlCode += 		'</div>';
            htmlCode += 		'</div>';
            htmlCode += 		'</div>';
            htmlCode += 	'</div>';
            htmlCode += '</div>'; 

        }
      //  console.log("HTML : "+htmlCode);
        $('#producto').html(htmlCode);
        
            
        $('.boton-carrito').click(function(){
        	alert($(this).data('idproducto'));
        	
        	var idp= $(this).data();
        	alert(idp.idproducto);
//        	var arrayIds=[] = $(this).data(datos[i].idProducto);
//        	
//        	i++;
//        	  console.log(arrayIds[i]); 	
        });
    });
    
    


});