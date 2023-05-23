-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 23 2023 г., 20:57
-- Версия сервера: 10.8.4-MariaDB
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `khan_tech`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pharmaceuticals', '2023-05-09 19:04:23', '2023-05-21 04:09:20', NULL),
(2, 'Medical Equipment', NULL, NULL, NULL),
(3, 'Medical', NULL, NULL, NULL),
(4, 'Test Category2', '2023-05-21 03:58:29', '2023-05-21 04:37:25', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_20_081707_create_posts_table', 1),
(6, '2023_05_20_120400_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `body`, `image`, `is_published`, `created_at`, `updated_at`, `deleted_by`, `updated_by`, `deleted_at`) VALUES
(1, 1, 'A Sure Way To Get Rid Of Your Back Ache Problem', 'If you have tried everything, but still seem to suffer from snoring, don’t give up. Before turning to surgery, consider shopping for anti-snore devices. These products do not typically require a prescription, are economically priced and may just be the answer that you are looking for. However, as is the case when shopping for anything, there are a lot of anti-snore devices out there and…', 'storage/images/6469f390381d5beautiful-girl-is-engaged-yoga-studio.webp', 1, '2023-05-20 12:11:44', '2023-05-21 07:33:52', 2, 2, NULL),
(2, 1, '30 Exercises That Should Be in Your Workout Routine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictumst ut senectus ut purus odio amet lorem. Malesuada ridiculus elementum tempus, nullam. Morbi volutpat nulla vel proin viverra adipiscing. Mi euismod morbi congue malesuada. Et sed aliquet ullamcorper nibh amet vitae accumsan. Viverra arcu vitae risus pellentesque nec arcu. Feugiat habitant sodales vel.', 'storage/images/6469f3ad49dfcyoga-group-classes-inside-gym.webp', 1, '2023-05-20 15:02:22', '2023-05-21 07:34:21', NULL, 2, NULL),
(3, 1, 'Basic Swedish Back Massage Techniques', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictumst ut senectus ut purus odio amet lorem. Malesuada ridiculus elementum tempus, nullam. Morbi volutpat nulla vel proin viverra adipiscing. Mi euismod morbi congue malesuada. Et sed aliquet ullamcorper nibh amet vitae accumsan. Viverra arcu vitae risus pellentesque nec arcu. Feugiat habitant sodales vel.', 'storage/images/6469f3bcd1addanti-cellulite-massage-luxury-spa.webp', 1, '2023-05-20 15:04:58', '2023-05-21 07:34:36', NULL, 2, NULL),
(4, 1, 'How to Learn Coding for Beginners', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictumst ut senectus ut purus odio amet lorem. Malesuada ridiculus elementum tempus, nullam. Morbi volutpat nulla vel proin viverra adipiscing. Mi euismod morbi congue malesuada. Et sed aliquet ullamcorper nibh amet vitae accumsan. Viverra arcu vitae risus pellentesque nec arcu. Feugiat habitant sodales vel.', 'storage/images/6469f3c7d6e16close-up-man-writing-code-laptop.webp', 1, '2023-05-20 15:05:19', '2023-05-21 07:34:47', 1, 2, NULL),
(5, 1, 'Google’s Influence Over Think Tanks', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictumst ut senectus ut purus odio amet lorem. Malesuada ridiculus elementum tempus, nullam. Morbi volutpat nulla vel proin viverra adipiscing. Mi euismod morbi congue malesuada. Et sed aliquet ullamcorper nibh amet vitae accumsan. Viverra arcu vitae risus pellentesque nec arcu. Feugiat habitant sodales vel.', 'storage/images/6469f3d6492cfside-view-cropped-unrecognizable-business-people-working-common-desk.webp', 1, '2023-05-20 15:05:40', '2023-05-21 07:35:02', 1, 2, NULL),
(6, 2, 'NFTs Are Fueling a Boom in Digital Art. Here’s How They Work', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictumst ut senectus ut purus odio amet lorem. Malesuada ridiculus elementum tempus, nullam. Morbi volutpat nulla vel proin viverra adipiscing. Mi euismod morbi congue malesuada. Et sed aliquet ullamcorper nibh amet vitae accumsan. Viverra arcu vitae risus pellentesque nec arcu. Feugiat habitant sodales vel.', 'storage/images/6469f3e13b70bhalf-holographic-skull-with-inscription-nft-nonfungible-token-digital-art.webp', 1, '2023-05-20 15:08:31', '2023-05-21 07:35:13', 1, 2, NULL),
(7, 3, 'How about getting vaccinated again against coronavirus?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictumst ut senectus ut purus odio amet lorem. Malesuada ridiculus elementum tempus, nullam. Morbi volutpat nulla vel proin viverra adipiscing. Mi euismod morbi congue malesuada. Et sed aliquet ullamcorper nibh amet vitae accumsan. Viverra arcu vitae risus pellentesque nec arcu. Feugiat habitant sodales vel.', 'storage/images/646be132ebfa4side-view-doctor-holding-injection.webp', 1, '2023-05-20 15:09:11', '2023-05-22 18:40:02', 1, 2, NULL),
(8, 3, '25 Best Worldwide Vacation Spots for Couples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictumst ut senectus ut purus odio amet lorem. Malesuada ridiculus elementum tempus, nullam. Morbi volutpat nulla vel proin viverra adipiscing. Mi euismod morbi congue malesuada. Et sed aliquet ullamcorper nibh amet vitae accumsan. Viverra arcu vitae risus pellentesque nec arcu. Feugiat habitant sodales vel.', 'storage/images/6469f400bc685loving-couple-walks-background-high-mountains-with-glaciers-peak.webp', 1, '2023-05-20 15:09:25', '2023-05-21 07:35:44', 1, 2, NULL),
(9, 4, 'Amazon\'s Jeff Bezos to help Nasa return to Moon', 'Nasa is already working with Elon Musk\'s SpaceX firm on a descent system based on its novel Starship rocket that will touch down as early as 2025.', 'storage/images/646b14958bc3cspace.png', 1, '2023-05-21 04:14:23', '2023-05-22 04:07:01', NULL, 2, NULL),
(10, 4, 'Music as Medicine', 'Exploring the power music has to make people feel better', 'storage/images/646bb1afa7854space.png', 0, '2023-05-21 04:16:06', '2023-05-22 15:17:19', 2, 2, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@t.com', NULL, '$2y$10$NNR756LZAx5lZuTAyOWkrumCiQkL6qA/ihF3hSv.bSiOb3k25h9HS', 0, NULL, '2023-05-20 16:10:55', '2023-05-20 16:10:55'),
(2, 'admin', 'admin@admin.ua', NULL, '$2y$10$cJVnvP2LaWxVLOsqvJykvOQLAnq8XQhgDg10vrKuH3/SdwI9kZ1IK', 1, NULL, '2023-05-21 04:12:08', '2023-05-21 04:12:08');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
