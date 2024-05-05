-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 05, 2024 at 12:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `Add_Caretakers`
--

CREATE TABLE `Add_Caretakers` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `p_Name` varchar(255) DEFAULT NULL,
  `p_Age` int(11) DEFAULT NULL,
  `p_Gender` varchar(10) DEFAULT NULL,
  `Diagnosis` varchar(255) DEFAULT NULL,
  `Relationship` varchar(255) DEFAULT NULL,
  `Caretaker_image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Add_Caretakers`
--

INSERT INTO `Add_Caretakers` (`id`, `user_id`, `password`, `Name`, `phone_no`, `Age`, `gender`, `p_Name`, `p_Age`, `p_Gender`, `Diagnosis`, `Relationship`, `Caretaker_image`) VALUES
(74, '192', '1234', 'mani', '9999999999', 20, 'Male', 'hello', 22, 'Female', 'Schizophrenia', 'bro', 'uploads/F9151656-72CD-49DA-8E22-9B13DF304E0C.jpg'),
(75, 'sse@gmail.com', '1234', 'muni', '9999999999', 20, 'Male', 'hello', 22, 'Female', 'BPA', 'bro', 'uploads/76EC40BA-F4F9-49AB-B87F-23D83B09A02A.jpg'),
(76, '1923', '1234', 'muni', '9999999999', 20, 'Male', 'hello', 23, 'Female', 'Schizophrenia', 'brother', 'uploads/98622DBE-6421-47FA-A875-8BCD3D35D825.jpg'),
(77, '19289', '1234', 'muni', '9999999999', 20, 'Male', 'hello', 23, 'Female', 'Schizophrenia', 'bro', 'uploads/7D425F81-EA12-472A-8BD1-E48846F9E469.jpg'),
(78, '19245', '1234', 'muni', '9999999999', 20, 'Male', 'hello', 23, 'Female', 'Schizophrenia', 'bro', 'uploads/448E5D73-1548-4995-BE82-6D13EA141747.jpg'),
(79, '1997', '1234', 'muni', '9999999999', 20, 'Male', 'hello', 22, 'Male', 'Schizophrenia', 'bro', 'uploads/FE215FC0-2647-4A79-89C4-2C10FA88F614.jpg'),
(80, '192458', '1234', 'muni', '9999999999', 20, 'Male', 'hello', 22, 'Female', 'Schizophrenia', 'bro', 'uploads/5D33F1FE-6FF7-4047-8B9E-820ABE3B72C3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Add_Ct`
--

CREATE TABLE `Add_Ct` (
  `id` int(11) NOT NULL,
  `Doctor_id` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `p_Name` varchar(255) DEFAULT NULL,
  `p_Age` int(11) DEFAULT NULL,
  `p_Gender` varchar(10) DEFAULT NULL,
  `Diagnosis` varchar(255) DEFAULT NULL,
  `Relationship` varchar(255) DEFAULT NULL,
  `Caretaker_image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(12) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `designation` varchar(250) NOT NULL,
  `institution` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `user_id`, `Name`, `email_id`, `password`, `phone_no`, `designation`, `institution`) VALUES
(1, '123', 'ram', 'mems@gmail.com', '1234', '1234567890', 'sseim', 'simats');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `s.no` int(250) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `user_answer` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`s.no`, `user_id`, `question_id`, `user_answer`, `date`) VALUES
(298, 19288, 1, 'Most days', '2024-02-23'),
(299, 19288, 1, 'Every day', '2024-02-26'),
(300, 19288, 2, 'Some days', '2024-02-26'),
(301, 19288, 5, 'Every day', '2024-02-26'),
(302, 19288, 4, 'Never', '2024-02-26'),
(303, 192, 1, 'Most days', '2024-02-28'),
(304, 192, 2, 'Some days', '2024-02-28'),
(305, 192, 3, 'Some days', '2024-02-28'),
(306, 192, 4, 'Most days', '2024-02-28'),
(307, 192, 5, 'Most days', '2024-02-28'),
(308, 192, 6, 'Very rarely', '2024-02-28'),
(309, 192, 7, 'Very rarely', '2024-02-28'),
(310, 192, 8, 'Most days', '2024-02-28'),
(311, 192, 9, 'Most days', '2024-02-28'),
(312, 192, 10, 'Most days', '2024-02-28'),
(313, 192, 11, 'Most days', '2024-02-28'),
(314, 192, 12, 'Never', '2024-02-28'),
(315, 192, 13, 'Some days', '2024-02-28'),
(316, 192, 14, 'Very rarely', '2024-02-28'),
(317, 192, 15, 'Very rarely', '2024-02-28'),
(318, 192, 16, 'Some days', '2024-02-28'),
(319, 0, 1, 'Some days', '2024-03-04'),
(320, 0, 2, 'Some days', '2024-03-04'),
(321, 0, 6, 'Most days', '2024-03-04'),
(322, 0, 9, 'Some days', '2024-03-04'),
(323, 0, 11, 'Some days', '2024-03-04'),
(324, 0, 13, 'Very rarely', '2024-03-04'),
(325, 192, 26, 'Every day', '2024-03-04'),
(326, 192, 29, 'Very rarely', '2024-03-04'),
(327, 192, 1, 'Never', '2024-03-04'),
(328, 192, 4, 'Most days', '2024-03-04'),
(329, 192, 6, 'Most days', '2024-03-04'),
(330, 192, 8, 'Very rarely', '2024-03-04'),
(331, 192, 19, 'Very rarely', '2024-03-07'),
(332, 192, 20, 'Most days', '2024-03-07'),
(333, 192, 21, 'Some days', '2024-03-07'),
(334, 192, 1, 'Never', '2024-03-28'),
(335, 192, 2, 'Never', '2024-03-28'),
(336, 192, 3, 'Some days', '2024-03-28');

-- --------------------------------------------------------

--
-- Table structure for table `Doctor`
--

CREATE TABLE `Doctor` (
  `id` int(12) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `Age` varchar(250) DEFAULT NULL,
  `Gender` varchar(250) DEFAULT NULL,
  `designation` varchar(250) NOT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `doctorimage` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Doctor`
--

INSERT INTO `Doctor` (`id`, `user_id`, `Name`, `email_id`, `password`, `phone_no`, `Age`, `Gender`, `designation`, `institution`, `doctorimage`) VALUES
(2, '123', 'ram', 'mems@gmail.com', '1234', '1234567890', '20', 'male', 'sse', 'simats', 'uploads/Screenshot 2024-02-04 at 6.31.28 PM.png'),
(3, '1233', 'hari', '9059', '1234', '1234567890', '20', 'male', 'dis', 'des', 'uploads/Screenshot 2024-02-04 at 6.31.28 PM.png'),
(4, '1234', 'hari', 'ss@gmail.com', '1234', '9059123456', '20', 'male', 'desciption', 'des', 'uploads/Screenshot 2024-02-04 at 6.31.28 PM.png'),
(5, '192', 'mani', 'sse@gmail.om', '1234', '9999999999', '20', 'Male', 'ade', 'saw', 'uploads/B9069C77-8E48-4F7A-AB1D-CE51EA1B1BB8.jpg'),
(8, '193', 'muni', 'sse@gamil.com', '1234', '9999999999', '20', 'Male', 'simats', 'se', 'uploads/37F82D4A-3A3E-4C32-A7F2-2C548233549B.jpg'),
(9, '1923', 'muni', 'muni@gmail.com', '1234', '9999999999', '20', 'Male', 'case', 'saw', 'uploads/B78CDDF1-AEE9-404A-B7C2-5BDF37EB3E9F.jpg'),
(10, '199', 'muni', 'sse@gmail.com', '1234', '9999999999', '20', 'Male', 'simata', 'saw', 'uploads/42ACE020-D83F-4E48-8C2E-134D7E70D468.jpg'),
(11, '1987', 'muni', 'ss@gmail.com', '1234', '9999999999', '20', 'Male', 'SIMATS', 'sse', 'uploads/7AD7960C-9E65-4D89-BA91-CBE429A4650B.jpg'),
(12, '19279', 'muni', 'sse@gmail.com', '1234', '9999999999', '20', 'Female', 'bpA', 'hello', 'uploads/698B8AE9-7556-407A-BD5C-07364FC7C3AC.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `qns`
--

CREATE TABLE `qns` (
  `question_id` int(11) NOT NULL,
  `question_text` varchar(255) NOT NULL,
  `option_a` varchar(100) NOT NULL,
  `option_b` varchar(100) NOT NULL,
  `option_c` varchar(100) NOT NULL,
  `option_d` varchar(100) NOT NULL,
  `option_e` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qns`
--

INSERT INTO `qns` (`question_id`, `question_text`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`) VALUES
(1, 'It is good to have him around', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(2, 'He makes me feel drained', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(3, 'He ignores my advice', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(4, 'He is really hard to take', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(5, 'I shout at him', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(6, 'I wish he were not here', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(7, 'I feel that he is driving me crazy', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(8, 'I loose my temper with him', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(9, 'He is easy to get along with', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(10, 'I am sick of having to look after him', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(11, 'He deliberately causes me problems', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(12, 'I enjoy being with him', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(13, 'He is a real burden', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(14, 'I argue with him', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(15, 'I feel very close to him', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(16, 'I can cope with him', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(17, 'Living with him is too much for me', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(18, 'He is infuriating', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(19, 'I find my self saying nasty or sarcastic things to him', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(20, 'He appreciates what I do for him', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(21, 'I feel he is becoming easier to live with', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(22, 'I wish he would leave me alone', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(23, 'He takes me for granted', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(24, 'He can control himself', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(25, 'He is hard to get close to', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(26, 'I feel he is becoming harder to live with', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(27, 'I feel very frustated with him', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(28, 'He makes a lot of sense', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(29, 'I feel disappointed with him', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never'),
(30, 'He tries to get along with me', 'Every day', 'Most days', 'Some days', 'Very rarely', 'Never');

-- --------------------------------------------------------

--
-- Table structure for table `questionarie_scorecard`
--

CREATE TABLE `questionarie_scorecard` (
  `id` int(250) NOT NULL,
  `user_id` varchar(250) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `A` int(255) DEFAULT NULL,
  `B` int(11) DEFAULT NULL,
  `C` int(11) DEFAULT NULL,
  `D` int(11) DEFAULT NULL,
  `E` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questionarie_scorecard`
--

INSERT INTO `questionarie_scorecard` (`id`, `user_id`, `date`, `total_score`, `A`, `B`, `C`, `D`, `E`) VALUES
(63, '123', '2024-02-22', 3, 0, 1, 0, 0, 0),
(64, '19288', '2024-02-22', 59, 1, 6, 16, 5, 2),
(65, '19288', '2024-02-23', 3, 0, 1, 0, 0, 0),
(66, '19288', '2024-02-26', 10, 2, 0, 1, 0, 1),
(67, '192', '2024-02-28', 33, 0, 7, 4, 4, 1),
(68, '0', '2024-03-04', 12, 0, 1, 4, 1, 0),
(69, '192', '2024-03-04', 5, 1, 0, 0, 1, 0),
(70, '192', '2024-03-04', 7, 0, 2, 0, 1, 1),
(71, '192', '2024-03-07', 6, 0, 1, 1, 1, 0),
(72, '192', '2024-03-28', 2, 0, 0, 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subtopics`
--

CREATE TABLE `subtopics` (
  `Id` int(11) NOT NULL,
  `topic_id` int(255) DEFAULT NULL,
  `topic_name` varchar(255) DEFAULT NULL,
  `subtopic_id` varchar(255) DEFAULT NULL,
  `subtopic_name` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subtopics`
--

INSERT INTO `subtopics` (`Id`, `topic_id`, `topic_name`, `subtopic_id`, `subtopic_name`, `video`, `description`) VALUES
(54, 1, 'Psycho Education', '1.1', 'Bipolar Disorderrs', 'uploads/video.mp4', 'Add description'),
(55, 5, 'add topic', '5.1', 'add', 'uploads/B1F65514-33EA-4507-8AD9-7553A73983C2.mov', 'Add description'),
(56, 5, 'add topic', '5.2', 'add', 'uploads/224A82EE-0F04-4642-B52F-64D5EDFC6921.mov', 'Add description'),
(57, 5, 'add topic', '5.2', 'add', 'uploads/2CAB3E1D-D07C-48AC-83AE-507D4C43A1C8.mov', 'Add description'),
(58, 5, 'add topic', '5.3', 'add', 'uploads/99D30E3B-9454-4BA9-8FA7-3474E47BE5D3.mov', 'Add description'),
(59, 5, 'add topic', '5.4', 'add', 'uploads/53DFBE2E-4983-47BD-9062-04E34080EC40.mov', 'Add description'),
(60, 5, 'add topic', '5.5', 'add', 'uploads/11EA9063-E11D-41E7-AF79-5E63EB924B1D.mov', 'Add description'),
(61, 7, 'description', '7.1', 'description', 'uploads/8A9EC595-2A4E-4936-9AFD-55B9B5390D82.mov', 'Add descriptionefwf'),
(62, 2, 'name', '2.1', 'topic', 'uploads/15CCD425-CDB3-414F-94EE-3E5E173012F9.mov', 'Add descriptions'),
(63, 6, 'hello', '6.1', 'hello world', 'uploads/A984910C-E1CB-4AE1-B7DE-6C85FB3700C2.mov', 'Add descriptions');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `suggestion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `user_id`, `date`, `suggestion`) VALUES
(5, 123, '2024-02-22', 'Be alert always '),
(6, 123, '2024-02-22', 'Careful always'),
(7, 19288, '2024-02-22', 'Heloooo'),
(8, 19288, '2024-02-26', 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.'),
(9, 192, '2024-03-04', 'Try again'),
(10, 192, '2024-03-07', 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.'),
(11, 192, '2024-03-27', 'Be careful '),
(12, 192, '2024-03-27', 'Be careful '),
(13, 192, '2024-03-28', 'Ipsum'),
(14, 192, '2024-03-28', 'Hello'),
(15, 192, '2024-03-28', 'Lorem');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `topic_id` varchar(250) DEFAULT NULL,
  `topic_name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `topic_id`, `topic_name`) VALUES
(34, '1', 'Psycho Education'),
(35, '5', 'add topic'),
(36, '7', 'description'),
(37, '2', 'name'),
(38, '6', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `topic_answer`
--

CREATE TABLE `topic_answer` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `subtopic_name` varchar(250) DEFAULT NULL,
  `question1` varchar(255) DEFAULT NULL,
  `answer1` varchar(255) DEFAULT NULL,
  `question2` varchar(255) DEFAULT NULL,
  `answer2` varchar(255) DEFAULT NULL,
  `question3` varchar(255) DEFAULT NULL,
  `answer3` varchar(255) DEFAULT NULL,
  `question4` varchar(255) DEFAULT NULL,
  `answer4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topic_answer`
--

INSERT INTO `topic_answer` (`id`, `user_id`, `date`, `subtopic_name`, `question1`, `answer1`, `question2`, `answer2`, `question3`, `answer3`, `question4`, `answer4`) VALUES
(52, '123', '2024-02-22', 'Bipolar Disorder', '1', '67', '2', '79', '3', '45', '4', '435'),
(53, '19288', '2024-02-22', 'Bipolar Disorder', '1', '435', '2', '67', '3', '45', '4', '79'),
(54, '192', '2024-02-22', 'Bipolar Disorder', '1', '45', '2', '435', '3', '67', '4', '79'),
(55, '19288', '2024-02-23', 'Bipolar Disorderrs', '1', '435', '2', '45', '3', '435', '4', '67'),
(56, '19288', '2024-02-26', 'Bipolar Disorderrs', '1', '45', '2', '45', '3', '435', '4', '67'),
(57, '192', '2024-02-28', 'Bipolar Disorderrs', '1', '45', '2', '67', '3', '79', '4', '45'),
(58, '0', '2024-03-04', 'Bipolar Disorderrs', '1', '45', '2', '67', '3', '435', '4', '45'),
(59, '192', '2024-03-04', 'Bipolar Disorderrs', '1', '45', '2', '67', '3', '79', '4', '435'),
(60, '192', '2024-03-07', 'description', '1', '67', '2', '435', '3', '67', '4', '79'),
(61, '192', '2024-03-28', 'Bipolar Disorderrs', '1', '435', '2', '67', '3', '67', '4', '45');

-- --------------------------------------------------------

--
-- Table structure for table `video_questions`
--

CREATE TABLE `video_questions` (
  `id` int(11) NOT NULL,
  `subtopic_id` varchar(255) DEFAULT NULL,
  `subtopic_name` varchar(255) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `option_a` varchar(255) DEFAULT NULL,
  `option_b` varchar(255) DEFAULT NULL,
  `option_c` varchar(255) DEFAULT NULL,
  `option_d` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video_questions`
--

INSERT INTO `video_questions` (`id`, `subtopic_id`, `subtopic_name`, `question_id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`) VALUES
(81, '1.1', 'Bipolar Disorderrs', 1, 'Enter the question...', '45', '435', '67', '79'),
(82, '1.1', 'Bipolar Disorderrs', 2, 'Enter the question...', '45', '435', '67', '79'),
(83, '1.1', 'Bipolar Disorderrs', 3, 'Enter the question...', '45', '435', '67', '79'),
(84, '1.1', 'Bipolar Disorderrs', 4, 'Enter the question...', '45', '435', '67', '79'),
(85, '7.1', 'description', 1, 'Enter the question...', '45', '435', '67', '79'),
(86, '7.1', 'description', 2, 'Enter the question...', '45', '435', '67', '79'),
(87, '7.1', 'description', 3, 'Enter the question...', '45', '435', '67', '79'),
(88, '7.1', 'description', 4, 'Enter the question...', '45', '435', '67', '79'),
(89, '2.1', 'topic', 1, '', '45', '435', '67', '79'),
(90, '2.1', 'topic', 2, '', '45', '435', '67', '79'),
(91, '2.1', 'topic', 3, '', '45', '435', '67', '79'),
(92, '2.1', 'topic', 4, 'Hello', '45', '435', '67', '79'),
(93, '6.1', 'hello world', 1, 'Enter the question...', '45', '435', '67', '79'),
(94, '6.1', 'hello world', 2, 'Enter the question...', '45', '435', '67', '79'),
(95, '6.1', 'hello world', 3, 'Enter the question...', '45', '435', '67', '79'),
(96, '6.1', 'hello world', 4, 'Enter the question...', '45', '435', '67', '79');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Add_Caretakers`
--
ALTER TABLE `Add_Caretakers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`s.no`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qns`
--
ALTER TABLE `qns`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `questionarie_scorecard`
--
ALTER TABLE `questionarie_scorecard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subtopics`
--
ALTER TABLE `subtopics`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic_answer`
--
ALTER TABLE `topic_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `video_questions`
--
ALTER TABLE `video_questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Add_Caretakers`
--
ALTER TABLE `Add_Caretakers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `s.no` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `Doctor`
--
ALTER TABLE `Doctor`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `qns`
--
ALTER TABLE `qns`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `questionarie_scorecard`
--
ALTER TABLE `questionarie_scorecard`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `subtopics`
--
ALTER TABLE `subtopics`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `topic_answer`
--
ALTER TABLE `topic_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `video_questions`
--
ALTER TABLE `video_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `qns` (`question_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
