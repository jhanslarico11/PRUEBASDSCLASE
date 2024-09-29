-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2024 a las 05:13:10
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `venta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `advance_salaries`
--

CREATE TABLE `advance_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `advance_salary` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `advance_salaries`
--

INSERT INTO `advance_salaries` (`id`, `employee_id`, `date`, `advance_salary`, `created_at`, `updated_at`) VALUES
(1, 4, '2024-09-15', 123, '2024-09-16 06:29:31', '2024-09-16 06:29:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attendences`
--

CREATE TABLE `attendences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `attendences`
--

INSERT INTO `attendences` (`id`, `employee_id`, `date`, `status`, `created_at`, `updated_at`) VALUES
(6, 1, '2024-09-15', 'present', '2024-09-16 06:37:11', '2024-09-16 06:37:11'),
(7, 3, '2024-09-15', 'present', '2024-09-16 06:37:11', '2024-09-16 06:37:11'),
(8, 2, '2024-09-15', 'present', '2024-09-16 06:37:11', '2024-09-16 06:37:11'),
(9, 5, '2024-09-15', 'leave', '2024-09-16 06:37:11', '2024-09-16 06:37:11'),
(10, 4, '2024-09-15', 'absent', '2024-09-16 06:37:11', '2024-09-16 06:37:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'saepe est', 'voluptates', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(2, 'animi et', 'dolorem', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(3, 'et maiores', 'porro', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(4, 'sed velit', 'commodi', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(5, 'eius sit', 'et', '2024-09-15 19:11:06', '2024-09-15 19:11:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `shopname` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `account_holder` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_branch` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `shopname`, `photo`, `account_holder`, `account_number`, `bank_name`, `bank_branch`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Tira Namaga', 'zulaikha.suryono@example.org', '0779 7644 410', 'Kpg. Basoka No. 92, Banjarbaru 81216, Maluku', 'Fa Nashiruddin Winarsih Tbk', NULL, 'Dwi Iswahyudi', '82142736', 'BSI', 'Ambon', 'Padangpanjang', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(2, 'Ilyas Hakim', 'halim.gada@example.com', '(+62) 870 9843 530', 'Psr. Kebangkitan Nasional No. 167, Mataram 40118, Riau', 'PT Laksita Wasita', NULL, 'Hasna Prastuti', '45193996', 'MANDIRI', 'Sukabumi', 'Metro', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(3, 'Kayun Tampubolon', 'jprasetyo@example.com', '0636 3895 6913', 'Ki. Hasanuddin No. 112, Palangka Raya 82678, Papua', 'PJ Pratama Mandala Tbk', NULL, 'Harimurti Anggriawan', '38878922', 'BCA', 'Padangsidempuan', 'Kediri', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(4, 'Rini Nurdiyanti', 'ffarida@example.org', '(+62) 763 0081 406', 'Dk. Salam No. 214, Tegal 50836, Gorontalo', 'PD Oktaviani Pertiwi', NULL, 'Tirtayasa Irwan Prabowo S.E.I', '40430563', 'BSI', 'Langsa', 'Bekasi', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(5, 'Harsaya Marbun S.Pt', 'paramita21@example.net', '(+62) 850 943 601', 'Jln. Taman No. 715, Palu 94101, Jateng', 'Perum Hidayanto Nuraini (Persero) Tbk', NULL, 'Usman Harjaya Sitompul', '65719366', 'BRI', 'Pematangsiantar', 'Probolinggo', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(6, 'Prima Latupono', 'rhalimah@example.com', '(+62) 29 6237 7076', 'Dk. Hayam Wuruk No. 21, Binjai 53595, Papua', 'CV Pratama Namaga (Persero) Tbk', NULL, 'Jaya Purwanto Pradana S.T.', '35319269', 'BJB', 'Bandar Lampung', 'Tanjungbalai', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(7, 'Vanesa Suryatmi', 'agustina.mila@example.com', '0239 8585 753', 'Ds. Supono No. 240, Palembang 27434, Gorontalo', 'PT Pranowo Prastuti (Persero) Tbk', NULL, 'Titi Maryati M.Ak', '81053351', 'BSI', 'Subulussalam', 'Sorong', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(8, 'Padmi Siti Mulyani', 'haryanti.titin@example.net', '0876 9048 3427', 'Ds. Camar No. 748, Lhokseumawe 27891, Kalbar', 'Fa Rahmawati (Persero) Tbk', NULL, 'Ella Wulandari M.Pd', '25081191', 'BSI', 'Pontianak', 'Manado', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(9, 'Siti Suartini', 'kuswandari.titi@example.net', '(+62) 714 4759 443', 'Ds. Kalimalang No. 93, Bau-Bau 67449, Lampung', 'PD Sinaga', NULL, 'Bakidin Simanjuntak S.IP', '68745298', 'BRI', 'Batam', 'Bandung', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(10, 'Banawi Jumadi Irawan', 'iuyainah@example.com', '0825 7444 307', 'Dk. Pasirkoja No. 206, Palu 81980, Maluku', 'Perum Wibisono', NULL, 'Humaira Malika Widiastuti', '42849269', 'BSI', 'Administrasi Jakarta Timur', 'Makassar', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(11, 'Wardaya Gandewa Marbun', 'ajiman86@example.net', '0312 0153 1739', 'Gg. Ahmad Dahlan No. 524, Padang 67467, Kaltara', 'PD Prastuti Tbk', NULL, 'Nurul Nadine Puspasari M.Ak', '40320904', 'MANDIRI', 'Tomohon', 'Prabumulih', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(12, 'Kamila Wahyuni', 'perkasa.halimah@example.org', '(+62) 240 2875 1314', 'Jr. Pasir Koja No. 315, Administrasi Jakarta Utara 27039, Bali', 'CV Wasita Maheswara Tbk', NULL, 'Nalar Jayeng Hutapea M.Kom.', '69441152', 'BRI', 'Pagar Alam', 'Bogor', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(13, 'Anggabaya Napitupulu S.E.I', 'emansur@example.net', '(+62) 614 0065 899', 'Gg. Padma No. 244, Kediri 61498, Babel', 'Yayasan Lailasari', NULL, 'Maimunah Dinda Uyainah S.Farm', '50069774', 'BCA', 'Tanjungbalai', 'Jayapura', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(14, 'Rahayu Qori Hastuti', 'dacin99@example.net', '(+62) 27 3948 930', 'Dk. Bakhita No. 769, Serang 67407, Sumbar', 'Fa Saptono', NULL, 'Kanda Darijan Firmansyah', '30137265', 'BNI', 'Ambon', 'Pekanbaru', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(15, 'Latif Firmansyah S.Farm', 'pmandasari@example.org', '021 7031 2511', 'Gg. Ikan No. 266, Payakumbuh 97876, Kalsel', 'PT Siregar', NULL, 'Irsad Jinawi Gunawan S.H.', '97390279', 'BNI', 'Depok', 'Surabaya', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(16, 'Ibun Waskita', 'anggabaya60@example.org', '(+62) 548 3355 628', 'Ki. Monginsidi No. 57, Pematangsiantar 77161, Sultra', 'Fa Yuliarti', NULL, 'Balamantri Irawan M.Kom.', '46270372', 'BNI', 'Subulussalam', 'Padangpanjang', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(17, 'Siska Dian Rahmawati', 'narpati.vicky@example.net', '(+62) 776 4595 1354', 'Jr. Basmol Raya No. 166, Kendari 44283, Papua', 'Yayasan Saputra Hutagalung Tbk', NULL, 'Umay Latupono M.Kom.', '95151938', 'BRI', 'Sorong', 'Probolinggo', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(18, 'Kala Wacana', 'wwaskita@example.org', '(+62) 563 3484 6083', 'Ds. Siliwangi No. 131, Langsa 60755, Sulteng', 'UD Nainggolan Manullang', NULL, 'Hamima Pertiwi', '21009623', 'BSI', 'Sawahlunto', 'Bitung', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(19, 'Argono Margana Samosir', 'mayasari.jono@example.org', '(+62) 758 0917 816', 'Psr. Sutarto No. 359, Kediri 51649, Gorontalo', 'PD Nainggolan Prasetya (Persero) Tbk', NULL, 'Gamani Karja Sihotang', '77796829', 'BCA', 'Solok', 'Dumai', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(20, 'Jaeman Firmansyah', 'handayani.paris@example.org', '(+62) 506 8788 603', 'Jr. Abdul Rahmat No. 721, Cirebon 62890, Sumbar', 'UD Wasita Mardhiyah Tbk', NULL, 'Jasmani Salahudin', '23817121', 'BRI', 'Lubuklinggau', 'Ambon', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(21, 'Jarwa Slamet Uwais', 'tirtayasa28@example.com', '(+62) 490 7784 423', 'Psr. R.E. Martadinata No. 379, Padangsidempuan 60083, Papua', 'UD Suartini Purnawati', NULL, 'Balamantri Sihotang M.Ak', '19633297', 'BSI', 'Padang', 'Bukittinggi', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(22, 'Betania Zalindra Maryati', 'budiyanto.nadine@example.org', '(+62) 701 7940 248', 'Dk. Raden No. 880, Sawahlunto 89186, Pabar', 'UD Wibowo', NULL, 'Winda Mardhiyah', '60661101', 'BRI', 'Probolinggo', 'Jayapura', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(23, 'Hartaka Mulya Narpati', 'zulaikha06@example.net', '0434 5604 372', 'Psr. Baha No. 100, Tidore Kepulauan 12569, Jateng', 'PJ Budiyanto Sitorus', NULL, 'Luluh Rajasa', '97897186', 'BJB', 'Cilegon', 'Surakarta', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(24, 'Tasnim Opung Rajasa', 'nriyanti@example.com', '(+62) 897 3169 247', 'Dk. Hasanuddin No. 454, Gunungsitoli 93635, Kepri', 'CV Puspasari Suryatmi', NULL, 'Yulia Ade Oktaviani', '61392061', 'BJB', 'Madiun', 'Tanjungbalai', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(25, 'Aisyah Maryati', 'gina32@example.com', '(+62) 630 3491 240', 'Ki. Rajawali Barat No. 294, Banjarbaru 13968, Pabar', 'CV Prasetya Kusmawati', NULL, 'Bajragin Budiyanto', '38629569', 'BNI', 'Banda Aceh', 'Dumai', '2024-09-15 19:11:06', '2024-09-15 19:11:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `vacation` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `address`, `experience`, `photo`, `salary`, `vacation`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Balidin Gamani Iswahyudi', 'rdongoran@example.net', '(+62) 334 2686 7768', 'Jln. Orang No. 196, Subulussalam 14406, Riau', '4 Year', NULL, 880, NULL, 'Denpasar', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(2, 'Gara Mulya Waskita M.M.', 'kemba40@example.net', '(+62) 720 6307 0107', 'Psr. Pacuan Kuda No. 632, Bima 72484, Sulbar', '5 Year', NULL, 184, NULL, 'Bandar Lampung', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(3, 'Catur Wahyudin S.Pt', 'fathonah.palastri@example.net', '(+62) 251 6100 5091', 'Jln. Bakhita No. 806, Palembang 41414, Maluku', '1 Year', NULL, 215, NULL, 'Bitung', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(4, 'Latika Hasanah', 'danang04@example.com', '(+62) 313 2026 213', 'Ki. Panjaitan No. 205, Gunungsitoli 72547, Kaltim', '4 Year', NULL, 657, NULL, 'Pekanbaru', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(5, 'Kasiyah Rahimah', 'wani52@example.org', '0651 6211 286', 'Gg. Eka No. 679, Parepare 48612, Sulteng', '0 Year', NULL, 795, NULL, 'Medan', '2024-09-15 19:11:06', '2024-09-15 19:11:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_15_044621_add_username_and_photo_to_users', 1),
(6, '2023_03_24_080143_create_employees_table', 1),
(7, '2023_03_29_025458_create_customers_table', 1),
(8, '2023_03_30_020042_create_suppliers_table', 1),
(9, '2023_03_30_083652_create_advance_salaries_table', 1),
(10, '2023_04_01_142106_create_pay_salaries_table', 1),
(11, '2023_04_02_141037_create_attendences_table', 1),
(12, '2023_04_04_041700_create_categories_table', 1),
(13, '2023_04_04_052256_create_products_table', 1),
(14, '2023_04_10_043156_create_orders_table', 1),
(15, '2023_04_10_044212_create_order_details_table', 1),
(16, '2023_04_13_222344_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `total_products` int(11) NOT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `vat` int(11) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `pay` int(11) DEFAULT NULL,
  `due` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `order_status`, `total_products`, `sub_total`, `vat`, `invoice_no`, `total`, `payment_status`, `pay`, `due`, `created_at`, `updated_at`) VALUES
(1, '20', '2024-09-15', 'complete', 6, 247, 12, 'INV-000001', 259, 'HandCash', 259, 0, '2024-09-15 19:17:45', '2024-09-15 19:19:41'),
(2, '2', '2024-09-16', 'complete', 2, 68, 3, 'INV-000002', 71, 'Cheque', 71, 0, '2024-09-16 06:11:38', '2024-09-16 06:12:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unitcost` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `unitcost`, `total`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 3, 34, 107, '2024-09-15 19:17:45', NULL),
(2, '1', '9', 1, 54, 57, '2024-09-15 19:17:45', NULL),
(3, '1', '2', 1, 35, 37, '2024-09-15 19:17:45', NULL),
(4, '1', '5', 1, 56, 59, '2024-09-15 19:17:45', NULL),
(5, '2', '1', 2, 34, 71, '2024-09-16 06:11:38', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pay_salaries`
--

CREATE TABLE `pay_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `paid_amount` int(11) NOT NULL,
  `advance_salary` int(11) DEFAULT NULL,
  `due_salary` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'pos.menu', 'web', 'pos', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(2, 'employee.menu', 'web', 'employee', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(3, 'customer.menu', 'web', 'customer', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(4, 'supplier.menu', 'web', 'supplier', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(5, 'salary.menu', 'web', 'salary', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(6, 'attendence.menu', 'web', 'attendence', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(7, 'category.menu', 'web', 'category', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(8, 'product.menu', 'web', 'product', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(9, 'orders.menu', 'web', 'orders', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(10, 'stock.menu', 'web', 'stock', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(11, 'roles.menu', 'web', 'roles', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(12, 'user.menu', 'web', 'user', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(13, 'database.menu', 'web', 'database', '2024-09-15 19:11:06', '2024-09-15 19:11:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `product_garage` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_store` int(11) DEFAULT NULL,
  `buying_date` date DEFAULT NULL,
  `expire_date` varchar(255) DEFAULT NULL,
  `buying_price` int(11) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `product_name`, `category_id`, `supplier_id`, `product_code`, `product_garage`, `product_image`, `product_store`, `buying_date`, `expire_date`, `buying_price`, `selling_price`, `created_at`, `updated_at`) VALUES
(1, 'quia', 2, 7, 'PC01', 'B', NULL, 361, '2024-09-15', '2026-09-15 14:11:06', 26, 34, '2024-09-15 19:11:06', '2024-09-16 06:12:00'),
(2, 'velit', 1, 8, 'PC02', 'B', NULL, 145, '2024-09-15', '2026-09-15 14:11:06', 19, 35, '2024-09-15 19:11:06', '2024-09-15 19:19:09'),
(3, 'eaque', 1, 10, 'PC03', 'C', NULL, 126, '2024-09-15', '2026-09-15 14:11:06', 47, 19, '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(4, 'quo', 5, 5, 'PC04', 'A', NULL, 166, '2024-09-15', '2026-09-15 14:11:06', 49, 2, '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(5, 'reprehenderit', 1, 1, 'PC05', 'B', NULL, 291, '2024-09-15', '2026-09-15 14:11:06', 25, 56, '2024-09-15 19:11:06', '2024-09-15 19:19:09'),
(6, 'harum', 2, 8, 'PC06', 'A', NULL, 906, '2024-09-15', '2026-09-15 14:11:06', 14, 18, '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(7, 'magni', 3, 10, 'PC07', 'C', NULL, 521, '2024-09-15', '2026-09-15 14:11:06', 84, 59, '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(8, 'voluptas', 1, 8, 'PC08', 'B', NULL, 871, '2024-09-15', '2026-09-15 14:11:06', 84, 53, '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(9, 'magni', 4, 8, 'PC09', 'A', NULL, 700, '2024-09-15', '2026-09-15 14:11:06', 75, 54, '2024-09-15 19:11:06', '2024-09-15 19:19:09'),
(10, 'ut', 2, 3, 'PC10', 'B', NULL, 887, '2024-09-15', '2026-09-15 14:11:06', 95, 31, '2024-09-15 19:11:06', '2024-09-15 19:11:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'web', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(2, 'Admin', 'web', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(3, 'Account', 'web', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(4, 'Manager', 'web', '2024-09-15 19:11:06', '2024-09-15 19:11:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 4),
(6, 1),
(7, 1),
(8, 1),
(8, 4),
(9, 1),
(9, 4),
(10, 1),
(10, 4),
(11, 1),
(12, 1),
(12, 2),
(12, 3),
(13, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `shopname` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `account_holder` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_branch` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `shopname`, `photo`, `type`, `account_holder`, `account_number`, `bank_name`, `bank_branch`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Bakijan Wawan Saragih', 'radriansyah@example.org', '0991 0837 640', 'Psr. Gotong Royong No. 937, Kendari 33568, Sulsel', 'PJ Prakasa Tbk', NULL, 'Distributor', 'Lanang Utama', '25848082', 'BNI', 'Gunungsitoli', 'Lubuklinggau', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(2, 'Kasusra Prakasa', 'hutagalung.belinda@example.org', '(+62) 380 5251 870', 'Jln. Uluwatu No. 949, Surabaya 66583, Babel', 'CV Purnawati', NULL, 'Distributor', 'Lidya Purnawati', '92772781', 'BRI', 'Banjarmasin', 'Pekalongan', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(3, 'Kasusra Irawan S.Kom', 'zahra.sudiati@example.org', '0550 3625 443', 'Gg. Bass No. 265, Administrasi Jakarta Timur 11372, Jatim', 'Yayasan Halim Hartati', NULL, 'Distributor', 'Salwa Laksita', '60564301', 'BJB', 'Binjai', 'Banjarmasin', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(4, 'Dasa Hutagalung S.E.', 'elma.nuraini@example.org', '(+62) 714 1571 1981', 'Jr. K.H. Maskur No. 663, Administrasi Jakarta Selatan 11079, Riau', 'Fa Usamah', NULL, 'Whole Seller', 'Dimaz Kurniawan', '44171701', 'BSI', 'Ambon', 'Pasuruan', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(5, 'Cinta Kuswandari', 'citra.andriani@example.org', '0911 8521 487', 'Psr. Baan No. 903, Palu 17309, Bengkulu', 'UD Suartini Saefullah (Persero) Tbk', NULL, 'Whole Seller', 'Febi Riyanti', '51039473', 'BSI', 'Ternate', 'Palopo', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(6, 'Marsito Marsudi Kuswoyo S.Pt', 'uchita.purwanti@example.com', '(+62) 776 6478 2767', 'Kpg. Dipenogoro No. 7, Tual 77081, Maluku', 'Fa Mandasari (Persero) Tbk', NULL, 'Distributor', 'Sabrina Hariyah', '48856507', 'BSI', 'Jayapura', 'Yogyakarta', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(7, 'Daliono Sihotang', 'kurniawan.muhammad@example.com', '(+62) 269 2333 950', 'Ds. Veteran No. 657, Blitar 12230, Gorontalo', 'PJ Susanti (Persero) Tbk', NULL, 'Whole Seller', 'Aris Cahya Setiawan', '13766552', 'BNI', 'Sibolga', 'Kendari', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(8, 'Karta Teddy Hakim S.H.', 'bella.aryani@example.org', '0594 7780 2013', 'Jln. Abdul No. 252, Metro 31072, NTT', 'PD Mansur Yuliarti (Persero) Tbk', NULL, 'Distributor', 'Gading Hendri Prasetyo M.Farm', '83811932', 'BJB', 'Tanjung Pinang', 'Gunungsitoli', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(9, 'Yono Galih Wijaya', 'nmaheswara@example.net', '029 9598 303', 'Kpg. Astana Anyar No. 518, Palopo 10200, Gorontalo', 'CV Suryono', NULL, 'Distributor', 'Paulin Sadina Yolanda', '70106719', 'BSI', 'Bandar Lampung', 'Banda Aceh', '2024-09-15 19:11:06', '2024-09-15 19:11:06'),
(10, 'Ira Usada', 'putra.gamblang@example.com', '(+62) 483 0373 210', 'Jln. Bawal No. 248, Bitung 67229, NTT', 'CV Rahayu (Persero) Tbk', NULL, 'Distributor', 'Chelsea Rahimah', '13611591', 'BRI', 'Makassar', 'Sawahlunto', '2024-09-15 19:11:06', '2024-09-15 19:11:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `photo`) VALUES
(1, 'Admin', 'admin@gmail.com', '2024-09-15 19:11:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '89JSK1spYCWuZymYW3O6MNQ0MtNisQkrzyVYYr1Ly6lvFEoH2RwnSb0I8rih', '2024-09-15 19:11:06', '2024-09-16 08:10:44', 'admin', '1810320582699284.png'),
(2, 'User', 'user@gmail.com', '2024-09-15 19:11:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SGfyqDNFkl', '2024-09-15 19:11:06', '2024-09-15 19:11:06', 'user', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `advance_salaries`
--
ALTER TABLE `advance_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `attendences`
--
ALTER TABLE `attendences`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD UNIQUE KEY `employees_phone_unique` (`phone`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `pay_salaries`
--
ALTER TABLE `pay_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`),
  ADD UNIQUE KEY `suppliers_phone_unique` (`phone`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `advance_salaries`
--
ALTER TABLE `advance_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `attendences`
--
ALTER TABLE `attendences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pay_salaries`
--
ALTER TABLE `pay_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
