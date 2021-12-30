-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-12-2021 a las 01:40:36
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_game`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico`
--

CREATE TABLE `historico` (
  `id` int(3) UNSIGNED NOT NULL PRIMARY KEY,
  `nom_jugador` varchar(50) NOT NULL,
  `nivel` int(1) UNSIGNED NOT NULL,
  `puntos` int(5) UNSIGNED NOT NULL,
  `estado` varchar(50) NOT NULL,
  `horario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(3) UNSIGNED NOT NULL PRIMARY KEY,
  `pregunta` varchar(150) NOT NULL,
  `nivel` int(1) UNSIGNED NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `nivel`, `categoria`) VALUES
(1, '¿Animal que son los polacos en la novela gráfica sobre el Holocausto nazi "Maus".?', 5, 'Arte y literatura'),
(2, 'Escribió "El modulor"', 5, 'Arte y literatura'),
(3, 'Músico argentino que le apodaban "El Flaco"', 5, 'Arte y literatura'),
(4, 'Arte japonés de la papiroflexia', 5, 'Arte y literatura'),
(5, 'Material del que está hecho un saxofón', 5, 'Arte y literatura'),
(6, 'Los elefantes…', 4, 'Ciencia y técnologia'),
(7, '¿Qué hay en la boca del estómago?', 4, 'Ciencia y técnologia'),
(8, '¿De qué color es la sangre de los peces?', 4, 'Ciencia y técnologia'),
(9, '¿Cuál de los siguientes órganos NO es parte del sistema inmunológico?', 4, 'Ciencia y técnologia'),
(10, '¿De dónde se saca la sacarina?', 4, 'Ciencia y técnologia'),
(11, '¿Qué tirada necesitas en el parchís para sacar una ficha de casa?', 1, 'Deportes'),
(12, '¿Dónde fueron los Juegos Olímpicos en 2016?', 1, 'Deportes'),
(13, '¿Quién tiene el récord mundial de atletismo en 100m lisos en 9,58 segundos?', 1, 'Deportes'),
(14, '¿Con qué se premiaba a los campeones olímpicos de la antigüedad?', 1, 'Deportes'),
(15, '¿Cuál es el deporte nacional de Japón?', 1, 'Deportes'),
(16, '¿Qué colores tiene la bandera de Irak?', 2, 'Geografia'),
(17, '¿Qué es Andorra?', 2, 'Geografia'),
(18, '¿El español es el idioma oficial en todos los países centroamericanos menos en uno. ¿Cuál?', 2, 'Geografia'),
(19, '¿Cuál es la capital de Andalucía?', 2, 'Geografia'),
(20, '¿Cuál es la isla más grande del mar Caribe?', 5, 'Geografia'),
(21, '¿En qué año tuvo lugar el ataque a Pearl Harboro?', 3, 'Historia'),
(22, '¿Quién es la mascota de SEGA?', 3, 'Historia'),
(23, '¿Quiénes fueron los sans-culottes de la Revolución Francesa? ', 3, 'Historia'),
(24, '¿Con qué hecho histórico relacionarías al "hombre del tanque" o "rebelde desconocido"? ', 3, 'Historia'),
(25, '¿Cuál es la ciudad más antigua de América Latina?', 3, 'Historia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(3) UNSIGNED NOT NULL PRIMARY KEY,
  `respuesta` varchar(50) NOT NULL,
  `comprobar` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `asociacion` int(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `respuesta`, `comprobar`, `asociacion`) VALUES
(1, 'Cerdos', 1, 1),
(2, 'Ratas', 0, 1),
(3, 'Sapos', 0, 1),
(4, 'Viboras', 0, 1),
(5, 'Ana Frank', 0, 2),
(6, 'Jorge Luis Borges', 0, 2),
(7, 'Le Corbusier', 1, 2),
(8, 'Charles Dickens', 0, 2),
(9, 'Gustavo Cerati', 0, 3),
(10, 'Andrés Calamaro', 0, 3),
(11, 'Luis Alberto Spinetta', 1, 3),
(12, 'Diego Torres', 0, 3),
(13, 'Ukiyo-E', 0, 4),
(14, 'Ikebana', 0, 4),
(15, 'Haiku', 0, 4),
(16, 'Origami', 1, 4),
(17, 'Cromo', 0, 5),
(18, 'Latón', 1, 5),
(19, 'Cobalto', 0, 5),
(20, 'Cobre', 0, 5),
(21, 'Brujen', 0, 6),
(22, 'Gruñen', 0, 6),
(23, 'Gritan', 0, 6),
(24, 'Barritan', 1, 6),
(25, 'El Píloro', 0, 7),
(26, 'El Cardias', 1, 7),
(27, 'Los Ácidos Gástricos', 0, 7),
(28, 'El Epilón Mayor', 0, 7),
(29, 'Azul', 0, 8),
(30, 'Marrón Oscuro', 0, 8),
(31, 'Verde Oscuro', 0, 8),
(32, 'Rojo', 1, 8),
(33, 'Médula Ósea', 0, 9),
(34, 'Esófago', 1, 9),
(35, 'Bazo', 0, 9),
(36, 'Timo', 0, 9),
(37, 'Del Carbón', 1, 10),
(38, 'Del Aceite De Girasol', 0, 10),
(39, 'Del Azúcar', 0, 10),
(40, 'Del Azufre', 0, 10),
(41, '6', 0, 11),
(42, '3', 0, 11),
(43, '1', 0, 11),
(44, '5', 1, 11),
(45, 'Lyon', 0, 12),
(46, 'Río De Janeiro', 1, 12),
(47, 'Sevilla', 0, 12),
(48, 'Londres', 0, 12),
(49, 'No Es El Récord Correcto', 0, 13),
(50, 'Carl Lewis', 0, 13),
(51, 'Usain Bolt', 1, 13),
(52, 'Tyson Gay', 0, 13),
(53, 'Medalla De Latón', 0, 14),
(54, 'Corona De Espinas', 0, 14),
(55, 'Corona De Laurel', 1, 14),
(56, 'Medalla De Estaño', 0, 14),
(57, 'Sumo', 1, 15),
(58, 'Judo', 0, 15),
(59, 'Béisbol', 0, 15),
(60, 'Tenis', 0, 15),
(61, 'Verde, Blanco, Azul Y Rojo', 0, 16),
(62, 'Negro, Blanco Y Azul', 0, 16),
(63, 'Negro, Amarillo Y Verde', 0, 16),
(64, 'Rojo, Blanco, Verde Y Negro', 1, 16),
(65, 'Una Religión', 0, 17),
(66, 'Un Animal', 0, 17),
(67, 'Un País', 1, 17),
(68, 'Una Comida', 0, 17),
(69, 'En Salvador', 0, 18),
(70, 'Costa Rica', 0, 18),
(71, 'Belice', 1, 18),
(72, 'Panamá', 0, 18),
(73, 'Hinduismo', 1, 19),
(74, 'Budista', 0, 19),
(75, 'Sijismo', 0, 19),
(76, 'Jainismo', 0, 19),
(77, 'Cádiz', 0, 20),
(78, 'Córdoba', 0, 20),
(79, 'Sevilla', 1, 20),
(80, 'Málaga', 0, 20),
(81, '1939', 0, 21),
(82, '1941', 1, 21),
(83, '1940', 0, 21),
(84, '1942', 0, 21),
(85, 'Mario', 0, 22),
(86, 'Pac Man', 0, 22),
(87, 'Sonic', 1, 22),
(88, 'Ryu', 0, 22),
(89, 'La Principal Masa Social Revolucionaria', 1, 23),
(90, 'La Burguesía Durante La Revolución', 0, 23),
(91, 'Ninguna Es Correcta', 0, 23),
(92, 'El Nombre Despectivo De Los Burgueses', 0, 23),
(93, 'Protestas De Plaza De Mayo, Buenos Aires', 0, 24),
(94, 'Protestas De Plaza Del Sol, Madrid', 0, 24),
(95, 'Protestas De Plaza Tahrir, El Cairo', 0, 24),
(96, 'Protestas De Plaza Tian"anmen, Pekín', 1, 24),
(97, 'Valparaíso', 0, 25),
(98, 'Caral', 1, 25),
(99, 'Arequipa', 0, 25),
(100, 'La Paz', 0, 25);

--
-- Indices de la tabla `historico`
--
ALTER TABLE `historico`
  ADD KEY `Índice 1` (`id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD KEY `Índice 1` (`id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD KEY `Índice 1` (`id`),
  ADD KEY `FK_respuestas_preguntas` (`asociacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historico`
--
ALTER TABLE `historico`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD CONSTRAINT `FK_respuestas_preguntas` FOREIGN KEY (`asociacion`) REFERENCES `preguntas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
