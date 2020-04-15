-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 15-04-2020 a las 04:34:20
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemargc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taccesorios`
--

CREATE TABLE `taccesorios` (
  `idAccesorios` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `costo` float(10,2) DEFAULT NULL,
  `monedas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `taccesorios`
--

INSERT INTO `taccesorios` (`idAccesorios`, `nombre`, `costo`, `monedas`) VALUES
(1, 'Cascos gaming pro', 17.00, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tconsola`
--

CREATE TABLE `tconsola` (
  `idConsola` int(11) NOT NULL,
  `plataforma` varchar(45) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `serie` varchar(80) DEFAULT NULL,
  `costo` float(10,2) DEFAULT NULL,
  `costomonedas` int(11) DEFAULT NULL,
  `monedas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tconsola`
--

INSERT INTO `tconsola` (`idConsola`, `plataforma`, `numero`, `serie`, `costo`, `costomonedas`, `monedas`) VALUES
(1, 'Xbox One', 1, '1231201', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tconsolajuego`
--

CREATE TABLE `tconsolajuego` (
  `idConsolaJuego` int(11) NOT NULL,
  `idJuego` int(11) DEFAULT NULL,
  `idConsola` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tconsolajuego`
--

INSERT INTO `tconsolajuego` (`idConsolaJuego`, `idJuego`, `idConsola`) VALUES
(3, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdulce`
--

CREATE TABLE `tdulce` (
  `idDulce` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `costo` float(10,2) DEFAULT NULL,
  `costomonedas` int(11) DEFAULT NULL,
  `monedas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tdulce`
--

INSERT INTO `tdulce` (`idDulce`, `nombre`, `costo`, `costomonedas`, `monedas`) VALUES
(1, 'Chocotorro', 11.00, 21, 4),
(2, 'Pinguinos', 35.00, 50, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tequipo`
--

CREATE TABLE `tequipo` (
  `idEquipo` int(11) NOT NULL,
  `idTorneo` int(11) DEFAULT NULL,
  `idPremio` int(11) DEFAULT NULL,
  `nombreEquipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tequipo`
--

INSERT INTO `tequipo` (`idEquipo`, `idTorneo`, `idPremio`, `nombreEquipo`) VALUES
(1, 1, 3, 'Los Sabrosongos'),
(2, 1, 1, 'Los indomables de Monterrey');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tgamer`
--

CREATE TABLE `tgamer` (
  `idGamer` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `paterno` varchar(45) DEFAULT NULL,
  `materno` varchar(45) DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `correo` varchar(60) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `contrasena` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `monedas` int(11) DEFAULT NULL,
  `twitter` varchar(45) DEFAULT NULL,
  `twitch` varchar(45) DEFAULT NULL,
  `facebook` varchar(45) DEFAULT NULL,
  `mixer` varchar(45) DEFAULT NULL,
  `youtube` varchar(45) DEFAULT NULL,
  `discord` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tgamer`
--

INSERT INTO `tgamer` (`idGamer`, `nombre`, `paterno`, `materno`, `fechaNac`, `genero`, `celular`, `correo`, `usuario`, `contrasena`, `foto`, `tipo`, `monedas`, `twitter`, `twitch`, `facebook`, `mixer`, `youtube`, `discord`) VALUES
(1, 'Joses', 'Perez', 'McMan', '2020-01-30', 'Hombre', '(834) 121-2132', 'jose@gmail.com', 'jose', 'jose2020', 'jose.png', 'Normal', 8, 'twitter', 'witch', 'facebook', 'mixer', 'youtube', 'discord'),
(2, 'Maria', 'Del Barrio', 'Sa', '2020-01-30', 'Mujer', '(834) 121-2132', 'maria@gmail.com', 'maria', 'maria2020', 'maria.png', 'Normal', 0, 'twitter', 'witch', 'facebook', 'mixer', 'youtube', 'discord'),
(3, 'Johnson', 'De la otra', 'Cuadra', '2020-01-30', 'Hombre', '(834) 121-2132', 'johnson@gmail.com', 'johnson', 'jhonson2020', 'johnson.png', 'Normal', 10, 'twitter', 'witch', 'facebook', 'mixer', 'youtube', 'discord'),
(4, 'Salomon', 'Magi', 'Alibaba', '2020-01-30', 'Hombre', '(834) 121-2132', 'salomon@gmail.com', 'salomon', 'salomon2020', 'salomon.png', 'Normal', 0, 'twitter', 'witch', 'facebook', 'mixer', 'youtube', 'discord'),
(5, 'Morgana', 'Swif', 'Abel', '2020-01-30', 'Mujer', '(834) 121-2132', 'morgana@gmail.com', 'morgana', 'morgana2020', 'morgana.png', 'Normal', 0, 'twitter', 'witch', 'facebook', 'mixer', 'youtube', 'discord'),
(6, 'Tom', 'Jr', 'Holland', '2020-01-30', 'Hombre', '(834) 121-2132', 'tom@gmail.com', 'tom', 'tom2020', 'tom.png', 'Normal', 0, 'twitter', 'witch', 'facebook', 'mixer', 'youtube', 'discord'),
(7, 'Tobey', 'A.', 'Maguire', '2020-01-30', 'Hombre', '(834) 121-2132', 'tobey@gmail.com', 'tobey', 'tobey2020', 'tobey.png', 'Normal', 0, 'twitter', 'witch', 'facebook', 'mixer', 'youtube', 'discord'),
(8, 'Robert', 'Downey', 'Jr.', '2020-01-30', 'Hombre', '(834) 121-2132', 'robertdjr@gmail.com', 'robertjr', 'robertjr2020', 'robertjr.jpg', 'Normal', 0, 'twitter', 'witch', 'facebook', 'mixer', 'youtube', 'discord'),
(9, 'Scarlett', 'Lady', 'Johanson', '1987-01-30', 'Mujer', '(834) 121-2132', 'viuda@gmail.com', 'viuda', 'viuda2020', 'viuda.png', 'Normal', 0, 'twitter', 'witch', 'facebook', 'mixer', 'youtube', 'discord'),
(10, 'Andrés Fidel', 'García', 'González', '1998-01-30', 'Hombre', '(834) 123-1201', '1730580@gmail.com', 'andresfidel', 'sectorjapa2', 'perfil.png', 'Administrador', 0, 'twitter', 'witch', 'facebook', 'mixer', 'youtube', 'discord'),
(11, 'El', 'Maziso', 'Kabon', '1999-09-16', 'Hombre', '(834) 123-1201', 'johnyahga@gmail.com', 'johnyzkull', 'gadamega', 'reference1.jpg', 'Normal', 24, '', '', '', 'Jonathan García González', '', ''),
(12, 'Kingom', 'Hearts', 'Gonzalez', '1999-09-16', 'Hombre', '(834) 123-1201', 'kingom_hearts@hotmail.com', 'kingdomheart', 'kingdomheartpw', 'cheems.jpg', 'Normal', 0, 'Kingdom Hearts', 'kingheart', '', 'kingh', 'Kingdom HeartsOMG', ''),
(13, 'Kingom', 'Hearts', 'Gonzalez', '1999-09-16', 'Hombre', '(834) 123-1201', 'kingom_hearts@hotmail.com', 'kingdomheart', 'kingdomheartpw', 'cheems.jpg', 'Normal', 0, 'Kingdom Hearts', 'kingheart', '', 'kingh', 'Kingdom HeartsOMG', ''),
(14, 'neuvo', 'usuario', 'si', '2004-02-12', 'Hombre', '(234) 123-1233', 'asdfasd@hotmail.com', 'elnuevo', 'nuevo2020', 'pizzalogo.jpg', 'Normal', 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thistorial`
--

CREATE TABLE `thistorial` (
  `idHistorial` int(11) NOT NULL,
  `monedas` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `idGamer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tinvitacion`
--

CREATE TABLE `tinvitacion` (
  `idInvitacion` int(11) NOT NULL,
  `idGamerInv` int(11) DEFAULT NULL,
  `idGamer` int(11) DEFAULT NULL,
  `idEquipo` int(11) DEFAULT NULL,
  `fechaInv` varchar(60) DEFAULT NULL,
  `respuesta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tinvitacion`
--

INSERT INTO `tinvitacion` (`idInvitacion`, `idGamerInv`, `idGamer`, `idEquipo`, `fechaInv`, `respuesta`) VALUES
(1, 11, 11, 1, 'Tuesday 14 April 2020, 6 53 am', 1),
(2, 1, 11, 1, 'Tuesday 14 April 2020, 6 54 am', 1),
(3, 14, 14, 2, 'Tuesday 14 April 2020, 7 30 pm', 1),
(4, 4, 14, 2, 'Tuesday 14 April 2020, 7 30 pm', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tjuego`
--

CREATE TABLE `tjuego` (
  `idJuego` int(11) NOT NULL,
  `imagen` varchar(60) DEFAULT NULL,
  `titulo` varchar(60) DEFAULT NULL,
  `plataforma` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tjuego`
--

INSERT INTO `tjuego` (`idJuego`, `imagen`, `titulo`, `plataforma`) VALUES
(1, 'cf7e637091263a9a6cf8baae5d0948ff.jpg', 'Gears 5', 'Xbox One');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmodalidad`
--

CREATE TABLE `tmodalidad` (
  `idModalidad` int(11) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `grupo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tmodalidad`
--

INSERT INTO `tmodalidad` (`idModalidad`, `tipo`, `grupo`) VALUES
(1, 'Solo', 1),
(2, 'Duos', 2),
(3, 'Triple', 3),
(4, 'Equipo de 4', 4),
(5, 'Equipo de 5', 5),
(6, 'Equipo de 6', 6),
(7, 'Equipo de 7', 7),
(8, 'Equipo de 8', 8),
(9, 'Equipo de 9', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tplataformas`
--

CREATE TABLE `tplataformas` (
  `idPlataforma` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `costo` float DEFAULT NULL,
  `cmonedas` float DEFAULT NULL,
  `rmonedas` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tplataformas`
--

INSERT INTO `tplataformas` (`idPlataforma`, `nombre`, `costo`, `cmonedas`, `rmonedas`) VALUES
(1, 'Xbox One', 20, 40, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpremio`
--

CREATE TABLE `tpremio` (
  `idPremio` int(11) NOT NULL,
  `posicion` int(11) DEFAULT NULL,
  `premio` varchar(70) DEFAULT NULL,
  `asignar` int(11) DEFAULT NULL,
  `idTorneo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tpremio`
--

INSERT INTO `tpremio` (`idPremio`, `posicion`, `premio`, `asignar`, `idTorneo`) VALUES
(1, 1, '20 pesos y beso de chica guapa', 1, 1),
(2, 2, '5 pesos y baile gratis del fortnite', 0, 1),
(3, 3, 'saludos de Willyrex', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trenta`
--

CREATE TABLE `trenta` (
  `idRenta` int(11) NOT NULL,
  `fechaRenta` date DEFAULT NULL,
  `horaRenta` time DEFAULT NULL,
  `consola` varchar(45) DEFAULT NULL,
  `juego` varchar(45) DEFAULT NULL,
  `total` float(10,2) DEFAULT NULL,
  `idGamer` int(11) NOT NULL,
  `metodo` varchar(40) NOT NULL,
  `monedasganadas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trenta`
--

INSERT INTO `trenta` (`idRenta`, `fechaRenta`, `horaRenta`, `consola`, `juego`, `total`, `idGamer`, `metodo`, `monedasganadas`) VALUES
(1, '2020-04-14', '06:18:58', 'Xbox One', 'Gears 5 ', 20.00, 11, 'Efectivo', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ttorneo`
--

CREATE TABLE `ttorneo` (
  `idTorneo` int(11) NOT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `juego` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `forma` varchar(45) DEFAULT NULL,
  `limite` int(11) DEFAULT NULL,
  `estatus` varchar(45) DEFAULT NULL,
  `idModalidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ttorneo`
--

INSERT INTO `ttorneo` (`idTorneo`, `titulo`, `descripcion`, `juego`, `fecha`, `hora`, `forma`, `limite`, `estatus`, `idModalidad`) VALUES
(1, 'Torneo Recolotox', 'Torneo para verificar quien es el mas ricolino en esta onda de los videogames', 'Gears 5', '2020-04-30', '03:01:00', 'Presencial', 50, 'Finalizado', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tventas`
--

CREATE TABLE `tventas` (
  `idVenta` int(11) NOT NULL,
  `producto` varchar(45) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` float(10,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `metodo` varchar(45) DEFAULT NULL,
  `idGamer` int(11) DEFAULT NULL,
  `monedasganadas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tventas`
--

INSERT INTO `tventas` (`idVenta`, `producto`, `cantidad`, `precio`, `fecha`, `metodo`, `idGamer`, `monedasganadas`) VALUES
(11, 'Chocotorro', 10, 110.00, '2020-04-14', 'En Efectivo', 11, 40),
(12, 'Chocotorro', 1, 11.00, '2020-04-14', 'En Efectivo', 1, 4),
(13, 'Chocotorro', 1, 21.00, '2020-04-14', 'En Monedas', 11, 0),
(14, 'Chocotorro', 1, 21.00, '2020-04-14', 'En Monedas', 11, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `taccesorios`
--
ALTER TABLE `taccesorios`
  ADD PRIMARY KEY (`idAccesorios`);

--
-- Indices de la tabla `tconsola`
--
ALTER TABLE `tconsola`
  ADD PRIMARY KEY (`idConsola`);

--
-- Indices de la tabla `tconsolajuego`
--
ALTER TABLE `tconsolajuego`
  ADD PRIMARY KEY (`idConsolaJuego`);

--
-- Indices de la tabla `tdulce`
--
ALTER TABLE `tdulce`
  ADD PRIMARY KEY (`idDulce`);

--
-- Indices de la tabla `tequipo`
--
ALTER TABLE `tequipo`
  ADD PRIMARY KEY (`idEquipo`);

--
-- Indices de la tabla `tgamer`
--
ALTER TABLE `tgamer`
  ADD PRIMARY KEY (`idGamer`);

--
-- Indices de la tabla `thistorial`
--
ALTER TABLE `thistorial`
  ADD PRIMARY KEY (`idHistorial`),
  ADD KEY `idGamer` (`idGamer`);

--
-- Indices de la tabla `tinvitacion`
--
ALTER TABLE `tinvitacion`
  ADD PRIMARY KEY (`idInvitacion`);

--
-- Indices de la tabla `tjuego`
--
ALTER TABLE `tjuego`
  ADD PRIMARY KEY (`idJuego`);

--
-- Indices de la tabla `tmodalidad`
--
ALTER TABLE `tmodalidad`
  ADD PRIMARY KEY (`idModalidad`);

--
-- Indices de la tabla `tplataformas`
--
ALTER TABLE `tplataformas`
  ADD PRIMARY KEY (`idPlataforma`);

--
-- Indices de la tabla `tpremio`
--
ALTER TABLE `tpremio`
  ADD PRIMARY KEY (`idPremio`);

--
-- Indices de la tabla `trenta`
--
ALTER TABLE `trenta`
  ADD PRIMARY KEY (`idRenta`);

--
-- Indices de la tabla `ttorneo`
--
ALTER TABLE `ttorneo`
  ADD PRIMARY KEY (`idTorneo`);

--
-- Indices de la tabla `tventas`
--
ALTER TABLE `tventas`
  ADD PRIMARY KEY (`idVenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `taccesorios`
--
ALTER TABLE `taccesorios`
  MODIFY `idAccesorios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tconsola`
--
ALTER TABLE `tconsola`
  MODIFY `idConsola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tconsolajuego`
--
ALTER TABLE `tconsolajuego`
  MODIFY `idConsolaJuego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tdulce`
--
ALTER TABLE `tdulce`
  MODIFY `idDulce` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tequipo`
--
ALTER TABLE `tequipo`
  MODIFY `idEquipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tgamer`
--
ALTER TABLE `tgamer`
  MODIFY `idGamer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `thistorial`
--
ALTER TABLE `thistorial`
  MODIFY `idHistorial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tinvitacion`
--
ALTER TABLE `tinvitacion`
  MODIFY `idInvitacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tjuego`
--
ALTER TABLE `tjuego`
  MODIFY `idJuego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tmodalidad`
--
ALTER TABLE `tmodalidad`
  MODIFY `idModalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tplataformas`
--
ALTER TABLE `tplataformas`
  MODIFY `idPlataforma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tpremio`
--
ALTER TABLE `tpremio`
  MODIFY `idPremio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `trenta`
--
ALTER TABLE `trenta`
  MODIFY `idRenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ttorneo`
--
ALTER TABLE `ttorneo`
  MODIFY `idTorneo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tventas`
--
ALTER TABLE `tventas`
  MODIFY `idVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `thistorial`
--
ALTER TABLE `thistorial`
  ADD CONSTRAINT `thistorial_ibfk_1` FOREIGN KEY (`idGamer`) REFERENCES `tgamer` (`idGamer`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
