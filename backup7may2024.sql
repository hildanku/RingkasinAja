-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table ringkasinaja_dev.failed_jobs: ~0 rows (approximately)

-- Dumping data for table ringkasinaja_dev.migrations: ~5 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_05_04_071931_urls', 2);

-- Dumping data for table ringkasinaja_dev.password_reset_tokens: ~0 rows (approximately)

-- Dumping data for table ringkasinaja_dev.personal_access_tokens: ~0 rows (approximately)

-- Dumping data for table ringkasinaja_dev.urls: ~2 rows (approximately)
INSERT INTO `urls` (`id`, `original_url`, `short_url`, `user_id`, `created_at`, `updated_at`) VALUES
	(2, 'test.com', 'test.com2805', 1, '2024-05-04 02:57:12', '2024-05-04 02:57:12'),
	(3, 'test.com', 'test.comtaXi', 1, '2024-05-04 02:58:58', '2024-05-04 02:58:58'),
	(4, 'test.com', 'DphU', 1, '2024-05-04 02:59:29', '2024-05-04 02:59:29');

-- Dumping data for table ringkasinaja_dev.users: ~0 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@ringkasinaja.id', NULL, '$2y$10$xobrXZPdB2/e5WyAuqJ7V.Iy2GZ3B22EFZ1U8Q5izxZDaaSVut.X.', NULL, '2024-05-04 02:56:37', '2024-05-04 02:56:37');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
