-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 08:14 PM
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
-- Database: `jp_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `createdDate` date NOT NULL DEFAULT current_timestamp(),
  `updatedDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `description`, `createdDate`, `updatedDate`) VALUES
(1, 'Yangon', 'Yangon was founded as Dagon in the early 11th century (c. 1028–1043) by the Mon people, who inhabited Lower Burma at that time.[9] Dagon became an important pilgrimage pagoda town, starting in the 14th century, during the Hanthawaddy Kingdom. Notable governors of Dagon included Princess Maha Dewi, who ruled the town from 1364 to 1392,[10] and her grandniece, Shin Saw Pu, who later became the only female queen regnant in Burmese history. Queen Saw Pu built a palace next to the Shwedagon Pagoda in the town in 1460 and spent her semi-retired life at that palace until her death in 1471.[', '2023-04-04', '2023-04-04'),
(2, 'Mandalay', 'It\'s the former royal capital of the country and is home to a number of pagodas, temples, monasteries, and other Buddhist establishments. Many pilgrims and believers visit Mandalay to see the exquisite golden pagodas and brilliant Buddha sculptures that can only be found in this city.', '2023-04-04', '2023-04-04'),
(3, 'Naypyitaw', 'Nay Pyi Taw (pronounced ‘Naypiddaw’), means ‘Abode of Kings’, is the administrative capital of the Union of Myanmar. Naypyitaw have been founded on a green field site some 3 kilometres west of Pyinmana. Naypyidaw is located between the Bago Yoma and Shan Yoma mountain ranges.  Centrally located, it is 376 km from Yangon and 274 km from Mandalay, being easily accessible from all parts of the Union. The 24th and 25th ASEAN Summit as well as the Ninth East Asia Summit were held in Naypyidaw. It was also one of the host cities for the 2013 Southeast Asian Games.\r\n\r\n ', '2023-04-04', '2023-04-04'),
(4, 'Pakokku', 'akokku (Burmese: ပခုက္ကူမြို့, [pəkʰoʊʔkù]) is the largest city in the Magway Region of Myanmar. It is situated about 30 km north-east of Bagan on the Irrawaddy River. It is the administration seat of Pakokku Township , Pakokku District and Gangaw District. Pakokku Bridge is part of the India–Myanmar–Thailand Trilateral Highway and is the longest bridge in Myanmar. It is home of the Pakokku Airport.', '2023-04-04', '2023-04-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
