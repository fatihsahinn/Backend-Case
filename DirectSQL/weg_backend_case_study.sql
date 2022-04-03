-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Nis 2022, 00:59:16
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `weg_backend_case_study`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
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
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_03_212311_task_db', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_level` int(11) NOT NULL,
  `task_time` int(11) NOT NULL,
  `task_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `tasks`
--

INSERT INTO `tasks` (`id`, `task_name`, `task_level`, `task_time`, `task_type`) VALUES
(471, 'Business Task 0', 1, 7, 2),
(472, 'Business Task 1', 3, 4, 2),
(473, 'Business Task 2', 1, 6, 2),
(474, 'Business Task 3', 5, 4, 2),
(475, 'Business Task 4', 2, 7, 2),
(476, 'Business Task 5', 5, 7, 2),
(477, 'Business Task 6', 4, 5, 2),
(478, 'Business Task 7', 2, 11, 2),
(479, 'Business Task 8', 4, 12, 2),
(480, 'Business Task 9', 1, 4, 2),
(481, 'Business Task 10', 2, 7, 2),
(482, 'Business Task 11', 4, 3, 2),
(483, 'Business Task 12', 3, 10, 2),
(484, 'Business Task 13', 1, 3, 2),
(485, 'Business Task 14', 2, 10, 2),
(486, 'Business Task 15', 2, 12, 2),
(487, 'Business Task 16', 3, 9, 2),
(488, 'Business Task 17', 4, 9, 2),
(489, 'Business Task 18', 1, 7, 2),
(490, 'Business Task 19', 4, 4, 2),
(491, 'Business Task 20', 5, 4, 2),
(492, 'Business Task 21', 4, 4, 2),
(493, 'Business Task 22', 2, 5, 2),
(494, 'Business Task 23', 5, 9, 2),
(495, 'Business Task 24', 5, 12, 2),
(496, 'Business Task 25', 3, 9, 2),
(497, 'Business Task 26', 2, 12, 2),
(498, 'Business Task 27', 3, 9, 2),
(499, 'Business Task 28', 1, 7, 2),
(500, 'Business Task 29', 4, 4, 2),
(501, 'Business Task 30', 4, 4, 2),
(502, 'Business Task 31', 1, 7, 2),
(503, 'Business Task 32', 4, 7, 2),
(504, 'Business Task 33', 3, 9, 2),
(505, 'Business Task 34', 2, 9, 2),
(506, 'Business Task 35', 1, 9, 2),
(507, 'Business Task 36', 5, 3, 2),
(508, 'Business Task 37', 4, 5, 2),
(509, 'Business Task 38', 1, 9, 2),
(510, 'Business Task 39', 5, 7, 2),
(511, 'Business Task 40', 1, 6, 2),
(512, 'Business Task 41', 1, 5, 2),
(513, 'Business Task 42', 5, 9, 2),
(514, 'Business Task 43', 1, 9, 2),
(515, 'Business Task 44', 5, 8, 2),
(516, 'Business Task 45', 5, 8, 2),
(517, 'Business Task 46', 1, 9, 2),
(518, 'Business Task 47', 1, 12, 2),
(519, 'Business Task 48', 1, 3, 2),
(520, 'Business Task 49', 5, 7, 2),
(521, 'Business Task 50', 5, 12, 2),
(522, 'Business Task 51', 1, 11, 2),
(523, 'Business Task 52', 3, 7, 2),
(524, 'Business Task 53', 1, 3, 2),
(525, 'Business Task 54', 4, 10, 2),
(526, 'Business Task 55', 2, 11, 2),
(527, 'Business Task 56', 4, 9, 2),
(528, 'Business Task 57', 3, 7, 2),
(529, 'Business Task 58', 2, 4, 2),
(530, 'Business Task 59', 4, 9, 2),
(531, 'Business Task 60', 2, 10, 2),
(532, 'Business Task 61', 3, 8, 2),
(533, 'Business Task 62', 1, 10, 2),
(534, 'Business Task 63', 4, 11, 2),
(535, 'Business Task 64', 4, 5, 2),
(536, 'Business Task 65', 3, 9, 2),
(537, 'Business Task 66', 1, 3, 2),
(538, 'IT Task 0', 3, 6, 1),
(539, 'IT Task 1', 4, 6, 1),
(540, 'IT Task 2', 3, 10, 1),
(541, 'IT Task 3', 4, 4, 1),
(542, 'IT Task 4', 3, 5, 1),
(543, 'IT Task 5', 1, 12, 1),
(544, 'IT Task 6', 1, 4, 1),
(545, 'IT Task 7', 5, 6, 1),
(546, 'IT Task 8', 3, 8, 1),
(547, 'IT Task 9', 1, 6, 1),
(548, 'IT Task 10', 2, 10, 1),
(549, 'IT Task 11', 1, 6, 1),
(550, 'IT Task 12', 4, 11, 1),
(551, 'IT Task 13', 5, 3, 1),
(552, 'IT Task 14', 1, 11, 1),
(553, 'IT Task 15', 4, 6, 1),
(554, 'IT Task 16', 5, 4, 1),
(555, 'IT Task 17', 3, 11, 1),
(556, 'IT Task 18', 2, 11, 1),
(557, 'IT Task 19', 3, 8, 1),
(558, 'IT Task 20', 3, 11, 1),
(559, 'IT Task 21', 1, 5, 1),
(560, 'IT Task 22', 4, 5, 1),
(561, 'IT Task 23', 2, 7, 1),
(562, 'IT Task 24', 2, 6, 1),
(563, 'IT Task 25', 3, 9, 1),
(564, 'IT Task 26', 4, 6, 1),
(565, 'IT Task 27', 4, 7, 1),
(566, 'IT Task 28', 1, 4, 1),
(567, 'IT Task 29', 4, 5, 1),
(568, 'IT Task 30', 5, 9, 1),
(569, 'IT Task 31', 2, 5, 1),
(570, 'IT Task 32', 2, 5, 1),
(571, 'IT Task 33', 2, 6, 1),
(572, 'IT Task 34', 5, 6, 1),
(573, 'IT Task 35', 1, 10, 1),
(574, 'IT Task 36', 1, 10, 1),
(575, 'IT Task 37', 1, 10, 1),
(576, 'IT Task 38', 5, 12, 1),
(577, 'IT Task 39', 4, 12, 1),
(578, 'IT Task 40', 2, 6, 1),
(579, 'IT Task 41', 3, 8, 1),
(580, 'IT Task 42', 5, 10, 1),
(581, 'IT Task 43', 3, 10, 1),
(582, 'IT Task 44', 5, 8, 1),
(583, 'IT Task 45', 5, 9, 1),
(584, 'IT Task 46', 3, 3, 1),
(585, 'IT Task 47', 4, 4, 1),
(586, 'IT Task 48', 1, 12, 1),
(587, 'IT Task 49', 1, 7, 1),
(588, 'IT Task 50', 1, 4, 1),
(589, 'IT Task 51', 1, 10, 1),
(590, 'IT Task 52', 4, 8, 1),
(591, 'IT Task 53', 3, 3, 1),
(592, 'IT Task 54', 4, 10, 1),
(593, 'IT Task 55', 4, 12, 1),
(594, 'IT Task 56', 3, 10, 1),
(595, 'IT Task 57', 2, 11, 1),
(596, 'IT Task 58', 1, 7, 1),
(597, 'IT Task 59', 2, 4, 1),
(598, 'IT Task 60', 3, 4, 1),
(599, 'IT Task 61', 1, 3, 1),
(600, 'IT Task 62', 1, 6, 1),
(601, 'IT Task 63', 3, 3, 1),
(602, 'IT Task 64', 4, 12, 1),
(603, 'IT Task 65', 2, 11, 1),
(604, 'IT Task 66', 3, 10, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=605;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
