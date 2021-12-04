-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2021 a las 20:02:37
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuestas`
--

CREATE TABLE `encuestas` (
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `encuestas`
--

INSERT INTO `encuestas` (`nombre`, `descripcion`, `img_url`, `id`, `id_usuario`) VALUES
('encuesta de prueba 2', 'descripcion', 'http://127.0.0.1:5000/static/uploads/Alyssa-Carson-marte-marss.jpg', 3, 4),
('test', 'test descrip', 'http://127.0.0.1:5000/static/uploads/arania-arcoiris.jpg', 5, 4),
('chess', 'chess descript', 'http://127.0.0.1:5000/static/uploads/capibara-gallina.jpg', 6, 9),
('nueva', 'nueva descripcion', 'http://127.0.0.1:5000/static/uploads/brigitte_bardot_feliz.jpg', 9, 4),
('nueva3 ', 'nueva descripcion', 'http://127.0.0.1:5000/static/uploads/capibara.jpg', 11, 4),
('arbolito', 'arboldescrip', 'http://127.0.0.1:5000/static/uploads/ardilla_flor.jpg', 12, 4),
('elianabanana', 'eliana descip', 'http://127.0.0.1:5000/static/uploads/cocos.jpg', 13, 4),
('Jhonjan Darío Portilla Bolaños', 'sfdsfsddf', 'http://127.0.0.1:5000/static/uploads/IMG_20210703_113857.jpg', 18, 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_data`
--

CREATE TABLE `personal_data` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(225) NOT NULL,
  `Correo` varchar(225) NOT NULL,
  `Contraseña` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personal_data`
--

INSERT INTO `personal_data` (`id`, `Nombre`, `Correo`, `Contraseña`) VALUES
(4, 'juanito', 'juanito@gmail.com', 'estasi'),
(5, 'robert', 'luca@gmail.com', 'robert'),
(9, 'nine', 'two@gmail.com', 'two'),
(15, 'kira', 'kira@gmail.com', 'kira'),
(24, 'jhonjan daario', 'jhonjanportilla2020@itp.edu.co', '123185'),
(25, 'dario', 'jhojan-11@gmail.com', 'xcsdfddfs');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(255) DEFAULT NULL,
  `id_tipo_pregunta` int(11) DEFAULT NULL,
  `id_seccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `id_tipo_pregunta`, `id_seccion`) VALUES
(4, 'cual es tu edad?', 3, 5),
(5, 'genial :)', 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `id_encuesta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id`, `nombre`, `id_encuesta`) VALUES
(5, 'ldjflksdjflksfdj', 12),
(11, 'sec 2', 13),
(12, 'one more time x4', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pregunta`
--

CREATE TABLE `tipo_pregunta` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_pregunta`
--

INSERT INTO `tipo_pregunta` (`id`, `nombre`) VALUES
(1, 'Unica respuesta'),
(2, 'Multiples respuestas'),
(3, 'Respuesta abierta');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `encuestas`
--
ALTER TABLE `encuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `personal_data`
--
ALTER TABLE `personal_data`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_pregunta` (`id_tipo_pregunta`),
  ADD KEY `id_seccion` (`id_seccion`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_encuesta` (`id_encuesta`);

--
-- Indices de la tabla `tipo_pregunta`
--
ALTER TABLE `tipo_pregunta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `encuestas`
--
ALTER TABLE `encuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `personal_data`
--
ALTER TABLE `personal_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tipo_pregunta`
--
ALTER TABLE `tipo_pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `encuestas`
--
ALTER TABLE `encuestas`
  ADD CONSTRAINT `encuestas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `personal_data` (`id`);

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`id_tipo_pregunta`) REFERENCES `tipo_pregunta` (`id`),
  ADD CONSTRAINT `preguntas_ibfk_2` FOREIGN KEY (`id_seccion`) REFERENCES `secciones` (`id`);

--
-- Filtros para la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD CONSTRAINT `secciones_ibfk_1` FOREIGN KEY (`id_encuesta`) REFERENCES `encuestas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
