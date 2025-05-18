-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2025 a las 17:00:49
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `author`
--

INSERT INTO `author` (`id`, `name`, `state`) VALUES
(1, 'Gabriel García Márquez', 1),
(2, 'Isabel Allende', 1),
(3, 'Mario Vargas Llosa', 1),
(4, 'Laura Esquivel', 1),
(5, 'Jorge Luis Borges', 1),
(6, 'Daniel TM', 1),
(7, 'Gabriel Garcia Marquez', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `isbn` varchar(191) NOT NULL,
  `yearPublished` int(11) NOT NULL,
  `numPages` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 1,
  `authorId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `publisherId` int(11) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `book`
--

INSERT INTO `book` (`id`, `name`, `isbn`, `yearPublished`, `numPages`, `state`, `authorId`, `categoryId`, `publisherId`, `createdAt`, `updatedAt`) VALUES
(1, 'Cien años de soledad', '9780307474728', 1967, 417, 0, 1, 1, 1, '2025-05-17 15:22:05.946', '2025-05-17 21:35:17.510'),
(2, 'La casa de los espíritus', '9780553383805', 1982, 433, 0, 2, 1, 2, '2025-05-17 15:22:05.951', '2025-05-18 01:49:04.844'),
(3, 'Conversación en La Catedral', '9788439720210', 1969, 601, 1, 3, 1, 3, '2025-05-17 15:22:05.960', '2025-05-17 21:34:52.783'),
(4, 'Como agua para chocolate', '9780385474016', 1989, 246, 1, 4, 1, 4, '2025-05-17 15:22:05.964', '2025-05-17 21:34:53.630'),
(5, 'Ficciones', '9780307950925', 1944, 174, 1, 5, 2, 5, '2025-05-17 15:22:05.967', '2025-05-17 21:34:51.383'),
(6, 'El coronel no tiene quien le escriba', '5841615615661', 2015, 325, 0, 7, 3, 2, '2025-05-18 00:51:33.540', '2025-05-18 01:49:01.685');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `state` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `createdAt`, `state`) VALUES
(1, 'Novela', '2025-05-17 15:22:05.883', 1),
(2, 'Cuento', '2025-05-17 15:22:05.887', 1),
(3, 'Fantasía', '2025-05-17 15:22:05.891', 1),
(4, 'Ciencia Ficción', '2025-05-17 15:22:05.895', 1),
(5, 'Ensayo', '2025-05-17 15:22:05.898', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loan`
--

CREATE TABLE `loan` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `loanDate` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `returnDue` datetime(3) NOT NULL,
  `returned` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `returnedAt` datetime(3) DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `loan`
--

INSERT INTO `loan` (`id`, `userId`, `bookId`, `loanDate`, `returnDue`, `returned`, `createdAt`, `returnedAt`, `state`) VALUES
(1, 1, 1, '2025-05-17 15:22:05.970', '2025-05-27 15:22:05.970', 1, '2025-05-17 15:22:05.972', '2025-05-22 15:22:05.970', 1),
(2, 2, 2, '2025-05-17 15:22:05.970', '2025-05-28 15:22:05.970', 0, '2025-05-17 15:22:05.976', NULL, 1),
(3, 3, 3, '2025-05-17 15:22:05.970', '2025-05-29 15:22:05.970', 1, '2025-05-17 15:22:05.982', '2025-05-24 15:22:05.970', 1),
(4, 4, 4, '2025-05-17 15:22:05.970', '2025-05-30 15:22:05.970', 0, '2025-05-17 15:22:05.988', NULL, 1),
(5, 5, 5, '2025-05-17 15:22:05.970', '2025-05-31 15:22:05.970', 1, '2025-05-17 15:22:05.992', '2025-05-26 15:22:05.970', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `state` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `createdAt`, `state`) VALUES
(1, 'Alfaguara', '2025-05-17 15:22:05.902', 1),
(2, 'Planeta', '2025-05-17 15:22:05.906', 1),
(3, 'Seix Barral', '2025-05-17 15:22:05.912', 1),
(4, 'Debolsillo', '2025-05-17 15:22:05.918', 1),
(5, 'Sudamericana', '2025-05-17 15:22:05.921', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role` enum('ADMIN','CLIENT') NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `state` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`, `createdAt`, `state`) VALUES
(1, 'Admin Uno', 'admin1@example.com', 'admin123', 'ADMIN', '2025-05-17 15:22:05.925', 1),
(2, 'Cliente Uno', 'cliente1@example.com', 'cliente123', 'CLIENT', '2025-05-17 15:22:05.930', 1),
(3, 'Cliente Dos', 'cliente2@example.com', 'cliente123', 'CLIENT', '2025-05-17 15:22:05.934', 1),
(4, 'Admin Dos', 'admin2@example.com', 'admin123', 'ADMIN', '2025-05-17 15:22:05.938', 1),
(5, 'Cliente Tres', 'cliente3@example.com', 'cliente123', 'CLIENT', '2025-05-17 15:22:05.943', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('110183a7-0aa8-4fd5-a6fe-7c2fe74cc504', '1b6c229d0ac00570df825446649c3b087cb65be7bc69f374606d351bff5e36b0', '2025-05-17 15:21:52.378', '20250517123357_add_state', NULL, NULL, '2025-05-17 15:21:52.322', 1),
('f3c2449c-9621-48f4-8e43-35a55fc8c79f', 'ba8ff71cc797987188635a3919bf291927999584d3d4b6dd6ea97b939f9221cf', '2025-05-17 15:21:52.319', '20250517122403_init', NULL, NULL, '2025-05-17 15:21:51.872', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Book_authorId_fkey` (`authorId`),
  ADD KEY `Book_categoryId_fkey` (`categoryId`),
  ADD KEY `Book_publisherId_fkey` (`publisherId`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Loan_userId_fkey` (`userId`),
  ADD KEY `Loan_bookId_fkey` (`bookId`);

--
-- Indices de la tabla `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_email_key` (`email`);

--
-- Indices de la tabla `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `Book_authorId_fkey` FOREIGN KEY (`authorId`) REFERENCES `author` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Book_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Book_publisherId_fkey` FOREIGN KEY (`publisherId`) REFERENCES `publisher` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `Loan_bookId_fkey` FOREIGN KEY (`bookId`) REFERENCES `book` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Loan_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
