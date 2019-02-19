-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 19 2019 г., 12:01
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `clothes`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'WOMEN', NULL, '2018-10-31 04:56:07', '2018-10-31 04:58:09', NULL),
(2, 'MEN', NULL, '2018-10-31 04:56:55', '2018-10-31 04:58:22', NULL),
(3, 'KIDS', NULL, '2018-10-31 04:58:30', '2018-10-31 04:58:30', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `maintexts`
--

CREATE TABLE `maintexts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'О нас', '\r\n<ul>\r\n<li>Вы до сих пор заказываете одежду на европейских сайтах по высоким ценам?</li>\r\n<li> Дорого, неудобно, долго?</li></ul>\r\n<br><br>\r\n  <div class=\"text\">\r\n\r\n<p>Посетите наш магазин и вы сможете убедиться, что купить недорогую одежду возможно в один \"клик\"!</p>\r\n<em>Sport-time</em>- лучший ассортимент спортивной одежды мировых брендов по самым лучшим ценам для всей семьи.\r\n<p>Наша команда стремится к лучшему, чтобы радовать вас каждый день!</p>\r\n  </div>\r\n', 'about', '', NULL, NULL),
(2, 'Контакты', '\r\n\r\n\r\n<p>\r\nг. Минск , проспект Мира, д. 12<br>\r\nг. Минск , Пушкинский проспект, д. 41<br>\r\nг. Минск , Ленинская улица, д. 9<br>\r\nг. Минск (Минская область), Первомайская улица, д. 84А</p> </h3>\r\n<br><br>\r\n<p><h4>Телефоны:</h4></p>\r\n+375298577547(мтс)\r\n<br>+375297833067(velcom)<br>+375295611617(мтс)<br>+37529599903(velcom)\r\n ', 'contacts', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL,
  `menu_type` int(11) NOT NULL DEFAULT '1',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `position`, `menu_type`, `icon`, `name`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, NULL, 'User', 'User', NULL, NULL, NULL),
(2, NULL, 0, NULL, 'Role', 'Role', NULL, NULL, NULL),
(3, 0, 1, 'fa-database', 'Category', 'Categories', NULL, '2018-10-31 04:53:38', '2018-10-31 04:53:38'),
(4, 0, 1, 'fa-database', 'Product', 'Product\'s', NULL, '2018-10-31 05:07:23', '2018-10-31 05:07:23');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_role`
--

CREATE TABLE `menu_role` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_role`
--

INSERT INTO `menu_role` (`menu_id`, `role_id`) VALUES
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_19_091639_create_maintexts_table', 2),
(4, '2015_10_10_000000_create_menus_table', 3),
(5, '2015_10_10_000000_create_roles_table', 3),
(6, '2015_10_10_000000_update_users_table', 3),
(7, '2015_12_11_000000_create_users_logs_table', 3),
(8, '2016_03_14_000000_update_menus_table', 3),
(9, '2018_10_31_075338_create_category_table', 4),
(10, '2018_10_31_080723_create_product_table', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `body`, `price`, `size`, `article`, `category_id`, `picture`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'T-Shirt', '<p>Nike.Women T-shirt.<br />\r\nWhite with logo. Cotton 100%</p>', '15.99', '42-46', '123489', 1, '1542360337-pwp_sheet2 (1).jpg', '2018-11-16 06:25:37', '2018-11-16 07:17:26', NULL),
(2, 'T-Shirt', '<p>Nike. Women T-shirt.<br />\r\nGrey. Cotton 100%</p>', '19.59', '42-44', '785649', 1, '1542360593-pwp_sheet2 (2).jpg', '2018-11-16 06:29:53', '2018-11-16 07:17:32', NULL),
(3, 'Shirt', '<p>Nike. Women shirt.<br />\r\nTotal black. Cotton 100%</p>', '10', '42-46', '154698', 1, '1542360823-pwp_sheet2 (3).jpg', '2018-11-16 06:33:32', '2018-11-16 07:17:43', NULL),
(4, 'Blouse', '<p>Adidas. Sport blouse.</p>\r\n\r\n<p>Khaki. Nylon 32% Spandex 68%</p>', '30.39', '40-44', '457812', 1, '1542361668-pwp_sheet2 (4).jpg', '2018-11-16 06:37:41', '2018-11-16 07:17:48', NULL),
(5, 'T-Shirt', '<p>Asics. Women T-Shirt.<br />\r\nTotal black.&nbsp;</p>', '15.36', '40-44', '124965', 1, '1542361219-pwp_sheet2 (5).jpg', '2018-11-16 06:40:19', '2018-11-16 07:17:52', NULL),
(6, 'Leggins', '<p>Nike. Sport leggins<br />\r\nBlue. Spandex 60% Cotton 40%&nbsp;</p>', '25.99', 'one size', '124697', 1, '1542361560-pwp_sheet2 (6).jpg', '2018-11-16 06:45:30', '2018-11-16 07:17:58', NULL),
(7, 'Leggins', '<p>Nike. Sport leggins<br />\r\nSpace gray. Spandex 68% Nylon 32%</p>', '29.45', 'one size', '451697', 1, '1542361637-pwp_sheet2 (7).jpg', '2018-11-16 06:47:17', '2018-11-16 07:18:02', NULL),
(8, 'Leggins', '<p>Asics. Sport leggins.<br />\r\nPink. Spandex 59% Nylon 41%</p>', '29.99', 'one size', '451278', 1, '1542361830-pwp_sheet2 (8).jpg', '2018-11-16 06:50:30', '2018-11-16 07:18:11', NULL),
(9, 'Leggins', '<p>Nike. Sport leggins.<br />\r\nTotal black. Cotton 67% Nylon 33%</p>', '33.99', 'one size', '451267', 1, '1542361914-pwp_sheet2 (9).jpg', '2018-11-16 06:51:54', '2018-11-16 07:18:17', NULL),
(10, 'Trousers', '<p>Nike. Sport trousers<br />\r\nPastel yellow. Cotton 90% Nylon 10%&nbsp;</p>', '20.55', '40-46', '145278', 1, '1542362047-pwp_sheet2 (10).jpg', '2018-11-16 06:54:07', '2018-11-16 07:17:21', NULL),
(11, 'Hoodie', '<p>Nike. Hoodie<br />\r\nMustard with logo. Cotton 100%</p>', '50.25', '40-44', '451236', 1, '1542363327-hoodie.jpg', '2018-11-16 06:56:58', '2018-11-16 07:18:24', NULL),
(12, 'Hoodie', '<p>Nike. Hoodie<br />\r\nOrange. Cotton 100%</p>', '50.32', '42-46', '415789', 1, '1542363315-hoodie or.jpg', '2018-11-16 06:58:49', '2018-11-16 07:18:31', NULL),
(13, 'Hoodie', '<p>Nike. Hoodie<br />\r\nPastel pink. Cotton 100%</p>', '51.36', '42-46', '541268', 1, '1542363305-hoodie pink.jpg', '2018-11-16 06:59:48', '2018-11-16 07:18:40', NULL),
(14, 'Jacket', '<pre>\r\nNike. Sports jacket with a zipper.\r\nKhaki. Cotton 100%\r\n</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>', '45', '40-46', '451234', 1, '1544781223-jacket.jpg', '2018-11-16 07:06:56', '2018-12-14 06:53:43', NULL),
(15, 'Jacket', '<pre>\r\nNike.Sports jacket with a zipper\r\nBeige. Cotton 100%</pre>\r\n\r\n<pre>\r\n\r\n&nbsp;</pre>', '45.36', '40-44', '745123', 1, '1542363285-jacket (2).jpg', '2018-11-16 07:09:24', '2018-11-16 07:18:55', NULL),
(16, 'Shorts', '<p>NIke. Man&#39;s shorts.<br />\r\nGrey. Cotton 80% Polyester 20%</p>', '50.00', '42-48', '451239', 2, '1544780091-_PjNO6DTlcY.jpg', '2018-12-14 06:34:51', '2018-12-14 06:34:51', NULL),
(17, 'T-shirt', '<p>Nike. T-shirt.<br />\r\nBurgundy. Cotton 100%</p>', '15.99', '42-46', '478563', 2, '1544780244-8gmXaaG3Pq4.jpg', '2018-12-14 06:37:24', '2018-12-14 06:37:24', NULL),
(18, 'Hoodie', '<p>Nike. Hoodie.<br />\r\nBlack. Cotton 70% Elastan 30%</p>', '50.99', '42-48', '54178/', 2, '1544780529-24ow65QwpV4.jpg', '2018-12-14 06:42:09', '2018-12-14 06:42:09', NULL),
(19, 'Trousers', '<p>Nike. Sport trousers.&nbsp;<br />\r\nPrinted black. cotton 80%&nbsp;</p>', '49.99', '42-48', '458178', 2, '1544780742-79VnAspNM40.jpg', '2018-12-14 06:45:42', '2018-12-14 06:45:42', NULL),
(20, 'Shorts', '<p>Nike. Shorts.<br />\r\nBeige. Cotton 80%&nbsp;Polyester 20%</p>', '35.00', '42-48', '457129', 2, '1544780886-BCA_K0eyQGU.jpg', '2018-12-14 06:48:06', '2018-12-14 06:48:06', NULL),
(21, 'T-Shirt', '<p>Nike. T-shirt.<br />\r\nPrinted black. Cotton 100%</p>', '15.99', '42-48', '784569', 2, '1544781036-bcA3EbjN8PA.jpg', '2018-12-14 06:50:36', '2018-12-14 06:50:36', NULL),
(22, 'Jacket', '<pre>\r\nNike. Sports jacket with a zipper.\r\nBlack and brown. Cotton 100%</pre>', '50.99', '42-48', '451237', 2, '1544781367-BTTlu5DBMZI.jpg', '2018-12-14 06:55:07', '2018-12-14 06:56:07', NULL),
(23, 'Trousers', '<p>Nike. Sport trousers.<br />\r\nBlack. Cotton 100%</p>', '54.00', '42-48', '456321', 2, '1544781541-dCmI1-8eUwI.jpg', '2018-12-14 06:59:01', '2018-12-14 06:59:01', NULL),
(24, 'T-Shirt', '<pre>\r\nNike. T-shirt\r\n​Red. Cotton 100%</pre>', '15.99', '42-48', '784126', 2, '1544784456-fcI98QOl388.jpg', '2018-12-14 07:47:36', '2018-12-14 07:47:36', NULL),
(25, 'T-shirt', '<p>Nike. T-shirt.<br />\r\nSpace grey. Cotton 90% Polyester 20%&nbsp;</p>', '13.99', '42-48', '745123', 2, '1544785436-FDR9S1aFHn4.jpg', '2018-12-14 08:03:56', '2018-12-14 08:03:56', NULL),
(26, 'Shorts', '<p>Nike. Shorts.<br />\r\nSky blue. Cotton 100%</p>', '30.56', '42-48', '745189', 2, '1544785507-gicm9FPzGQw.jpg', '2018-12-14 08:05:07', '2018-12-14 08:05:07', NULL),
(27, 'Shorts', '<p>Nike. Shorts.<br />\r\nSky blue. Cotton 100%</p>', '30.56', '42-48', '745189', 2, '1544785509-gicm9FPzGQw.jpg', '2018-12-14 08:05:09', '2018-12-14 08:24:10', '2018-12-14 08:24:10'),
(28, 'Leggins', '<p>Nike. Leggins<br />\r\nSpace grey. Cotton 50% Elastan 50%</p>', '25.66', 'one size', '745162', 2, '1544785669-IcuFpTRzhF4.jpg', '2018-12-14 08:07:49', '2018-12-14 08:07:49', NULL),
(29, 'Jacket', '<pre>\r\nNike. Sports jacket with a zipper.\r\nLight grey. Cotton 100%</pre>', '45.78', '42-48', '413624', 2, '1544786337-j4dtlcs4WW0.jpg', '2018-12-14 08:18:57', '2018-12-14 08:18:57', NULL),
(30, 'Jacket', '<pre>\r\nNike. Sports jacket with a zipper.\r\nBurgundy. Cotton 100%</pre>', '45', '42-48', '778541', 2, '1544786380-PWJFJfKeqAY.jpg', '2018-12-14 08:19:40', '2018-12-14 08:19:40', NULL),
(31, 'Shirt', '<p>Nike. Shirt<br />\r\nBlack. Cotton 100%</p>', '17.35', 'one size', '784125', 2, '1544786754-QWU6f0DdI-U.jpg', '2018-12-14 08:25:54', '2018-12-14 08:25:54', NULL),
(32, 'Hoodie', '<p>Nike. Hoodie.<br />\r\nKhaki. Cotton 100%</p>', '35', '42-44', '412778', 3, '1544787606--cfP1cTBM8A.jpg', '2018-12-14 08:40:06', '2018-12-14 08:40:06', NULL),
(33, 'T-shirt', '<p>Nike. T-shirt<br />\r\nWhite with print. Cotton 100%</p>', '10.5', '40-44', '122314', 3, '1544787681-cpG8uzg-ang.jpg', '2018-12-14 08:41:21', '2018-12-14 08:41:21', NULL),
(34, 'Vest', '<p>Nike. Vest<br />\r\nBlack and grey.&nbsp;</p>', '55.99', '40-44', '123987', 3, '1544787767-IyFJu0qiWzo.jpg', '2018-12-14 08:42:47', '2018-12-14 08:42:47', NULL),
(35, 'Bra', '<p>Nike. Girl&#39;s bra.<br />\r\nPink and purple.</p>', '10.36', 'one size', '774589', 3, '1544787867-l_S9x1fF_Do.jpg', '2018-12-14 08:44:27', '2018-12-14 08:44:27', NULL),
(36, 'Jacket', '<p>Nike. Jacket<br />\r\nSky blue and green. Cotton 80% Polyester 20%</p>', '40', '40-44', '563214', 3, '1544788151-IYR9C93PJlA.jpg', '2018-12-14 08:49:11', '2018-12-14 08:49:11', NULL),
(37, 'Leggins', '<p>Nike. Leggins<br />\r\nBlack. Polyester 100%</p>', '15.39', 'one size', '889654', 3, '1544788249-PQqCBEhf7xM.jpg', '2018-12-14 08:50:49', '2018-12-14 08:50:49', NULL),
(38, 'Shorts', '<p>Nike. Shorts<br />\r\nRainbow. Syntetics 100%</p>', '5.69', 'one size', '663241', 3, '1544788372-N3gInNkbFwI.jpg', '2018-12-14 08:52:52', '2018-12-14 08:52:52', NULL),
(39, 'Leggins', '<p>Nile. Leggins<br />\r\nRainbow. Polyester 100%</p>', '25.36', 'one size', '125647', 3, '1544788433-YPwUV8BNK6A.jpg', '2018-12-14 08:53:53', '2018-12-14 08:53:53', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2018-10-31 04:33:52', '2018-10-31 04:33:52'),
(2, 'User', '2018-10-31 04:33:52', '2018-10-31 04:33:52');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'lu', 'littlerocky22@yandex.ru', NULL, '$2y$10$FdfdKkDGs.VWFYqwTOMb5uDZjdA0ylq99EnkX7uDApq4u3fHHkV4C', 'BH1jALr8KYunCJ7DJtKGUwPIUW6QOZIHFiHbLmR6GLfw448fYmTntxLWJgo3', '2018-10-31 04:34:24', '2018-10-31 04:34:24');

-- --------------------------------------------------------

--
-- Структура таблицы `users_logs`
--

CREATE TABLE `users_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_logs`
--

INSERT INTO `users_logs` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'created', 'category', 1, '2018-10-31 04:56:07', '2018-10-31 04:56:07'),
(2, 1, 'updated', 'category', 1, '2018-10-31 04:56:42', '2018-10-31 04:56:42'),
(3, 1, 'created', 'category', 2, '2018-10-31 04:56:55', '2018-10-31 04:56:55'),
(4, 1, 'updated', 'category', 1, '2018-10-31 04:58:09', '2018-10-31 04:58:09'),
(5, 1, 'updated', 'category', 2, '2018-10-31 04:58:22', '2018-10-31 04:58:22'),
(6, 1, 'created', 'category', 3, '2018-10-31 04:58:30', '2018-10-31 04:58:30'),
(7, 1, 'updated', 'users', 1, '2018-10-31 05:28:36', '2018-10-31 05:28:36'),
(8, 1, 'created', 'product', 1, '2018-11-16 06:25:37', '2018-11-16 06:25:37'),
(9, 1, 'created', 'product', 2, '2018-11-16 06:29:53', '2018-11-16 06:29:53'),
(10, 1, 'updated', 'product', 1, '2018-11-16 06:30:42', '2018-11-16 06:30:42'),
(11, 1, 'created', 'product', 3, '2018-11-16 06:33:32', '2018-11-16 06:33:32'),
(12, 1, 'updated', 'product', 3, '2018-11-16 06:33:43', '2018-11-16 06:33:43'),
(13, 1, 'created', 'product', 4, '2018-11-16 06:37:41', '2018-11-16 06:37:41'),
(14, 1, 'created', 'product', 5, '2018-11-16 06:40:19', '2018-11-16 06:40:19'),
(15, 1, 'created', 'product', 6, '2018-11-16 06:45:30', '2018-11-16 06:45:30'),
(16, 1, 'updated', 'product', 6, '2018-11-16 06:46:00', '2018-11-16 06:46:00'),
(17, 1, 'created', 'product', 7, '2018-11-16 06:47:17', '2018-11-16 06:47:17'),
(18, 1, 'updated', 'product', 4, '2018-11-16 06:47:48', '2018-11-16 06:47:48'),
(19, 1, 'created', 'product', 8, '2018-11-16 06:50:30', '2018-11-16 06:50:30'),
(20, 1, 'created', 'product', 9, '2018-11-16 06:51:54', '2018-11-16 06:51:54'),
(21, 1, 'created', 'product', 10, '2018-11-16 06:54:07', '2018-11-16 06:54:07'),
(22, 1, 'created', 'product', 11, '2018-11-16 06:56:58', '2018-11-16 06:56:58'),
(23, 1, 'updated', 'product', 11, '2018-11-16 06:57:22', '2018-11-16 06:57:22'),
(24, 1, 'created', 'product', 12, '2018-11-16 06:58:49', '2018-11-16 06:58:49'),
(25, 1, 'created', 'product', 13, '2018-11-16 06:59:48', '2018-11-16 06:59:48'),
(26, 1, 'created', 'product', 14, '2018-11-16 07:06:56', '2018-11-16 07:06:56'),
(27, 1, 'updated', 'product', 14, '2018-11-16 07:07:06', '2018-11-16 07:07:06'),
(28, 1, 'created', 'product', 15, '2018-11-16 07:09:24', '2018-11-16 07:09:24'),
(29, 1, 'updated', 'product', 15, '2018-11-16 07:14:45', '2018-11-16 07:14:45'),
(30, 1, 'updated', 'product', 14, '2018-11-16 07:14:56', '2018-11-16 07:14:56'),
(31, 1, 'updated', 'product', 13, '2018-11-16 07:15:05', '2018-11-16 07:15:05'),
(32, 1, 'updated', 'product', 12, '2018-11-16 07:15:15', '2018-11-16 07:15:15'),
(33, 1, 'updated', 'product', 11, '2018-11-16 07:15:27', '2018-11-16 07:15:27'),
(34, 1, 'updated', 'product', 10, '2018-11-16 07:17:21', '2018-11-16 07:17:21'),
(35, 1, 'updated', 'product', 1, '2018-11-16 07:17:26', '2018-11-16 07:17:26'),
(36, 1, 'updated', 'product', 2, '2018-11-16 07:17:32', '2018-11-16 07:17:32'),
(37, 1, 'updated', 'product', 3, '2018-11-16 07:17:43', '2018-11-16 07:17:43'),
(38, 1, 'updated', 'product', 4, '2018-11-16 07:17:48', '2018-11-16 07:17:48'),
(39, 1, 'updated', 'product', 5, '2018-11-16 07:17:52', '2018-11-16 07:17:52'),
(40, 1, 'updated', 'product', 6, '2018-11-16 07:17:58', '2018-11-16 07:17:58'),
(41, 1, 'updated', 'product', 7, '2018-11-16 07:18:02', '2018-11-16 07:18:02'),
(42, 1, 'updated', 'product', 8, '2018-11-16 07:18:11', '2018-11-16 07:18:11'),
(43, 1, 'updated', 'product', 9, '2018-11-16 07:18:17', '2018-11-16 07:18:17'),
(44, 1, 'updated', 'product', 11, '2018-11-16 07:18:24', '2018-11-16 07:18:24'),
(45, 1, 'updated', 'product', 12, '2018-11-16 07:18:31', '2018-11-16 07:18:31'),
(46, 1, 'updated', 'product', 13, '2018-11-16 07:18:40', '2018-11-16 07:18:40'),
(47, 1, 'updated', 'product', 14, '2018-11-16 07:18:47', '2018-11-16 07:18:47'),
(48, 1, 'updated', 'product', 15, '2018-11-16 07:18:55', '2018-11-16 07:18:55'),
(49, 1, 'updated', 'users', 1, '2018-12-14 06:29:53', '2018-12-14 06:29:53'),
(50, 1, 'updated', 'users', 1, '2018-12-14 06:32:46', '2018-12-14 06:32:46'),
(51, 1, 'created', 'product', 16, '2018-12-14 06:34:51', '2018-12-14 06:34:51'),
(52, 1, 'created', 'product', 17, '2018-12-14 06:37:24', '2018-12-14 06:37:24'),
(53, 1, 'created', 'product', 18, '2018-12-14 06:42:10', '2018-12-14 06:42:10'),
(54, 1, 'created', 'product', 19, '2018-12-14 06:45:42', '2018-12-14 06:45:42'),
(55, 1, 'created', 'product', 20, '2018-12-14 06:48:06', '2018-12-14 06:48:06'),
(56, 1, 'created', 'product', 21, '2018-12-14 06:50:36', '2018-12-14 06:50:36'),
(57, 1, 'updated', 'product', 14, '2018-12-14 06:53:16', '2018-12-14 06:53:16'),
(58, 1, 'updated', 'product', 14, '2018-12-14 06:53:43', '2018-12-14 06:53:43'),
(59, 1, 'created', 'product', 22, '2018-12-14 06:55:07', '2018-12-14 06:55:07'),
(60, 1, 'updated', 'product', 22, '2018-12-14 06:55:47', '2018-12-14 06:55:47'),
(61, 1, 'updated', 'product', 22, '2018-12-14 06:56:07', '2018-12-14 06:56:07'),
(62, 1, 'created', 'product', 23, '2018-12-14 06:59:01', '2018-12-14 06:59:01'),
(63, 1, 'created', 'product', 24, '2018-12-14 07:47:36', '2018-12-14 07:47:36'),
(64, 1, 'created', 'product', 25, '2018-12-14 08:03:56', '2018-12-14 08:03:56'),
(65, 1, 'created', 'product', 26, '2018-12-14 08:05:07', '2018-12-14 08:05:07'),
(66, 1, 'created', 'product', 27, '2018-12-14 08:05:09', '2018-12-14 08:05:09'),
(67, 1, 'created', 'product', 28, '2018-12-14 08:07:49', '2018-12-14 08:07:49'),
(68, 1, 'created', 'product', 29, '2018-12-14 08:18:57', '2018-12-14 08:18:57'),
(69, 1, 'created', 'product', 30, '2018-12-14 08:19:40', '2018-12-14 08:19:40'),
(70, 1, 'deleted', 'product', 27, '2018-12-14 08:24:10', '2018-12-14 08:24:10'),
(71, 1, 'created', 'product', 31, '2018-12-14 08:25:54', '2018-12-14 08:25:54'),
(72, 1, 'created', 'product', 32, '2018-12-14 08:40:06', '2018-12-14 08:40:06'),
(73, 1, 'created', 'product', 33, '2018-12-14 08:41:21', '2018-12-14 08:41:21'),
(74, 1, 'created', 'product', 34, '2018-12-14 08:42:47', '2018-12-14 08:42:47'),
(75, 1, 'created', 'product', 35, '2018-12-14 08:44:27', '2018-12-14 08:44:27'),
(76, 1, 'created', 'product', 36, '2018-12-14 08:49:11', '2018-12-14 08:49:11'),
(77, 1, 'created', 'product', 37, '2018-12-14 08:50:49', '2018-12-14 08:50:49'),
(78, 1, 'created', 'product', 38, '2018-12-14 08:52:52', '2018-12-14 08:52:52'),
(79, 1, 'created', 'product', 39, '2018-12-14 08:53:53', '2018-12-14 08:53:53');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `maintexts`
--
ALTER TABLE `maintexts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_role`
--
ALTER TABLE `menu_role`
  ADD UNIQUE KEY `menu_role_menu_id_role_id_unique` (`menu_id`,`role_id`),
  ADD KEY `menu_role_menu_id_index` (`menu_id`),
  ADD KEY `menu_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `maintexts`
--
ALTER TABLE `maintexts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `menu_role`
--
ALTER TABLE `menu_role`
  ADD CONSTRAINT `menu_role_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
