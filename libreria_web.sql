-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 06-07-2020 a las 23:42:27
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreria_web`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

DROP TABLE IF EXISTS `carrito`;
CREATE TABLE IF NOT EXISTS `carrito` (
  `idCarrito` int(255) NOT NULL AUTO_INCREMENT,
  `idLibro` int(255) NOT NULL,
  `cantidad` int(255) NOT NULL,
  PRIMARY KEY (`idCarrito`),
  KEY `idLibro` (`idLibro`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`idCarrito`, `idLibro`, `cantidad`) VALUES
(63, 49, 0),
(64, 48, 0),
(65, 47, 0),
(66, 46, 0),
(67, 45, 0),
(68, 44, 0),
(69, 43, 0),
(70, 42, 0),
(71, 41, 0),
(72, 40, 0),
(73, 39, 0),
(74, 38, 0),
(75, 37, 0),
(76, 36, 0),
(77, 35, 0),
(78, 34, 0),
(79, 33, 0),
(80, 32, 0),
(81, 31, 0),
(82, 30, 0),
(83, 29, 0),
(84, 28, 0),
(85, 27, 0),
(86, 26, 0),
(87, 25, 0),
(88, 24, 0),
(89, 23, 0),
(90, 22, 0),
(91, 21, 0),
(92, 20, 0),
(93, 19, 0),
(94, 18, 0),
(95, 17, 0),
(96, 16, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `idComentario` int(255) NOT NULL AUTO_INCREMENT,
  `texto` text NOT NULL,
  `nombreUs` varchar(255) NOT NULL,
  `nombreLibro` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `calificacion` int(255) NOT NULL,
  PRIMARY KEY (`idComentario`),
  KEY `nombreLibro` (`nombreLibro`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`idComentario`, `texto`, `nombreUs`, `nombreLibro`, `fecha`, `calificacion`) VALUES
(14, 'No me gusto mucho', 'Jaime', 'Te Regalare Las Estrellas', '7-5-2020', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

DROP TABLE IF EXISTS `libros`;
CREATE TABLE IF NOT EXISTS `libros` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `description` text,
  `precio` int(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `editorial` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `nombre`, `description`, `precio`, `imagen`, `editorial`, `categoria`, `stock`, `rating`, `autor`) VALUES
(16, 'Steve Jobs', 'La biografía definitiva de Steve Jobs La muerte de Steve Jobs conmocionó al mundo. Tras entrevistar a Jobs en más de cuarenta ocasiones en sus últimos años, además de a un centenar de personas de su entorno, familiares, amigos, adversarios y colegas, Walter Isaacson nos presenta la única biografía escrita con la colaboración de Jobs, el retrato definitivo de uno de los iconos indiscutibles de nuestro tiempo, la crónica de la agitada vida y de la abrasiva personalidad del genio cuya creatividad y energía revolucionaron seis industrias: la informática, el cine de animación, la música, la telefonía, las tabletas y la edición digital. Aquí, Jobs habla con una sinceridad a veces brutal sobre la gente con la que trabajó y contra la que compitió. De igual modo, sus amigos, rivales y colegas ofrecen una visión sin edulcorar de las pasiones, los demonios, el perfeccionismo, los deseos, el talento, los trucos y la obsesión por controlarlo todo que modelaron su visión empresarial y los innovadores productos que logró crear. Su historia, por tanto, está llena de enseñanzas sobre innovación, carácter, liderazgo y valores. La vida de un genio capaz de enfurecer y seducir a partes iguales. «El fallecimiento de Steve Jobs ha precipitado un alud de libros sobre su figura. De todos ellos, la aproximación más completa e interesante al personaje es la de Isaacson.»', 12500, 'stevejobs.jpg', 'Simon & Schuster', 'biografia', '200', '9.5', 'Walter Isaacson'),
(17, 'Narraciones extraordinarias', 'Cuentos: El gato negro, Los anteojos, Manuscrito encontrado en una botella, El corazón delator, Los asesinatos de la rue Morgue, Eleonora, El cuervo, El escarabajo de oro, Silencio, El entierro prematuro, Berenice, El barril del amontillado, El retrato ovalado, La verdad en el caso del señor Valdemar, La máscara de la muerte roja, El demonio de la perversidad, El pozo y el péndulo, La carta robada, La caída de la casa Usher, Ligeia, La caja oblonga, Metzengerstein, Morella, El cottage de Landor, Los dominios de Arnheim, La cita, El diablo en el campanario.', 18000, 'narraciones.jpg', 'Zig-Zag', 'horror', '2500', '8', 'Edgar Alan Poe'),
(18, 'El elfo oscuro', 'Por primera vez, en un solo volumen, la trilogía El elfo Oscuro de R.A. Salvatore, que en su día se publicó en tes libros: La morada, EL Exilio y El refugio. Prizzt Do´Urden, el Elfo Oscuro, es uno de los personajes más emblemáticos del universo de los Reinos Olvidados. R. A. Salvatore nos cuenta sus orígenes en la exótica ciudad subterránea de Menzoberranzan, donde moran los elfos oscuros desde hace milenios, su posterior exilio y aventuras en los túneles de la Antípoda Oscura, siempre huyendo de la venganza de su familia y de la maligna Reina Araña, y, por último, su salida al mundo de la superficie, donde buscará ser aceptado como un igual entre las razas del exterior.', 22000, 'thedarkelf.jpg', 'Timun Mas', 'fantasia', '400', '8.5', 'R.E.Salvatore'),
(19, 'Eragon', 'Eragon es el primer titulo de la trilogia de El Legado, que tiene como protagonistas a este valiente joven y a su indomable dragona Saphira. En el reino legendario de Alagaësia la guerra se esta gestando. Los Jinetes protectores de la paz del Imperio y los unicos capaces de controlar a los inteligentes dragones, se han extinguido o han pasado a formar parte de las tropas del malvado rey Galbatorix. Los elfos hace tiempo que se han exiliado a un lugar oculto y los vardenos, un grupo disidente, se ocultan en ciudades protegidas. Cuando Eragon, un joven de 15 anos que vive en una pequena aldea, se encuentra con una piedra preciosa en medio del bosque a donde ha ido a cazar, poco se espera que ese suceso vaya a cambiar su vida y el destino de Alagaësia. Lo unico que desea es venderla para asi asegurar la subsistencia de su familia durante el duro invierno. Sin embargo, una noche la gema se rompe y lo que sale de ella lo llevara a un viaje que lo convertira en heroe. Podra Eragon tomar la responsabilidad de los legendarios jinetes de dragones? La esperanza del Imperio descansa en sus manos...', 25990, 'eragon.jpg', 'Rocabolsillo', 'fantasia', '300', '7.8', 'Christopher Paolini'),
(20, 'Weona tú Podí', 'Las caídas, errores, fracasos y sacadas de chucha son parte de la vida, pero también los aciertos, las veces que nos levantamos y lo que aprendemos. Carmen Castillo (@carmentuitera) sabe mejor que nadie lo que significa superar la adversidad y conoce la fuerza que puede tener una frase. Con el humor y la franqueza que la caracterizan, en este libro realiza una radiografía de su vida, desde sus momentos más bajos hasta sus mayores (y a veces inesperados) logros. Empápate de los diez mandamientos del shine, donde Carmen explica cómo ve y vive la vida. Encontrarás distintas actividades y frases motivacionales a página completa, para que las pegues donde quieras.', 8930, 'weona.jpg', 'Planeta', 'autoayuda', '23232', '2', 'Carmen Castillo'),
(21, 'Las Emociones me Tienen Gordo y Enfermo', '¿Estás tomando medicamentos y no sientes ninguna mejoría? Este libro puede ser el viaje que cambiará tu vida Este libro es un nuevo viaje. Uno que hizo José junto a cinco personas para descubrir el origen emocional de condiciones y enfermedades tan diversas como obesidad, fibromialgia, estrés, diabetes, hipotiroidismo o esclerosis múltiple, pero también, y más importante, cómo resolverlas. Así como tú, hay millones de personas sufriendo día a día dolores y malestares inexplicables. La mayoría no encuentra en la medicina moderna respuestas ni esperanzas. Tras sus exitosos libros Los mitos me tienen gord@ y enferm@ y Tu salud en los nuevos tiempos, Pedro Grez y Sergi Recasens vuelven para contar una nueva historia para sanar a l@s chilen@s.', 5032, 'lasemociones.jpg', 'Planeta', 'autoayuda', '78957', '5.2', 'Sergi Recasens'),
(22, 'Muchas Vidas Muchos Maestros', 'El doctor Brian Weiss, jefe de psiquiatría del hospital Mount Sinai de Miami, relata en éste, si primer libro, una asombrosa experiencia que cambió por completo su propia vida y su visión de la psicoterapia.', 11050, 'muchasvidas.jpg ', 'Ediciones B', 'autoayuda', '2250', '8.2', 'Brian Weiss'),
(23, 'A. M. A. R. (Atender, Mentalizar, Automentalizar y Regular)', '¿Qué es lo que más deben tener presente los padres, profesores y, en fin, todos quienes ayudan en el cuidado de los niños? Parece obvio, pero en un mundo en el que todo gira en torno a los adultos, a veces olvidamos que en el centro de dicho cuidado están justamente: ayudar al lector a ver el mundo de los menores desde sus propias necesidades, intereses, momento del desarrollo y experiencias. Para esto, Felipe Lecannelier, psicólogo clínico e investigador experto en apego, propone el A.M.A.R., una metodología desarrollada durante 15 años que se centra en las cuatro capacidades primordiales (Atender, Mentalizar, Automentalizar y Regular)', 11220, 'AMAR.jpg', 'Ediciones B', 'autoayuda', '12345', '8.2', 'Felipe Lecannelier '),
(24, 'Felicidad Solida. Sobre la Construcción de una Felicidad Perdurable', 'Solemos pensar en la felicidad como una especie de alegría, bienestar, contento, algo placentero y agradable. Una condición que la sociedad de consumo e individualismo en que hoy vivimos propugna se puede alcanzar a través de la voluntad, con la sola fuerza del deseo. El actualmente llamado “pensamiento positivo” sostiene que se podría, obtener con solo seguir los consejos de los innumerables manuales de autoayuda que abundan en el mercado. Sin embargo, lo que vemos son sociedades en las que el individualismo y el egocentrismo, progresivamente han instalado la desconfianza y la corrupción, y donde cada vez más gente se siente sola, infeliz y frustrada.', 10500, 'felicidadsol.jpg', 'Zig-Zag', 'autoayuda', '1264968', '5.2', 'Ricardo Capponi'),
(25, 'Cuentos de Buenas Noches Para Niñas Rebeldes', 'Cuentos de buenas noches para niñas rebeldes reinventa los cuentos de hadas. Elizabeth I, Coco Chanel, Marie Curie, Frida Kahlo, Serena Williams y otras mujeres extraordinarias narran la aventura de su vida, inspirando a niñas y no tan niñas a soñar en grande y alcanzar sus sueños; además, cuenta con las magníficas ilustraciones de sesenta mujeres artistas de todos los rincones del planeta. Un libro que debe estar en la mesa de noche de todas las niñas o mujeres jóvenes que conozcas.', 12000, 'niñasreveldes.jpg', 'Planeta', 'fantasia', '12568', '8.6', 'Elena Favilli'),
(26, 'Los Compás y el Diamantito Legendario', 'Mike, Timba y Trolli se merecen unas vacaciones, así que lo han preparado todo para pasar unos días de descanso en una isla tranquila y alejada del ajetreo diario. De manera accidental, encontrarán un pergamino que los pondrá sobre la pista de un extraño tesoro, relacionado con viejas leyendas locales que nos hablan', 10000, 'loscompas.jpg', 'Martinez De Roca', 'fantasia', '12313', '4.2', 'Varios autores'),
(27, 'El Silmarillion', 'El Silmarillion cuenta la historia de la Primera Edad, el antiguo drama del que hablan los personajes de El señor de los anillos, y en cuyos acontecimientos algunos de ellos tomaron parte, como Elrond y Galadriel... Una obra de auténtica imaginación, una visión inspirada, legendaria o mítica, del interminable conflicto entre el deseo de poder y la capacidad de crear. \"Invitando a que se le compare con las mitologías inglesas, alcanza la grandeza de un auténtico mito\". Financial Times \"Asombra que un solo hombre, en poco más de medio siglo de trabajo, haya llegado a convertirse en el equivalente creativo de todo un pueblo\". The Guardian ', 12000, 'silmari.jpg', 'Minotauro', 'fantasia', '53412', '8.3', 'J. R. R. Tolkien'),
(28, 'Aristóteles y Dante Descubren los Secretos del Universo', 'Aristóteles es introvertido y tímido. Dante es transparente y expresivo. Por motivos que parecen escapar a toda razón, estos dos chicos de diecisiete años se encuentran y construyen una amistad entrañable que les permitirá redefinir el mundo del otro y aprender a creer en ellos mismos para descubrir los secretos del universo. El escritor multipremiado, Benjamin Alire Sáenz, explora la lealtad y la confianza entre dos jóvenes que están aprendiendo a ser adultos en un escenario fronterizo tan mexicano como estadounidense. Juntos deberán crecer al mismo tiempo en que se adaptan a una sociedad que también está en búsqueda de su identidad.', 10300, 'aristoteles.jpg', 'Destino', 'fantasia', '523414', '5.7', 'Benjamin Alire Saenz '),
(29, 'Querido Evan Hansen', 'Evan Hansen creía varias cosas: Que jamás superaría sus ataques de ansiedad. Que a nadie le importarían sus problemas. Que nunca lograría conectar con alguien. Que siempre se sentiría vacío, excluido y decepcionado. Que a la gente solo le importa aparentar en las redes sociales. Se equivocaba en todas. Todo empezó́ con una carta que salió́ del corazón y cayó en manos erróneas... para acabar en una auténtica revolución por un mundo más amable. Ahora Evan tiene la oportunidad más importante de su vida: no solo de ser reconocido, sino de decir lo que importa, crear vínculos, dejar huella... e incluso entender ese curioso fenómeno llamado amor.', 12000, 'vanhasen.jpg', 'Universo', 'fantasia', '514352', '3.1', 'Val Emmich'),
(30, 'El Silencio de la Ciudad Blanca. Trilogía de la Ciudad Blanca 1', 'Tasio Ortiz de Zárate, el brillante arqueólogo condenado por los extraños asesinatos que aterrorizaron la tranquila ciudad de Vitoria hace dos décadas, está a punto de salir de prisión en su primer permiso cuando los crímenes se reanudan de nuevo: en la emblemática Catedral Vieja de Vitoria, una pareja de veinte años aparece desnuda y muerta por picaduras de abeja en la garganta. Poco después, otra pareja de veinticinco años es asesinada en la Casa del Cordón, un conocido edificio medieval. El joven inspector Unai López de Ayala –alias Kraken–, experto en perfiles criminales, está obsesionado con prevenir los crímenes antes de que ocurran, una tragedia personal aún fresca no le permite encarar el caso como uno más. Sus métodos poco ortodoxos enervan a su jefa, Alba, la subcomisaria con la que mantiene una ambigua relación marcada por los crímenes…', 10260, 'laciudad.jpg', 'Cross Books', 'horror', '23123', '2.1', 'Eva Garcia Saenz'),
(31, 'EL VISITANTE', 'Un niño de once años ha sido brutalmente asesinado. Todas las pruebas apuntan a uno de los ciudadanos más queridos de Flint City: Terry Maitland, entrenador en la liga infantil, profesor de literatura, marido ejemplar y padre de dos niñas. El detective Ralph Anderson ordena su detención. Maitland tiene una coartada firme que demuestra que estuvo en otra ciudad cuando se cometió el crimen, pero las pruebas de ADN encontradas en el lugar de los hechos confirman que es culpable. Ante la justicia y la opinión pública Terry Maitland es un asesino y el caso está resuelto. Pero el detective Anderson no está satisfecho.', 11000, 'elvisitante.jpg', 'Cross Books', 'horror', '31412', '5.2', 'Sthephen King'),
(32, 'Bajo cero', 'Una aventura salvaje y aterradora sobre tres desconocidos que deben trabajar juntos para contener un organismo altamente contagioso y mortal. Con una acción trepidante, un agudo sentido del humor y una brillante muestra de personajes y destreza narrativa, Bajo cero es un thriller único de lectura altamente disfrutable y adictiva. Hace treinta y dos años Robert Diaz, que formaba parte de un equipo secreto del Pentágono, viajó al desierto australiano para investigar un posible ataque bioquímico. Lo que encontró era mucho peor: un organismo similar a un hongo con altas capacidades para mutar y un poder destructor epidémico. Entonces se las arregló para contenerlo en una cámara de frío subterránea en el interior de unas instalaciones militares altamente protegidas. Ahora, esas instalaciones del gobierno han sido desmanteladas y vendidas a una empresa de almacenamiento.', 7000, 'bajocero.jpg', 'Cross Books', 'horror', '131241', '7.3', 'David Koepp'),
(33, 'Las chicas desaparecidas de paris', 'De la autora best seller deEl vagón de los huérfanos llega una nueva novela basada en hechos reales de la Segunda Guerra Mundial Las chicas perdidas de París es una emotiva historia de amistad y traición durante la Segunda Guerra Mundial, inspirada en hechos reales, de la autora best seller internacionalPam Jenoff. 1940: Con el mundo en guerra, Eleanor Trigg lidera un misterioso grupo de agentes secretas femeninas en Londres. Doce de estas mujeres son enviadas para ayudar a la Resistencia francesa. Nunca regresaron a casa. 1946: Al pasar por la Estación Central, en Nueva York, Grace Healey encuentra una maleta abandonada escondida debajo de un banco. La maleta contiene una docena de fotografías, cada una de una mujer diferente.', 32000, 'chicasparis.jpg', 'Cross Books', 'horror', '41324', '3.4', 'Pam Jenoff'),
(34, 'A ciegas', 'NO ABRAS LOS OJOS. Hay algo ahí fuera. Algo espantoso, que hace que la gente enloquezca y se suicide ante su sola visión. Nadie sabe qué es ni de dónde viene. Cinco años después de que diera comienzo la pesadilla, los pocos supervivientes que quedan viven refugiados en el interior de casas y edificios, protegidos por puertas cerradas y ventanas con las cortinas echadas. Malorie, que ha conseguido sobrevivir en una casa abandonada junto a sus dos hijos, decide abandonar la seguridad de su refugio para emprender un viaje por el río hacia un lugar mejor. En esta peligrosa odisea a ciegas, Malorie sólo podrá confiar en su instinto y en el entrenado oído de los niños, que no tardarán en descubrir que algo los sigue. Pero, ¿qué es? Inmersa en la oscuridad, rodeada de sonidos, familiares unos, estremecedores otros, Malorie se embarca en una tremenda odisea; un viaje que le llevará a un mundo sin visión y de vuelta a su pasado. En un mundo que ha enloquecido, ¿se puede confiar en alguien?', 51000, 'aciegas.jpg', 'Cross Books', 'horror', '41231', '4.2', 'Josh Malerman'),
(35, 'A Todos los Chicos de los que me Enamoré', 'Lara Jean guarda sus cartas de amor en una caja. No son cartas que le hayan enviado, las ha escrito ella, una por cada chico del que se ha enamorado. En ellas se muestra tal como es, porque sabe que nadie las leerá. Hasta que un día alguien las envía por equivocación y la vida amorosa de Lara Jean pasa de ser imaginaria a estar totalmente fuera de control.', 54110, 'Atodoschicos.jpg', 'Universo', 'romance', '12451', '2.5', 'Jenny Han'),
(36, 'Pd. Todavia te Quiero (Libro #2)', 'Lara Jean no esperaba enamorarse. Mucho menos enamorarse en serio de Peter. Al principio era una fantasía. Pero de pronto, ya no es sólo eso, y ahora Lara Jean está muy confundida. Otro chico del pasado vuelve a su vida y lo que sentía por él también resurge. ¿Puede una chica estar enamorada de dos chicos a la vez?.', 12000, 'todavialoquiero.jpg', 'Universo', 'romance', '13241324', '1.3', 'Jenny Han'),
(37, 'Te Regalare Las Estrellas', 'En 1937 Alice Wright toma la impulsiva decisión de abandonar Inglaterra para casarse con un apuesto y rico americano en Baileyville, Kentucky. Pero su nueva vida en la pequeña ciudad no es lo que esperaba hasta que conoce a Margery O\'Hare, quien se ha propuesto llevar el milagro de los libros hasta el último rincón de la región. A caballo, atravesando montañas y bosques salvajes y luchando contra el prejuicio y la ignorancia, Alice, Margery y sus compañeras se convierten en bibliotecarias itinerantes al tiempo que descubren la libertad, la amistad, el amor y una vida que por fin les pertenece.', 10000, 'Teregale.jpg', 'Universo', 'romance', '412343', '9.0', 'Jojo Moyes'),
(38, 'Firelight: Chica de Fuego', 'n secreto ancestral. Ella y él son enemigos mortales. Un amor imposible los quema… Jacinda no es una chica común. Desciende de dragones que pueden adquirir forma humana y ocultarse de los predadores que los persiguen. Su clan la tiene bajo control, ya que ella es la última de su especie: una bella y poderosa draki de fuego, comprometida con el príncipe heredero. Per un encuentro fortuito obliga a Jacinta y a su hermana gemela a huir de su comunidad y adentrarse en el mundo de los humanos. Ella luchará por evitar que sus instintos se apaguen, aunque esto signifique acercarse a su adversario, un enemigo tan atractivo como peligroso, capaz de encenderla con solo mirarla. Una irresistible atracción se enciende en esta primera novela, en la que una chica superará todas las prohibiciones y cruzará una ancestral línea divisoria para defender sus sentimientos, su esencia y su libertad.', 51000, 'chicadefuego.jpg', 'Universo', 'romance', '24112', '1.2', 'Sophie Jordan '),
(39, 'La Sirena', '¿Será capaz Kahlen de arriesgarlo todo para seguir los latidos de su corazón?Una chica con un secreto. El chico de sus sueños. Un océano entre ambos. Kiera Cass ha cautivado a millones de lectoras con su serie La Selección. Ahora llega su nueva novela, La Sirena, con la que te sumergirás en un océano de aventuras y emoción. Kahlen es una sirena, obligada a servir a Oceania atrayendo seres humanos a ... Ver más Ocultar ¿Será capaz Kahlen de arriesgarlo todo para seguir los latidos de su corazón?Una chica con un secreto. El chico de sus sueños. Un océano entre ambos. Kiera Cass ha cautivado a millones de lectoras con su serie La Selección. Ahora llega su nueva novela, La Sirena, con la que te sumergirás en un océano de aventuras y emoción. Kahlen es una sirena, obligada a servir a Oceania atrayendo seres humanos a las acuosas tumbas con su voz, una voz mortal para cualquiera que la escuche. Akinli es humano. Un chico amable y guapo. Él es todo lo que Kahlen jamás había soñado. Enamorarse pone a ambos en peligro, pero Kahlen no puede soportar mantenerse alejada de él.', 5230, 'lasirena.jpg', 'Universo', 'romance', '21412', '4.2', 'Kiera Cass '),
(40, 'El Viaje de Cilka', 'Con solo dieciséis años, la prisionera judía Cilka Klein fue convertida en la concubina de uno de los comandantes de Auschwitz- Birkenau. Se salvó de morir de hambre, enfermedad o en las cámaras de gas, pero, tras la liberación, fue acusada de colaboradora y espía ante la NKVD, la brutal policía secreta soviética. Y así, por segunda vez en tres años, Cilka se encuentra de nuevo hacinada en un tren de ganado que la transportará a Vorkuta, el gulag de Siberia situado a noventa y nueve millas del Círculo en el que deberá cumplir con más de diez años de condena de trabajos forzados. ', 24500, 'cilka.jpg', 'Bibliogras', 'biografia', '14233', '3.1', 'Heather Morris'),
(41, 'Frida Kahlo: Una Biografía', 'Una preciosa biografía de la pintora mexicana Frida Kahlo ilustrada con las evocadoras imágenes de María Hesse, ganadora del Premio de la Fundación Nacional del Libro Infantil y Juvenil de Brasil. «Pies, para qué los quiero si tengo alas para volar». Frida fue algo más que dolor y angustia. Quiso ser fiel a su arrolladora personalidad y se convirtió en una artista llena de vida. Su pintura es fiesta, color, sangre y vida. Fue una luchadora que decidió ponerse el mundo por montera y una mujer apasionada que no se conformó con estar a la sombra de su gran amor, el pintor Diego Rivera. Frida decidió vivir con intensidad, tanto las desgracias como las alegrías que le deparó la existencia. Inspirado en las vivencias de la icónica pintora mexicana, este libro ofrece un hermoso paseo ilustrado por su vida y su obra. De Frida Kahlo. Una biografía se ha dicho...«Un libro delicioso, profusamente ilustrado. Tanto el imaginario onírico, femenino y organicista de la pintora mexicana como su leve ingenuismo y su visceral romanticismo, [...] asimilados por Hesse en ese estilo inconfundible que busca fusionar lo sintético con lo orgánico pero que rechaza todo el barroquismo de Kahlo.»Javier Rubio Nomblog, ABC (Cultural) «Una edición muy cuidada de Lumen en la que Hesse ha trabajado durante un año. ', 32000, 'frida.jpg', 'Bibliogras', 'biografia', '42341', '7.5', 'Maria Hesse'),
(42, 'Allende. La Biografia', 'El 11 de septiembre de 1973 Salvador Allende se convirtió en un mi to del siglo XX. Las estremecedoras imágenes del bombardeo de La Moneda, la belleza casi poética y el dramatismo de sus últimas palabras, su inmolación en defensa del desarrollo democrático de Chile y del proyecto revolucionario al q ue consagró su vida y la ominosa dictadura de Pinochet otorgaron a su nombre una dimensión universal. A cuarenta años de aquellos hechos que conmovieron al mundo, este libro va más allá del mito. Con la agilidad del periodista y el rigor del historiador, Mario Amorós relata de manera minucios a la trayectoria política y personal de Allende, apoyándose en una abundante documentación inédita hasta ahora. En sus páginas descubrimos al muchacho que entabló amistad con un carpintero anarquista, al estudiante de Medicina, al médico que hi zo mil quinientas autopsias, al masón orgulloso de sus antepasados, al dirigente socialista, al diputado, al ministro, al senador.Al líder capaz de unir a la izquierda y alumbrar la «vía chilena a l socialismo». Al compañero de Fidel Castro y del Che Guevara. Al principal enemigo para Nixon y Kissinger. ', 10000, 'allende.jpg', 'Bibliogras', 'biografia', '12424', '6.5', 'Mario Amoros'),
(43, 'La sombra de Einstein', '¿Quién fue Mileva Maric, la científica que enamoró a Albert Einstein en sus años de juventud?  En 1986, la joven serbia Mileva Maric es la primera mujer admitida en la Facultad de Física y Matemáticas de la Escuela Politécnica de Zúrich.  Brillante, entregada y ambiciosa, atrae rápidamente la atención de un extrovertido Albert Einstein, quien, para conquistarla, le promete un futuro juntos en igualdad, como compañeros, científicos y amantes. Cautivada por su increíble talento y su arrollador entusiasmo, la joven matemática acepta formar parte de ese maravilloso proyecto de vida, pero no hay espacio más que para un genio en esa relación.  Sus planes de vida y trabajo en común se ven truncados cuando las responsabilidades familiares recaen sobre Mileva, que debe posponer sus ambiciones, aun siempre con la esperanza de recuperar su prometedora carrera científica.', 51200, 'einstein.jpg', 'Bibliogras', 'biografia', '24141', '8.3', 'Marie Benedict'),
(44, 'Memorias Para Cecilia', 'Este libro es una preparación para el Purgatorio\", escribe Armando Uribe en el prólogo a la presente edición revisada de las memorias que publicó hace ya casi quince años. Al decirlo da cuenta del profundo sentido religioso que ha definido toda su obra y su vida, la que aquí rememora desde sus años de infancia y juventud hasta la muerte de su esposa, Cecilia Echeverría, a comienzos del siglo XXI. Se trata de un libro entrañable por varios motivos. No es el menos importante la elegancia concisa de una prosa efectiva a la hora de traer a escena un mundo y un modo de ser chileno que se está perdiendo irrecusablemente. ', 5800, 'memoriacecilia.jpg', 'Bibliogras', 'biografia', '421412', '5.6', 'Armando Uribe'),
(45, 'El misterio de las cuatro cartas', 'Hércules Poirot se encuentra con una mujer muy enfadada esperando a la puerta de su casa: le exige saber por qué motivo le ha enviado una carta acusándola del asesinato de Barnabas Pandy, un hombre a quien no conoce y que aparentemente falleció por causas naturales. El problema es que Poirot no le ha enviado ninguna carta y, además, tampoco conoce al Sr. Pandy. El desconcierto es total cuando el investigador belga descubre que en su salón le espera un desconocido que también afirma haber recibido una carta firmada por su puño y letra esa misma mañana y, sorprendentemente, también lo acusa del asesinato de Barnabas Pandy. ¿Cuántas cartas más de este tipo se han enviado en su nombre? ¿Quién las ha enviado y, sobre todo, por qué? Y más importante aún, ¿alguien asesinó a Barnabas Pandy?', 10000, 'misteriodelascartas.jpg', 'Sherloks', 'detectives', '2341342', '3.1', 'Sophie Hannah'),
(46, 'Tiempos oscuros', 'Años atrás, cuando trabajaba para una joyería, Jerome Burnel se convirtió en un héroe. Intervino para evitar un homicidio múltiple, pero en su empeño se destruyó a sí mismo. Su vida –familiar y profesional– se truncó, y él acabó embrutecido. Fuerzas desconocidas lo humillaron, enviándolo a prisión por un crimen que no cometió. Cree que en poco tiempo esas fuerzas acabarán con él, pero antes de morir quiere respuestas, y recurre al detective privado Charlie Parker. Le habla de una misteriosa chica; le habla de los que lo atormentaban y de una comunidad que se esconde en una empalizada en ruinas… Parker no es como los demás hombres. Murió y volvió a nacer. Está listo para presentar batalla. Y se acercará, junto con sus viejos amigos Angel y Louis, a una misteriosa comunidad regida por el terror.', 12000, 'tiempososcuros.jpg', 'Sherloks', 'detectives', '41323', '2.3', 'John Connolly'),
(47, 'La transparencia del tiempo', 'A un Mario Conde a punto de cumplir sesenta años, más desengañado y escéptico que de costumbre, le llega el encargo de un antiguo amigo del instituto de recuperar la estatua de una Virgen negra que le han robado. Conde no tardará en descubrir que esa pieza es más valiosa de lo que le han dicho, y que proviene del abuelo español de su excompañero, quien, huyendo de la Guerra Civil española, la trajo a Cuba desde una ermita del Pirineo catalán. Cuando sospechosos y cómplices del robo aparecen asesinados, Conde intuye que le está siguiendo los pasos una peligrosa trama de traficantes de objetos artísticos. Pero ¿cuál es el origen de esa talla antigua?', 8000, 'trasparencias.jpg', 'Sherloks', 'detectives', '414223', '4.2', 'Leonardo Padura'),
(48, 'El legado de los espías', 'Peter Guillam, leal colega y discípulo de George Smiley en los servicios secretos británicos —también conocidos como el Circus—, disfruta de su jubilación en la finca familiar de la costa meridional de Bretaña cuando una carta de su antigua organización lo insta a regresar a Londres. ¿El motivo? Su pasado en la Guerra Fría lo reclama. Unas operaciones de inteligencia que habían sido el orgullo del Londres secreto están a punto de ser investigadas por una generación sin memoria de la guerra.', 7000, 'ellegado.jpg', 'Sherloks', 'detectives', '42143', '8.6', 'John le Carre'),
(49, 'Offshore', 'En una Grecia en la que, misteriosamente, empiezan a aflorar dinero e inversiones, un funcionario de la Secretaría de Estado de Turismo aparece muerto en su casa, atado a una silla y con un tiro en la cabeza. Todo apunta a un robo, pero el comisario Jaritos no descarta que se trate de una ejecución en toda regla. Cuando las indagaciones lo llevan a descubrir que la víctima estaba ligada a tráficos ilegales, los agentes detienen a dos paquistaníes que, acusados del asesinato, confiesan que simplemente fue un intento de robo. El nuevo subdirector general presiona a Jaritos –como siempre, muy escéptico– para que cierre el caso. Y entonces se produce un nuevo asesinato. Después de la «Tetralogía de la Crisis»,', 8000, 'offshore.jpg', 'Sherloks', 'detectives', '42315', '7.8', 'Petros Márkaris');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`idLibro`) REFERENCES `libros` (`id`);

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`nombreLibro`) REFERENCES `libros` (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
