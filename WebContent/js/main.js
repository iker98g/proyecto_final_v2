$(document).ready(function () {
	var enlace = "http://10.22.72.80:8080/Proyecto_v2/cProductos";

	$.getJSON(enlace, function (response) {
		//CARGA PRODUCTOS
		var datos = response;

		//        console.log("NOMBRE 0 : "+ datos[0].nombre);
		//        console.log("NOMBRE  1 : "+datos[1].nombre);
		var htmlCode = "";
		for (let i = 0; i < datos.length; i++) {

			htmlCode += '<div class="col-sm-6 col-md-4 col-lg-2 card-producto" data-idcategoria="' + datos[i].idCategoria + '">'
			htmlCode += '<div class="casillas card mb-1 shadow-sm mt-3">';
			htmlCode += '<button  data-descripcion="' + datos[i].descripcion+ '"data-imagen="' + datos[i].imagen + '"data-idproducto="' + datos[i].idProducto + '" data-nombre="' + datos[i].nombre + '" ' + ' data-precio="' + datos[i].precio + '" class="ver-modal" style="background: url(' + datos[i].imagen + ') no-repeat;background-size: cover; background-position: center;height: 225px; width: auto;   " class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">';
			htmlCode += '</button>';


			//htmlCode += '<img class="card-img-top mas-info" data-toggle="modal" data-target="exampleModal" src="' + datos[i].imagen + '" width="100%" style="height: 225px; width: auto; display: block;"></img>';
			htmlCode += '<div class="masInfo"></div>';
			htmlCode += '<div class="card-body" >';
			htmlCode += '<p class="card-text">' + datos[i].nombre + '</p>';
			htmlCode += '<p class="card-text ">Precio: ' + datos[i].precio + '€' + '</p>';
			htmlCode += '<div class=" div-boton ">';
			htmlCode += '<div class=" btn-group ">';
			htmlCode += '<button type="button" data-imagen="' + datos[i].imagen + '"data-idproducto="' + datos[i].idProducto + '" data-nombre="' + datos[i].nombre + '" ' + ' data-precio="' + datos[i].precio + '" class="boton-carrito btn btn-sm btn-outline-secondary"> <i class="fas fa-cart-plus aniadirCarrito"></i></button>';
			htmlCode += '</div>';
			htmlCode += '</div>';
			htmlCode += '</div>';
			htmlCode += '</div>';
			htmlCode += '</div>';

		}
		//  console.log("HTML : "+htmlCode);
		$('#producto').html(htmlCode);

		// //##MODAL##//
		$('.ver-modal').on('click', function () {
			var htmlModal = "";
			var htmlModalTitulo = "";
			var htmlModalDescripcion="";
			var htmlModalfooterBoton="";

			//htmlModal += '<img src="' + datos[i].imagen + '">',
			htmlModal += '<img src="' + $(this).data('imagen') + '" style="height: 225px; width: auto;" />';
			htmlModalTitulo += $(this).data('nombre');
			htmlModalDescripcion +='<p>'+ $(this).data('descripcion') +'</p>';
			htmlModalfooterBoton+='<button type="button" data-imagen="' + $(this).data('imagen') + '"data-idproducto="' + $(this).data('idproducto') + '" data-nombre="' + $(this).data('nombre') + '" ' + ' data-precio="' + $(this).data('precio') + '" class="boton-carrito btn btn-sm btn-outline-secondary"> <i class="fas fa-cart-plus aniadirCarrito"></i></button>';
			// htmlModalfooterBoton+='<button type="button" data-imagen="' + datos[i].imagen + '"data-idproducto="' + datos[i].idProducto + '" data-nombre="' + datos[i].nombre + '" ' + ' data-precio="' + datos[i].precio + '" class="boton-carrito btn btn-sm btn-outline-secondary"> <i class="fas fa-cart-plus aniadirCarrito"></i></button>';

			$('#exampleModalLabel').html(htmlModalTitulo);
			$('.modal-body').html(htmlModal);
			$('.modal-descripcion').html(htmlModalDescripcion);
			$('.modal-footer').html(htmlModalfooterBoton);

			carrito();
	
		});
		carrito();
	
		// $('.casillas').hover(function(){
		// 	('.masInfo').show();
		// });
	});


	var cat = "http://10.22.72.80:8080/Proyecto_v2/cCategorias"

	$.getJSON(cat, function (response) {
		//CARGA PRODUCTOS
		var categorias = response;

		//        console.log("NOMBRE 0 : "+ categorias[0].nombre);
		var htmlCode = "";
		for (let i = 0; i < categorias.length; i++) {


			//        	htmlCode += '<a class="list-group-item list-group-item-action btn-cat">'+categorias[i].nombre +'</a>';
			htmlCode += '<button type="button" class="btn btn-outline-primary btn-cat mt-2 w-75 mr-4 rounded-pill categoria" data-idcategoria="' + categorias[i].idCategoria + '">' + categorias[i].nombre + '</button>';
		}
		//        console.log("HTML : "+htmlCode);

		$('#categorias').append(htmlCode);

		$('.categoria').on('click', function (event) {
			var cId = $(this).data('idcategoria');
			$('.card-producto[data-idCategoria="' + cId + '"]').show();
			$('.card-producto[data-idCategoria!="' + cId + '"]').hide();

		});
		$('#categoria-todo').on('click', function () {
			$('.card-producto[data-idCategoria]').show();
		});
	});
});
function carrito() {
	$('.boton-carrito').click(function () {
		//añadir la compra al carrito
	
	
		//sacamos lo que hay en el carrito y le añadimos la compra
		//**Esto es para reconvertir el String que genera el localStorage en un array**
		var vCarrito = JSON.parse(localStorage.getItem("carrito")); //de string a array JSON
		var encontrado = false;
		if (vCarrito == null) {
			vCarrito = [];
		}
		else {
			for (let index = 0; index < vCarrito.length; index++) {
	
				if (vCarrito[index].idProducto == $(this).data('idproducto')) {
					vCarrito[index].cantidad++;
					encontrado = true;
				}
			}
		}
		if (encontrado == false) {
			var compra = {
				//idCategoria: $(this).data('idcategoria'),
				idProducto: $(this).data('idproducto'),
				imagen: $(this).data('imagen'),
				nombre: $(this).data('nombre'),
				cantidad: 1,
				precio: $(this).data('precio')
			};
			vCarrito.push(compra);
		}
	
	
	
	
		//vCarrito[compra.idProducto] = compra;
		//vCarrito[compra.idProducto].cantidad +=1;
	
		//añadir el carrito al localstorage pasandolo a string
		//**Esto es para reconvertir el String que genera el localStorage en un array**
		localStorage.setItem("carrito", JSON.stringify(vCarrito));
	
	});
}
