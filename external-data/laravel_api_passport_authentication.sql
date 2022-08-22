-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2022 at 12:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_api_passport_authentication`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2022_08_17_085425_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('07a8f682179ba21966202ea220522ce638a87e8ebc0232a93d4c2891493e525b0d9393c55928a82e', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 03:21:37', '2022-08-22 03:21:37', '2023-08-22 09:21:37'),
('08d17b445df35380052ff902a1f5f5a50378974c5979089c17dbd3f5880c99d3786df6a3fc678c51', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 10:41:43', '2022-08-19 10:41:43', '2023-08-19 16:41:43'),
('0a52e8a964e68cdc365e50ab74cd77332fb44fb22ed542b6606cf4785995858544633238a33f31f1', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-17 03:19:43', '2022-08-17 03:19:43', '2023-08-17 09:19:43'),
('19ffb86e043665e931af2e57be164dfa9c9774bb957e21c29886f949f77188920539e690c0581e04', 4, 1, 'Mollit qui voluptas', '[]', 0, '2022-08-18 23:44:24', '2022-08-18 23:44:24', '2023-08-19 05:44:24'),
('1d69c0fd8959b544f4e1acf9a3ab3367e16a904df0f79aa8217c5e970ea18d9dbb0797d32dbb7b7a', 9, 1, 'Quae voluptatum volu', '[]', 0, '2022-08-22 00:45:57', '2022-08-22 00:45:57', '2023-08-22 06:45:57'),
('1d73bc1907c49d989651374d50ea2aed74056bd77b7c6047f3baf1fa61bd793623a79bf2165054fe', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-17 00:47:09', '2022-08-17 00:47:09', '2023-08-17 06:47:09'),
('1f1f3736da322908a2b75fda206901a338cfe81df5b7340ba58d0c7e6308d76fc7962287704a3e8c', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-21 23:54:11', '2022-08-21 23:54:11', '2023-08-22 05:54:11'),
('20de53a8790d0e0ad7ff49e294be767a2d1290ffdf5bb885075e1da90c29736b33e91fc34f0fdca1', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 03:16:06', '2022-08-19 03:16:06', '2023-08-19 09:16:06'),
('26a17384ed3efb98bae09215a8d8c0b011a8557026cbd777141ab5c80cc07df158ac8e7f5a8fe56a', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 03:22:38', '2022-08-19 03:22:38', '2023-08-19 09:22:38'),
('2715f777f1a7f2acfd6e397c1914e298dfc15f26f8c22d8d945e52e907507ec1994945a5b56db2f9', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 03:39:35', '2022-08-22 03:39:35', '2023-08-22 09:39:35'),
('2b77576922ffba0f8fb3834e44683ec5fcbfb8392d4cf406ceaab6cb5b6088c5aeae9c0fd1b1be1f', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-21 21:33:45', '2022-08-21 21:33:45', '2023-08-22 03:33:45'),
('2eafa00c464f2586098863a5c49e0d079e56053d8dfebe06cefc61dba376028deebc6ea4eb0d62c0', 6, 1, 'Ab quia ad est et n', '[]', 0, '2022-08-19 11:11:03', '2022-08-19 11:11:03', '2023-08-19 17:11:03'),
('2f51729a175321d2632129d4e00bc211aa725436753a690f7f0649d67e41657137d9f2839f2f16b6', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 00:17:22', '2022-08-22 00:17:22', '2023-08-22 06:17:22'),
('333351efd53a4571f22f57a0c130ecbb32c7ea4c5048f10dfcdd01f0fba9f995504bdc9f4f566fb0', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 00:20:36', '2022-08-22 00:20:36', '2023-08-22 06:20:36'),
('3493519aeae6437b1d3ae255f9baaf8098c419080fb80794f215d08267d6e2eaa049423bb5884d82', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-21 23:55:42', '2022-08-21 23:55:42', '2023-08-22 05:55:42'),
('38e82b0575227f0472b0f3bdbbfea3d22481b805622de815e82a4743a7b4f81495049dbb9d00af92', 5, 1, 'Nulla qui ut modi do', '[]', 0, '2022-08-18 23:45:22', '2022-08-18 23:45:22', '2023-08-19 05:45:22'),
('393c90a0ca466dab056c482900b3d8bf3a3e54c9949cb2279f2613bd5432a347ec55f0b983a15e18', 2, 1, 'Corporis ut dolorum', '[]', 0, '2022-08-18 23:36:21', '2022-08-18 23:36:21', '2023-08-19 05:36:21'),
('3cf227e168d7c9e128b2fc5d73e19b43c0a7b200aea6e22a73ffa4c49a436c9376881d9901c8b7a7', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-17 03:19:51', '2022-08-17 03:19:51', '2023-08-17 09:19:51'),
('45d88f445ecacbf9ed05c4fbbe2c3cf000e30e1f0985fa257792de193534343659d42419883e566a', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-21 23:16:36', '2022-08-21 23:16:36', '2023-08-22 05:16:36'),
('48f38f28b6de40b9ec950774d3863c98491516f3c5cec520593dd235f2ea8ea6172e5f93c8429547', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 11:06:10', '2022-08-19 11:06:10', '2023-08-19 17:06:10'),
('4a3676d90b019d810d1d9c8c831b1829a8aec9b433a2a59e6801bf15ea5828fe555ef1dc0de4db3c', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 01:16:24', '2022-08-19 01:16:24', '2023-08-19 07:16:24'),
('4d221890696a8a88abcaebd950c72a8b966231a404a24a1730c61621303496d5effb0a8dc3c67399', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 03:24:03', '2022-08-22 03:24:03', '2023-08-22 09:24:03'),
('4dacd10ffe7618cb0ed8239053a4cbd79e554ba2eea7854109704cfd88da1ad5475911319a838c82', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 03:53:19', '2022-08-22 03:53:19', '2023-08-22 09:53:19'),
('53bdf886bc0d97cb4ee7fae59c340736636d68cd56ffb792a8f74d84e922bb1d26da5dee07a5c7b6', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 00:50:36', '2022-08-22 00:50:36', '2023-08-22 06:50:36'),
('5a711d3c0bfd88a911ec619216a9976338a3c5e0c6352d9ceaee4fa23f3dfba4a5a7dd9535db3c52', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-21 21:32:00', '2022-08-21 21:32:00', '2023-08-22 03:32:00'),
('5b18a62d6cc3fd828f95c7762d59d384728735ddf5d30e7e6a0adf854244fc413f5f6fa96c08f722', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-17 03:13:37', '2022-08-17 03:13:37', '2023-08-17 09:13:37'),
('5b792e4a8850cff3a0cb365cc15718c706d17f7c46d68542b521c92f2f96df06c3af9c0de3d406f1', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 02:58:13', '2022-08-22 02:58:13', '2023-08-22 08:58:13'),
('5cbe78de96b5f9fd8aadedb69ddbe1749dd0c45b6de3060a27bf44b1db56912975f2a43bf1c7966e', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-17 03:17:35', '2022-08-17 03:17:35', '2023-08-17 09:17:35'),
('6023f6d7881971c1095dd98c5b1c9a495ce6c1ff063fba4b9fd9cbbd5d1f17dade566d070e3395ca', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 03:29:53', '2022-08-22 03:29:53', '2023-08-22 09:29:53'),
('6077bff805143517396816e26876b0cea115ba38ec3abaccd647cdcc01771c288aa667fc18a98c08', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 00:09:36', '2022-08-19 00:09:36', '2023-08-19 06:09:36'),
('66b8539fb3a42d7690bf9f4ef55bd0c0f76f244b6c86fb5816ed1a89279fd6e522968413caac586d', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 00:08:29', '2022-08-22 00:08:29', '2023-08-22 06:08:29'),
('6776d9b50be5b7337f2ea89127e17430cce993e3a1cc3e21cfcadfc1d17474e38f3ad44711aa06a1', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 00:50:47', '2022-08-22 00:50:47', '2023-08-22 06:50:47'),
('6e246ab0d9189ec02142a662a3b306edec58fa32459fbaaa34fa64cbd539a8da8ae651d037d33b24', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 03:26:37', '2022-08-19 03:26:37', '2023-08-19 09:26:37'),
('72bf496819f65d28602bd2efe3d3c12ddec080f7cc6542b99b2d3027f251ac8c31b460ff99b11333', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-21 23:55:30', '2022-08-21 23:55:30', '2023-08-22 05:55:30'),
('7aa87cb9f978bf23f0d91f6a2fe70baf59753e088ef0d9abfb5f972459f5b61f196e405c848226bc', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-21 21:28:11', '2022-08-21 21:28:11', '2023-08-22 03:28:11'),
('7b412eb5035d817e0159c8e4df3c333e007be2635a0a5fa447f099cac08716f4a4130ff717ba2f7d', 10, 1, 'Omnis nemo velit por', '[]', 0, '2022-08-22 03:02:54', '2022-08-22 03:02:54', '2023-08-22 09:02:54'),
('7f15ed14b07d0f1ae01e3daeb6a42ed7639f82704744068049360314a87b0c8c5f0d9ce7a3702e52', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 10:52:15', '2022-08-19 10:52:15', '2023-08-19 16:52:15'),
('81197c2d745148c62dc69baa47b59f5a52d2fe24d40b9468cd3a6d52115de67d30a3468872f26c8e', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 03:23:51', '2022-08-22 03:23:51', '2023-08-22 09:23:51'),
('8285390754968ef3b021b728e5c7ef0f9451a94c1a531f17fe56a8d23e606b7a36f2e3cb478e46bc', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 11:32:27', '2022-08-19 11:32:27', '2023-08-19 17:32:27'),
('8bb6a75a22f9ab4f4e389489f8ea4275d5d1e99c27b22875e00ff3593f4822e99cbcf4744e357795', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 03:30:17', '2022-08-22 03:30:17', '2023-08-22 09:30:17'),
('8db3de9573ac7937bdfb5b90fe4ac0c067ee3d5e0265c6636a96e5fd9077ffd3b67193ecbc9c3334', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-21 23:53:32', '2022-08-21 23:53:32', '2023-08-22 05:53:32'),
('92585c99c973cd938bac47a7749a87c242831977559323c50d8d2ce04c506ab2de4473f454c1e067', 12, 1, 'Consequatur occaeca', '[]', 0, '2022-08-22 03:06:53', '2022-08-22 03:06:53', '2023-08-22 09:06:53'),
('97984c41fa9eb48c9cc9adc302dbacd642ee29474ffb8716a5c8aacc034841bae8e625ceb23d2764', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 11:06:52', '2022-08-19 11:06:52', '2023-08-19 17:06:52'),
('98392e310076d7cd9bd53e8f85e2b3b623fe7283dceda1be20e610e43666af2f3309e3b93736ce13', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-17 00:48:23', '2022-08-17 00:48:23', '2023-08-17 06:48:23'),
('a0380e587bb076c0b78f6cb0b5335ee38b0438485f85dd4691d72299444ad6a4199042ade3940da6', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 00:16:07', '2022-08-19 00:16:07', '2023-08-19 06:16:07'),
('a2786e4888a265da261b1a3b7553b2b2846a6f3e890f38511be74f69a1edfffc783eb6a76c870209', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 00:10:11', '2022-08-19 00:10:11', '2023-08-19 06:10:11'),
('a82ee26576711377b21851ec3f66442d8241e93605ab713b4d06b6f740e0c052d043efbb7569cc09', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 00:08:15', '2022-08-19 00:08:15', '2023-08-19 06:08:15'),
('aa3aaa2a0af81f59830f20a380c178d0db6762613686ea5a6b8459216b606eba8e7474c2b35b40ce', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 11:03:08', '2022-08-19 11:03:08', '2023-08-19 17:03:08'),
('af74852d89bb249122680eee881aeae8495ef07e5ac3e275a76098ce70e854dc61e755bdca0777fd', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 00:49:04', '2022-08-22 00:49:04', '2023-08-22 06:49:04'),
('b2bc77c177f3846ab5e0052e1b9a897939efeb10561dc265aab7f5a127af751520f55599ba7f3db0', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 03:54:07', '2022-08-22 03:54:07', '2023-08-22 09:54:07'),
('b42fa27561b69386eaf87ca109b342b2bea0f035c45fd2588fdf9889b80d483286f7cfc8dc12f3b4', 13, 1, 'Ipsam debitis et pos', '[]', 0, '2022-08-22 03:11:56', '2022-08-22 03:11:56', '2023-08-22 09:11:56'),
('b76995f836374c5b2eae86a6a5698115db0db358f2feb2b2e48c48de8b3ca83103b7035940e47e6a', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-21 23:51:18', '2022-08-21 23:51:18', '2023-08-22 05:51:18'),
('bce53d58e296cf8ddd1238f632fdf18e7a7a025f052b7c7c902745453dd8d644197df5fd8d09b8ff', 14, 1, 'Eu ut cillum animi', '[]', 0, '2022-08-22 03:21:16', '2022-08-22 03:21:16', '2023-08-22 09:21:16'),
('c0d1dc48e87b05afeb263389dd9a0c8b7133a136501e26a493cf40b6865a20647034aaaf73723740', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 00:39:55', '2022-08-22 00:39:55', '2023-08-22 06:39:55'),
('c1e4847c769678a9c8cfccdd9d7b21c0f75c4b78875cbe5c85fe16c92d4644721e9d6fe106a710d8', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-21 23:19:07', '2022-08-21 23:19:07', '2023-08-22 05:19:07'),
('c3f39f550e7ab637980051f6473e9c2d25acfa8f75d540fed95d16db1dd03bb62030cc84c7b2ca74', 8, 1, 'Facilis ut non amet', '[]', 0, '2022-08-22 00:45:14', '2022-08-22 00:45:14', '2023-08-22 06:45:14'),
('c640e085f993e8a8c1236c5cd50b975ab341490892ae68231457aafc988b1faf8d0d3b9f2f33debf', 3, 1, 'Officia eu eligendi', '[]', 0, '2022-08-18 23:36:34', '2022-08-18 23:36:34', '2023-08-19 05:36:34'),
('c8668f7d708b698dc0271d58fa27e4d72974460d03cdeaeca4d72f6afa938bd8c124d9518a9f40ec', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 11:33:17', '2022-08-19 11:33:17', '2023-08-19 17:33:17'),
('c9ccf2c69c6237f84f2450356dc571b877c1d8dc09b906f288dadaa4653e2b6a450f547474dfe98b', 1, 1, 'MyApp', '[]', 0, '2022-08-17 00:22:12', '2022-08-17 00:22:12', '2023-08-17 06:22:12'),
('cb198d7e9e55d569570c5211f134649cd6b5fd2341a328d84f516a3894b422f1b112e4325e38d542', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 00:19:04', '2022-08-22 00:19:04', '2023-08-22 06:19:04'),
('d179eccb9d79a7b932118d88cc8e93654453604248e98358b005ee642e3ab0a258f1b017b3af2251', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-21 23:52:10', '2022-08-21 23:52:10', '2023-08-22 05:52:10'),
('d36dc96c7fff42170313f7bd3065bb6eb6d91b261f1781b46e9f2a4a026ea4ade6574ea87401e60a', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-21 23:19:24', '2022-08-21 23:19:24', '2023-08-22 05:19:24'),
('d60e2a397dbe9af6667288ca0bec0c7672c0589fd669415d60ea1c566a5eac70005735f7345567f2', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 03:32:43', '2022-08-22 03:32:43', '2023-08-22 09:32:43'),
('d6d537da8009b681d54d72af34a8f631ef2a280c2a13cbd5b3331b8754febb9f825735ef3bfc7d0f', 11, 1, 'Nam minima vel volup', '[]', 0, '2022-08-22 03:03:05', '2022-08-22 03:03:05', '2023-08-22 09:03:05'),
('d73bdd5dffa9854661e17af52031077f63b633ab480d9e694aa1cc3dee38054815f4a467a0b1bc4c', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-21 23:17:59', '2022-08-21 23:17:59', '2023-08-22 05:17:59'),
('d933f357addf81f62257d0c5b82d9ee7dc225a3476d3b0b1970db44d247ba0c9e5833ef0de464a66', 1, 1, 'MyApp', '[]', 0, '2022-08-17 00:19:56', '2022-08-17 00:19:56', '2023-08-17 06:19:56'),
('db4535327ebd59b1f66040fe0021aec117176b494fcdc17d5af1169e4114117bdf7cc0046296bb29', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 03:20:42', '2022-08-19 03:20:42', '2023-08-19 09:20:42'),
('db8992f050e06aec961969ddbd07b447ab67c3062fc92621d56632fb3820ce3be5134ddbdddf007f', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 03:38:06', '2022-08-22 03:38:06', '2023-08-22 09:38:06'),
('e321890128eff142357050dc9e8e23bb757c5795606f8e982e183bbe69e4682511072b2202b41c1b', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 03:46:19', '2022-08-19 03:46:19', '2023-08-19 09:46:19'),
('e67a22181a26dd822af48724c90e4f2910570304b664f98463073192de433942157e5e80a668a0f6', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 00:08:52', '2022-08-19 00:08:52', '2023-08-19 06:08:52'),
('e694c9f624e8b5e55ea4ef2b2235fa27a7f8bdcc27945ae01145e4511c463a7b82305865b7fc97ec', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 03:53:35', '2022-08-22 03:53:35', '2023-08-22 09:53:35'),
('e6cb7002f242d8384eaeb13edc02e154d783e189c573ddbe794f2b16aa55eeb8deaa5a2df32042bb', 7, 1, 'Voluptatem Vitae de', '[]', 0, '2022-08-19 11:33:28', '2022-08-19 11:33:28', '2023-08-19 17:33:28'),
('ea473c407740f0ad80b8f096961b29661ef2e4bcf8a2bffb29ee029c1415c834fb0f118ff15a3728', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 01:07:18', '2022-08-19 01:07:18', '2023-08-19 07:07:18'),
('ebad4f29607b525295f4e2fa0fba807805f06b80275380dbae78c6c5b4111dca50d20e594dac544e', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 03:16:09', '2022-08-19 03:16:09', '2023-08-19 09:16:09'),
('f249b983ab917e2fd13f555f6d6078fdec213310e2e961f2eada2102158effa600f44dffd5a49a21', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-22 00:18:26', '2022-08-22 00:18:26', '2023-08-22 06:18:26'),
('f39476a971d3960434931d2dc862c1e64e2ace2ef149e3e5cf1a0ce5492c278ee7248cbf6691f03f', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 03:17:34', '2022-08-19 03:17:34', '2023-08-19 09:17:34'),
('f42b8060acf896f7ad6dbd400155b67271f51881645523a1cba5e524a2fedde0d231cc13797f2116', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-18 23:55:28', '2022-08-18 23:55:28', '2023-08-19 05:55:28'),
('f86484eebcd35a4d42049d8757178abd1319d9013507b993aa2b6c82f730007b9583294fe1c58e1d', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-19 03:05:57', '2022-08-19 03:05:57', '2023-08-19 09:05:57'),
('f977b80854f96498247c837d66f73b08e5e3a88e60c5595cb1725773f10ac882f8ea47cb47da8ed8', 1, 1, 'Rabiul Hasan', '[]', 0, '2022-08-18 23:54:48', '2022-08-18 23:54:48', '2023-08-19 05:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'ZA3yQ8Anh53jeguAOjzqs5VdpnbuARxEqRbYzbNZ', NULL, 'http://localhost', 1, 0, 0, '2022-08-16 23:47:27', '2022-08-16 23:47:27'),
(2, NULL, 'Laravel Password Grant Client', 'DC6VfSVwLHkIHisfvSDthBMQybNUv76cfpeiAxhZ', 'users', 'http://localhost', 0, 1, 0, '2022-08-16 23:47:27', '2022-08-16 23:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-08-16 23:47:27', '2022-08-16 23:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('rabiul.fci@gmail.com', '07kCVpBBr7szyuBecxLK', NULL);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rabiul Hasan', 'rabiul.fci@gmail.com', NULL, '$2y$10$IGOxayyxiFL01JsTFzreiOu4seUkxJ8cogoU1gz8bSC8lNi06Xxw2', NULL, '2022-08-17 00:47:09', '2022-08-17 00:47:09'),
(2, 'Corporis ut dolorum', 'fupibiwu@mailinator.com', NULL, '$2y$10$eFFeI4dZEIggaRUkragaCeOg1i3DK65QXbitvEVGL60D.7nLBGiS.', NULL, '2022-08-18 23:36:17', '2022-08-18 23:36:17'),
(3, 'Officia eu eligendi', 'rypyc@mailinator.com', NULL, '$2y$10$oP2S0.06lNnZLrAvB2opc.VHzIQBcqtjbkRuJXlOf33yAGx4kSBXG', NULL, '2022-08-18 23:36:34', '2022-08-18 23:36:34'),
(4, 'Mollit qui voluptas', 'gucex@mailinator.com', NULL, '$2y$10$ZwfaRg1YbbCLKZJCbguGkeBVzMkWKh194h4okxIfbyggjHvm3jS0e', NULL, '2022-08-18 23:44:24', '2022-08-18 23:44:24'),
(5, 'Nulla qui ut modi do', 'gujaw@mailinator.com', NULL, '$2y$10$Hhp1QSO.c/ax76xN20lHnu1.e.katU8ay4Q1OuNYBiTxRMQBvwGXa', NULL, '2022-08-18 23:45:22', '2022-08-18 23:45:22'),
(6, 'Ab quia ad est et n', 'jihac@mailinator.com', NULL, '$2y$10$GZr7h5D8TkDoIuftjBgjaO0CtxM2h6wXD.IdBp.wv.y6vyfWkc9Jm', NULL, '2022-08-19 11:11:03', '2022-08-19 11:11:03'),
(7, 'Voluptatem Vitae de', 'zyludywu@mailinator.com', NULL, '$2y$10$kA0ZQwae9e71X/Uix6O6HedcKlFTQRm0gVQerwv2e/8WKc7uiOchu', NULL, '2022-08-19 11:33:28', '2022-08-19 11:33:28'),
(8, 'Facilis ut non amet', 'diri@mailinator.com', NULL, '$2y$10$cDotV3PqAXREWkwKjNdzFe6eayWeuoUsKHxQyTT5fpbp0E7KdTWBq', NULL, '2022-08-22 00:45:13', '2022-08-22 00:45:13'),
(9, 'Quae voluptatum volu', 'gyzapa@mailinator.com', NULL, '$2y$10$4EtPVFGBNyYt2zwTGNecWu0pgMNH9i6wyaIaq/F8xljel/3PfEoTG', NULL, '2022-08-22 00:45:56', '2022-08-22 00:45:56'),
(10, 'Omnis nemo velit por', 'qypyvyz@mailinator.com', NULL, '$2y$10$IHFiuKMspLQEZUqRIfN2VuHt5tbUwFbZvm4Tk5uKAfQK6bPcOaVUC', NULL, '2022-08-22 03:02:54', '2022-08-22 03:02:54'),
(11, 'Nam minima vel volup', 'donaf@mailinator.com', NULL, '$2y$10$wDZW6aJNZNMzFJc85MAV.ubZfcRnnWAGaOlIImzofwOOSxAdml6oW', NULL, '2022-08-22 03:03:05', '2022-08-22 03:03:05'),
(12, 'Consequatur occaeca', 'cugixig@mailinator.com', NULL, '$2y$10$F09WnLU5eoJUVdLl7D0Azuk.Rdu10eAwPUB9hUQQdDi3lXHPgXacK', NULL, '2022-08-22 03:06:53', '2022-08-22 03:06:53'),
(13, 'Ipsam debitis et pos', 'qumaboraz@mailinator.com', NULL, '$2y$10$LKChBcz.kyLDq4V9uMcl2ecqs0l6d7E6xDvgVBCLPe3tirP/NhgQG', NULL, '2022-08-22 03:11:56', '2022-08-22 03:11:56'),
(14, 'Eu ut cillum animi', 'qifahave@mailinator.com', NULL, '$2y$10$9UFCEevgn.pN2sZKxixD2.YjXa4TM1WTwawnGb5QyEH7YIxntMEIS', NULL, '2022-08-22 03:21:15', '2022-08-22 03:21:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
