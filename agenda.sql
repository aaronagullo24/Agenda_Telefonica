-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.6-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para agendatelefonica
CREATE DATABASE IF NOT EXISTS `agendatelefonica` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `agendatelefonica`;

-- Volcando estructura para tabla agendatelefonica.agendas
CREATE TABLE IF NOT EXISTS `agendas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` char(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posicion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `fechadenacimiento` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla agendatelefonica.agendas: ~8 rows (aproximadamente)
DELETE FROM `agendas`;
/*!40000 ALTER TABLE `agendas` DISABLE KEYS */;
INSERT INTO `agendas` (`id`, `nombres`, `apellidos`, `telefono`, `celular`, `sexo`, `email`, `posicion`, `departamento`, `salario`, `fechadenacimiento`, `created_at`, `updated_at`) VALUES
	(3, 'aaron', 'molino', '989858498', '123', 'Masculino', 'manolo@manolo.co', '123213', 'Gerencia de TI', 123123.00, '2020-02-28', '2020-03-27 16:54:19', '2020-03-27 16:54:19'),
	(4, 'aaron', 'molino', '989858498', '123', 'Masculino', 'manolo@manolo.co', '123213', 'Gerencia de TI', 123123.00, '2020-02-28', '2020-03-27 16:54:48', '2020-03-27 16:54:48'),
	(5, 'manolin', 'manolo', '12334523432', '12322', 'Femenino', 'Manolin@aa.com', 'seguridad', 'Gerencia de TI', 12345.00, '2020-04-01', '2020-03-27 16:55:50', '2020-03-28 16:42:57'),
	(7, '', '', '', '', '', '', '', '', 0.00, '0000-00-00', NULL, NULL),
	(8, 'aaron', 'gato', '', '', '', '', '', '', 0.00, '2020-03-29', NULL, NULL),
	(9, 'aaron', '', '', '', '', '', '', '', 0.00, '0000-00-00', NULL, NULL),
	(10, 'aaron', '', '', '', '', '', '', '', 0.00, '0000-00-00', NULL, NULL),
	(11, 'aaron', '', '', '', '', '', '', '', 0.00, '0000-00-00', NULL, NULL),
	(12, 'aaron', '', '', '', '', '', '', '', 0.00, '0000-00-00', NULL, NULL);
/*!40000 ALTER TABLE `agendas` ENABLE KEYS */;

-- Volcando estructura para tabla agendatelefonica.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla agendatelefonica.failed_jobs: ~0 rows (aproximadamente)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla agendatelefonica.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla agendatelefonica.migrations: ~4 rows (aproximadamente)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2020_03_26_175707_create_agendas_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla agendatelefonica.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla agendatelefonica.password_resets: ~0 rows (aproximadamente)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla agendatelefonica.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla agendatelefonica.users: ~2 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Aaron', 'aaronagullo24@gmail.com', NULL, '$2y$10$mVLdV54aQwmX8buPy4D5lOJjd4qSmJQ1tFPxTxpmVTjK2FT.l/kDi', NULL, '2020-03-28 17:21:50', '2020-03-28 17:21:50'),
	(2, 'test1', 'test1@tes.com', NULL, '$2y$10$0YYFGj4HcFVp9yDKVS3FKONaDXPhOwCVhGSa5cy.jhtLII6z/2NDO', NULL, '2020-03-28 17:26:26', '2020-03-28 17:26:26'),
	(3, 'aaron', 'aaronagullo24@mail.com', NULL, '$2y$10$4zy2SDH.G2ZAfThJfexs0.vkNSgPJEs2iMqVYt/pPnjOeDgedIYhm', NULL, '2020-03-28 18:11:03', '2020-03-28 18:11:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
