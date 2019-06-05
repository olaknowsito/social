-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2019 at 05:23 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `posted_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `posted_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'fdsafdsa', 'christopher_olano', 'christopher_olano', '2019-05-23 14:29:01', 'no', 24),
(2, 'talaga tol', 'christopher_olano', 'chuck_norris', '2019-05-23 15:24:15', 'no', 1),
(3, 'W9OWWWW', 'christopher_olano', 'christopher_olano', '2019-05-23 15:26:15', 'no', 24),
(4, 'secondpost', 'norris_chuck', 'chuck_norris', '2019-05-26 16:03:20', 'no', 1),
(5, 'fdsafasdfdas', 'norris_chuck', 'christopher_olano', '2019-05-26 16:49:13', 'no', 24),
(6, '', 'norris_chuck', 'christopher_olano', '2019-05-26 16:49:19', 'no', 24),
(7, 'testing hello', 'norris_chuck', 'norris_chuck', '2019-05-27 10:23:06', 'no', 22),
(8, 'huwat karin', 'norris_chuck', 'christopher_olano', '2019-05-27 10:25:17', 'no', 24);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(9, 'norris_chuck', 38);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES
(21, 'fdsafdsa', 'efrem_bata', 'none', '2019-04-19 13:28:11', 'no', 'no', 0),
(22, 'fdsafdasfdas', 'norris_chuck', 'none', '2019-05-23 08:07:15', 'no', 'no', 0),
(23, 'gfdasgsdgfsdgfsdgfsdgfsd', 'norris_chuck', 'none', '2019-05-23 08:07:23', 'no', 'no', 0),
(24, 'huwat\r\n', 'christopher_olano', 'none', '2019-05-23 10:53:41', 'no', 'no', 0),
(25, 'testing for question\r\n', 'norris_chuck', 'none', '2019-05-27 10:25:07', 'no', 'no', 0),
(26, 'fdsafdsafdsa', 'norris_chuck', 'none', '2019-05-27 12:56:35', 'no', 'yes', 0),
(27, 'fdsafdas', 'efrem_bata', 'none', '2019-06-04 22:51:34', 'no', 'no', 0),
(28, 'June 6 testing', 'efrem_bata', 'none', '2019-06-04 22:51:56', 'no', 'no', 0),
(29, 'fdsafasd', 'efrem_bata', 'none', '2019-06-04 22:54:55', 'no', 'no', 0),
(30, 'June 6 testing efrem', 'efrem_bata', 'none', '2019-06-04 22:55:09', 'no', 'no', 0),
(31, 'June 6 10:56', 'efrem_bata', 'none', '2019-06-04 22:56:25', 'no', 'no', 0),
(32, 'Testing 12:06 keep moving forward. you are an engineer. you have to plan wise. or else you will not succedd', 'christopher_olano', 'none', '2019-06-05 00:07:21', 'no', 'no', 0),
(33, 'testing of friend request adn add friend is working remove also june 6', 'christopher_olano', 'none', '2019-06-05 00:38:17', 'no', 'no', 0),
(34, 'test', 'norris_chuck', 'none', '2019-06-05 14:47:12', 'no', 'yes', 0),
(35, 'fdsafsafsdafsdafsda', 'norris_chuck', 'none', '2019-06-05 15:36:46', 'no', 'yes', 0),
(36, 'Hoy', 'norris_chuck', 'christopher_olano', '2019-06-05 15:39:18', 'no', 'no', 0),
(37, 'Ginagawa mo?', 'norris_chuck', 'christopher_olano', '2019-06-05 15:40:10', 'no', 'no', 0),
(38, 'testiong', 'norris_chuck', 'none', '2019-06-05 15:40:23', 'no', 'yes', 1),
(39, 'another testing', 'norris_chuck', 'none', '2019-06-05 15:40:41', 'no', 'yes', 0),
(40, 'hoy efrem mag trabaho ka ng maayos\r\n', 'norris_chuck', 'efrem_bata', '2019-06-05 17:30:15', 'no', 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Norris', 'Chuck', 'norris_chuck', 'Admin@gmail.com', '1cb954935a9bbe5d216682d836e07205', '0000-00-00', 'assets/images/profile_pics/norris_chuckb82e47e3a6543c33c36da9cfd82a016fn.jpeg', 11, 0, 'no', ',christopher_olano,'),
(3, 'Efrem', 'Bata', 'efrem_bata', 'Efrembata@gmail.com', '1cb954935a9bbe5d216682d836e07205', '2019-04-19', 'assets/images/profile_pics/defaults/head_emerald.png', 6, 0, 'no', ',christopher_olano,'),
(4, 'Christopher', 'Olano', 'christopher_olano', 'Ola@gmail.com', '1cb954935a9bbe5d216682d836e07205', '0000-00-00', 'assets/images/profile_pics/defaults/head_deep_blue.png', 3, 0, 'no', ',efrem_bata,norris_chuck,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
