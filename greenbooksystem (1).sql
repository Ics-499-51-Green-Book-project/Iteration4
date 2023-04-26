-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 02:08 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greenbooksystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
(NULL, NULL),
('admin', '12345'),
(NULL, NULL),
('admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`) VALUES
(16, 'Julia phillibs'),
(17, 'Abdifatah '),
(18, 'Rubi Kaurr'),
(20, 'Nimco Abdi');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `tittle` varchar(200) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `cost` decimal(5,2) DEFAULT NULL,
  `edition` varchar(20) DEFAULT NULL,
  `pubPlace` varchar(15) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `tittle`, `author_id`, `cost`, `edition`, `pubPlace`, `category_id`, `cover`, `file`) VALUES
(61, 'C++', 17, '22.99', '6th', 'MINNESOTA', 51, '64486133cf9b38.37366344.jpg', '643997db2fbf73.79449096.pdf'),
(62, 'java programming', 12, '22.00', '6TH', 'NW', 51, '643c4bb04f3b75.41340531.jpg', '643c4bb04f8f71.54600724.pdf'),
(64, 'Disappearing Earth', 16, '22.99', '6th', 'NW', 52, '64485e49724d88.25945517.jpg', '64485e497282f9.81446552.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`id`, `name`) VALUES
(52, 'Novel');

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE `discussion` (
  `id` int(11) NOT NULL,
  `parent_comment` varchar(500) NOT NULL,
  `student` varchar(1000) NOT NULL,
  `post` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `discussion`
--

INSERT INTO `discussion` (`id`, `parent_comment`, `student`, `post`, `date`) VALUES
(132, '130', 'Eng. Vince', ' Hello this is a test post', '2021-08-05 10:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`fname`, `lname`, `phone`, `email`, `password`) VALUES
('nimco', 'abdi', 7687, 'lacky1444@live.com', '2233'),
('nimco', 'abdi', 2073447076, 'lacky1444@live.com', '$2y$10$DZRNckJHxh350'),
('nimco', 'abdi', 2073447076, 'nimco@hotmail.com', '$2y$10$Cbe1nn91zgPvm'),
('nimco', 'abdi', 2073447076, 'nimco@hotmail.com', '$2y$10$fvWGqGeRMpA6y'),
('nimco', 'abdi', 2073447076, 'nim@gmail.com', '2233');

-- --------------------------------------------------------

--
-- Table structure for table `tblsellbooks`
--

CREATE TABLE `tblsellbooks` (
  `id` int(10) NOT NULL,
  `title` varchar(20000) NOT NULL,
  `author` varchar(20000) NOT NULL,
  `price` varchar(200) NOT NULL,
  `book_image` varchar(200) NOT NULL,
  `status` int(10) NOT NULL,
  `seller_email` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsellbooks`
--

INSERT INTO `tblsellbooks` (`id`, `title`, `author`, `price`, `book_image`, `status`, `seller_email`) VALUES
(16, 'Effective C', 'Robert C. Seacord', '22', 'd41d8cd98f00b204e9800998ecf8427e1682398301.jpg', 1, ''),
(15, 'The C Book, Featuring the ANSI C Standard', 'Mike Banahan,Declan Brady,Mark Doran', '22', 'd41d8cd98f00b204e9800998ecf8427e1682398040.jpg', 1, ''),
(17, 'The C Book, Featuring the ANSI C Standard', 'Mike Banahan,Declan Brady,Mark Doran', '22', 'd41d8cd98f00b204e9800998ecf8427e1682398474.jpg', 2, 'nimco@hotmail.com'),
(18, 'The C Book, Featuring the ANSI C Standard', 'Mike Banahan,Declan Brady,Mark Doran', '22', 'd41d8cd98f00b204e9800998ecf8427e1682399463.jpg', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `Sname` varchar(20) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Adress` varchar(20) DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsellbooks`
--
ALTER TABLE `tblsellbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `tblsellbooks`
--
ALTER TABLE `tblsellbooks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
