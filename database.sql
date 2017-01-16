-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2017 at 09:31 AM
-- Server version: 10.0.28-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `daarelq1_storebird`
--

-- --------------------------------------------------------

--
-- Table structure for table `birds`
--

CREATE TABLE IF NOT EXISTS `birds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `info` text NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `birds`
--

INSERT INTO `birds` (`id`, `title`, `description`, `info`, `price`, `status`, `photo`, `updated_at`, `created_at`) VALUES
(1, 'Ubah Judul2', 'des', '', 70000, 1, 'photo_1.jpg', '2016-12-11 15:28:56', '2016-12-11 08:28:56');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `relation_id` int(11) NOT NULL,
  `comment_type` varchar(255) NOT NULL DEFAULT 'forum',
  `comment_parent` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `relation_id`, `comment_type`, `comment_parent`, `comment`, `status`, `updated_at`, `created_at`) VALUES
(1, 3, 2, 'forum', 0, 'ini komen pertama dalam forum', 1, '2017-01-03 01:56:34', '0000-00-00 00:00:00'),
(2, 4, 3, 'forum', 0, 'ini komentar baru', 1, '2017-01-03 01:56:54', '0000-00-00 00:00:00'),
(5, 4, 2, 'forum', 0, 'ini komentar kedua', 1, '2017-01-03 02:27:23', '0000-00-00 00:00:00'),
(6, 4, 2, 'forum', 0, 'hello\n\nim fine', 1, '2017-01-03 02:30:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE IF NOT EXISTS `forums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `user_id`, `title`, `description`, `image`, `updated_at`, `created_at`) VALUES
(1, 3, 'Forum burung 1', 'deskripsi', '', '2016-12-13 17:07:39', '0000-00-00 00:00:00'),
(2, 3, 'Forum burung 212', 'deskripsi 212', '50MUF23oF6v0PulqVylE-forum-burung-212.jpg', '2016-12-13 17:08:10', '0000-00-00 00:00:00'),
(3, 4, 'ubah judul', 'isi dari forum tetap', 'kXCDhhhYBYfEJF1pL6IF-tes-judul-baru.jpg', '2017-01-03 00:23:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `post_type` varchar(20) NOT NULL COMMENT 'info, tipstrik, news',
  `status` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `post_type`, `status`, `image`, `updated_at`, `created_at`) VALUES
(4, 'judul postingan', 'deskripsi postingan', 'info', 1, '1481647131-judul-postingan.jpeg', '2016-12-13 16:38:51', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `status` int(1) NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `api_token` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `api_token` (`api_token`),
  UNIQUE KEY `api_token_2` (`api_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `user_type`, `status`, `remember_token`, `api_token`, `updated_at`, `created_at`) VALUES
(2, 'Fuad Adib', 'MFAdib', 'mfadib@gmail.com', '$2y$10$Q.ZTe8N2CpatBw0dEHwU3urjULOXP95PDowy7aM.WIUXInj6RSfiu', 'admin', 1, '', 'gYQ14SkVLQHje4P1ChkFZ19e8G1ixF2mg0tUrXmhJOgxIYHvfAH4JCwHUNpj', '2016-12-30 14:34:41', '0000-00-00 00:00:00'),
(3, 'Adib', 'mfadibdev', 'mfadibdev@gmail.com', '$2y$10$YAkuyFuTkaVaJA1ZA3s/yOHCgCpXh.1crfp/EiqB1bv28L4edjATi', 'user', 1, '', 'MgF11oiCHHcTTk4m1PUHXoCZCa4gRPtvVuZeSzGJIWLdenPePLcM8MzDG7sr', '2016-12-13 14:47:19', '0000-00-00 00:00:00'),
(4, 'namabaru', 'namabaru', 'mfa@gmail.com', '$2y$10$3CUPr0Q1JwFTPWI3RSrPLOLW3ylrZfZn.q.rtefhXHyZ0ALHIfCPG', 'user', 1, '', 'fZKNoJMyg0S1cVNbqeWCo1tfyzJIdZz2vpfRzldlCSRNe6YwhENSxoe9u7GS', '2017-01-02 04:13:54', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
