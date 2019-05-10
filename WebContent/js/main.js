$( document ).ready(function() {;
    var enlace="http://10.22.72.80:8080/Proyecto_v2/cProductos"
    
    $.getJSON(enlace, function(response){
    	
        var datos=response;
        
//        console.log("NOMBRE 0 : "+ datos[0].nombre);
//        console.log("NOMBRE  1 : "+datos[1].nombre);
        var htmlCode="";
        for (let i = 0; i < datos.length; i++) {

        	htmlCode += '<div class="col-2 p-2 mx-5">';
        	
        	htmlCode += '<img src="'+ datos[i].imagen +'" width="100%"/>';
        	htmlCode += '<div class="card-body " >';
            htmlCode += '<p class="card-text">Nombre del producto: '+ datos[i].nombre +'</p>';
            htmlCode += '<p class="d-none" id="idProducto">'+ datos[i].idProducto +'</p>';
            htmlCode += '<p class="card-text">Precio: '+ datos[i].precio +'€</p>';
            htmlCode += '<div class="d-flex justify-content-between align-items-center">';
	        htmlCode += '<div class="btn-group " id="btn-carrito">';
	        htmlCode += '<button type="button" class="btn btn-sm btn-outline-secondary"> <i class="fas fa-cart-plus aniadirCarrito"></i></button>'; 
	        htmlCode += '</div>';
            htmlCode += '</div>';
            htmlCode += '</div>';
            htmlCode += '</div>'; 

        }
      //  console.log("HTML : "+htmlCode);
        $('#producto').html(htmlCode);
        
    });
    
//    var arrayIds = [];
//    $('#btn-carrito').on(click, function(){
//    	//console.log(datos.idProductos);
//    	 arrayIds[i]= $('#idProducto').text();
//    	
//    	i++;
//    	  console.log(arrayIds[i]); 	
//    });
//    
    var cat="http://10.22.72.80:8080/Proyecto_v2/cCategorias"
    
    $.getJSON(cat, function(response){
    	
        var categorias=response;
        
//        console.log("NOMBRE 0 : "+ categorias[0].nombre);
        var htmlCode="";
        for (let i = 0; i < categorias.length; i++) {

        	htmlCode += '<button type="button" class="list-group-item list-group-item-action btn-cat">'+categorias[i].nombre +'</button>';
        }
//        console.log("HTML : "+htmlCode);
        
        $('#categorias').html(htmlCode);
    });
//    console.log(categorias.nombre);

    $('.btn-cat').on(click,function(){
    	$('.btn-cat').addClass('active');
    	
    });
});