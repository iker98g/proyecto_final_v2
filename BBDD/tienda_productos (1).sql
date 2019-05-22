-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2019 a las 13:53:50
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_productos`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_factura` (IN `pPrecioTotal` DOUBLE(10,2), IN `pNombre` VARCHAR(50), IN `pApellido` VARCHAR(50), IN `pEmail` VARCHAR(50), IN `pCiudad` VARCHAR(50), IN `pCodigoPostal` INT(11), IN `pDireccion` VARCHAR(50), IN `pNumeroTarjeta` INT(50))  NO SQL
begin
insert into factura( factura.precioTotal,factura.nombreCliente,factura.apellidoCliente,factura.emailCliente,factura.ciudadCliente,factura.codigoPostalCliente,factura.direccionCliente,factura.numeroTarjetaCliente)
                    
values (pPrecioTotal,pNombre, pApellido, pEmail, pCiudad, pCodigoPostal, pDireccion, pNumeroTarjeta);
        

Select last_insert_id() as "id";
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertaLinea` (IN `pIdFactura` INT, IN `pIdProducto` INT, IN `pNombre` VARCHAR(50), IN `pPrecio` DOUBLE, IN `pCantidad` INT, IN `pTotal` DOUBLE)  NO SQL
BEGIN
insert into productofinal values(pIdFactura,pIdProducto,pNombre,pPrecio,pCantidad,pTotal);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL,
  `nombre` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `nombre`) VALUES
(1, 'Peliculas'),
(2, 'Libros'),
(3, 'Deportes'),
(4, 'Videojuegos'),
(5, 'Electronica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idFactura` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `precioTotal` decimal(10,2) NOT NULL,
  `nombreCliente` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoCliente` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailCliente` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudadCliente` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigoPostalCliente` int(10) NOT NULL,
  `direccionCliente` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numeroTarjetaCliente` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`idFactura`, `fecha`, `precioTotal`, `nombreCliente`, `apellidoCliente`, `emailCliente`, `ciudadCliente`, `codigoPostalCliente`, `direccionCliente`, `numeroTarjetaCliente`) VALUES
(2, '2019-05-08 00:00:00', '6.00', 'dgf', 'fg', 'gf', 'gfds', 545, 'gs', 52),
(30, '2019-05-22 13:43:35', '29.79', 'Bogdan', 'Berghie', 'bogdan337@gmail.com', 'Amorebieta-Etxano', 48340, 'particular san Pedro 5c 1d', 123123),
(33, '2019-05-22 13:52:02', '32.88', 'ui', 'yu', 'yu', 'yu', 5, 'uy', 5),
(38, '2019-05-22 13:52:04', '32.88', 'ui', 'yu', 'yu', 'yu', 5, 'uy', 5),
(39, '2019-05-22 13:52:04', '32.88', 'ui', 'yu', 'yu', 'yu', 5, 'uy', 5),
(40, '2019-05-22 13:52:04', '32.88', 'ui', 'yu', 'yu', 'yu', 5, 'uy', 5),
(41, '2019-05-22 13:52:04', '32.88', 'ui', 'yu', 'yu', 'yu', 5, 'uy', 5),
(42, '2019-05-22 13:52:05', '32.88', 'ui', 'yu', 'yu', 'yu', 5, 'uy', 5),
(43, '2019-05-22 13:52:05', '32.88', 'ui', 'yu', 'yu', 'yu', 5, 'uy', 5),
(44, '2019-05-22 13:52:05', '32.88', 'ui', 'yu', 'yu', 'yu', 5, 'uy', 5),
(45, '2019-05-22 13:52:05', '32.88', 'ui', 'yu', 'yu', 'yu', 5, 'uy', 5),
(46, '2019-05-22 13:52:05', '32.88', 'ui', 'yu', 'yu', 'yu', 5, 'uy', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productofinal`
--

