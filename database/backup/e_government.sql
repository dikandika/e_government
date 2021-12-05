-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2021 at 12:21 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_government`
--

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`id`, `created_at`, `updated_at`, `content`, `name`, `subject`) VALUES
(1, NULL, NULL, '<!DOCTYPE html>\r\n                <html lang=\"en\">\r\n                <head>\r\n                    <meta charset=\"utf-8\">\r\n                    <meta name=\"viewport\" content=\"width=device-width\">\r\n                    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"> \r\n                    <meta name=\"x-apple-disable-message-reformatting\">\r\n                    <title>Example</title>\r\n                    <style>\r\n                        body {\r\n                            background-color:#fff;\r\n                            color:#222222;\r\n                            margin: 0px auto;\r\n                            padding: 0px;\r\n                            height: 100%;\r\n                            width: 100%;\r\n                            font-weight: 400;\r\n                            font-size: 15px;\r\n                            line-height: 1.8;\r\n                        }\r\n                        .continer{\r\n                            width:400px;\r\n                            margin-left:auto;\r\n                            margin-right:auto;\r\n                            background-color:#efefef;\r\n                            padding:30px;\r\n                        }\r\n                        .btn{\r\n                            padding: 5px 15px;\r\n                            display: inline-block;\r\n                        }\r\n                        .btn-primary{\r\n                            border-radius: 3px;\r\n                            background: #0b3c7c;\r\n                            color: #fff;\r\n                            text-decoration: none;\r\n                        }\r\n                        .btn-primary:hover{\r\n                            border-radius: 3px;\r\n                            background: #4673ad;\r\n                            color: #fff;\r\n                            text-decoration: none;\r\n                        }\r\n                    </style>\r\n                </head>\r\n                <body>\r\n                    <div class=\"continer\">\r\n                        <h1>Lorem ipsum dolor</h1>\r\n                        <h4>Ipsum dolor cet emit amet</h4>\r\n                        <p>\r\n                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea <strong>commodo consequat</strong>. \r\n                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \r\n                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n                        </p>\r\n                        <h4>Ipsum dolor cet emit amet</h4>\r\n                        <p>\r\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod <a href=\"#\">tempor incididunt ut labore</a> et dolore magna aliqua.\r\n                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\n                        </p>\r\n                        <h4>Ipsum dolor cet emit amet</h4>\r\n                        <p>\r\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\n                        </p>\r\n                        <a href=\"#\" class=\"btn btn-primary\">Lorem ipsum dolor</a>\r\n                        <h4>Ipsum dolor cet emit amet</h4>\r\n                        <p>\r\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n                            Ut enim ad minim veniam, quis nostrud exercitation <a href=\"#\">ullamco</a> laboris nisi ut aliquip ex ea commodo consequat. \r\n                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \r\n                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n                        </p>\r\n                    </div>\r\n                </body>\r\n                </html>', 'Example E-mail', 'Example E-mail');

-- --------------------------------------------------------

--
-- Table structure for table `example`
--

CREATE TABLE `example` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `example`
--

INSERT INTO `example` (`id`, `created_at`, `updated_at`, `name`, `description`, `status_id`) VALUES
(1, NULL, NULL, 'Iure aspernatur incidunt tempora cum culpa.', 'Ut nihil ab deleniti cum sit dolorem dolorem. Maxime in assumenda architecto quasi.', 2),
(2, NULL, NULL, 'Nisi veritatis tempora doloribus optio.', 'Omnis aut maxime ut voluptates ea.', 1),
(3, NULL, NULL, 'Qui qui aut voluptatem nemo excepturi.', 'Inventore et quo voluptas doloribus sed eveniet necessitatibus amet. Voluptatem est unde est commodi doloremque repellat.', 2),
(4, NULL, NULL, 'Id et est perferendis voluptatem.', 'Ut iusto enim quam. Ea enim ut quis eum sit quod quia.', 3),
(5, NULL, NULL, 'Eaque dolorem deserunt et voluptatibus.', 'Ad deserunt neque autem blanditiis ipsa aut.', 3),
(6, NULL, NULL, 'Doloribus quam aut maiores.', 'Eligendi nam et placeat qui et mollitia.', 1),
(7, NULL, NULL, 'Ad enim sit illum.', 'Quibusdam unde voluptatum eum et facilis. Alias saepe dolores incidunt distinctio et porro.', 4),
(8, NULL, NULL, 'Dignissimos repudiandae excepturi voluptatem cumque exercitationem.', 'Labore sit commodi vel dolorem id placeat dolorem. Alias soluta ipsam ducimus rerum facilis fugit qui.', 2),
(9, NULL, NULL, 'Occaecati minus et adipisci.', 'Nulla voluptas commodi quod possimus assumenda cupiditate expedita.', 4),
(10, NULL, NULL, 'In ipsa voluptatem voluptatibus.', 'Et in qui repellat consequuntur qui nam eum qui.', 1),
(11, NULL, NULL, 'Aut at aut et et necessitatibus.', 'Perferendis pariatur eum aliquam magni.', 3),
(12, NULL, NULL, 'Quos voluptatem doloribus laborum quae.', 'Laboriosam ut temporibus saepe quod doloremque omnis quia.', 2),
(13, NULL, NULL, 'Iusto officia consequatur nulla.', 'Et blanditiis atque quam ab. Odit nobis ut quibusdam placeat ut non.', 1),
(14, NULL, NULL, 'A aut earum.', 'Quia voluptate quisquam tempora enim totam. Deserunt pariatur quod neque odio in eligendi.', 1),
(15, NULL, NULL, 'Ut est quidem fugit odio est.', 'Quis praesentium id quibusdam quos veritatis totam.', 3),
(16, NULL, NULL, 'Atque nisi molestias dolores voluptatem.', 'Earum neque sunt distinctio consequatur. Porro hic quia et et.', 3),
(17, NULL, NULL, 'Ducimus vero iste autem excepturi.', 'Eos quos repudiandae architecto vel.', 4),
(18, NULL, NULL, 'Commodi voluptate accusamus.', 'Totam deserunt laborum quaerat iste. Qui earum totam ratione sint nulla nobis.', 4),
(19, NULL, NULL, 'Ad nihil quibusdam atque explicabo.', 'Placeat quis laboriosam qui et fugiat.', 2),
(20, NULL, NULL, 'Vel labore omnis eum et.', 'Consequuntur enim odit doloribus voluptas in iste alias. Debitis aspernatur harum rerum nam.', 2),
(21, NULL, NULL, 'Earum veritatis nihil delectus.', 'Nobis repellendus consequatur beatae necessitatibus.', 2),
(22, NULL, NULL, 'Est a aut quibusdam qui.', 'Eum iure numquam nisi placeat veritatis.', 2),
(23, NULL, NULL, 'Ullam vel impedit ipsa.', 'Ipsam adipisci nulla dignissimos voluptas. Tempore velit magni id porro quo.', 3),
(24, NULL, NULL, 'Doloremque temporibus totam id impedit.', 'Illum earum aliquid at sequi sed incidunt. Quam dolorum est qui dolore quisquam id.', 4),
(25, NULL, NULL, 'Doloremque porro voluptatem neque.', 'Est doloribus et eum quia consequatur accusamus rerum. Numquam magnam in nam temporibus.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE `folder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `resource` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `folder`
--

