-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-12-11 12:17:19
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `go_home`
--

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `uname` varchar(24) NOT NULL,
  `user_name` varchar(12) NOT NULL DEFAULT '匿名用户',
  `upwd` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `pic` varchar(256) NOT NULL DEFAULT 'images/user_avatar/unknow-man.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`uid`, `uname`, `user_name`, `upwd`, `email`, `phone`, `gender`, `pic`) VALUES
(1, 'testuser', '小浣熊爱吃奥利奥', '000000', '664625200@qq.com', '17602250724', 1, 'images/user_avatar/unknow-man.jpg'),
(2, 'wufan', '匿名用户', '000000', '664625200@qq.com', NULL, 1, 'images/user_avatar/unknow-man.jpg'),
(3, 'testuser3', '匿名用户', '000000', '664625200@qq.com', NULL, 1, 'images/user_avatar/unknow-man.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
