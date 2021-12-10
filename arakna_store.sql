-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2021 a las 19:31:42
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `arakna_store`
--
CREATE DATABASE IF NOT EXISTS `arakna_store` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `arakna_store`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `image`, `name`, `price`) VALUES
(1, 'https://drive.google.com/uc?export=view&id=1iD_r3mUI5Bl3j_YMwqc9REiA3BuT5Xvt', 'Antarctica', 20),
(2, 'https://drive.google.com/uc?export=view&id=11hCh_2os9HL5torWqWN7VdmfmunbzRAq', 'Toxic', 15),
(3, 'https://drive.google.com/uc?export=view&id=1IVl9xLsKn_iu7W_UtY5NE6Wn2R3j5jrU', 'Above the Forest', 42),
(4, 'https://drive.google.com/uc?export=view&id=1Ddj2LZ9mmpkCdJn3M5HA6wyIo-_KqqlA', 'Antarctica - Single', 5),
(5, 'https://drive.google.com/uc?export=view&id=1v4Lz3msJKVmQB-EFpiFWrpqF9CZOR53R', 'FN-KN', 7),
(6, 'https://drive.google.com/uc?export=view&id=1O5twK5JcgFnqae63fsDl7-3PiVw8Q956', 'Northlands', 13),
(7, 'https://drive.google.com/uc?export=view&id=144l8vVbTkxZ4qYIAf2F8J-uCMLjd-And', 'The Sound of the Rain', 17),
(8, 'https://drive.google.com/uc?export=view&id=1TYjq3cMsQklCEmtpOpBozHCz0QJ8l612', 'The Traveller', 4),
(9, 'https://drive.google.com/uc?export=view&id=1mh-sEiLfMEVHX0AnbJ-bHKsLg5WhRZ-z', 'White Wolves', 11),
(10, 'https://drive.google.com/uc?export=view&id=1trQZJr1oDsT5eHXd--dNIHu6ywA4R5t2', 'Madrid Concert Ticket', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `name_rol` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `name_rol`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `password`, `username`) VALUES
(3, 'app@app.app', 'app', '$2a$10$A7n22Gkxqtm2vgNX6TkT8O9dVoNp/Guyc6Xh0aa7zmS2qzdF7Klau', 'app'),
(2, 'user@user.user', 'user', '$2a$10$K2rRmQDz0oOMbbR7syOBI.sK3Zf6uJ2eRgddnppL/4LJ6DhPOuI12', 'user'),
(1, 'admin@admin.admin', 'admin', '$2a$10$cIENzDRP5f7429WLai3Ihezl.tESv/3x6b8RospnsIeH6WVjARFVC', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `address_line` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_rol`
--

CREATE TABLE `user_rol` (
  `user_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_rol`
--

INSERT INTO `user_rol` (`user_id`, `rol_id`) VALUES
(1, 1),
(2, 2),
(3, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKel9kyl84ego2otj2accfd8mr7` (`user_id`);

--
-- Indices de la tabla `order_details`
--
ALTER TABLE `order_details`
  ADD KEY `FKinivj2k1370kw224lavkm3rqm` (`product_id`),
  ADD KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`) USING HASH;

--
-- Indices de la tabla `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKn8pl63y4abe7n0ls6topbqjh2` (`user_id`);

--
-- Indices de la tabla `user_rol`
--
ALTER TABLE `user_rol`
  ADD PRIMARY KEY (`user_id`,`rol_id`),
  ADD KEY `FKpfraq7jod5w5xd3sxm3m6y1o` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
