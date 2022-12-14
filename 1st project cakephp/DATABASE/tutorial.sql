-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2022 at 07:47 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `details`, `created`, `modified`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-01-29 00:00:00', '2020-01-29 00:00:00'),
(2, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2020-01-29 00:00:00', '2020-01-29 00:00:00'),
(3, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '2020-01-20 00:00:00', '2020-01-21 00:00:00'),
(4, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. ', '2020-01-28 00:00:00', '2020-01-28 00:00:00'),
(6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '2020-01-28 00:00:00', '2020-01-30 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` smallint(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created`) VALUES
(1, 'meat', '2019-11-12 00:00:00'),
(2, 'Fish', '2019-11-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `football_ragistrations`
--

CREATE TABLE `football_ragistrations` (
  `id` smallint(5) NOT NULL,
  `student_id` smallint(5) NOT NULL,
  `created_to` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `football_ragistrations`
--

INSERT INTO `football_ragistrations` (`id`, `student_id`, `created_to`, `updated_at`) VALUES
(1, 3, '2019-10-31 00:00:00', '2019-10-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` smallint(5) NOT NULL,
  `name` varchar(25) NOT NULL,
  `amount` float NOT NULL,
  `city` varchar(20) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `name`, `amount`, `city`, `created`) VALUES
(1, 'Jamal', 200, 'Tokyo', '2019-11-12 00:00:00'),
(2, 'Jone', 120, 'Dhaka', '2019-11-12 00:00:00'),
(3, 'Kamal', 100, 'Mosko', '2019-11-12 00:00:00'),
(4, 'Satis', 20, 'KolKata', '2019-11-12 00:00:00'),
(5, 'Lili', 223, 'Dhaka', '2019-11-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `status`, `created`, `modified`) VALUES
(1, 'PHP', 1, '2020-04-18 14:24:32', '2020-04-18 14:24:32'),
(2, 'JavaScript', 1, '2020-04-18 14:25:27', '2020-04-18 14:25:27'),
(3, 'Java', 1, '2020-04-18 14:46:42', '2020-04-18 14:46:42');

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `picnic_ragistrations`
--

CREATE TABLE `picnic_ragistrations` (
  `id` smallint(6) NOT NULL,
  `student_id` smallint(6) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `picnic_ragistrations`
--

INSERT INTO `picnic_ragistrations` (`id`, `student_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, '500.00', '2019-10-30 03:09:00', '2019-10-30 03:09:00'),
(2, 3, '500.00', '2019-10-29 06:00:00', '2019-10-29 06:00:00'),
(3, 5, '500.00', '2019-10-30 03:09:10', '2019-10-30 03:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` smallint(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `category_id` smallint(5) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `created`, `modified`) VALUES
(1, 'Beef', 1, '2019-11-18 00:00:00', '2019-11-20 00:00:00'),
(2, 'Mutton', 1, '2019-11-18 00:00:00', '2019-11-20 00:00:00'),
(3, 'Deshi Chicken', 1, '2019-11-18 00:00:00', '2019-11-20 00:00:00'),
(4, 'Broiler', 1, '2019-11-18 00:00:00', '2019-11-20 00:00:00'),
(5, 'Cow Liver', 1, '2019-11-18 00:00:00', '2019-11-20 00:00:00'),
(6, 'Pabda', 2, '2019-11-17 00:00:00', '2019-11-17 00:00:00'),
(7, 'Rui', 2, '2019-11-17 00:00:00', '2019-11-17 00:00:00'),
(8, 'Mola', 2, '2019-11-17 00:00:00', '2019-11-17 00:00:00'),
(9, 'Koral', 2, '2019-11-17 00:00:00', '2019-11-17 00:00:00'),
(10, 'abc', 1, '2020-02-22 16:31:50', '2020-02-22 16:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `user_id`, `name`, `created`, `modified`) VALUES
(1, 11, 'php', '2020-04-13 14:33:23', '2020-04-13 14:33:23'),
(2, 11, 'javascript', '2020-04-13 14:33:23', '2020-04-13 14:33:23'),
(3, 6, 'Java', '2020-04-16 15:47:00', '2020-04-16 15:47:00'),
(4, 6, 'Python', '2020-04-16 15:47:00', '2020-04-16 15:47:00'),
(5, 6, 'c++', '2020-04-16 15:47:00', '2020-04-16 15:47:00'),
(6, 1, 'c', '2020-04-16 15:47:37', '2020-04-16 15:47:37'),
(7, 1, 'c++', '2020-04-16 15:47:37', '2020-04-16 15:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `spouses`
--

CREATE TABLE `spouses` (
  `id` smallint(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `friend_id` smallint(6) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spouses`
--

INSERT INTO `spouses` (`id`, `name`, `friend_id`, `created`) VALUES
(1, 'Karina', 2, '2019-11-11 00:00:00'),
(2, 'Jenifar', 1, '2019-11-11 00:00:00'),
(3, 'Maria', 4, '2019-11-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` mediumint(6) NOT NULL,
  `name` varchar(25) NOT NULL,
  `age` decimal(10,3) NOT NULL,
  `country` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `age`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Jone', '13.000', 'Japan', '2019-10-30 03:12:14', '2019-10-30 03:14:00'),
(2, 'Sujo', '21.000', 'Japan', '2019-10-30 03:12:14', '2019-10-30 03:14:00'),
(3, 'Kamal', '23.000', 'Bangladesh', '2019-10-29 06:00:00', '2019-10-30 05:12:00'),
(4, 'Sabina', '18.000', 'Bangladesh', '2019-10-29 06:00:00', '2019-10-30 05:12:00'),
(5, 'Jamal', '12.000', 'Bangladesh', '2019-10-30 03:09:10', '2019-10-30 03:08:06'),
(6, 'Satis', '22.000', 'India', '2019-10-30 03:07:11', '2019-10-30 03:25:11'),
(11, 'jone', '12.000', 'BD', '2019-11-18 00:00:00', '2019-11-18 00:00:00'),
(12, '', '4.000', 'sa', '2022-07-04 14:48:25', '2022-07-26 14:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `submenus`
--

CREATE TABLE `submenus` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `submenus`
--

INSERT INTO `submenus` (`id`, `menu_id`, `name`, `status`, `created`, `modified`) VALUES
(1, 1, 'CakePHP', 1, '2020-04-18 14:25:41', '2020-04-18 14:25:41'),
(2, 1, 'Leravel', 1, '2020-04-18 14:25:56', '2020-04-18 14:25:56'),
(3, 1, 'Yii', 1, '2020-04-18 14:26:04', '2020-04-18 14:26:04'),
(4, 2, 'NodeJs', 1, '2020-04-18 14:26:14', '2020-04-18 14:26:14'),
(5, 2, 'React Js', 1, '2020-04-18 14:26:22', '2020-04-18 14:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `amount` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `amount`, `password`, `image`, `status`, `created`, `modified`) VALUES
(23, 'ali', 'aa@gmail.com', 0, '$2y$10$bu4.F3P11F7802H8Mumw7eMK5Hb/L5I466/mdPLeOEPiaCus0avK2', 'user_img/Picture8.jpg', 1, '2022-08-05 15:29:22', '2022-08-05 16:01:50'),
(24, 'bb', 'bb@gmail.com', 1, '$2y$10$Sp8QP6lro5Ayr8iiXe9mY.KPrauscQKJCbqzW56Si7PZQ7kdVafP6', 'user_img/users admin.png', 0, '2022-08-05 16:08:13', '2022-08-05 16:08:13'),
(25, 'cc', 'cc@gmail.com', 1, '$2y$10$YAT7IVn3suUp60TGiciB7OpeUTe3JYAhzcf/YvqnauLClvm9spcQe', 'user_img/WIN_20211107_17_43_07_Pro.jpg', 0, '2022-08-05 16:23:57', '2022-08-05 16:34:08'),
(26, 'dd', 'dd@gmail.com', 1, '$2y$10$4AIaHho/egIxtsXJBsX74egeJYo4x34ktBEjDdFD.QCTr8cpn0p42', 'user_img/WIN_20220108_19_02_58_Pro.jpg', 0, '2022-08-05 16:51:26', '2022-08-05 16:51:26'),
(58, 'zz', 'zz@gmail.com', 7, '$2y$10$Zl8fUCbWS7E7qrsTnXT54ugPAjfaqk/dD/fAXgmNmhWCF6eUEnF4.', 'user_img/avatar-4e722cf6e0ea8a3359ec08200f00a31d (2).jpg', 1, '2022-08-11 18:17:31', '2022-08-17 19:04:36'),
(59, 'asd', 'ascjsagbchshkcj@gmail.com', 4, '$2y$10$1l5DL05vbI79pINYJ3XVk.JkZqaGgdpuuQ8QdSwqI.Ph7hc.6/S/m', 'user_img/Fantom.jpg', 1, '2022-08-11 18:18:55', '2022-08-11 18:18:55'),
(60, 'sa', 'kjaslcs@gmail.com', 7, '$2y$10$0QHZBgYY9kkRC5GJdf4couAiZspDjxJsf1rKFiVqWCzoAblTS1knG', 'user_img/Audio-Poof.jpg', 1, '2022-08-11 18:21:30', '2022-08-11 18:21:30'),
(61, 'sd', 'ffas@gmail.com', 4, '$2y$10$If9S2SM6KRSbm4uKipPSEemr2GDwtZFbu5KX8rzee840Vswcaua/2', 'user_img/Scotland Trolley Bar.jpg', 0, '2022-08-11 18:26:20', '2022-08-11 18:26:20'),
(62, 'asjcjk', 'ashjb@gmail.com', 8465, '$2y$10$iVF6x5wekEMz.Sj9qy/kzelzYsq2mQuwUy5dxeAizS97QiI8NtMwi', 'user_img/Marbella (1).jpg', 1, '2022-08-11 18:27:32', '2022-08-11 18:27:32'),
(63, 'jijlk', 'fahedmm.75@hotmail.com', 4, '$2y$10$PUHpyD2LFNNF.NU/XRo8ReyiaYCQkpfzBXtpg8TsDbAM6FKdqjezi', 'user_img/moph.png', 1, '2022-08-20 20:39:38', '2022-08-20 20:39:38'),
(64, 'khb', 'qq@gmail.com', 5, '$2y$10$4LN7rfeB1GesUWMXU3DIu.tjPH1q5Fbq93qSw9xV3jqNGg4e93zvO', 'user_img/Audio-Poof.jpg', 1, '2022-08-20 20:41:42', '2022-08-20 20:41:42'),
(65, 'as', 'ffasss@gmail.com', 5, '$2y$10$hyzqll.mm6dOTVXXd/2PhuT0Ddct2T9z4LFPsvd7toNMWt3kv2ERG', 'user_img/Rossini.jpg', 1, '2022-08-20 21:15:39', '2022-08-20 21:15:39'),
(66, 'bs', 'nn@gmail.com', 1, '$2y$10$c6Bc8T2eqmqWL6pEe3aY3.rMQ.YbFTC5hVKFFxf3bCE4Tio/NCViu', 'user_img/Viro Corner.jpg', 1, '2022-08-21 16:37:24', '2022-08-21 16:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `user_id`, `ip`, `created`, `modified`) VALUES
(1, 23, '::1', '2022-08-17 18:59:42', '2022-08-17 18:59:42'),
(2, 23, '::1', '2022-08-17 19:03:35', '2022-08-17 19:03:35'),
(3, 58, '::1', '2022-08-17 19:04:16', '2022-08-17 19:04:16'),
(4, 23, '::1', '2022-08-17 19:04:26', '2022-08-17 19:04:26'),
(5, 23, '::1', '2022-08-17 19:28:40', '2022-08-17 19:28:40'),
(6, 23, '::1', '2022-08-20 20:16:31', '2022-08-20 20:16:31'),
(7, 23, '::1', '2022-08-21 16:34:37', '2022-08-21 16:34:37'),
(8, 23, '::1', '2022-08-25 22:28:46', '2022-08-25 22:28:46'),
(9, 23, '::1', '2022-08-25 23:13:42', '2022-08-25 23:13:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `football_ragistrations`
--
ALTER TABLE `football_ragistrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `picnic_ragistrations`
--
ALTER TABLE `picnic_ragistrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spouses`
--
ALTER TABLE `spouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenus`
--
ALTER TABLE `submenus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `football_ragistrations`
--
ALTER TABLE `football_ragistrations`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `picnic_ragistrations`
--
ALTER TABLE `picnic_ragistrations`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `spouses`
--
ALTER TABLE `spouses`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` mediumint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `submenus`
--
ALTER TABLE `submenus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