INSERT INTO `folder` (`id`, `created_at`, `updated_at`, `name`, `folder_id`, `resource`) VALUES
(1, NULL, NULL, 'root', NULL, NULL),
(2, NULL, NULL, 'resource', 1, 1),
(8, '2021-12-01 07:59:01', '2021-12-01 07:59:12', 'SKCK', 1, NULL),
(9, '2021-12-01 07:59:15', '2021-12-01 07:59:28', 'Izin Keramaian', 1, NULL),
(10, '2021-12-01 07:59:30', '2021-12-01 07:59:56', 'Pengawalan Jalan', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `add` tinyint(1) NOT NULL,
  `delete` tinyint(1) NOT NULL,
  `pagination` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `created_at`, `updated_at`, `name`, `table_name`, `read`, `edit`, `add`, `delete`, `pagination`) VALUES
(1, NULL, NULL, 'Example', 'example', 1, 1, 1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `form_field`
--

CREATE TABLE `form_field` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browse` tinyint(1) NOT NULL,
  `read` tinyint(1) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `add` tinyint(1) NOT NULL,
  `relation_table` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation_column` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` int(10) UNSIGNED NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_field`
--

INSERT INTO `form_field` (`id`, `created_at`, `updated_at`, `name`, `type`, `browse`, `read`, `edit`, `add`, `relation_table`, `relation_column`, `form_id`, `column_name`) VALUES
(1, NULL, NULL, 'Title', 'text', 1, 1, 1, 1, NULL, NULL, 1, 'name'),
(2, NULL, NULL, 'Description', 'text_area', 1, 1, 1, 1, NULL, NULL, 1, 'description'),
(3, NULL, NULL, 'Status', 'relation_select', 1, 1, 1, 1, 'status', 'name', 1, 'status_id');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `uuid`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(44, 'App\\Models\\Folder', 8, 'default', 'banner.jpg', 'SKCK-file_ktp-1234123412341234-20211202064303-banner.jpg', 'image/jpeg', 'public', 'public', 1079344, '0659a830-8d56-4c7c-b153-8d520192938a', '[]', '[]', '[]', 1, '2021-12-01 23:43:03', '2021-12-01 23:43:03'),
(48, 'App\\Models\\Folder', 8, 'default', 'SKCK-file_ktp-1111222233334444-20211202134111-policehub-QDL v2.jpg', 'SKCK-file_ktp-1111222233334444-20211202134111-policehub-QDL-v2.jpg', 'image/jpeg', 'public', 'public', 315858, '2be3c73f-3dea-47f5-9d21-49a3d898368b', '[]', '[]', '[]', 2, '2021-12-02 06:41:12', '2021-12-02 06:41:12'),
(49, 'App\\Models\\Folder', 8, 'default', 'SKCK-file_selfie_ktp-1111222233334444-20211202134113-policehub-certifiedtrue.jpg', 'SKCK-file_selfie_ktp-1111222233334444-20211202134113-policehub-certifiedtrue.jpg', 'image/jpeg', 'public', 'public', 105915, 'ecc309ee-9a6c-43b7-ae2c-2ce555a4637f', '[]', '[]', '[]', 3, '2021-12-02 06:41:13', '2021-12-02 06:41:13'),
(50, 'App\\Models\\Folder', 8, 'default', 'SKCK-file_kk-1111222233334444-20211202134113-policehub-eMedical.jpg', 'SKCK-file_kk-1111222233334444-20211202134113-policehub-eMedical.jpg', 'image/jpeg', 'public', 'public', 113865, '79da8662-71ee-47d6-9aaa-b370fc84d7ec', '[]', '[]', '[]', 4, '2021-12-02 06:41:13', '2021-12-02 06:41:13'),
(51, 'App\\Models\\Folder', 8, 'default', 'SKCK-file_akte-1111222233334444-20211202134113-banner.jpg', 'SKCK-file_akte-1111222233334444-20211202134113-banner.jpg', 'image/jpeg', 'public', 'public', 1079344, 'c06ac105-b955-43f8-9917-9f54fdc52f3d', '[]', '[]', '[]', 5, '2021-12-02 06:41:13', '2021-12-02 06:41:13'),
(52, 'App\\Models\\Folder', 8, 'default', 'SKCK-file_pass_foto-1111222233334444-20211202134113-9.png', 'SKCK-file_pass_foto-1111222233334444-20211202134113-9.png', 'image/png', 'public', 'public', 15076, 'a83f5c9e-bab6-4d94-ab23-c592b74bdf6b', '[]', '[]', '[]', 6, '2021-12-02 06:41:13', '2021-12-02 06:41:13'),
(53, 'App\\Models\\Folder', 8, 'default', 'SKCK-file_suket-1111222233334444-20211202134113-policehub-QDL v2.jpg', 'SKCK-file_suket-1111222233334444-20211202134113-policehub-QDL-v2.jpg', 'image/jpeg', 'public', 'public', 315858, '4530d665-aab9-4a7a-ab0d-fbc2d8186f4c', '[]', '[]', '[]', 7, '2021-12-02 06:41:13', '2021-12-02 06:41:13'),
(54, 'App\\Models\\Folder', 9, 'default', 'Izin Keramaian-file_ktp-2222333344445555-20211203132912-9.png', 'Izin-Keramaian-file_ktp-2222333344445555-20211203132912-9.png', 'image/png', 'public', 'public', 15076, '924752af-8468-408b-8989-bc554ad2c972', '[]', '[]', '[]', 8, '2021-12-03 06:29:13', '2021-12-03 06:29:13'),
(55, 'App\\Models\\Folder', 9, 'default', 'Izin Keramaian-file_selfie_ktp-2222333344445555-20211203132914-policehub-eMedical.jpg', 'Izin-Keramaian-file_selfie_ktp-2222333344445555-20211203132914-policehub-eMedical.jpg', 'image/jpeg', 'public', 'public', 113865, 'c39974ef-c0d0-457a-a2dc-290af07f21b1', '[]', '[]', '[]', 9, '2021-12-03 06:29:14', '2021-12-03 06:29:14'),
(56, 'App\\Models\\Folder', 9, 'default', 'Izin Keramaian-file_suket-2222333344445555-20211203132914-banner.jpg', 'Izin-Keramaian-file_suket-2222333344445555-20211203132914-banner.jpg', 'image/jpeg', 'public', 'public', 1079344, '9e604f82-2091-417e-b413-a1232b1f70c6', '[]', '[]', '[]', 10, '2021-12-03 06:29:14', '2021-12-03 06:29:14'),
(57, 'App\\Models\\Folder', 9, 'default', 'Izin Keramaian-file_surat_permohonan-2222333344445555-20211203132914-policehub-certifiedtrue.jpg', 'Izin-Keramaian-file_surat_permohonan-2222333344445555-20211203132914-policehub-certifiedtrue.jpg', 'image/jpeg', 'public', 'public', 105915, '56fa392b-9241-4dc6-b1c8-f69619b19db9', '[]', '[]', '[]', 11, '2021-12-03 06:29:14', '2021-12-03 06:29:14'),
(58, 'App\\Models\\Folder', 10, 'default', 'Pengawalan Jalan-file_ktp-0000999988887777-20211203135944-9.png', 'Pengawalan-Jalan-file_ktp-0000999988887777-20211203135944-9.png', 'image/png', 'public', 'public', 15076, '4cb00c7b-d05d-4d2d-92d2-fb48814a81c0', '[]', '[]', '[]', 12, '2021-12-03 06:59:44', '2021-12-03 06:59:44'),
(59, 'App\\Models\\Folder', 10, 'default', 'Pengawalan Jalan-file_selfie_ktp-0000999988887777-20211203135944-policehub-eMedical.jpg', 'Pengawalan-Jalan-file_selfie_ktp-0000999988887777-20211203135944-policehub-eMedical.jpg', 'image/jpeg', 'public', 'public', 113865, '46b95c89-7c65-443f-aec4-fb3f920c69f5', '[]', '[]', '[]', 13, '2021-12-03 06:59:44', '2021-12-03 06:59:44'),
(60, 'App\\Models\\Folder', 10, 'default', 'Pengawalan Jalan-file_suket-0000999988887777-20211203135944-policehub-QDL v2.jpg', 'Pengawalan-Jalan-file_suket-0000999988887777-20211203135944-policehub-QDL-v2.jpg', 'image/jpeg', 'public', 'public', 315858, '090916f9-5757-4ad0-b077-8faa09b0f115', '[]', '[]', '[]', 14, '2021-12-03 06:59:44', '2021-12-03 06:59:44'),
(61, 'App\\Models\\Folder', 10, 'default', 'Pengawalan Jalan-file_surat_permohonan-0000999988887777-20211203135944-policehub-certifiedtrue.jpg', 'Pengawalan-Jalan-file_surat_permohonan-0000999988887777-20211203135944-policehub-certifiedtrue.jpg', 'image/jpeg', 'public', 'public', 105915, '7375f75a-4a85-43b7-a114-03feff9d1d4e', '[]', '[]', '[]', 15, '2021-12-03 06:59:44', '2021-12-03 06:59:44');

-- --------------------------------------------------------

--
-- Table structure for table `menulist`
--

CREATE TABLE `menulist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menulist`
--

INSERT INTO `menulist` (`id`, `name`) VALUES
(1, 'sidebar menu'),
(2, 'top menu');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `href`, `icon`, `slug`, `parent_id`, `menu_id`, `sequence`) VALUES
(1, 'Dashboard', '/', 'cil-speedometer', 'link', NULL, 1, 1),
(2, 'Settings', NULL, 'cil-calculator', 'dropdown', NULL, 1, 5),
(4, 'Users', '/users', NULL, 'link', 2, 1, 7),
(5, 'Edit menu', '/menu/menu', NULL, 'link', 2, 1, 6),
(6, 'Edit menu elements', '/menu/element', NULL, 'link', 2, 1, 8),
(7, 'Edit roles', '/roles', NULL, 'link', 2, 1, 10),
(8, 'Media', '/media', NULL, 'link', 2, 1, 11),
(10, 'Email', '/mail', NULL, 'link', 2, 1, 52),
(11, 'Login', '/login', 'cil-account-logout', 'link', NULL, 1, 51),
(12, 'Register', '/register', 'cil-account-logout', 'link', NULL, 1, 53),
(66, 'SKCK', '/skck', 'cil-spreadsheet', 'link', NULL, 1, 2),
(68, 'Izin Keramaian', '/izin-keramaian', 'cil-notes', 'link', NULL, 1, 3),
(69, 'Pengawalan Jalan', '/pengawalan-jalan', 'cil-spreadsheet', 'link', NULL, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `menu_role`
--

CREATE TABLE `menu_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menus_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_role`
--

INSERT INTO `menu_role` (`id`, `role_name`, `menus_id`) VALUES
(1, 'guest', 1),
(2, 'user', 1),
(3, 'admin', 1),
(4, 'admin', 2),
(6, 'admin', 4),
(7, 'admin', 5),
(8, 'admin', 6),
(9, 'admin', 7),
(10, 'admin', 8),
(12, 'admin', 10),
(13, 'guest', 11),
(14, 'guest', 12),
(122, 'admin', 66),
(123, 'user', 66),
(124, 'admin', 68),
(125, 'user', 68),
(126, 'admin', 69),
(127, 'user', 69);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_11_085455_create_notes_table', 1),
(5, '2019_10_12_115248_create_status_table', 1),
(6, '2019_11_08_102827_create_menus_table', 1),
(7, '2019_11_13_092213_create_menurole_table', 1),
(8, '2019_12_10_092113_create_permission_tables', 1),
(9, '2019_12_11_091036_create_menulist_table', 1),
(10, '2019_12_18_092518_create_role_hierarchy_table', 1),
(11, '2020_01_07_093259_create_folder_table', 1),
(12, '2020_01_08_184500_create_media_table', 1),
(13, '2020_01_21_161241_create_form_field_table', 1),
(14, '2020_01_21_161242_create_form_table', 1),
(15, '2020_01_21_161243_create_example_table', 1),
(16, '2020_03_12_111400_create_email_template_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applies_to_date` date NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`, `note_type`, `applies_to_date`, `users_id`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'Quod ipsa itaque cum sint.', 'Ipsam aut ea tempore pariatur tenetur eos id. Dolorum eligendi voluptas saepe quia. Praesentium aliquam et voluptates tenetur quibusdam illum id ullam. Voluptatem suscipit ea voluptatem consequuntur est harum sit.', 'expedita sed', '2015-03-03', 3, 4, NULL, NULL),
(2, 'Nobis unde corporis eum et quam.', 'Numquam eos harum reiciendis. In ut qui laudantium aut ipsam id.', 'hic illum', '1997-09-14', 9, 3, NULL, NULL),
(3, 'Consequatur omnis tempora ipsa aut sed.', 'Eligendi adipisci ut dignissimos. Nulla iure alias occaecati voluptatibus quos saepe. Doloribus consequatur accusantium expedita maxime pariatur voluptatem.', 'nihil eveniet', '1999-08-06', 2, 2, NULL, NULL),
(4, 'Et est quasi temporibus ea optio.', 'Voluptatibus magnam et velit. Quam odit et reprehenderit inventore. Earum aut at aut.', 'et aut', '1991-08-26', 5, 3, NULL, NULL),
(5, 'Dolorem quis dolorem eum ut.', 'In error totam sed sed enim qui. Minima saepe harum et dolores repellat sint quibusdam dolores. Temporibus fuga eius est voluptatem earum sed. Ea quod enim ea animi in.', 'rem', '2012-11-19', 9, 1, NULL, NULL),
(7, 'Qui dignissimos illum et adipisci.', 'Sed officia dolore eius ut ad. Dolorum dolores quos non libero. Totam officia impedit facilis ea assumenda quidem veniam. Blanditiis assumenda est quas dolores.', 'non aut', '2005-02-01', 9, 3, NULL, NULL),
(8, 'Et neque commodi.', 'Quos perferendis at nihil. Quis optio repellat in nihil eum at. Sapiente corrupti blanditiis natus ab. Magni sed repellendus adipisci.', 'occaecati et', '2013-12-03', 2, 1, NULL, NULL),
(9, 'Delectus facere atque inventore id aut.', 'Tempore impedit ipsum quia ipsa voluptatem distinctio libero eaque. Nesciunt voluptas et occaecati neque et sed. Reprehenderit veritatis illo provident non. Maxime qui pariatur enim sit illo eveniet.', 'ullam pariatur', '1989-02-05', 3, 4, NULL, NULL),
(10, 'Et voluptatem expedita id.', 'In totam et sunt deleniti hic. Quia asperiores a veniam voluptates fugiat et aliquam. Saepe aut aliquam quia magnam hic debitis. Omnis omnis temporibus omnis vero ipsa earum non.', 'culpa', '2019-09-30', 7, 3, NULL, NULL),
(11, 'Quia odit sit quisquam.', 'Ut laborum voluptatum beatae inventore possimus quae quas atque. Inventore ducimus fugiat numquam iusto accusantium voluptatem. Consequatur qui iusto quo sunt distinctio quo.', 'aperiam', '1999-12-30', 7, 3, NULL, NULL),
(12, 'Perspiciatis exercitationem quidem voluptatem.', 'Officia natus saepe quibusdam maiores nulla. Et laudantium est et aut inventore quibusdam rerum quia.', 'autem', '1990-05-25', 11, 3, NULL, NULL),
(13, 'Deserunt harum ipsum.', 'Rerum et incidunt vel. Architecto et veniam ut harum voluptatum. Exercitationem eveniet officia impedit ut rerum harum laudantium dicta.', 'eos', '2000-10-18', 5, 1, NULL, NULL),
(14, 'Consequuntur nisi rem ipsum dolorem.', 'Fuga sequi deleniti necessitatibus amet similique enim et qui. Omnis qui ipsa adipisci et quae error labore. Voluptatibus sunt eveniet velit ut aspernatur ipsa. Dignissimos id dicta tenetur aut natus.', 'et', '1982-06-14', 5, 3, NULL, NULL),
(15, 'Non consequatur et.', 'Sint quis a dicta quidem non ad mollitia. Ex et quod beatae. Vel voluptas cupiditate placeat et. Autem voluptas officiis numquam deserunt non magnam consequatur.', 'vero omnis', '2019-06-07', 9, 3, NULL, NULL),
(16, 'Sunt ut magni et ipsam.', 'Voluptates et soluta non qui est. Reiciendis quod omnis officiis est illum. Eum necessitatibus facilis deleniti vel tenetur quaerat non.', 'sit', '2012-11-20', 4, 2, NULL, NULL),
(17, 'Voluptates qui ut enim id.', 'Voluptas porro aut consequatur aut sed fuga qui. Sit et id dignissimos quia et nihil. Unde quasi dignissimos est quod beatae. Minus molestiae vel pariatur facilis et nemo et est. Voluptate natus dolorum cupiditate cumque qui excepturi.', 'nihil', '2002-09-07', 8, 4, NULL, NULL),
(18, 'Quasi sed facere.', 'Aperiam iusto maxime harum eligendi. Est quos et veritatis atque ut autem corrupti voluptas. Nemo et eos asperiores qui repudiandae fuga. Officia iusto a eum.', 'sint qui', '2016-05-02', 7, 4, NULL, NULL),
(19, 'Earum eveniet et.', 'Rem voluptas dolorum officiis alias et facere reiciendis. Quam ipsa omnis iure ullam. Ipsum laboriosam aperiam tenetur maiores. Sed quia fuga assumenda vel tenetur et. Sit recusandae earum tempora expedita distinctio similique.', 'amet sapiente', '1972-09-26', 8, 2, NULL, NULL),
(20, 'Recusandae perferendis accusamus.', 'Rerum in aut porro voluptatum quas dolores iure et. Tenetur doloribus id atque dolorum inventore. Iste veniam exercitationem aliquid rerum asperiores dicta maiores. Amet reiciendis laborum explicabo commodi rerum eum. Reiciendis corrupti occaecati molestiae quibusdam porro.', 'et', '2003-08-04', 8, 1, NULL, NULL),
(21, 'Qui illo culpa molestias.', 'Voluptatem sint accusantium ut ut ducimus. Qui ut illo sint enim similique autem. A animi quia et quia rerum similique. Natus veritatis non mollitia voluptates facere odio.', 'dolorem voluptatem', '1977-02-23', 3, 2, NULL, NULL),
(22, 'Provident sint facilis numquam.', 'Quo accusantium a autem omnis quia earum. Praesentium sint rerum repudiandae voluptates omnis. Reprehenderit amet qui et deserunt et sit id. Illum culpa rerum quos.', 'at adipisci', '1991-01-24', 5, 2, NULL, NULL),
(23, 'Odit alias accusamus magni autem temporibus.', 'Vitae repellendus rerum accusantium voluptates et aut expedita sunt. Unde tenetur in pariatur quaerat sint sint eum. Nulla iusto voluptatem itaque. Eveniet iste repellendus fugiat minima a alias.', 'voluptatem ipsa', '1999-12-03', 10, 4, NULL, NULL),
(24, 'Porro qui facere veritatis eos.', 'Exercitationem recusandae molestiae qui. Voluptatem doloremque esse vero. Odit et saepe sunt maxime provident rem.', 'reiciendis doloremque', '1989-11-22', 4, 2, NULL, NULL),
(25, 'Amet sequi odit sed.', 'Consequatur odio molestiae debitis dolor et quas dolores. Atque cum voluptas iure et. Aspernatur sed et omnis est. Molestiae quis cumque quia aut vitae dolor.', 'dolor ut', '2013-04-16', 2, 3, NULL, NULL),
(26, 'Cum voluptate deleniti.', 'Voluptate ut corporis quasi. Ipsam qui iure ipsam ut illum et nam. Vel excepturi maxime aperiam ex repellat.', 'iusto ab', '2002-03-18', 7, 4, NULL, NULL),
(27, 'Quis vitae pariatur asperiores.', 'Dicta aliquam eum cum et temporibus animi cum. Sequi illo consequatur quis qui eius. Nostrum dolores occaecati odio voluptatem.', 'voluptatem occaecati', '2008-05-31', 2, 1, NULL, NULL),
(28, 'Voluptas iusto doloribus ducimus sit quis.', 'Quod expedita est laboriosam sed amet et quas. Magnam atque dolores molestiae rerum est aliquam nisi. Est vel fugit cupiditate voluptatum architecto quia autem aut. Qui omnis id soluta et ut.', 'officiis minus', '2018-04-05', 8, 2, NULL, NULL),
(29, 'Assumenda eos eaque doloribus accusamus eius.', 'In voluptas ut ut velit. Quas praesentium consequatur qui a. Molestiae placeat aut aut nostrum deserunt sed eligendi corporis. Ea quisquam repellendus et consequuntur quidem.', 'suscipit hic', '1985-12-23', 6, 2, NULL, NULL),
(30, 'Quis fugiat iste quisquam.', 'Asperiores reiciendis eveniet molestiae quia molestias cumque architecto eligendi. Sed dolores maxime nihil vel ipsa. Nihil recusandae quod quibusdam ut qui.', 'vel est', '1980-07-09', 10, 2, NULL, NULL),
(31, 'Sed quis ea odio ducimus voluptas.', 'Ad excepturi aliquam provident officia perspiciatis. Repellendus totam consequuntur optio sed et modi. Ipsa id numquam laboriosam reprehenderit numquam.', 'perspiciatis', '2019-04-28', 6, 4, NULL, NULL),
(32, 'Reprehenderit et et quod quisquam veritatis.', 'Sequi eum voluptatem quia ab consectetur. Et repudiandae dicta repellendus est.', 'cupiditate', '2019-04-04', 3, 2, NULL, NULL),
(33, 'Maxime perferendis non hic excepturi voluptate.', 'Est enim quam praesentium dolorem ex quibusdam. Eligendi maxime alias et natus. Minus quae facilis omnis laborum quo quis sapiente.', 'deleniti', '1993-10-19', 3, 4, NULL, NULL),
(34, 'Omnis nulla autem eius optio tempore.', 'Consequuntur adipisci sunt voluptas adipisci nihil. Accusantium deserunt aut quasi veniam laudantium. Velit omnis esse eveniet ducimus odio. Aut in dolorem laudantium itaque magni corporis aspernatur.', 'officiis', '1993-03-25', 7, 2, NULL, NULL),
(35, 'Voluptatem qui veritatis et ut.', 'Sint nesciunt sit nulla illo tenetur velit recusandae quis. Nesciunt ab corporis maxime saepe. Occaecati excepturi beatae laboriosam dignissimos. Porro sapiente libero libero facilis.', 'omnis dolores', '1987-04-21', 2, 2, NULL, NULL),
(36, 'Nulla qui aliquid libero quidem.', 'Magnam qui tempora et eligendi quibusdam deserunt et. Dolorem dolorum error est eos nostrum. Quo et voluptas in delectus placeat. Aut et et illum dolorem beatae autem sint.', 'ut', '2010-08-25', 9, 2, NULL, NULL),
(37, 'Eos eos magnam commodi vero autem.', 'Rerum iste omnis ut est fugiat. Ab et deleniti cupiditate omnis aspernatur quidem qui. Temporibus non voluptatem et similique rem quia. Saepe aut facere veritatis sapiente.', 'molestiae', '1997-07-30', 3, 3, NULL, NULL),
(38, 'Sit consequuntur ipsa et cumque.', 'Rem optio ut perferendis quisquam occaecati facere. Voluptates assumenda rerum iste dolorem voluptatem consequatur dicta. Aliquid ullam doloremque provident eligendi et ab dolorem quo. Iure doloremque eos molestiae eum est architecto qui.', 'temporibus', '1974-10-19', 2, 3, NULL, NULL),
(39, 'Ut eos natus sunt velit.', 'Cumque assumenda blanditiis ullam fugit voluptatibus qui. Velit laborum cupiditate nesciunt quia. Quibusdam quos necessitatibus officiis veritatis pariatur tenetur quia.', 'id', '1972-02-20', 11, 1, NULL, NULL),
(40, 'Facere qui harum quo.', 'Rem consequatur itaque sed non facere quos quam. Perferendis quia molestias aperiam. Impedit recusandae placeat sed non. Placeat asperiores nobis earum nam.', 'et aut', '1971-04-29', 6, 4, NULL, NULL),
(41, 'Ullam fugit officia itaque repudiandae.', 'Tenetur sunt architecto eligendi ipsam ipsam adipisci. Animi modi provident aut non harum nesciunt. Voluptatem voluptas commodi ratione sed.', 'error', '1996-11-21', 10, 1, NULL, NULL),
(42, 'Perspiciatis occaecati sequi omnis.', 'Ex sunt quia sunt aspernatur cumque non qui. Aut ipsum tenetur neque. Non error illum fuga ea qui fugit fuga asperiores. Sed est aliquid eveniet iste voluptatum.', 'omnis', '2019-09-05', 8, 2, NULL, NULL),
(43, 'Eum dolores tempora qui excepturi soluta.', 'Quas nesciunt ipsum doloremque quam doloremque sed. Veniam dolorum aperiam et illo. Dolore explicabo non est et provident est officiis est.', 'magni', '1991-04-25', 10, 4, NULL, NULL),
(44, 'Nostrum ut animi odio.', 'Eligendi ut repudiandae accusantium. Sequi ullam nostrum autem officiis. Nobis iusto magni in possimus quod commodi dolorum.', 'nobis deleniti', '2019-03-02', 3, 1, NULL, NULL),
(45, 'Doloribus dicta est perspiciatis.', 'Repudiandae repellat ipsam sapiente eligendi et dolores vel. Eveniet repellat possimus saepe ipsam enim facilis. Illo maiores autem dolor quis unde architecto quia.', 'quo et', '1980-07-05', 7, 4, NULL, NULL),
(46, 'Qui voluptas illo.', 'Et voluptas aut fugit id voluptas recusandae. Quae ratione vitae officiis qui blanditiis perferendis amet. Id quisquam rem est. Est voluptatibus et alias totam non libero.', 'vitae', '2020-02-16', 8, 2, NULL, NULL),
(47, 'Non non animi impedit blanditiis.', 'Nesciunt quae nostrum non sed consectetur sed repellat. Quasi sed tempora natus ut. Architecto facilis dolorem sed ipsum amet. Temporibus inventore necessitatibus dolores cupiditate labore aut.', 'corporis officia', '1995-04-23', 8, 1, NULL, NULL),
(48, 'Vel et omnis.', 'Consequatur consequatur odit laboriosam eos eum. Dignissimos deserunt modi vitae et earum nesciunt. Maxime quae at saepe non.', 'optio fuga', '1979-02-01', 4, 2, NULL, NULL),
(49, 'Rerum fugiat officiis ipsum quasi voluptas.', 'Excepturi ut iste molestias culpa perferendis rem. Corporis minus incidunt numquam quasi consequatur fuga. Non quas est et aut.', 'rerum non', '2005-07-23', 7, 2, NULL, NULL),
(50, 'Error deserunt deserunt doloremque.', 'Et similique non eligendi omnis quod facilis. Dolor eum placeat nesciunt autem aut.', 'neque', '1992-05-15', 5, 4, NULL, NULL),
(51, 'Similique maxime mollitia.', 'Dolorem dolores praesentium et necessitatibus est. Est autem dolore corrupti magnam. Assumenda et mollitia culpa id dignissimos sequi et aut. Aperiam quia enim minus adipisci nisi.', 'unde perspiciatis', '1975-05-29', 5, 2, NULL, NULL),
(52, 'Aliquam nemo blanditiis placeat nobis.', 'Eius aliquam cupiditate ratione sit quae labore ut. Quibusdam omnis aut placeat exercitationem quia placeat. Quod eius voluptas sit architecto.', 'officia', '1975-07-13', 7, 2, NULL, NULL),
(53, 'Facilis dolorem quam quam magni nihil.', 'Voluptatem dolore reprehenderit nobis. Omnis qui eaque voluptas velit rerum culpa. Explicabo culpa aut blanditiis recusandae aut totam inventore. Eos eum qui debitis sed quo velit.', 'accusamus', '1985-04-30', 11, 1, NULL, NULL),
(54, 'Enim aperiam dolorum cupiditate.', 'Ullam aliquid eos culpa. Beatae necessitatibus minus voluptas adipisci. Aliquam qui doloremque minus corrupti.', 'quod', '1970-01-02', 3, 3, NULL, NULL),
(55, 'Consequatur et nobis ipsum impedit ut.', 'Perspiciatis tempora quis voluptas consectetur. A provident sunt officiis. Laboriosam eius aliquid sed veniam id. Vero rerum quo sit voluptas voluptatem fuga eaque aut.', 'ad omnis', '2011-07-31', 7, 4, NULL, NULL),
(56, 'Commodi voluptatibus sit.', 'Ut eum ducimus animi qui qui assumenda quia impedit. Dolor minima voluptates iste aliquid tenetur modi ex. Quam velit id deleniti molestiae.', 'magnam', '2002-05-31', 8, 4, NULL, NULL),
(57, 'Dolore odit accusamus necessitatibus velit.', 'Molestiae inventore libero dignissimos sed iure iusto. Unde suscipit quis et quidem. In dolorem harum rerum dolores culpa et aut dolor. Nostrum esse cumque ut eum distinctio.', 'tempora', '1994-08-03', 11, 2, NULL, NULL),
(58, 'Provident dolorem temporibus repellat autem.', 'Iste eum est modi. Est omnis quidem aut aut blanditiis voluptate. Cum quasi sapiente dicta.', 'et', '2005-01-29', 9, 4, NULL, NULL),
(59, 'Consequuntur blanditiis omnis animi rem.', 'Ullam nam iste est ratione. Enim non ut repellendus.', 'illo', '1970-07-05', 4, 1, NULL, NULL),
(60, 'Unde sint aperiam repellendus.', 'Quam consequatur non unde ea. Veritatis voluptatem officia perspiciatis numquam. Blanditiis impedit magnam eveniet repudiandae alias. Eveniet harum culpa sit pariatur laboriosam officia quis.', 'praesentium non', '1972-11-26', 11, 1, NULL, NULL),
(61, 'Ab omnis voluptas.', 'Sed perferendis culpa qui mollitia. Fuga sapiente fugit rem esse. Aliquam id nihil sit aut rem adipisci quia.', 'sint', '2020-12-28', 5, 4, NULL, NULL),
(62, 'Esse rem enim dolores.', 'Ab consectetur ut blanditiis porro officia. Dolores ipsum excepturi porro.', 'quia placeat', '1975-04-30', 11, 2, NULL, NULL),
(63, 'Modi voluptatum error est.', 'Alias est vero perspiciatis enim veritatis quae consequatur. Et voluptatibus et consequuntur ad et doloremque. Nostrum sunt quod et voluptas unde recusandae. Rerum odit hic quia consectetur.', 'eum', '2016-07-17', 11, 4, NULL, NULL),
(64, 'Odio earum aliquid et minima deleniti.', 'Quae nulla et omnis non. Rerum commodi eum voluptatibus perferendis quasi velit harum. Quo id dolor delectus ut velit repellendus ea iusto.', 'ex id', '2015-08-03', 3, 1, NULL, NULL),
(65, 'Alias nisi a minus.', 'Et voluptate saepe accusantium ipsum repellat fugiat eaque. Vitae numquam et molestiae hic ullam tenetur. Quos voluptatem sit ut culpa rerum doloribus libero.', 'similique', '1987-06-23', 3, 4, NULL, NULL),
(66, 'Molestiae similique aspernatur.', 'Eligendi vitae consequatur aut repudiandae ut numquam est eius. Consequatur hic consequatur distinctio assumenda. Totam quo odit alias aut. Et eum doloribus qui.', 'est exercitationem', '2015-12-27', 11, 3, NULL, NULL),
(67, 'Consequatur consequatur est eum non.', 'Ducimus eveniet natus sunt maiores. Placeat rerum tenetur dolor non asperiores possimus nihil. Adipisci necessitatibus dolores eum commodi praesentium explicabo error est. Quam ab velit pariatur.', 'qui minus', '1990-11-19', 6, 3, NULL, NULL),
(68, 'Soluta molestiae expedita est consequatur.', 'Vel omnis quo asperiores nihil omnis. Quidem fugit nisi doloribus rerum id id odit. Sunt aut sit beatae quas fuga odio et. Cumque explicabo in aut repudiandae delectus molestias nulla. Commodi distinctio ut esse eos libero et.', 'est', '1990-06-17', 2, 3, NULL, NULL),
(69, 'Facere natus omnis.', 'Iure provident omnis quis sunt. Labore veritatis ipsam iure aliquam qui. Beatae ut explicabo velit et.', 'nam ipsum', '2006-02-25', 4, 4, NULL, NULL),
(70, 'Natus alias aut itaque.', 'Architecto esse esse quia nesciunt totam quaerat. Sit maxime qui dolorem architecto. Adipisci molestiae voluptas culpa aut. Cumque et tempore repellendus laudantium. Ducimus corrupti non quis omnis quisquam totam labore.', 'voluptate', '2003-08-25', 11, 2, NULL, NULL),
(71, 'Natus facere quae ipsa.', 'Rerum sunt consequatur eum aliquam dignissimos rem. Iure quia quasi et sed aut delectus. Ad ut debitis ab veniam quaerat deserunt odit nisi. Ut enim quaerat error ea nam.', 'omnis nam', '1972-02-12', 8, 2, NULL, NULL),
(72, 'Est est quisquam dolor.', 'Qui non eius magnam nihil. Voluptatibus molestiae ipsam aut alias. Sapiente dolorum tempore veniam tempore. Doloribus quis saepe ut quis numquam.', 'voluptatem assumenda', '2017-07-20', 8, 2, NULL, NULL),
(73, 'Enim ad accusamus quo non.', 'Dolorem in est voluptas. Natus quia delectus amet. Non quo exercitationem aut minima dolorem a accusantium deleniti.', 'nesciunt deleniti', '1979-08-18', 11, 3, NULL, NULL),
(74, 'Omnis incidunt amet nihil aliquam.', 'Non nesciunt saepe atque ut. Iure quia amet adipisci doloribus. Nihil ut possimus optio reprehenderit qui.', 'distinctio quia', '1977-02-28', 10, 3, NULL, NULL),
(75, 'Quam veritatis quas cupiditate illo officiis.', 'Odit facere corporis dolor quaerat placeat laboriosam porro. Inventore aut qui quaerat vel enim magnam molestiae provident. Nostrum est ut alias laudantium qui quia. Cum fugiat eaque voluptatibus est harum eius aut.', 'iste', '1996-04-10', 4, 3, NULL, NULL),
(76, 'Sint et dolores.', 'Et quae aspernatur odio velit dolores non non accusantium. Excepturi facere accusamus sunt est. Est aut exercitationem quis ut reiciendis ab consectetur dolor. Voluptas ratione et et ex accusantium accusamus.', 'aperiam sed', '2004-01-04', 8, 4, NULL, NULL),
(77, 'Nihil nobis veritatis.', 'Quia quis et sunt unde dolores omnis amet neque. In et dolorem nobis necessitatibus ea aut. Cupiditate ut qui fuga qui temporibus. Animi ab aperiam quo harum.', 'dolores consectetur', '2017-02-04', 4, 3, NULL, NULL),
(78, 'Quibusdam quos est minima reiciendis.', 'Vel aut blanditiis cupiditate et. Qui quis aut voluptas quae suscipit a consequuntur. Voluptatum nihil commodi quae minima sit voluptas et. Provident magnam molestiae blanditiis non maxime.', 'et fuga', '1995-11-10', 4, 2, NULL, NULL),
(79, 'Eveniet cum omnis pariatur perspiciatis.', 'Quasi aut perspiciatis voluptas. Fugit et voluptatum hic adipisci deleniti eos fugit. Voluptas dolorum nihil et dolore error quasi. Tempora doloremque quia quaerat cum. Cumque et odio illum dignissimos similique praesentium delectus saepe.', 'recusandae dolore', '1977-03-18', 3, 3, NULL, NULL),
(80, 'Aut pariatur et.', 'Consequuntur odio dolorem vero labore. Maxime earum ab facere blanditiis beatae. Commodi eaque quia tenetur aut.', 'molestias quis', '1979-03-25', 4, 3, NULL, NULL),
(81, 'Voluptatem aspernatur et et ad.', 'Exercitationem molestiae temporibus quisquam. At nihil doloribus labore et et tempora. Esse numquam eligendi repudiandae est rerum praesentium. Unde ea vero officia nulla sequi nobis atque.', 'reprehenderit', '2004-03-02', 7, 4, NULL, NULL),
(82, 'Minus sed recusandae libero.', 'Et quisquam perspiciatis maiores harum. Fuga corrupti ratione eum laudantium qui deleniti. Necessitatibus tenetur similique sed expedita dicta.', 'explicabo', '2008-09-20', 8, 4, NULL, NULL),
(83, 'Blanditiis rerum voluptatibus quo.', 'Nobis ut officia ut rerum rerum repellendus. Deleniti corporis sequi consequatur consequatur pariatur error earum. Blanditiis similique est ea. Quod laborum eveniet aut magnam.', 'laboriosam totam', '1975-05-06', 5, 4, NULL, NULL),
(84, 'Sed nostrum et magni nesciunt.', 'Corporis iure rerum voluptatibus. Ipsum doloribus dolores ea illum velit libero maxime quod. Autem nemo veniam minima officia. Veritatis minima nemo sed ut quia.', 'illo odio', '1986-02-01', 11, 1, NULL, NULL),
(85, 'Error totam est.', 'Incidunt nihil corrupti dolore officia eligendi et ea. Aut tenetur et facere omnis. Ipsam vel accusantium dolores quia dolorem sunt totam voluptas. Et dolor ad numquam velit rerum corrupti ad omnis.', 'sit', '2012-02-27', 5, 1, NULL, NULL),
(86, 'Alias porro soluta possimus.', 'Voluptas consequatur et est maxime atque. Est perspiciatis est qui sint. Distinctio quia officia similique numquam. Eius consectetur nulla omnis quidem ut enim dolorem ullam.', 'est', '1999-06-18', 5, 1, NULL, NULL),
(87, 'Velit suscipit sed non vel.', 'Dolor maxime aut sed unde. In sit molestiae sed rerum voluptas et aut ut. Totam ex est laboriosam quia iusto. Saepe porro hic asperiores voluptatem sit molestiae quisquam odio.', 'sapiente ipsa', '2006-04-25', 4, 4, NULL, NULL),
(88, 'Quibusdam quo commodi debitis.', 'Repellat molestiae quaerat odio aut non numquam aut quo. Et consequatur vitae distinctio nemo vero. Sunt neque sit nulla nulla.', 'illum ullam', '1978-02-19', 4, 3, NULL, NULL),
(89, 'Ipsum ut est.', 'Dolores aut non amet nulla. Nihil qui id itaque praesentium reprehenderit occaecati sint. Quia adipisci ipsum optio facere tenetur. Qui voluptate rerum ducimus.', 'natus', '2013-04-30', 11, 1, NULL, NULL),
(90, 'Fuga illum quibusdam eius eligendi.', 'Ut et vel eum sed repellendus mollitia. Architecto nihil cupiditate ad voluptatem et id fugiat ut. Cumque maiores aliquid et ad dolorum voluptates. Veniam inventore et dignissimos et perferendis perferendis maiores.', 'veniam sed', '1977-08-04', 11, 4, NULL, NULL),
(91, 'Doloribus aut cum deserunt.', 'Pariatur dicta impedit omnis sapiente nisi ducimus officia. Facere voluptas quis eius labore. Ipsa perferendis consectetur dolorum qui debitis odio. Mollitia autem officiis qui eos atque.', 'et ad', '1995-03-12', 9, 1, NULL, NULL),
(92, 'Voluptatem qui est laudantium.', 'Laboriosam voluptatum et provident porro molestias in et. Quia nostrum voluptas animi sed molestias repudiandae. Quia quia dolorum sapiente laudantium animi. Et impedit quo autem magni sunt facere reiciendis.', 'itaque cupiditate', '1988-12-16', 5, 1, NULL, NULL),
(93, 'Asperiores vel impedit maiores quos.', 'Quo quaerat consequuntur possimus ut. Saepe cum molestias qui voluptatem eos deserunt nam. Non dolorem in eius rem.', 'impedit', '1974-05-13', 8, 1, NULL, NULL),
(94, 'Expedita architecto fugiat quia eos.', 'Corrupti neque consequatur est ratione inventore. Ut cumque aut recusandae maiores corporis. Unde et quis quia accusamus suscipit et facere.', 'minus', '1988-08-30', 11, 1, NULL, NULL),
(95, 'Tempora et pariatur optio molestiae molestiae.', 'Alias eos veniam id dolorum quam et qui. Sunt vero voluptates esse voluptas odit et.', 'natus', '1978-08-11', 5, 4, NULL, NULL),
(96, 'Facilis et sequi.', 'Nihil est fuga cum aperiam. Blanditiis quidem qui quos qui voluptate reiciendis pariatur. Quasi hic facere officiis accusamus voluptatibus. Labore facilis nam cupiditate necessitatibus voluptates voluptatem.', 'suscipit debitis', '2010-08-08', 5, 4, NULL, NULL),
(97, 'Assumenda placeat tempore occaecati.', 'Qui et ducimus consequatur quo. Ullam ullam omnis dolor tenetur adipisci iure sit. Quo facere ea maxime incidunt id et. Quia in optio quisquam sit voluptas.', 'cumque nostrum', '2013-08-23', 4, 1, NULL, NULL),
(98, 'Consectetur recusandae omnis.', 'Voluptates dicta quidem consequuntur rem voluptas. Eum autem dicta est similique aut. Tempora est laudantium voluptates non iste. Quia quasi explicabo sapiente ipsam velit modi. Pariatur consequatur provident laborum praesentium sed voluptatum sit.', 'amet', '1985-10-02', 5, 2, NULL, NULL),
(99, 'Eos animi rerum.', 'Deleniti voluptas eos quaerat molestias voluptates eum dolorem. Quaerat itaque placeat rerum repellendus dolores omnis rerum. Neque qui voluptas aperiam magnam quia sit. Quia recusandae doloremque vitae soluta nisi.', 'veritatis', '1985-04-28', 10, 4, NULL, NULL),
(100, 'Officiis occaecati ut.', 'Aut ea necessitatibus et eaque voluptatum. Vitae omnis ut amet voluptas. Nam rerum vel cumque rerum velit.', 'assumenda', '1970-06-27', 8, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'browse bread 1', 'web', '2021-11-30 06:20:44', '2021-11-30 06:20:44'),
(2, 'read bread 1', 'web', '2021-11-30 06:20:44', '2021-11-30 06:20:44'),
(3, 'edit bread 1', 'web', '2021-11-30 06:20:44', '2021-11-30 06:20:44'),
(4, 'add bread 1', 'web', '2021-11-30 06:20:44', '2021-11-30 06:20:44'),
(5, 'delete bread 1', 'web', '2021-11-30 06:20:44', '2021-11-30 06:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-11-30 06:20:43', '2021-11-30 06:20:43'),
(2, 'user', 'web', '2021-11-30 06:20:43', '2021-11-30 06:20:43'),
(3, 'guest', 'web', '2021-11-30 06:20:43', '2021-11-30 06:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `role_hierarchy`
--

CREATE TABLE `role_hierarchy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `hierarchy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_hierarchy`
--

INSERT INTO `role_hierarchy` (`id`, `role_id`, `hierarchy`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `service_history`
--

CREATE TABLE `service_history` (
  `service_history_id` int(11) NOT NULL,
  `tipe_id` int(11) NOT NULL,
  `nik` char(18) NOT NULL,
  `nama` char(60) NOT NULL,
  `alamat` char(250) NOT NULL,
  `domisili` char(250) NOT NULL,
  `no_hp` char(15) NOT NULL,
  `email` char(50) NOT NULL,
  `url_ktp` varchar(300) DEFAULT NULL,
  `url_selfie` varchar(300) DEFAULT NULL,
  `url_suket` varchar(300) DEFAULT NULL,
  `url_suratpermohonan` varchar(300) DEFAULT NULL,
  `url_kk` varchar(300) DEFAULT NULL,
  `url_akta_lahir` varchar(300) DEFAULT NULL,
  `url_pass_foto` varchar(300) DEFAULT NULL,
  `update_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service_status`
--

CREATE TABLE `service_status` (
  `status_id` int(11) NOT NULL,
  `status_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_status`
--

INSERT INTO `service_status` (`status_id`, `status_name`) VALUES
(1, 'open'),
(2, 'close');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `class`) VALUES
(1, 'ongoing', 'badge badge-pill badge-primary'),
(2, 'stopped', 'badge badge-pill badge-secondary'),
(3, 'completed', 'badge badge-pill badge-success'),
(4, 'expired', 'badge badge-pill badge-warning');

-- --------------------------------------------------------

--
-- Table structure for table `tipe_service`
--

CREATE TABLE `tipe_service` (
  `tipe_id` int(11) NOT NULL,
  `tipe_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipe_service`
--

INSERT INTO `tipe_service` (`tipe_id`, `tipe_name`) VALUES
(1, 'SKCK'),
(2, 'IZIN KERAMAIAN'),
(3, 'PENGAWALAN JALAN');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menuroles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `menuroles`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@admin.com', '2021-11-30 06:20:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user,admin', 'm2HEYoe2RBLHkJ1SbK2Bh29FvcO6qDt9ZXGvNduPPQPyiIbCiIs1QJ5YymZd', '2021-11-30 06:20:43', '2021-11-30 06:20:43', NULL),
(2, 'Dr. Erik Langworth', 'zetta86@example.org', '2021-11-30 06:20:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'iehfi0Pgpc', '2021-11-30 06:20:43', '2021-11-30 06:20:43', NULL),
(3, 'Pauline Schimmel', 'rflatley@example.org', '2021-11-30 06:20:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'wmiwWGrFcV', '2021-11-30 06:20:43', '2021-11-30 06:20:43', NULL),
(4, 'Dr. Adella Zieme', 'pfannerstill.carter@example.com', '2021-11-30 06:20:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'ZzPuw8na8U', '2021-11-30 06:20:43', '2021-11-30 06:20:43', NULL),
(5, 'Maybelle Terry', 'blanda.marcus@example.org', '2021-11-30 06:20:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'Vr1ZOWMc2g', '2021-11-30 06:20:43', '2021-11-30 06:20:43', NULL),
(6, 'Mr. Quinn Cassin III', 'hermann.cordell@example.com', '2021-11-30 06:20:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'Xbo2QOucV7', '2021-11-30 06:20:43', '2021-11-30 06:20:43', NULL),
(7, 'Estelle Barrows MD', 'cweimann@example.com', '2021-11-30 06:20:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'fu3cYC8wKt', '2021-11-30 06:20:43', '2021-11-30 06:20:43', NULL),
(8, 'Mr. Keegan Carroll', 'daryl59@example.org', '2021-11-30 06:20:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'vrLe0kE98R', '2021-11-30 06:20:43', '2021-11-30 06:20:43', NULL),
(9, 'Lavern Boyer III', 'heaney.eve@example.net', '2021-11-30 06:20:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'lSiCIiaoyh', '2021-11-30 06:20:43', '2021-11-30 06:20:43', NULL),
(10, 'Marjorie Ziemann', 'eloisa36@example.com', '2021-11-30 06:20:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'w1BXroGg26', '2021-11-30 06:20:43', '2021-12-02 00:29:22', '2021-12-02 00:29:22'),
(11, 'Mr. Darien Luettgen', 'schultz.hallie@example.net', '2021-11-30 06:20:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'user', 'ElQGsLQl0j', '2021-11-30 06:20:43', '2021-11-30 06:20:43', NULL),
(12, 'dika', 'dika@mail.com', NULL, '$2y$10$Y6em12R.S/c3FlIdNG73wOu/1wH2rHM61dpmMlk8PcLoMna.zm7Ja', 'user', NULL, '2021-12-01 19:59:02', '2021-12-01 19:59:02', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `example`
--
ALTER TABLE `example`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_field`
--
ALTER TABLE `form_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `menulist`
--
ALTER TABLE `menulist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_role`
--
ALTER TABLE `menu_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `role_hierarchy`
--
ALTER TABLE `role_hierarchy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_history`
--
ALTER TABLE `service_history`
  ADD PRIMARY KEY (`service_history_id`),
  ADD KEY `status` (`status`),
  ADD KEY `tipe_id` (`tipe_id`);

--
-- Indexes for table `service_status`
--
ALTER TABLE `service_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipe_service`
--
ALTER TABLE `tipe_service`
  ADD PRIMARY KEY (`tipe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `example`
--
ALTER TABLE `example`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `folder`
--
ALTER TABLE `folder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `form_field`
--
ALTER TABLE `form_field`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `menulist`
--
ALTER TABLE `menulist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `menu_role`
--
ALTER TABLE `menu_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_hierarchy`
--
ALTER TABLE `role_hierarchy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_history`
--
ALTER TABLE `service_history`
  MODIFY `service_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_history`
--
ALTER TABLE `service_history`
  ADD CONSTRAINT `service_history_ibfk_1` FOREIGN KEY (`tipe_id`) REFERENCES `tipe_service` (`tipe_id`),
  ADD CONSTRAINT `service_history_ibfk_2` FOREIGN KEY (`status`) REFERENCES `service_status` (`status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