CREATE TABLE `productofinal` (
  `idFactura` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `nombre` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productofinal`
--

INSERT INTO `productofinal` (`idFactura`, `idProducto`, `nombre`, `precio`, `cantidad`, `total`) VALUES
(30, 2, 'EL SEÃ?OR DE LOS ANILLOS: LA COM', 8.99, 1, 8.99),
(30, 6, 'EL PADRINO', 10.40, 2, 20.80),
(33, 1, 'EL REY LEÃ?N', 14.90, 1, 14.90),
(33, 2, 'EL SEÃ?OR DE LOS ANILLOS: LA COM', 8.99, 2, 17.98),
(38, 1, 'EL REY LEÃ?N', 14.90, 1, 14.90),
(38, 2, 'EL SEÃ?OR DE LOS ANILLOS: LA COM', 8.99, 2, 17.98),
(39, 1, 'EL REY LEÃ?N', 14.90, 1, 14.90),
(39, 2, 'EL SEÃ?OR DE LOS ANILLOS: LA COM', 8.99, 2, 17.98),
(40, 1, 'EL REY LEÃ?N', 14.90, 1, 14.90),
(40, 2, 'EL SEÃ?OR DE LOS ANILLOS: LA COM', 8.99, 2, 17.98),
(41, 1, 'EL REY LEÃ?N', 14.90, 1, 14.90),
(41, 2, 'EL SEÃ?OR DE LOS ANILLOS: LA COM', 8.99, 2, 17.98),
(42, 1, 'EL REY LEÃ?N', 14.90, 1, 14.90),
(42, 2, 'EL SEÃ?OR DE LOS ANILLOS: LA COM', 8.99, 2, 17.98),
(43, 1, 'EL REY LEÃ?N', 14.90, 1, 14.90),
(43, 2, 'EL SEÃ?OR DE LOS ANILLOS: LA COM', 8.99, 2, 17.98),
(44, 1, 'EL REY LEÃ?N', 14.90, 1, 14.90),
(44, 2, 'EL SEÃ?OR DE LOS ANILLOS: LA COM', 8.99, 2, 17.98),
(45, 1, 'EL REY LEÃ?N', 14.90, 1, 14.90),
(45, 2, 'EL SEÃ?OR DE LOS ANILLOS: LA COM', 8.99, 2, 17.98),
(46, 1, 'EL REY LEÃ?N', 14.90, 1, 14.90),
(46, 2, 'EL SEÃ?OR DE LOS ANILLOS: LA COM', 8.99, 2, 17.98);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descripcion` varchar(700) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `nombre`, `idCategoria`, `precio`, `descripcion`, `imagen`) VALUES
(1, 'EL REY LEÓN', 1, '14.90', 'El pequeño león Simba, tendrá que aprender el valor de la amistad, de las cosas buenas de la vida y también de la crueldad que encierra la naturaleza y la vileza de algunos seres. Tras la muerte de su padre, encontrará por el camino una serie de compañeros de viaje que le enseñarán el verdadero significado de todas estas cosas. La esencia de la película será la de siempre, aunque su presencia física en la pantalla ganará en grandeza.', 'http://es.web.img3.acsta.net/cx_120_160/b_1_d6d6d6/medias/nmedia/18/68/20/31/19785394.jpg'),
(2, 'EL SEÑOR DE LOS ANILLOS: LA COMUNIDAD DEL ANILLO', 1, '8.99', 'El joven y tímido hobbit, Frodo Bolsón, hereda un anillo. Lejos de ser una simple baratija, se trata del Anillo único, un instrumento de poder que permitiría a Sauron, el Señor Oscuro, reinar en la Tierra Media y convertir en esclavos a sus habitantes. Frodo, con la ayuda de una Compañía formada por hobbits, hombres, un mago, un enano y un elfo, tiene la misión de llevar el Anillo viajando por toda la Tierra Media hasta el Monte del Destino, lugar donde fue forjado, y destruirlo para siempre. Un tal periplo supone aventurarse muy lejos en Mordor, la tierra del Señor Oscuro, donde se concentra su ejército de orcos maléficos... La Compañía, no solo debe combatir las fuerzas externas del mal, s', 'http://es.web.img2.acsta.net/c_215_290/medias/nmedia/18/89/67/45/20061512.jpg'),
(3, 'STAR WARS : EPISODIO V - EL IMPERIO CONTRAATACA', 1, '16.19', 'Luke Skywalker junto a R2D2 acuden al planeta Dagobah para que el legendario maestro Yoda, le convierta en un verdadero maestro Jedi. Mientras, el astuto piloto Han Solo, la valiente princesa Leia y el simpático C3PO destruyen la Estrella de la Muerte. Parece que todo ha terminado, pero el terrible Lord Darth Vader ha escapado, sigue vivo y prepara una trampa para las tropas imperiales. Además hará todo lo posible por que el joven Luke se pase al lado oscuro.', 'http://es.web.img3.acsta.net/c_215_290/medias/nmedia/18/72/73/89/20535462.jpg\r\n'),
(4, 'GLADIATOR (EL GLADIADOR)', 1, '6.09', 'En el año 180 el Imperio Romano controla todo el mundo conocido hasta la fecha. Máximo, interpretado por el ya conocido Russell Crowe, es un General romano muy importante para el Emperador Marco Aurelio, pues sólo él ha conseguido victoria tras victoria, destacando por su valentía, dedicación y lealtad al Imperio. Cómodo, el hijo de Marco Aurelio, está celoso del prestigio de Máximo y del amor que le profesa su padre, así que cuando asume el poder de manera inesperada, ordena el arresto y la ejecución del general. Máximo consigue escapar de sus opresores, pero no puede impedir que asesinen a su familia. Posteriormente, es capturado por un mercader de esclavos y se convierte en gladiador, pre', 'http://es.web.img3.acsta.net/c_215_290/medias/nmedia/18/70/92/02/20149073.jpg'),
(5, 'VENGADORES: INFINITY WAR', 1, '11.95', 'Un nuevo peligro acecha procedente de las sombras del cosmos. Thanos, el infame tirano intergaláctico, tiene como objetivo reunir las seis Gemas del Infinito, artefactos de poder inimaginable, y usarlas para imponer su perversa voluntad a toda la existencia. Los Vengadores y sus aliados tendrán que luchar contra el mayor villano al que se han enfrentado nunca, y evitar que se haga con el control de la galaxia. En su nueva e impactante aventura, el destino de la Tierra nunca había sido más incierto, las Gemas del Infinito estarán en juego, unos querrán protegerlas y otros controlarlas, ¿quién ganará?', 'http://es.web.img3.acsta.net/c_215_290/pictures/18/03/16/15/33/3988420.jpg'),
(6, 'EL PADRINO', 2, '10.40', 'El Padrino narra la historia de un hombre, Vito Corleone, el capo más respetado de Nueva York. Déspota benevolente, implacable con sus rivales, inteligente y fiel a los principios del honor y la amistad. Don Corleone dirige un emporio que abarca el fraude y la extorsión, los juegos de azar y el control de los sindicatos. La vida y negocios de Don Corleone, así como los de su hijo y heredero Michael, conforman el eje de esta magistral obra.', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQkuS8okZe5Od9zCnrg_CxKa_dpp6868YU7Oo_oz0FfOpcOwDYHAZe_4OymESgVlN7Ks__m5QnwPRr257N7zc8rThiI_9OoM4qzBLUGHMuR--Op7NrynCw&usqp=CAc'),
(7, 'TRIBULACIONES DE UN CHINO EN CHINA', 2, '3.00', 'Al chino rico Kin-Fo, residente en Shangai, se le reprocha que no aprecie la vida en lo que vale. Kin-Fo contratará su propia muerte, lo que lo llevará a un sinnúmero de aventuras por toda la China.', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcT4QLT87BqwTNnPNqoUoFltibSRUV6AbLsuM78Wzw4m6snuX3MR2ZznXRJM5ZfZw1UczWwY_UzA_-l_VIS77EITQ1u1Lt6SHONAOxJ26H1Qg80PFDLY3_GT&usqp=CAc'),
(8, 'CRIMEN Y CASTIGO', 2, '6.33', 'Cuya firme creencia en que los fines humanitarios justifican la maldad le conduce al asesinato de una usurera. Pero, desde que comete el crimen, la culpabilidad será una pesadilla constante con la que el estudiante será incapaz de convivir.', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRixPQqEIzZTQoIRsIBggMKtRiVC27YfxyYlv_BqRh5aZ-jPYfzMAI5A-SD47Nz_n6PCFm5naZYuHgbFStQQG6ifGuhozHAJpOjcQ4ja5M&usqp=CAc'),
(9, 'CUENTOS INCONCLUSOS', 2, '10.40', 'Es una colección de relatos sobre la historia de la Tierra Media desde los Primeros Días hasta el fin de la Guerra del Anillo. Entre esos relatos se cuentan el animado discurso en que Gandalf explica cómo llegó a enviar a los Enanos a la famosa reunión de Bolsón Cerrado; la emergencia de Ulmo, el dios del mar, ante los ojos de Tuor, la historia de Númenor antes de su caída. El libro contiene además todo lo que se sabe de asuntos tales como los Cinco Magos, las Palantiri; la organización militar de los Jinetes de Rohan; la leyenda de Amroth, y el único mapa de Númenor dibujado por J.R.R. Tolkien. ', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTTV_9oM2VUT_1uJRFxTz--tMTZdc2J_i1iaq5U9LerAr16njuylWNxwzihGp_Lclm-K4foFm6FLh6B67JCtFJXvzFPvqkHW6paODQ9lSsU387nfPQeplo&usqp=CAc'),
(10, 'LA MUJER DEL RELOJ', 2, '13.30', 'Febrero de 1808. Las tropas francesas llevan acantonadas en España. Se respiran aires inciertos y nadie sabe cuáles son las verdaderas intenciones de Napoleón. Cuando Franz Giesler, partícipe de una conspiración que mantiene en jaque al Imperio francés, aparece cruelmente asesinado, su hijo emprende un largo y peligroso viaje a través del país en guerra. El rastro de su padre le sumergirá en una trama de proporciones insospechadas, un complejo mecanismo de relojería cuyo eje, un terrible secreto, podría hacer tambalear el futuro de Europa. A lo largo de su búsqueda, desde la Vitoria ocupada, pasando por el Cádiz de las Cortes, hasta el Madrid de la hambruna de 1811 o la desconocida isla pris', 'https://images-na.ssl-images-amazon.com/images/I/516jPH1WE1L._SX331_BO1,204,203,200_.jpg'),
(11, 'Huawei P30 Lite + Huawei Free Buds', 5, '349.00', 'Smartphone de 6.15\" (WiFi, Kirin 710, RAM de 4 GB, memoria interna de 128 GB, cámara de 48 + 2 + 8 MP, Android 9), color azul', 'https://images-na.ssl-images-amazon.com/images/I/61NTa9CB8zL._SL1000_.jpg'),
(12, 'Kindle', 5, '69.99', 'Pantalla táctil de 6\'\' (15,2 cm), sin luz integrada, wifi, blanco (8.ª generación, modelo anterior)', 'https://images-na.ssl-images-amazon.com/images/I/61LAiSSymaL._SL1000_.jpg'),
(13, 'HP Notebook 15-da0160ns', 5, '389.99', 'Ordenador portátil 15.6\" HD (Intel Core i3-7020U, 8GB RAM, 1TB HDD, Intel Graphics, Windows 10) Color Blanco - Teclado QWERTY Español', 'https://images-na.ssl-images-amazon.com/images/I/816H00FHCPL._SL1500_.jpg'),
(14, 'HP Envy 5030', 5, '65.00', 'Impresora multifunción inalámbrica (Tinta, Wi-Fi, copiar, escanear, 1200 x 1200 PPP, Modo silencioso, Incluido 4 Meses de HP Instant Ink) Color Negro', 'https://images-na.ssl-images-amazon.com/images/I/71IhZXunGEL._SL1500_.jpg'),
(15, 'Rampow Cable Micro USB', 5, '6.11', 'Carga Rápida 1M [2-Unidades] GARANTÍA DE por Vida - 2.4A Cable USB Micro USB Compatible con Android, Samsung Galaxy, Kindle, Sony, Nexus, Motorola y más - Gris Espacial', 'https://images-na.ssl-images-amazon.com/images/I/61x6Q8kSEIL._SL1500_.jpg'),
(16, 'AMIX - WAXYGO 2 KG', 3, '30.50', 'Waxy Go! de Amix Nutrition es un único en la gama de AMIX, ya que es el único que está basado en almidón de maíz. Waxy Go! tiene una fórmula que la crea en un  carbohidrato que rápidamente sale del estómago para empezar a nutrir tus músculos. Waxy Go! te ayudará a incrementar rápidamente tus niveles de glucógeno muscular lo que evitar la degradación de tu masa muscular si se toma post-entreno.', 'https://www.fiteo.es/2318-large_default/amix-waxy-go-2-kg.jpg'),
(17, 'SUDADERA DE TRAINING DRY ACADEMY NEGRO', 3, '29.95', 'Sudadera de entrenamiento de la línea Dry Academy de Nike. Cremallera 1/4. Sistema Dri-FIT. Cuello alto. Paneles laterales de malla. Tejido: 100% poliéster.', 'https://res.cloudinary.com/futbol-factory/image/upload/c_pad,h_95,w_95/v1476890340/productos/178306_1.jpg'),
(18, 'ZAPATILLA POD-S3.1', 3, '69.97', 'La P.O.D. System traslada al presente los mejores sistemas de amortiguación de los 90. Esta zapatilla combina el legado de adidas con una parte superior de punto que te proporciona un ajuste cómodo y seguro.', 'https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/57e2c8d6256c4aacbb32a92d009db756_9366/Zapatilla_POD_S3.1_Verde_B37368_01_standard.jpg'),
(19, 'New Balance Tekela Magique FG', 3, '70.00', 'Material exterior: Cuero sintético. Revestimiento: Sintético. Material de la suela: Sintético. Cierre: Cordones', 'https://images-na.ssl-images-amazon.com/images/I/81lzPVSfoHL._UX675_.jpg'),
(20, 'MIXED HEADBANDS 3 PACK', 3, '13.95', 'Material exterior: 65% nailon, 29% elastano, 6% otras fibras. Estampado: Estampado', 'https://mosaic03.ztat.net/vgs/media/packshot/pdp-zoom/N1/24/1N/04/KQ/11/N1241N04K-Q11@12.jpg'),
(21, 'Juego PS4 Days Gone', 4, '58.99', 'En un mundo devastado por una pandemia global, Deacon evita los campamentos \'seguros\' en plena naturaleza de los últimos supervivientes de la humanidad y prefiere jugársela por las carreteras repletas de saqueadores.', 'https://www.worten.es/i/79c70904e32c68ab6dbb4f4646f2268a2dc836c8.jpg'),
(22, 'Marvel’s Spider-Man PS4', 4, '34.99', 'Protagonizado por uno de los superhéroes más emblemáticos del mundo, Marvel\'s Spider-Man incluye las habilidades acrobáticas, la improvisación y el lanzamiento de redes por los que es conocido el trepamuros, al tiempo que introduce nuevos elementos nunca antes vistos en un juego de Spider-Man. Muévete haciendo parkour y utilizando el entorno o prueba el nuevo sistema de combate y escenas repletas de acción. Este es un juego de Spider-Man como nunca antes has visto.', 'https://thumb.pccomponentes.com/w-530-530/articles/15/159008/01.jpg'),
(23, 'UFC PS4', 4, '47.49', 'EA SPORTS™ UFC® 3 revoluciona los movimientos de lucha con Real Player Motion Tech, una nueva tecnología de animación que te ofrece los movimientos más fluidos y con mejor respuesta de todos los juegos deportivos. Hemos vuelto a capturar cada puñetazo, patada, bloqueo y contraataque con una tecnología de animación vanguardista para obtener el máximo realismo y respuesta, ofreciendo la experiencia de lucha más estratégica y competitiva de la historia de la franquicia.', 'https://thumb.pccomponentes.com/w-530-530/articles/14/149451/193883822.jpg'),
(24, 'Grand Theft Auto V PS4', 4, '17.95', 'Vive la historia de Trevor, Michael y Franklin a través de Los Santos y el condado de Blaine. Juega la campaña principal o piérdete entre sus calles con las innumerables tareas y actividades opcionales a las que podrás acceder. Los Santos, una extensa y soleada metrópolis llena de gurús de autoayuda, aspirantes a estrellas y famosos en decadencia, en su día la envidia del mundo occidental, lucha ahora por mantenerse a flote en una era de incertidumbre económica y \"realities\" baratos. En medio de la confusión, tres criminales muy diferentes lo arriesgarán todo en una serie de atrevidos y peligrosos atracos que marcarán sus vidas.', 'https://thumb.pccomponentes.com/w-530-530/articles/7/71867/grand-theft-auto-v-ps4.jpg'),
(25, 'Dark Souls Trilogy', 4, '44.95', 'Dark Souls es un videojuego de rol de acción, desarrollado por la empresa From Software para las plataformas PlayStation 3, Xbox 360 y Microsoft Windows, distribuido por Namco Bandai Games. Anteriormente conocido como Project Souls, es el segundo videojuego de la serie Souls.', 'https://images-na.ssl-images-amazon.com/images/I/81LeH2Fh8nL._SL1500_.jpg'),
(31, 'dhte', 4, '3.00', 'trw', 'ehry'),
(33, 'los androides sueñan con ovejas electricas', 2, '8.00', 'mu largaaaa', 'https://imagessl5.casadellibro.com/a/l/t5/05/9788445000205.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idFactura`);

--
-- Indices de la tabla `productofinal`
--
ALTER TABLE `productofinal`
  ADD KEY `idFactura` (`idFactura`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `idFactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productofinal`
--
ALTER TABLE `productofinal`
  ADD CONSTRAINT `productofinal_ibfk_1` FOREIGN KEY (`idFactura`) REFERENCES `factura` (`idFactura`) ON DELETE CASCADE,
  ADD CONSTRAINT `productofinal_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
