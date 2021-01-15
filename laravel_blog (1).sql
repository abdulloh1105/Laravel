-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2021 at 12:41 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_order_widgets`
--

CREATE TABLE `admin_order_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_groups`
--

CREATE TABLE `attribute_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_groups`
--

INSERT INTO `attribute_groups` (`id`, `title`) VALUES
(1, 'Механизм'),
(2, 'Стекло'),
(3, 'Ремешок'),
(4, 'Корпус'),
(5, 'Индикация');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_products`
--

CREATE TABLE `attribute_products` (
  `attr_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_products`
--

INSERT INTO `attribute_products` (`attr_id`, `product_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 17),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(9, 8),
(9, 9),
(9, 10),
(9, 11),
(9, 12),
(9, 13),
(9, 14),
(9, 15),
(9, 16),
(9, 17);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attr_group_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `value`, `attr_group_id`) VALUES
(1, 'Механика с автоподзаводом', 1),
(2, 'Механика с ручным заводом', 1),
(3, 'Кварцевый от батарейки', 1),
(4, 'Кварцевый от солнечного аккумулятора', 1),
(5, 'Сапфировое', 2),
(6, 'Минеральное', 2),
(7, 'Полимерное', 2),
(8, 'Стальной', 3),
(9, 'Кожаный', 3),
(10, 'Каучуковый', 3),
(11, 'Полимерный', 3),
(12, 'Нержавеющая сталь', 4),
(13, 'Титановый сплав', 4),
(14, 'Латунь', 4),
(15, 'Полимер', 4),
(16, 'Керамика', 4),
(17, 'Алюминий', 4),
(18, 'Аналоговые', 5),
(19, 'Цифровые', 5);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'brand_no_image.jpg',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `alias`, `img`, `description`) VALUES
(1, 'Casio', 'casio', 'abt-1.jpg', 'In sit amet sapien eros Integer dolore magna aliqua'),
(2, 'Citizen', 'citizen', 'abt-2.jpg', 'In sit amet sapien eros Integer dolore magna aliqua'),
(3, 'Royal London', 'royal-london', 'abt-3.jpg', 'In sit amet sapien eros Integer dolore magna aliqua'),
(4, 'Seiko', 'seiko', 'seiko.png', 'In sit amet sapien eros Integer dolore magna aliqua'),
(5, 'Diesel', 'diesel', 'diesel.png', 'In sit amet sapien eros Integer dolore magna aliqua');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `alias`, `parent_id`, `keywords`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Men', 'men', 0, 'Men', 'Men', NULL, NULL, NULL),
(2, 'Women', 'women', 0, 'Women', 'Women', NULL, NULL, NULL),
(3, 'Kids', 'kids', 0, 'Kids', 'Kids', NULL, NULL, NULL),
(4, 'Электронные', 'elektronnye', 1, 'Электронные', 'Электронные', NULL, NULL, NULL),
(5, 'Механические', 'mehanicheskie', 1, 'mehanicheskie', 'mehanicheskie', NULL, NULL, NULL),
(6, 'Casio', 'casio', 4, 'Casio', 'Casio', NULL, NULL, NULL),
(7, 'Citizen', 'citizen', 4, 'Citizen', 'Citizen', NULL, NULL, NULL),
(8, 'Royal London', 'royal-london', 5, 'Royal London', 'Royal London', NULL, NULL, NULL),
(9, 'Seiko', 'seiko', 5, 'Seiko', 'Seiko', NULL, NULL, NULL),
(10, 'Epos', 'epos', 5, 'Epos', 'Epos', NULL, NULL, NULL),
(11, 'Электронные', 'elektronnye-11', 2, 'Электронные', 'Электронные', NULL, NULL, NULL),
(12, 'Механические', 'mehanicheskie-12', 2, 'Механические', 'Механические', NULL, NULL, NULL),
(13, 'Adriatica', 'adriatica', 11, 'Adriatica', 'Adriatica', NULL, NULL, NULL),
(14, 'Anne Klein', 'nne-klein', 12, 'Anne Klein', 'Anne Klein', NULL, NULL, NULL),
(15, 'Для девочек', 'girls', 3, 'girls', 'girls', NULL, NULL, NULL),
(16, 'Для мальчиков', 'boys', 3, 'boys', 'boys', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_left` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` double(15,2) NOT NULL,
  `base` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title`, `code`, `symbol_left`, `symbol_right`, `value`, `base`) VALUES
(1, 'гривна', 'UAH', '', 'грн.', 25.80, '0'),
(2, 'доллар', 'USD', '$', '', 1.00, '1'),
(3, 'евро', 'EUR', '€', '', 0.88, '0');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `img`) VALUES
(1, 1, 'g1-1.png'),
(2, 1, 'g1-2.png'),
(3, 1, 'g1-3.png'),
(4, 2, 'g2-1.png'),
(5, 2, 'g2-2.png'),
(6, 2, 'g2-3.png'),
(7, 3, 'g3-1.png'),
(8, 3, 'g3-2.png'),
(9, 3, 'g3-3.png'),
(10, 4, 'g4-1.png'),
(11, 4, 'g4-2.png'),
(12, 4, 'g4-3.png'),
(13, 5, 'g5-1.png'),
(14, 5, 'g5-2.png'),
(15, 5, 'g5-3.png'),
(16, 6, 'g6-1.png'),
(17, 6, 'g6-2.png'),
(18, 6, 'g6-3.png'),
(19, 7, 'g7-1.png'),
(20, 7, 'g7-2.png'),
(21, 7, 'g7-3.png'),
(22, 8, 'g8-1.png'),
(23, 8, 'g8-2.png'),
(24, 8, 'g8-3.png'),
(25, 9, 'g9-1.png'),
(26, 9, 'g9-2.png'),
(27, 9, 'g9-3.png'),
(28, 10, 'g10-1.png'),
(29, 10, 'g10-2.png'),
(30, 10, 'g10-3.png'),
(31, 11, 'g11-1.png'),
(32, 11, 'g11-2.png'),
(33, 11, 'g11-3.png'),
(34, 12, 'g12-1.png'),
(35, 12, 'g12-2.png'),
(36, 12, 'g12-3.png'),
(37, 13, 'g13-1.png'),
(38, 13, 'g13-2.png'),
(39, 13, 'g13-3.png'),
(40, 14, 'g14-1.png'),
(41, 14, 'g14-2.png'),
(42, 14, 'g14-3.png'),
(43, 15, 'g15-1.png'),
(44, 15, 'g15-2.png'),
(45, 15, 'g15-3.png'),
(46, 16, 'g16-1.png'),
(47, 16, 'g16-2.png'),
(48, 16, 'g16-3.png'),
(49, 17, 'g17-1.png'),
(50, 17, 'g17-2.png'),
(51, 17, 'g17-3.png');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `language`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ru', '2021-01-15 06:30:29', '2021-01-15 06:30:29'),
(2, NULL, 'en', '2021-01-15 06:30:29', '2021-01-15 06:30:29');

