-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2020 at 05:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sys_judge`
--

-- --------------------------------------------------------

--
-- Table structure for table `challenger`
--

CREATE TABLE `challenger` (
  `ch_id` int(11) NOT NULL,
  `ch_FirstName` varchar(40) DEFAULT NULL,
  `ch_LastName` varchar(40) DEFAULT NULL,
  `ch_UserName` varchar(40) DEFAULT NULL,
  `ch_email` varchar(40) DEFAULT NULL,
  `ch_password` varchar(40) DEFAULT NULL,
  `ch_Adress` varchar(60) DEFAULT NULL,
  `ch_country` varchar(40) DEFAULT NULL,
  `ch_tel` varchar(20) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `challenger`
--

INSERT INTO `challenger` (`ch_id`, `ch_FirstName`, `ch_LastName`, `ch_UserName`, `ch_email`, `ch_password`, `ch_Adress`, `ch_country`, `ch_tel`, `gender`) VALUES
(1, 'abdelmoula', 'bouchreb', 'escanor', 'abdelmoulabouchareb12@gmail.com', '9214678', NULL, NULL, '0639809519', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `pr_id` int(11) NOT NULL,
  `pr_title` varchar(50) DEFAULT NULL,
  `pr_type` varchar(20) DEFAULT NULL,
  `pr_description` text DEFAULT NULL,
  `pr_level` enum('easy','meduim','hard','expert','god') DEFAULT NULL,
  `pr_input` text DEFAULT NULL,
  `pr_output` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`pr_id`, `pr_title`, `pr_type`, `pr_description`, `pr_level`, `pr_input`, `pr_output`) VALUES
(1, '', 'bash', '', NULL, '', ''),
(2, 'jckjdskfjs', 'C', '<p>l;dksf;lksl;dkf</p>', NULL, '125', '151'),
(3, 'kjdsfks', 'problem solving', 'werwerwerwe', 'hard', '1254', '112548'),
(4, 'kjdsfks', 'shell', 'werwerwerwe', 'hard', '1254', '112548'),
(5, 'kjdsfks', 'sql', 'werwerwerwe', 'hard', '1254', '112548'),
(6, 'kjdsfks', 'sql', 'werwerwerwe', 'hard', '1254', '112548'),
(7, 'kjdsfks', 'c', 'werwerwerwe', 'hard', '1254', '112548'),
(8, 'fact', 'c', 'werwerwerwe', 'hard', '1254', '112548'),
(9, 'power', 'c', 'werwerwerwe', '', '1254', '112548'),
(10, 'fact999', 'c', 'werwerwerwe', 'god', '1254', '112548'),
(11, 'palying with chars', 'C', '<p><strong>Input Format</strong></p><p>First, take a character, as input.<br>Then take the string, as input.<br>Lastly, take the sentence as input.</p><p><strong>Constraints</strong></p><p>Strings for and will have fewer than 100 characters, including the newline.</p><p><strong>Output Format</strong></p><p>Print three lines of output. The first line prints the character, .<br>The second line prints the string, .<br>The third line prints the sentence, .</p>', NULL, '125', '151'),
(12, 'ldkfjkldsj', 'C', '', NULL, 'dsfsd', 'sdfs'),
(13, 'ldkfjkldsj', 'C', '<p><strong>Objective</strong></p><p>This challenge will help you to learn how to take a character, a string and a sentence as input in C.</p><p>To take a single character as input, you can use scanf(\"%c\", &amp;ch ); and printf(\"%c\", ch) writes a character specified by the argument char to stdout</p><p>char ch;\r\nscanf(\"%c\", &amp;ch);\r\nprintf(\"%c\", ch);\r\n</p><p>This piece of code prints the character .</p><p>You can take a string as input in C using scanf(“%s”, s). But, it accepts string only until it finds the first space.</p><p>In order to take a line as input, you can use scanf(\"%[^\\n]%*c\", s); where is defined as char s[MAX_LEN] where is the maximum size of . Here, [] is the scanset character. ^\\n stands for taking input until a newline isn\'t encountered. Then, with this %*c, it reads the newline character and here, the used * indicates that this newline character is discarded.</p><p><strong>Note:</strong> The statement: scanf(\"%[^\\n]%*c\", s); will not work because the last statement will read a newline character, \\n, from the previous line. This can be handled in a variety of ways. One way is to use scanf(\"\\n\"); before the last statement.</p><p><strong>Task</strong></p>', NULL, 'dsfsd', 'sdfs'),
(14, 'test33', 'C', '<p><strong>Objective</strong></p><p>This challenge will help you to learn how to take a character, a string and a sentence as input in C.</p><p>To take a single character as input, you can use scanf(\"%c\", &amp;ch ); and printf(\"%c\", ch) writes a character specified by the argument char to stdout</p><p>char ch;\r\nscanf(\"%c\", &amp;ch);\r\nprintf(\"%c\", ch);\r\n</p><p>This piece of code prints the character .</p><p>You can take a string as input in C using scanf(“%s”, s). But, it accepts string only until it finds the first space.</p><p>In order to take a line as input, you can use scanf(\"%[^\\n]%*c\", s); where is defined as char s[MAX_LEN] where is the maximum size of . Here, [] is the scanset character. ^\\n stands for taking input until a newline isn\'t encountered. Then, with this %*c, it reads the newline character and here, the used * indicates that this newline character is discarded.</p><p><strong>Note:</strong> The statement: scanf(\"%[^\\n]%*c\", s); will not work because the last statement will read a newline character, \\n, from the previous line. This can be handled in a variety of ways. One way is to use scanf(\"\\n\"); before the last statement.</p><p><strong>Task</strong></p>', NULL, 'nsd', 'fsdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `challenger`
--
ALTER TABLE `challenger`
  ADD PRIMARY KEY (`ch_id`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`pr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `challenger`
--
ALTER TABLE `challenger`
  MODIFY `ch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
