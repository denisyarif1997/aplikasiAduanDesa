-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 19 Apr 2024 pada 07.25
-- Versi server: 5.7.44-cll-lve
-- Versi PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catatan1_aduan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aduans`
--

CREATE TABLE `aduans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kecamatan` bigint(20) UNSIGNED DEFAULT NULL,
  `desa_kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_aduan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `aduans`
--

INSERT INTO `aduans` (`id`, `slug`, `image`, `kecamatan`, `id_kecamatan`, `desa_kelurahan`, `isi_aduan`, `title`, `user_id`, `created_at`, `updated_at`) VALUES
(824703, 'jalan-rusak-parah-LB0a11', 'zr5hw94g0SqFKd8RU3PYQLBzdNoUucoDS8HV5wsN.jpg', 'WONOSALAM', 3321080, 'SIDO MULYO', 'Jalan rusak parah. terletak di desa sidomulyo dukuh brangkal rt 10', 'Jalan Rusak Parah', 13, '2023-12-25 20:17:52', '2023-12-25 20:17:52'),
(824704, 'antrian-panjang-LB0803', 'THmD5Lz99Tu4Dc1nh5z7x6SgiYuijL07H5IpZSHr.jpg', 'MIJEN', 3321120, 'MIJEN', 'Antrian bpjs sangat panjang terletak didesa Mijen', 'Antrian Panjang', 13, '2023-12-27 20:08:32', '2023-12-27 20:08:32'),
(824705, 'antrian-menumpuk-LB7e08', 'SfqNKCdRmi2LLVyqpd3M2iNT9VamM7BOdUhnL2qh.jpg', 'KARANGAWEN', 3321020, 'REJOSARI', 'Antrian mengurus BPJS sangat panjang di desa rejosari', 'Antrian Menumpuk', 13, '2023-12-27 20:09:11', '2023-12-27 20:09:11'),
(824706, 'parkir-ilegal-LB1d95', 'Es8jjMVN72CLCYoA3Y7E2LcFVwfuJjLqfMReRQHZ.jpg', 'WEDUNG', 3321130, 'BABALAN', 'Tolong pemerintah setempat untuk menertibkan penempatan parkir sepeda motor yang terletak di trotoar sepnajang desa Babalan', 'Parkir Ilegal', 13, '2023-12-27 20:10:25', '2023-12-27 20:10:25'),
(824707, 'layanan-kurang-tanggap-LBc52c', 'CygTRhB0hxOs0Z0e7SGG6bJTSgidOV0KA2vGsg0i.jpg', 'WONOSALAM', 3321080, 'SIDO MULYO', 'Ingin melaporkan bahwasannya layanan kantor pencatatan sipil kurang memuaskan dan kurang tanggap sehingga menyebabkan antrian panjang', 'Layanan Kurang Tanggap', 16, '2023-12-27 20:13:16', '2023-12-27 20:13:16'),
(824708, 'gass-LB4ad1', 'NIUm6hSI6Ob4gL64AJ6yFMWBKkZG9fyRYVzsw59Q.jpg', 'DEMPET', 3321090, 'BALEREJO', 'Minta tolong untuk segera di urus ini kacaau', 'Gass', 17, '2023-12-29 07:49:24', '2023-12-29 07:49:24'),
(824709, 'wawan-LBcc37', 'RkNpCoDWlH3UoByjPDTaELJfY1hDtGhLOvdyPaMI.png', 'MRANGGEN', 3321010, 'SUMBEREJO', 'Test', 'Wawan', 20, '2024-01-13 21:37:32', '2024-01-13 21:37:32'),
(824710, 'tes-LB206c', 'uQzmVyRcm8ssX6c391JLRlLGVias3IPN7hoDbQyw.jpg', 'MIJEN', 3321120, 'NGEGOT', 'izi tes ya mas', 'tes', 21, '2024-02-12 01:54:58', '2024-02-12 01:54:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aduan_status`
--

CREATE TABLE `aduan_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `aduan_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daftar_desa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `aduan_status`
--

INSERT INTO `aduan_status` (`id`, `aduan_id`, `status`, `daftar_desa`, `keterangan`, `created_at`, `updated_at`, `user_id`) VALUES
(36, 824703, 'Belum Ditangani', 'SIDO MULYO', 'Laporan sudah diterima dan akan diteruskan kepada petugas desa bersangkutan', '2023-12-25 20:17:52', '2023-12-25 20:17:52', 13),
(37, 824703, 'Verifikasi', 'SIDO MULYO', 'Sudah diteruskan', '2023-12-25 20:20:25', '2023-12-25 20:20:25', 12),
(38, 824703, 'Diproses', 'SIDO MULYO', 'Laporan sedang diproses dan akan segera ditangani', '2023-12-25 20:23:38', '2023-12-25 20:23:38', 14),
(39, 824704, 'Belum Ditangani', 'MIJEN', 'Laporan sudah diterima dan akan diteruskan kepada petugas desa bersangkutan', '2023-12-27 20:08:32', '2023-12-27 20:08:32', 13),
(40, 824705, 'Belum Ditangani', 'REJOSARI', 'Laporan sudah diterima dan akan diteruskan kepada petugas desa bersangkutan', '2023-12-27 20:09:11', '2023-12-27 20:09:11', 13),
(41, 824706, 'Belum Ditangani', 'BABALAN', 'Laporan sudah diterima dan akan diteruskan kepada petugas desa bersangkutan', '2023-12-27 20:10:25', '2023-12-27 20:10:25', 13),
(42, 824707, 'Belum Ditangani', 'SIDO MULYO', 'Laporan sudah diterima dan akan diteruskan kepada petugas desa bersangkutan', '2023-12-27 20:13:16', '2023-12-27 20:13:16', 16),
(43, 824707, 'Verifikasi', 'SIDO MULYO', 'sudah diverifikasi', '2023-12-27 23:44:26', '2023-12-27 23:44:26', 12),
(44, 824707, 'Diproses', 'SIDO MULYO', 'laporan sudah di proses', '2023-12-27 23:45:08', '2023-12-27 23:45:08', 14),
(45, 824707, 'Selesai', 'SIDO MULYO', 'semua masalah sudah dikerjakan', '2023-12-27 23:45:27', '2023-12-27 23:45:27', 14),
(46, 824708, 'Belum Ditangani', 'BALEREJO', 'Laporan sudah diterima dan akan diteruskan kepada petugas desa bersangkutan', '2023-12-29 07:49:24', '2023-12-29 07:49:24', 17),
(47, 824709, 'Belum Ditangani', 'SUMBEREJO', 'Laporan sudah diterima dan akan diteruskan kepada petugas desa bersangkutan', '2024-01-13 21:37:32', '2024-01-13 21:37:32', 20),
(48, 824710, 'Belum Ditangani', 'NGEGOT', 'Laporan sudah diterima dan akan diteruskan kepada petugas desa bersangkutan', '2024-02-12 01:54:58', '2024-02-12 01:54:58', 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `aduan_tag`
--

CREATE TABLE `aduan_tag` (
  `aduan_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `aduan_tag`
--

INSERT INTO `aduan_tag` (`aduan_id`, `tag_id`) VALUES
(824703, 32),
(824704, 34),
(824705, 34),
(824706, 33),
(824707, 34),
(824708, 32),
(824709, 34),
(824710, 33);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`, `slug`) VALUES
(47, 'Infrastruktur', 'K0Ervnv0D4nw8SucTAGpr6YiiwrLNcCV1NLcbyEv.png', '2023-12-24 23:02:56', '2023-12-26 21:56:49', 'infrastruktur'),
(48, 'Ketertiban', 'VhL6yqwfnTBIFv11rP1rVkwV5H1FHxYeJQdingS3.png', '2023-12-26 21:43:21', '2023-12-26 21:43:21', 'ketertiban'),
(49, 'Layanan Masyarakat', 'ohXbZ2gkDtOHvfSMAluZByTOLxq2o9SNx56ZJoqB.png', '2023-12-26 21:56:35', '2023-12-26 21:56:35', 'layanan-masyarakat'),
(50, 'Kesehatan', 'aMytaKqLtVjHnXuw0AHoUVlhYH2qkPbmccHIy1dB.png', '2023-12-26 21:57:11', '2023-12-26 21:57:11', 'kesehatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `platform` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_halaman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `footers`
--

INSERT INTO `footers` (`id`, `platform`, `nama_halaman`, `link_url`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'LaporKab Demak Update', 'https://www.facebook.com/example', '2023-12-03 20:03:24', '2023-12-25 21:00:47'),
(2, 'Twitter', 'LaporKab Demak', 'https://twitter.com/example', '2023-12-03 20:03:24', '2023-12-03 22:05:03'),
(3, 'Instagram', 'Nama Halaman Instagram', 'https://instagram.com/example', '2023-12-03 20:03:24', '2023-12-03 20:03:24'),
(4, 'Whatsapp', 'Nama Whatsapp', 'https://wa.me/example', '2023-12-03 20:03:24', '2023-12-03 20:03:24'),
(5, 'Email', 'email@mail.com', 'https://mailto.com/example', '2023-12-03 20:03:24', '2023-12-03 20:03:24'),
(6, 'Phone', 'phone', 'https://phone.com/example', '2023-12-03 20:03:24', '2023-12-03 20:03:24'),
(7, 'Address', 'Jl. Kyai Mugni No.1016, Petengan Selatan, Bintoro, Kec. Demak, Kabupaten Demak, Jawa Tengah 59511', 'https://www.google.com/maps/d/viewer?mid=1jxDNZwa-OVUbUcLcGmig283zWGg&hl=en&ll=-6.88909000000002%2C110.6394&z=17', '2023-12-03 20:03:24', '2023-12-03 23:51:14'),
(8, 'Faqs', 'faqs', 'https://faqs.com/example', '2023-12-03 20:03:24', '2023-12-03 21:21:14'),
(9, 'Privacy ', 'privacy', 'https://privacy.com/example', '2023-12-03 20:03:24', '2023-12-03 21:21:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_17_150119_create_permission_tables', 1),
(6, '2023_03_28_080226_create_posts_table', 1),
(7, '2023_04_17_101021_create_categories_table', 1),
(11, '2023_11_06_061131_create_category_post_table', 2),
(12, '2023_11_06_062208_add_image_to_category_post', 2),
(13, '2023_11_06_062313_add_name_to_category_post', 2),
(14, '2023_11_06_064510_add_newcolumn_to_posts', 2),
(15, '2023_11_07_023205_create_tags_table', 3),
(19, '2023_11_07_034100_create_post_tag_table', 4),
(20, '2023_11_07_052721_add_views_count_to_posts', 5),
(21, '2023_11_10_033606_create_aduans_table', 6),
(22, '2023_11_10_035157_create_aduan_tag_table', 7),
(23, '2023_11_10_064152_add_title_to_aduans_table', 8),
(24, '2023_11_12_231027_id_kecamatan_to_aduans', 9),
(25, '2023_11_13_005258_status_to_aduans', 10),
(26, '2023_11_13_005642_create_status_aduan_table', 11),
(27, '2023_11_15_225548_create_aduan_status_table', 12),
(28, '2023_11_16_014149_remove_status_from_aduans', 13),
(29, '2023_11_27_134628_add_user_id_to_aduan_status', 14),
(30, '2023_12_04_025606_create_footers_table', 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(21, 'App\\Models\\User', 10),
(29, 'App\\Models\\User', 12),
(30, 'App\\Models\\User', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(20, 'update post', 'web', '2023-12-24 19:35:11', '2023-12-24 19:53:55'),
(21, 'create category', 'web', '2023-12-24 22:13:54', '2023-12-24 22:13:54'),
(22, 'update category', 'web', '2023-12-24 22:59:46', '2023-12-24 22:59:46'),
(23, 'delete category', 'web', '2023-12-24 22:59:53', '2023-12-24 22:59:53'),
(24, 'create tag', 'web', '2023-12-25 00:15:52', '2023-12-25 00:15:52'),
(25, 'update tag', 'web', '2023-12-25 00:15:59', '2023-12-25 00:15:59'),
(26, 'delete tag', 'web', '2023-12-25 00:16:05', '2023-12-25 00:16:05'),
(27, 'update aduan', 'web', '2023-12-25 06:06:26', '2023-12-25 06:06:26'),
(28, 'delete aduan', 'web', '2023-12-25 06:06:32', '2023-12-25 06:06:32'),
(29, 'WONOSALAM', 'web', '2023-12-25 06:07:26', '2023-12-25 06:07:26'),
(30, 'SIDO MULYO', 'web', '2023-12-25 06:21:22', '2023-12-25 20:22:31'),
(31, 'create post', 'web', '2023-12-25 23:14:36', '2023-12-25 23:14:36'),
(32, 'delete post', 'web', '2023-12-25 23:14:43', '2023-12-25 23:14:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(6, 'App\\Models\\User', 13, 'User 1', 'e48ce1ce45c66ee25949acdeeab120bc84a552675a1dd85a28191cc95745ae59', '[\"*\"]', NULL, NULL, '2023-12-27 07:53:08', '2023-12-27 07:53:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `views_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `created_at`, `updated_at`, `slug`, `category_id`, `user_id`, `content`, `image`, `description`, `views_count`) VALUES
(78, 'Dukung Layanan Logistik dan Transportasi Nataru 2024, Kementerian PUPR Tuntaskan Penggantian 9 Jembatan CH di Jawa Timur', '2023-12-25 23:26:33', '2024-02-04 14:12:05', 'dukung-layanan-logistik-dan-transportasi-nataru-2024-kementerian-pupr-tuntaskan-penggantian-9-jembatan-ch-di-jawa-timur', 47, 10, '<p>Jakarta - Kementerian Pekerjaan Umum dan Perumahan Rakyat (PUPR) telah menyelesaikan penggantian/duplikasi 9 jembatan lama yang berada dalam sistem jaringan jalan nasional dan jalur logistik utama di Provinsi Jawa Timur. Program penggantian jembatan dengan tipe CH ini merupakan bagian dari mitigasi risiko jembatan runtuh karena usia tua di atas 40 tahun, salah satunya karena dampak beban berlebih kendaraan (overloading).<br><br>Staf Ahli Menteri PUPR Bidang Teknologi, Industri dan Lingkungan Endra S. Atmawidjaja sekaligus Juru Bicara Kementerian PUPR mengatakan pembangunan dan pemeliharaan jalan dan jembatan memiliki peran penting sebagai tulang punggung atau “backbone” ekonomi wilayah. Kita harus pastikan kondisi jalan dan jembatan yang mantap untuk konektivitas antar wilayah dan memperlancar distribusi logistik di Indonesia.<br><br>“Konektivitas antar kawasan perlu terus dijaga bahkan ditingkatkan, salah satunya dengan penggantian jembatan yang sudah berumur tua agar aliran barang, jasa, dan manusia bisa lebih lancar dan efisien. Dengan konektivitas yang baik, diharapkan pertumbuhan ekonomi kawasan juga meningkat,” kata Jubir Endra.<br><br>Penggantian/duplikasi Jembatan Callender Hamilton di Jawa Timur merupakan salahsatu proyek Kerja Sama Pemerintah dengan Badan Usaha (KPBU) antara Kementerian PUPR melalui Direktorat Jenderal Bina Marga dengan PT Baja Titian Utama sebagai Badan Usaha Pelaksana dan PT Penjaminan Infrastruktur Indonesia (Persero) sebagai penjamin dengan masa pelaksanaan 2021-2023. Khusus di Provinsi Jawa Timur, telah dikerjakan penggantian 9 jembatan dengan total penanganan 2.116 meter dengan biaya Rp582 miliar. Skema KPBU dimaksud berupa ketersediaan layanan/Availability Payment dengan masa konsesi 12 tahun.<br><br>Kesembilan jembatan di Jawa Timur yang telah selesai diperbaharui adalah Jembatan Wirolegi sepanjang 35 meter di Kabupaten Jember yang menghubungkan Kabupaten Jember dan Banyuwangi. Kemudian, Jembatan Trisula Lama sepanjang 170 meter yang menghubungkan Kota Blitar dan Kabupaten Tulungagung.</p>', 'ApyC86oVgLjEPiCFo4P8hLIcMH8y7a32Iw33cWtH.jpg', 'Kesembilan jembatan di Jawa Timur yang telah selesai diperbaharui adalah Jembatan Wirolegi sepanjang 35 meter di Kabupaten Jember yang menghubungkan Kabupaten Jember dan Banyuwangi. Kemudian, Jembatan Trisula Lama sepanjang 170 meter yang menghubungkan Kota Blitar dan Kabupaten Tulungagung.', 58),
(79, 'Operasi Lilin Candi 2023 Dimulai, Ratusan Personel Dilibatkan', '2023-12-26 21:51:13', '2024-02-09 06:28:32', 'operasi-lilin-candi-2023-dimulai-ratusan-personel-dilibatkan', 48, 10, '<p>TEMANGGUNG – Kepolisian Resort Temanggung menggelar Apel Pasukan Operasi Lilin Candi 2023 dalam menghadapi perayaan Natal 2023 dan Tahun Baru 2024 di Halaman Mapolres setempat, Jumat (22/12/2023).</p><p>Gelar pasukan dipimpin oleh Ketua DPRD Temanggung, Yunianto bersama Kapolres AKBP Ari Sudrajat dan Komandan Kodim 0706 Letkol Sriyono.</p><p>&nbsp;</p><p>Tidak kurang 400 personel dilibatkan dalam pengamanan, termasuk Dinas Perhubungan, Senkom, PMI dan sejumlah elemen lain.</p><p>Kapolres Temanggung AKBP Ari Sudrajat mengatakan, seluruh personel dilibatkan dalam pengamanan selama Nataru yang berlangsung hingga 2 Januari 2024.</p><p>&nbsp;</p><p>“Pengamanan antara lain di tempat ibadah, pusat perekonomian, objek wisata dan jalan raya, serta pengamanan di daerah-daerah Polsek,” jelas Kapolres.</p><p>AKBP Ari Sudrajat menambahkan, ada empat pos pengamanan yang didirikan Polres dan Pemkab Temanggung, yakni di depan BCA, sekitar tugu Pancasila, Pringsurat dan Kranggan. Selain itu, Dinas Perhubungan juga mendirikan dua pos pantau.</p><p>Adapun personel yang bertugas di pos-pos tersebut dari Polri, TNI, PMI, Pramuka, Dinas Perhubungan relawan dan Ormas.</p><p>“Kami berharap, Operasi Lilin Candi 2023 dapat berjalan dengan baik dan menjadi yang terbaik bagi pelayanan pada masyarakat,” tegasnya.</p><p>&nbsp;</p><p>Sementara itu, Ketua DPRD Temanggung, Yunianto mengatakan, apel gelar pasukan sebagai pengecekan akhir sebelum operasi, dengan harapan pengamanan Nataru dapat berjalan optimal.</p><p>“Pengamanan Nataru adalah tugas rutin yang harus dipastikan berjalan nyaman, aman dan lancar, sesuai arahan Presiden Jokowi, terutama pada transportasi dan kepastian ketersediaan sembako,” jelasnya.</p><p>Yunianto menyampaikan, berdasar hitungan secara nasional, mobilitas masyarakat berpotensi naik selamaNataru sekitar 107,63 juta atau 143 persen atau naik 63,46 juta dibandingkan tahun sebelumnya.</p><p>&nbsp;</p><p>Ketua DPRD juga menambahkan, Nataru kali ini juga bersamaan dengan masa kampanye, sehingga punya potensi kerawanan yang lebih tinggi.</p><p>“Maka itu, Polri didukung TNI dan stakeholder melakukan operasi terpusat selama 12 hari, dari 22 Desember 2023 sampai 2 Januari 2024,” ujar Yunianto.</p><p>&nbsp;</p><p>Yunianto menambahkan, potensi gangguan keamanan dan ketertiban selama Nataru telah dipetakan. Pihaknya menjamin keamanan, kenyamanan, kelancaran lalu lintas, terutama di tempat ibadah, sentra perekonomian dan objek wisata.</p>', 'NaRmREdEuMm2BITkyK0G4BKeVCIWVggatC30KocV.jpg', 'Gelar pasukan dipimpin oleh Ketua DPRD Temanggung, Yunianto bersama Kapolres AKBP Ari Sudrajat dan Komandan Kodim 0706 Letkol Sriyono.', 2),
(80, 'Wabup Rembang Salurkan Ribuan Paket Sembako UPZ Kemenag', '2023-12-26 21:52:24', '2024-03-30 02:20:26', 'wabup-rembang-salurkan-ribuan-paket-sembako-upz-kemenag', 48, 10, '<p>REMBANG – Sebanyak 1.047 paket sembako dan zakat produktif disalurkan ke 15 titik KUA se-Kabupaten Rembang, MIN 1 Rembang, MIN 2 Rembang, Kampung Zakat Desa Gambiran, dan Pamotan.</p><p>Wakil Bupati Rembang Hanies Cholil Barro mengatakan, penyaluran zakat oleh Unit Pengumpul Zakat (UPZ) Kementerian Agama (Kemenag) Kabupaten Rembang ini merupakan salah satu Upaya, untuk mendukung Pemerintah Kabupaten Rembang dalam menanggulangi kemiskinan.</p><p>&nbsp;</p><p>“Ini sejalan dengan program prioritas Pemkab Rembang dalam menanggulangi kemiskinan di Rembang. Program ini patut dicontoh oleh instansi lainnya,” ungkap wabup, saat memberangkatkan mobil pengangkut sembako, dari Kantor Kemenag setempat, Kamis (21/12/2023).</p><p>&nbsp;</p><p>Kepala Kantor Kementerian Agama Kabupaten Rembang Moh Mukson mengatakan, zakat sembako per paket senilai Rp250 ribu. Sedangkan zakat produktif diberikan kepada 15 pelaku usaha dengan nilai masing-masing Rp1 juta.</p><p>“Total zakat sembako yaitu Rp261.750.000, sedangkan zakat produktif senilai Rp 15 juta. Jadi total semuanya yaitu Rp276.750.000,” jelas Mukson.</p><p>&nbsp;</p><p>Mukson menambahkan, zakat ini berasal dari zakat ASN Kemenag Rembang selama 2023. Dana diperoleh dari zakat ASN Kemenag Rembang, dari gaji dan tunjangan kinerja setiap bulannya.</p>', 'CkfFcbdqsNuiQK73P0bSuZdwiPeNz2J7mERLPwJr.jpg', 'Mukson menambahkan, zakat ini berasal dari zakat ASN Kemenag Rembang selama 2023. Dana diperoleh dari zakat ASN Kemenag Rembang, dari gaji dan tunjangan kinerja setiap bulannya.', 6),
(81, 'Kejari Sragen Musnahkan 41 Barang Bukti Kasus Kejahatan', '2023-12-26 21:53:31', '2024-04-08 21:18:39', 'kejari-sragen-musnahkan-41-barang-bukti-kasus-kejahatan', 48, 10, '<p>SRAGEN – Kejaksaan Negeri (Kejari) Kabupaten Sragen menggelar pemusnahan barang bukti atas perkara yang telah mempunyai Keputusan tetap (Incracht Van Gewijsde). Pemusnahan dilakukan di halaman Kantor Kejari Sragen Selasa (19/12/2023).<br>Pemusnahan barang bukti dihadiri pula perwakilan Forkopimda Sragen, dan Sekretaris Daerah Kabupaten Sragen.<br>Kepala Kejaksaan (Kajari) Sragen, Virginia Hariztavianne mengatakan, pemusnahan barang bukti tersebut merupakan hasil kegiatan yang telah dilaksanakan pada bulan Juli hingga November 2023, sebanyak 41 perkara.</p><p><br>Barang bukti yang dimusnahkan antara lain 56 gram sabu, 22,103 gam ganja, 17.086 obat terlarang, 125 butir psikotropika, sajam berupa satu pedang dan satu pisau, 233.600 batang rokok ilegal, Rp5,2 juta uang palsu, dan barang bukti kasus penggelapan berupa satu potong kaos dan celana.<br>“Untuk itu pada hari ini kita akan melaksanakan pemusnahan barang bukti berupa narkoba, psikotropika yang pemusnahannya dengan cara diblender, dengan air atau zat kimia atau dibuang sehingga tidak dapat digunakan lagi,” ucap Virginia Hariztavianne<br>Sedangkan barang bukti lainnya dilakukan pemusnahan dihancurkan dengan mesin penghancur, atau dibakar agar tidak bisa digunakan lagi.</p><p><br>“Dengan dilakukan pemusnahan ini diharapkan tingkat kejahatan akan berkurang, dan barang bukti tersebut tidak disalahgunakan oleh orang-orang yang tidak bertanggng jawab sehingga suasana dan situasi di wilayah hukum Kejaksaan Negeri Sragen menjadi aman tenteram dan kondusif,” pungkasnya.</p>', 'kBATPqSS9EAXG9nomcWEKuI49MnNe7oBs9b3ebl1.jpg', '“Dengan dilakukan pemusnahan ini diharapkan tingkat kejahatan akan berkurang, dan barang bukti tersebut tidak disalahgunakan oleh orang-orang yang tidak bertanggng jawab sehingga suasana dan situasi di wilayah hukum Kejaksaan Negeri Sragen menjadi aman tenteram dan kondusif,” pungkasnya.', 5),
(82, '“Door to Door”, Diskominfo Jateng Salurkan Sembako untuk Warga Desa Panusupan', '2023-12-26 21:58:10', '2024-02-08 18:23:52', 'door-to-door-diskominfo-jateng-salurkan-sembako-untuk-warga-desa-panusupan', 49, 10, '<p><strong>PURBALINGGA</strong>– Dinas Komunikasi dan Informatika Provinsi Jawa Tengah kembali memberi bantuan bahan pangan pokok kepada 50 warga miskin Desa Panusupan, Kecamatan Rembang, Kabupaten Purbalingga. Bantuan dari karyawan dan CSR Bank Mayapada itu merupakan bagian dari program Satu OPD Satu Desa Dampingan.</p><p>Koordinator UMKM program Satu OPD Satu Desa Dampingan Diskominfo Jateng Genuk Endang Sumiwi mengatakan, sembako yang diberikan menyasar mereka yang belum pernah mendapat bantuan sebelumnya. Selain meringankan beban, pemberian bantuan dilakukan langsung door to door, pada Kamis sore (27/4/2023).</p><p>“Ini bentuk perhatian, sekaligus silaturahmi di bulan Syawal. Jadi pemberian bantuan dilakukan dari rumah ke rumah secara langsung,” paparnya, Jumat (28/4/2023).</p><p>&nbsp;</p><p>Seorang penerima bantuan Turini mengaku senang mendapat bantuan tersebut. Ia merasa terbantu, sebab sehari-hari warga Dusun 3 Desa Panusupan itu seorang diri menghidupi dua orang anak tanpa suami.</p><p>“<i>Matur nuwun</i>, ini bisa untuk makan. Kalau sehari-hari kerjanya <i>ngidep</i> (membuat bulu mata palsu). Saya serumah dengan dua anak,” ujarnya, setelah menerima bantuan.</p><p>&nbsp;</p><p>Kepala Dusun 3 Desa Panusupan Imam Arifin mengaku bersyukur, warganya mendapatkan bantuan. Ia menyebut banyak di antara warganya yang secara ekonomi masih limbung.</p><p>“<i>Alhamdulillah</i>,&nbsp; warga kami mendapatkan bantuan, karena memang banyak yang masih membutuhkan. Semoga bermanfaat dan barokah,” tuturnya.</p><p>&nbsp;</p><p>Tidak hanya bantuan sembako, di wilayah itu Pemprov juga turun memberikan stimulan perbaikan rumah. Pada 2023, sebanyak 10 bantuan perbaikan rumah dikucurkan, bekerja sama dengan Disperakim Jateng, ditambah tiga paket perbaikan rumah dari Baznas, dan satu rumah inisiasi UPZ Dinas Kominfo.</p><p>&nbsp;</p><p>Bantuan-bantuan yang menyasar warga kurang mampu ini, diupayakan terus berlanjut, baik perbaikan rumah, perbaikan jamban, papan informasi desa, internet desa maupun event yang mengangkat ekonomi masyarakat.</p><p>Di samping perbaikan RTLH, telah dilaksanakan pula pemberian bantuan sembako bagi 275 orang warga dan paket bantuan bagi anak stunting, pada 14 Maret lalu.&nbsp; Ke depan, akan dilaksanakan pula sejumlah kegiatan, salah satunya pelatihan untuk UMKM setempat. (Pd/Ul, Diskominfo Jateng)</p>', 'aLVyak94eOjfeAWhavl1HaqoMZEfwsm67EKmYn2z.jpg', 'Bantuan-bantuan yang menyasar warga kurang mampu ini, diupayakan terus berlanjut, baik perbaikan rumah, perbaikan jamban, papan informasi desa, internet desa maupun event yang mengangkat ekonomi masyarakat.  Di samping perbaikan RTLH, telah dilaksanakan pula pemberian bantuan sembako bagi 275 orang warga dan paket bantuan bagi anak stunting, pada 14 Maret lalu.  Ke depan, akan dilaksanakan pula sejumlah kegiatan, salah satunya pelatihan untuk UMKM setempat. (Pd/Ul, Diskominfo Jateng)', 7),
(83, 'Puskesmas Pancur Juara I Transformasi Digital Mutu Layanan Kesehatan Tingkat Nasional', '2023-12-26 21:59:25', '2024-04-12 02:04:15', 'puskesmas-pancur-juara-i-transformasi-digital-mutu-layanan-kesehatan-tingkat-nasional', 50, 10, '<p>REMBANG – Transformasi mutu layanan kesehatan berupa finger spot dan Elektronik Rekam Medik (ERM), yang telah diterapkan di Puskesmas Pancur sejak Juli 2023, berhasil meraih penghargaan Digital Transformation Award BPJS Kesehatan 2023.</p><p>Kepala Puskesmas Pancur dr Samsul Anwar mengaku sangat bersyukur, atas capaian yang didapat. Menurutnya, prestasi yang diraih tersebut berkat kerja keras seluruh jajaran Puskesmas Pancur.</p><p>&nbsp;</p><p>Disampaikan, penggunaan finger spot BPJS baru diberlakukan di Puskesmas Pancur, sebagai Fasilitas Kesehatan Tingkat Pertama (FKTP) di Jawa Tengah waktu itu. Sedangkan untuk ERM, Puskesmas Pancur menjadi yang pertama se-Kabupaten Rembang.</p><p>Dengan ERM dan Finger Spot, lanjutnya, memiliki kelebihan untuk pengamanan data pasien dan masyarakat tidak akan kehilangan BPJS, karena otomatis sudah terekam dan bisa dimanfaatkan di mana-mana. Hingga, bisa melacak jenis dan riwayat penyakit pasien meskipun berobat di luar kota.</p><p>&nbsp;</p><p>“Launching ERM dan finger spot juli kemarin sangat bermanfaat sekali. Kami bisa mengurangi penggunaan kertas atau paperless dan mengurangi antrian di puskesmas, yang artinya sangat membantu pasien,” terang Samsul, saat dihubungi, Selasa (5/12/2023).</p><p>Dari hasil penilaian, mulai Juli sampai awal November 2023, mereka berhasil unggul atas sejumlah Puskesmas di kota-kota besar.</p><p>&nbsp;</p><p>“Dari regional Jawa Tengah kami yang mewakili, karena kami yang sudah ERM, finger spot dan i-care. Saat itu, kami bersaing dengan Solo dan yang lain. Alhamdulillah dapat juara I kemarin tingkat nasional, mengalahkan beberapa perwakilan provinsi lainnya,” ungkapnya.</p><p>Samsul menambahkan, penghargaan tersebut menjadi motivasi kuat bagi jajaran Puskesmas Pancur untuk terus meningkatkan layanan kesehatan bagi masyarakat.</p>', '9TRTXBoXDrBvUaZGM3FoeE7LNUyC179X3nbphTDI.jpg', 'Disampaikan, penggunaan finger spot BPJS baru diberlakukan di Puskesmas Pancur, sebagai Fasilitas Kesehatan Tingkat Pertama (FKTP) di Jawa Tengah waktu itu. Sedangkan untuk ERM, Puskesmas Pancur menjadi yang pertama se-Kabupaten Rembang.  Dengan ERM dan Finger Spot, lanjutnya, memiliki kelebihan untuk pengamanan data pasien dan masyarakat tidak akan kehilangan BPJS, karena otomatis sudah terekam dan bisa dimanfaatkan di mana-mana. Hingga, bisa melacak jenis dan riwayat penyakit pasien meskipun berobat di luar kota.', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(78, 32),
(79, 33),
(80, 32),
(81, 32),
(82, 32),
(83, 33);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-11-02 22:43:31', '2023-11-02 22:43:31'),
(2, 'moderator', 'web', '2023-11-02 22:43:31', '2023-11-02 22:43:31'),
(3, 'user', 'web', '2023-11-02 22:43:31', '2023-11-02 22:43:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(31, 1),
(32, 1),
(27, 2),
(28, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_aduan`
--

CREATE TABLE `status_aduan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `aduan_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('Belum Direspon','Verifikasi','Progress','Selesai') COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(32, 'Infrastruktur', 'infrastruktur', '2023-12-25 20:16:38', '2023-12-25 20:16:38'),
(33, 'Birokrasi', 'birokrasi', '2023-12-25 20:16:46', '2023-12-25 20:16:46'),
(34, 'Layanan Kurang Memuaskan', 'layanan-kurang-memuaskan', '2023-12-25 20:16:52', '2023-12-25 20:16:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(10, 'administrator', 'admin@example.com', '2023-12-22 21:12:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BhayuA6BPbvU37gQa8X6HBKDr5uzy2u1Fx2tl8Aqw103YurxgNYtlhqo0bA3', '2023-12-22 21:12:59', '2023-12-22 21:12:59'),
(12, 'Petugas Wonosalam', 'kurniaandi18@gmail.com', NULL, '$2y$12$nMnj19.7HJ5E3II3dPRiZu7jNL/ssSjGHn8h7/oy8HuMnzqH1K9Ae', NULL, '2023-12-23 23:21:03', '2023-12-25 06:02:44'),
(13, 'User 1', 'user1@email.com', NULL, '$2y$12$G3aT/zRVnnUj3q/wsWCJ1OoZrHR3Z3Ey7A/L76y8wg7uJWfiz2LS.', NULL, '2023-12-25 06:00:45', '2023-12-25 06:00:45'),
(14, 'Petugas Desa Sidomulyo', 'sidomulyo@email.com', NULL, '$2y$12$sp7w.ivhQeOigazyA5aSRO9tqgPvp4.KBSIKJX64JGGls9MwJ4mLy', NULL, '2023-12-25 06:21:50', '2023-12-25 06:21:50'),
(15, 'user2', 'user2@email.com', NULL, '$2y$12$wqtmkfjsQl9DZl5Ra5a76ef/E2ZANT/bz6m8WS.MwYFcNO7YU5piO', NULL, '2023-12-25 20:43:39', '2023-12-25 20:43:39'),
(16, 'user3', 'user3@email.com', NULL, '$2y$12$E.zMMeNNYb6Jnq5OfLd92.JyTPZY2juGAiHgUkkJu2TkhdTtM1rLm', NULL, '2023-12-25 20:46:21', '2023-12-25 20:46:21'),
(17, 'Jujal', 'jijal@yahoo.com', NULL, '$2y$12$iyWRpvuSpScTdXcL4JXqYuevACX2WXxZP0Ixz7f.Fw6C6JwtZB6.y', NULL, '2023-12-29 07:47:40', '2023-12-29 07:47:40'),
(18, 'Helmi', 'aw40n3@gmail.com', NULL, '$2y$12$.VYm9MPPD72tI3fD4m7QiuqZ7cr/21NorRtBNr8BIRaZpucVHxZwG', NULL, '2023-12-31 10:03:52', '2023-12-31 10:03:52'),
(19, 'yudi wijaya', 'yudiwijaya924@gmail.com', NULL, '$2y$12$NwBRdNGogeU9rr2jsk.uxuJLJ8QrXkieSmd.8A74trv76hpSet80K', NULL, '2024-01-01 05:15:34', '2024-01-01 05:15:34'),
(20, 'Hely Kurniawan', 'helykurniawan@gmail.com', NULL, '$2y$12$SqtSDEOEAHy.8c0hxo5nOuGK4FRVKa4AK7qC3NVvgnEWBywKoDRJm', NULL, '2024-01-12 20:11:26', '2024-01-12 20:11:26'),
(21, 'hendi', 'solocreator542@gmail.com', NULL, '$2y$12$L5NDNXrfDcsWK3UpDtpzl.HfhJMqrMYvUF7Snt.mQN7/761ZuP.9C', NULL, '2024-02-12 01:54:03', '2024-02-12 01:54:03');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aduans`
--
ALTER TABLE `aduans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `aduans_slug_unique` (`slug`);

--
-- Indeks untuk tabel `aduan_status`
--
ALTER TABLE `aduan_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aduan_status_aduan_id_foreign` (`aduan_id`);

--
-- Indeks untuk tabel `aduan_tag`
--
ALTER TABLE `aduan_tag`
  ADD KEY `aduan_tag_aduan_id_foreign` (`aduan_id`),
  ADD KEY `aduan_tag_tag_id_foreign` (`tag_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post_category_id_foreign` (`category_id`),
  ADD KEY `category_post_post_id_foreign` (`post_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `post_tag`
--
ALTER TABLE `post_tag`
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `status_aduan`
--
ALTER TABLE `status_aduan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_aduan_aduan_id_foreign` (`aduan_id`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aduans`
--
ALTER TABLE `aduans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=824711;

--
-- AUTO_INCREMENT untuk tabel `aduan_status`
--
ALTER TABLE `aduan_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `status_aduan`
--
ALTER TABLE `status_aduan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aduan_status`
--
ALTER TABLE `aduan_status`
  ADD CONSTRAINT `aduan_status_aduan_id_foreign` FOREIGN KEY (`aduan_id`) REFERENCES `aduans` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `aduan_tag`
--
ALTER TABLE `aduan_tag`
  ADD CONSTRAINT `aduan_tag_aduan_id_foreign` FOREIGN KEY (`aduan_id`) REFERENCES `aduans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `aduan_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `status_aduan`
--
ALTER TABLE `status_aduan`
  ADD CONSTRAINT `status_aduan_aduan_id_foreign` FOREIGN KEY (`aduan_id`) REFERENCES `aduans` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