-- --------------------------------------------------------

--
-- Table structure for table `meta_tags`
--

CREATE TABLE `meta_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `h1` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_text` text COLLATE utf8_unicode_ci,
  `canonical` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `robots` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `changefreq` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_03_17_130122_create_roles_table', 1),
(2, '2018_04_12_000000_create_users_table', 1),
(3, '2018_08_29_200844_create_languages_table', 1),
(4, '2018_08_29_205156_create_translations_table', 1),
(5, '2018_10_12_100000_create_password_resets_table', 1),
(6, '2019_05_24_083700_create_user_roles_table', 1),
(7, '2019_05_24_083812_create_attribute_groups_table', 1),
(8, '2019_05_24_083857_create_attribute_values_table', 1),
(9, '2019_05_24_083938_create_attribute_products_table', 1),
(10, '2019_05_24_084002_create_brands_table', 1),
(11, '2019_05_24_084030_create_categories_table', 1),
(12, '2019_05_24_084109_create_currencies_table', 1),
(13, '2019_05_24_084134_create_galleries_table', 1),
(14, '2019_05_24_084159_create_orders_table', 1),
(15, '2019_05_24_084228_create_order_products_table', 1),
(16, '2019_05_24_084249_create_products_table', 1),
(17, '2019_05_24_084319_create_related_products_table', 1),
(18, '2019_06_09_014818_create_admin_order_widgets_table', 1),
(19, '2020_12_19_062127_create_meta_tags_table', 1),
(20, '2021_01_07_161633_create_posts_table', 1),
(21, '2021_01_08_143624_create_template_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `sum` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `created_at`, `updated_at`, `deleted_at`, `currency`, `note`, `sum`) VALUES
(1, 1, '0', '2021-01-14 19:00:00', '2021-01-15 10:42:17', NULL, 'USD', 'Note', NULL),
(2, 2, '0', '2021-01-14 19:00:00', NULL, NULL, 'USD', 'Note', NULL),
(3, 3, '0', '2021-01-14 19:00:00', NULL, NULL, 'USD', 'Note', NULL),
(4, 4, '0', '2021-01-14 19:00:00', NULL, NULL, 'USD', 'Note', NULL),
(5, 5, '0', '2021-01-14 19:00:00', NULL, NULL, 'USD', 'Note', NULL),
(6, 6, '0', '2021-01-14 19:00:00', NULL, NULL, 'USD', 'Note', NULL),
(7, 7, '0', '2021-01-14 19:00:00', NULL, NULL, 'USD', 'Note', NULL),
(8, 8, '0', '2021-01-14 19:00:00', NULL, NULL, 'USD', 'Note', NULL),
(9, 9, '0', '2021-01-14 19:00:00', NULL, NULL, 'USD', 'Note', NULL),
(10, 10, '0', '2021-01-14 19:00:00', NULL, NULL, 'USD', 'Note', NULL),
(11, 11, '0', '2021-01-14 19:00:00', NULL, NULL, 'USD', 'Note', NULL),
(12, 12, '0', '2021-01-14 19:00:00', NULL, NULL, 'USD', 'Note', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `qty`, `title`, `price`) VALUES
(1, 1, 1, 3, 'Casio Test Prod', 68.00),
(2, 1, 2, 3, 'Casio Test Prod', 131.00),
(3, 1, 3, 4, 'Casio Test Prod', 135.00),
(4, 1, 4, 2, 'Casio Test Prod', 53.00),
(5, 1, 5, 1, 'Casio Test Prod', 147.00),
(6, 2, 1, 4, 'Casio Test Prod', 79.00),
(7, 2, 2, 4, 'Casio Test Prod', 136.00),
(8, 2, 3, 1, 'Casio Test Prod', 95.00),
(9, 2, 4, 4, 'Casio Test Prod', 108.00),
(10, 2, 5, 3, 'Casio Test Prod', 142.00),
(11, 3, 1, 2, 'Casio Test Prod', 66.00),
(12, 3, 2, 3, 'Casio Test Prod', 200.00),
(13, 3, 3, 1, 'Casio Test Prod', 77.00),
(14, 3, 4, 2, 'Casio Test Prod', 131.00),
(15, 3, 5, 1, 'Casio Test Prod', 74.00),
(16, 4, 1, 1, 'Casio Test Prod', 52.00),
(17, 4, 2, 1, 'Casio Test Prod', 175.00),
(18, 4, 3, 3, 'Casio Test Prod', 56.00),
(19, 4, 4, 1, 'Casio Test Prod', 166.00),
(20, 4, 5, 4, 'Casio Test Prod', 129.00),
(21, 5, 1, 2, 'Casio Test Prod', 60.00),
(22, 5, 2, 4, 'Casio Test Prod', 97.00),
(23, 5, 3, 4, 'Casio Test Prod', 196.00),
(24, 5, 4, 3, 'Casio Test Prod', 66.00),
(25, 5, 5, 1, 'Casio Test Prod', 139.00),
(26, 6, 1, 3, 'Casio Test Prod', 172.00),
(27, 6, 2, 3, 'Casio Test Prod', 178.00),
(28, 6, 3, 1, 'Casio Test Prod', 85.00),
(29, 6, 4, 2, 'Casio Test Prod', 126.00),
(30, 6, 5, 4, 'Casio Test Prod', 195.00),
(31, 7, 1, 2, 'Casio Test Prod', 186.00),
(32, 7, 2, 1, 'Casio Test Prod', 112.00),
(33, 7, 3, 3, 'Casio Test Prod', 50.00),
(34, 7, 4, 3, 'Casio Test Prod', 101.00),
(35, 7, 5, 3, 'Casio Test Prod', 91.00),
(36, 8, 1, 3, 'Casio Test Prod', 89.00),
(37, 8, 2, 1, 'Casio Test Prod', 185.00),
(38, 8, 3, 4, 'Casio Test Prod', 40.00),
(39, 8, 4, 4, 'Casio Test Prod', 185.00),
(40, 8, 5, 1, 'Casio Test Prod', 138.00),
(41, 9, 1, 1, 'Casio Test Prod', 193.00),
(42, 9, 2, 4, 'Casio Test Prod', 40.00),
(43, 9, 3, 4, 'Casio Test Prod', 173.00),
(44, 9, 4, 2, 'Casio Test Prod', 158.00),
(45, 9, 5, 3, 'Casio Test Prod', 92.00),
(46, 10, 1, 1, 'Casio Test Prod', 112.00),
(47, 10, 2, 3, 'Casio Test Prod', 42.00),
(48, 10, 3, 1, 'Casio Test Prod', 126.00),
(49, 10, 4, 4, 'Casio Test Prod', 172.00),
(50, 10, 5, 1, 'Casio Test Prod', 103.00),
(51, 11, 1, 2, 'Casio Test Prod', 63.00),
(52, 11, 2, 2, 'Casio Test Prod', 173.00),
(53, 11, 3, 2, 'Casio Test Prod', 185.00),
(54, 11, 4, 1, 'Casio Test Prod', 70.00),
(55, 11, 5, 2, 'Casio Test Prod', 178.00),
(56, 12, 1, 2, 'Casio Test Prod', 195.00),
(57, 12, 2, 4, 'Casio Test Prod', 177.00),
(58, 12, 3, 1, 'Casio Test Prod', 171.00),
(59, 12, 4, 3, 'Casio Test Prod', 176.00),
(60, 12, 5, 2, 'Casio Test Prod', 63.00);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` tinyint(3) UNSIGNED NOT NULL,
  `template_id` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `template_id`, `title`, `alias`, `short`, `description`, `status`, `img`, `created_at`, `updated_at`) VALUES
(1, 5, 3, 'Post 1', 'post-1402', 'post short', '<p>short description</p>', '1', 'alternative-1610706696.png', '2021-01-15 10:31:36', '2021-01-15 10:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` tinyint(3) UNSIGNED NOT NULL,
  `brand_id` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `old_price` double(8,2) DEFAULT '0.00',
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hit` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `title`, `alias`, `content`, `price`, `old_price`, `status`, `keywords`, `description`, `img`, `hit`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 9, 1, 'Casio MRP-700-1 AVEFKXF - Касио МРП 700', 'casio-mrp-700-1avef', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 300.00, 250.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '1.png', '1', NULL, NULL, NULL),
(2, 8, 1, 'Casio MQ-24-7 BUL KXF - Касио МК', 'casio-mq-24-7bul', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 200.00, 200.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '2.png', '1', NULL, NULL, NULL),
(3, 8, 1, 'Casio GA-1000-1 AER KXF - Касио ДЖА АЕ К', 'casio-ga-1000-1aer', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 400.00, 100.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '3.png', '1', NULL, NULL, NULL),
(4, 3, 2, 'Citizen JP1010-00E KXF - Ситизен Дж П К ИКС Ф', 'citizen-jp1010-00e', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 350.00, 200.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '4.png', '1', NULL, NULL, NULL),
(5, 5, 2, 'Citizen BJ2111-08E KXF - Ситизен БДж211 ФБ', 'citizen-bj2111-08e', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 320.00, 220.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '5.png', '1', NULL, NULL, NULL),
(6, 5, 2, 'Citizen AT0696-59E KX - Ситизен АТС ФВ', 'citizen-at0696-59e', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 370.00, 250.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '6.png', '1', NULL, NULL, NULL),
(7, 10, 3, 'Q&Q Water Resistance VFQ - Кью Кью Вотер Резинтент ФВ', 'q-and-q-q956j302y', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 320.00, 220.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '7.png', '1', NULL, NULL, NULL),
(8, 10, 4, 'Royal London 41040-01VQ - Ройял Лондон Часы 410 ВКью', 'royal-london-41040-01', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 370.00, 250.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '8.png', '1', NULL, NULL, NULL),
(9, 9, 4, 'Royal London 20034-02 VQ - Ройял Лондон Часы 900', 'royal-london-20034-02', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 320.00, 220.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '9.png', '1', NULL, NULL, NULL),
(10, 8, 4, 'Royal London 41156-02 KVQ - - Ройял Лондон Часы ФВ 8', 'royal-london-41156-02', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 370.00, 250.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '10.png', '1', NULL, NULL, NULL),
(11, 2, 2, 'Swimming Watch VQ-01 - Часы для плавание в бассейне', 'chasy-1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 370.00, 250.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '11.png', '0', NULL, NULL, NULL),
(12, 2, 2, 'Running Watch VQ-9 - Беговые часы на андроиде', 'chasy-2', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 370.00, 250.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '12.png', '0', NULL, NULL, NULL),
(13, 15, 2, 'Android Watch BQ-1 - Андроид часы БКЬю', 'chasy-3', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 370.00, 250.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '13.png', '0', NULL, NULL, NULL),
(14, 13, 2, 'Sport Watch BQ-009 - Часы спортивные Ультра', 'chasy-4', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 370.00, 250.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '14.png', '0', NULL, NULL, NULL),
(15, 16, 2, 'Apple Watch B Sport - Эпл Часы 4', 'chasy-5', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 370.00, 250.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '15.png', '0', NULL, NULL, NULL),
(16, 12, 2, 'Rolex Gold B For Water - Ролекс Голд Б для Плавания', 'chasy-6', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 370.00, 250.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '16.png', '0', NULL, NULL, NULL),
(17, 11, 2, 'Sumsung Gear Pro F-sport - Самсунг Геар Про Ф Спорт', 'chasy-7', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.</p>', 370.00, 250.00, '1', 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla.', '17.png', '0', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

CREATE TABLE `related_products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `related_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `related_products`
--

INSERT INTO `related_products` (`product_id`, `related_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(14, 3),
(15, 1),
(15, 2),
(15, 3),
(16, 1),
(16, 2),
(16, 3),
(17, 1),
(17, 2),
(17, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(3, 'admin'),
(1, 'disabled'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `src` varchar(512) NOT NULL,
  `title` varchar(512) NOT NULL,
  `section` varchar(1024) NOT NULL,
  `order_num` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `src`, `title`, `section`, `order_num`, `status`) VALUES
(1, 'post', 'Post', '1', 0, 0),
(2, 'catalog', 'Catalog', '2', 0, 0),
(3, 'news', 'News', '1', 0, 0),
(4, 'faq', 'FAQ', '1', 0, 0),
(5, 'articles', 'Articles', '1', 0, 0),
(6, 'contact', 'Contact', '1', 0, 0),
(7, 'gallery', 'Gallery', '1', 0, 0),
(8, '', 'Default', '0', 0, 0),
(9, 'discount', 'Discount', '1', 0, 0),
(10, 'about', 'About', '1', 0, 0),
(11, 'projects', 'Projects', '1', 0, 0),
(12, 'service', 'Service', '1', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `group` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `facebook_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '', 'admin', 'a@a.ru', '', NULL, '$2y$10$uJFhcoz7MM4SEfd4eL/UNOjoHyFk9uKQcQ2ZdSx7IIh5XcjjoaSc2', NULL, NULL, NULL, NULL),
(2, '', 'user', 'u@u.ru', '', NULL, '$2y$10$5ihIoKu/.5pp0dgSk5TBu.3O3NLJwsrc3O2qrhsMMPrIHThB.wf7a', NULL, NULL, NULL, NULL),
(3, '', 'sasha', 'admin@admin.ru8', '', NULL, '$2y$10$JobZ8B2UPAbkIkfAm1qvjeIFwQvciSO.aXUezphCPI5IIcPXnqELC', NULL, NULL, NULL, NULL),
(4, '', 'masha', 'admin@admin.ru9', '', NULL, '$2y$10$l4RSPI6tPrVt0gcm.iEcyOHnEN3VG.acMIqdHHNgtISWbl154nMh2', NULL, NULL, NULL, NULL),
(5, '', 'pasha', 'admin@admin.ru10', '', NULL, '$2y$10$jn8PhM1Esl6juRNX3Vzj8.oier2kn4AVd/B6BK8Xm5IiAw8PK4x4W', NULL, NULL, NULL, NULL),
(6, '', 'misha', 'admin@admin.ru11', '', NULL, '$2y$10$Zh7rLV/w6XTY7kN2HXybwee0u6aDjFfQwUlBFjSAnoERg9cAUNZY6', NULL, NULL, NULL, NULL),
(7, '', 'dasha', 'admin@admin.ru12', '', NULL, '$2y$10$yxG1x1eot/iP563To8LbZefNJTJj3NfavdoxKpoTLP3ATu/zePPQ2', NULL, NULL, NULL, NULL),
(8, '', 'olia', 'admin@admin.ru13', '', NULL, '$2y$10$D2SxbaJrV2GvY.JT03kbdO6LuAyrT7N8bvFDuIBjbgR6VX3W6G6rO', NULL, NULL, NULL, NULL),
(9, '', 'kolia', 'admin@admin.ru14', '', NULL, '$2y$10$K0OvFxL.DaZFH23xQCP0k.o6M9Gl4NRAUm6.janVp1UdnjptEzsrW', NULL, NULL, NULL, NULL),
(10, '', 'oleg', 'admin@admin.ru15', '', NULL, '$2y$10$1CV4R8uO2KbVcm/5w7pOtOHHNmcVTvJS29ePzOVPpOVz73eKCXbNq', NULL, NULL, NULL, NULL),
(11, '', 'ira', 'admin@admin.ru16', '', NULL, '$2y$10$x4YR64L6s0sKG2utx9BRdOBkQzd.ino24DDfa41D3P5X2.v0qPV.G', NULL, NULL, NULL, NULL),
(12, '', 'nastia', 'admin@admin.ru17', '', NULL, '$2y$10$UpiJz3cz5zXuoH5RH3A0Tun9ARpjkwO0KzHsl35Lfkhq4rPexgXZ6', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 3),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_order_widgets`
--
ALTER TABLE `admin_order_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_products`
--
ALTER TABLE `attribute_products`
  ADD PRIMARY KEY (`attr_id`,`product_id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_values_value_unique` (`value`),
  ADD KEY `attribute_values_attr_group_id_index` (`attr_group_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_alias_unique` (`alias`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_alias_unique` (`alias`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta_tags`
--
ALTER TABLE `meta_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_index` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_alias_unique` (`alias`),
  ADD KEY `posts_category_id_index` (`category_id`),
  ADD KEY `posts_template_id_index` (`template_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_alias_unique` (`alias`),
  ADD KEY `products_category_id_brand_id_index` (`category_id`,`brand_id`),
  ADD KEY `products_hit_index` (`hit`);

--
-- Indexes for table `related_products`
--
ALTER TABLE `related_products`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_language_id_foreign` (`language_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD KEY `user_roles_user_id_foreign` (`user_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_order_widgets`
--
ALTER TABLE `admin_order_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meta_tags`
--
ALTER TABLE `meta_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
