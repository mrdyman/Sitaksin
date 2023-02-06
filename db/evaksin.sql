-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 06, 2023 at 05:21 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evaksin`
--

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE `penduduk` (
  `id` int NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `ttl` varchar(20) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `agama` int NOT NULL,
  `sd1` int NOT NULL,
  `sd2` int NOT NULL,
  `sd3` int NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`id`, `nik`, `nama`, `ttl`, `jk`, `alamat`, `agama`, `sd1`, `sd2`, `sd3`, `latitude`, `longitude`) VALUES
(6, '7203122803820001', 'Jam an', 'Sibualong, 1982-03-2', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.039129', '119.883012'),
(7, '7203126910880001', 'Ramlah', 'Sibualong, 1988-10-2', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.039107', '119.882961'),
(8, '7203126907080001', 'Sifa Aulia', 'Sibualong, 2003-07-1', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.039037', '119.882949'),
(9, '7203127004140001', 'Ainun Aqila', 'Sibualong, 2014-04-3', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.039164', '119.883003'),
(10, '720312271068002', 'Sudirman M', 'Sibualong, 1968-10-2', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038935', '119.883033'),
(11, '7203122710680002', 'Megawati S', 'Soppeng, 1960-07-01', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 1, '0.038975', '119.883071'),
(12, '7203120707070004', 'Sirajudin S', 'Sibualong, 1997-07-0', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.039022', '119.883141'),
(13, '7203121305710001', 'Syahrir', 'Pare-Pare, 1971-05-1', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038252', '119.883604'),
(14, '7203124312710001', 'Ipaulle', 'Soppeng, 1971-12-02', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038313', '119.883624'),
(15, '7203126712020001', 'Fitriani', 'Sibualong, 2002-12-2', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038270', '119.883687'),
(16, '7203121111050001', 'Muh Rafael', 'Sirajudin, 2005-11-1', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038246', '119.883554'),
(17, '720312250670002', 'Alfian', 'Sibualong, 1970-06-2', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038189', '119.883725'),
(18, '7203124107720262', 'Wahnida', 'Sibualong, 1972-07-0', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038133', '119.883710'),
(19, '7203125600200005', 'Endang Sri Rahayu', 'Sibualong, 2000-02-1', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038104', '119.883620'),
(20, '7203125111040002', 'Nurkumala Dewi', 'Sibualong, 2004-11-1', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038156', '119.883639'),
(21, '7203126906110001', 'Isra Al Wahnida', 'Sibualong, 2011-06-2', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.038189', '119.883719'),
(22, '7203122701056032', 'Hendrik Petru', 'Oti, 1960-12-27', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038617', '119.883341'),
(23, '7203125010660004', 'Hajera', 'Labean, 1966-10-10', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038515', '119.883405'),
(24, '7203121300372000', 'Asmaun', 'Sibualong, 1972-03-1', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038035', '119.883714'),
(25, '7203125710710003', 'Hadira', 'Sibualong, 1971-10-1', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038100', '119.883712'),
(26, '7203120412980003', 'Moh Rizki', 'Sibualong, 1998-12-0', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038062', '119.883754'),
(27, '720312084000003', 'Ahmad Rifai', 'Sibualong, 2000-11-0', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038113', '119.883765'),
(28, '7203121011030001', 'Reza Pahlawan', 'Sibualong, 2002-11-1', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038071', '119.883801'),
(29, '7203121305780001', 'Hi Sabir', 'Sibualong, 1978-05-1', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.037965', '119.883859'),
(30, '7203125202870003', 'Hj Sumarni', 'Sibualong, 1987-02-1', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.038117', '119.884016'),
(31, '7203122601060001', 'Moh Iksandy Saputra', 'Sibualong, 2006-01-0', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.037893', '119.883763'),
(32, '7203120705800002', 'Ibrahim', 'Sibualong, 1980-05-0', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.037603', '119.883910'),
(33, '7203125212790002', 'Rahima', 'Labean, 1979-12-12', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.037650', '119.883903'),
(34, '7203125601040001', 'Fatima Azzahra', 'Labean, 2004-01-16', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.037626', '119.883998'),
(35, '7203121002110001', 'Rijal Faiq Ahmad', 'Sibualong, 2011-02-1', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.037684', '119.883971'),
(36, '7203125007130001', 'Naimatuljannah', 'Sibualong, 2013-07-1', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 0, 0, 0, '0.037573', '119.883894'),
(37, '7203125110190001', 'Humaira', 'Sibualong, 2018-10-1', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 0, 0, 0, '0.037666', '119.883997'),
(38, '7203121806820001', 'Rosdin', 'Sibualong, 1982-06-1', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.037539', '119.883977'),
(39, '7203126602860001', 'Nasri', 'Sibualong, 1984-02-2', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.037558', '119.884107'),
(40, '7210312440286000', 'Nadira', 'Sibualong, 2004-02-0', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.037497', '119.884085'),
(41, '7203125707050001', 'Nabila', 'Sibualong, 2011-07-1', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.037522', '119.884040'),
(42, '7203125607110000', 'Naila', 'Sibualong, 2011-07-1', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.037578', '119.884103'),
(43, '7203120604820001', 'Moh Nur', 'Kambayang, 1982-04-0', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.037006', '119.884210'),
(44, '7203126111640003', 'Nur Laila', 'Palu, 1984-11-11', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.036959', '119.884266'),
(45, '7203124204090001', 'Nur Fadila', 'Donggala, 2009-04-02', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.036973', '119.884210'),
(46, '7203121204480001', 'Hi Abd Muin', 'Ponggerang, 1948-04-', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.036895', '119.884298'),
(47, '72031243550001', 'Hj Murning', 'Sibualong, 1955-03-0', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.036846', '119.884325'),
(48, '7203120703870003', 'Mirsan', 'Sibualong, 1987-03-0', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 1, '0.036849', '119.884271'),
(49, '7203120512030003', 'Wisman', 'Sibualong, 1993-12-0', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.036900', '119.884318'),
(50, '720312140949004', 'Hi Lauku', 'Kamiri, 1948-08-14', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.036675', '119.884272'),
(51, '7203121409480001', 'Hj Rosdiana', 'Tambu, 1952-05-14', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.036709', '119.884365'),
(52, '7203120203640002', 'Sudirman M Isa', 'Ogoamas, 1964-03-02', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.036582', '119.884318'),
(53, '7203124110171000', 'Mardiana', 'Sibualong, 1971-01-0', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.036575', '119.884372'),
(54, '7203120604000001', 'Mahmudin', 'Sibualong, 2000-04-0', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.036615', '119.884418'),
(55, '7203122404880003', 'Hamka', 'Sibualong, 1998-04-2', '1', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.036402', '119.884528'),
(56, '7203124202950005', 'Sarwana', 'Tambu, 1995-02-02', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.036355', '119.884455'),
(57, '7203126112170002', 'Assyia Humaira', 'Tambu, 2017-12-21', '0', 'JL. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.036360', '119.884509'),
(58, '720312240480001', 'Hamdan', 'Sibualong, 1988-04-2', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.036242', '119.884500'),
(59, '7303124602940002', 'Musliani', 'Siweli, 1984-02-28', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.036272', '119.884569'),
(60, '7203126410150001', 'Keisha Az Zahra', 'Sibualong, 2015-02-2', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.036295', '119.884627'),
(61, '7203120808870005', 'Lukman', 'Sibualong, 1987-08-0', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.036095', '119.884695'),
(62, '7203122680492000', 'Fiani', 'Sibualong, 1992-04-1', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.036042', '119.884658'),
(63, '7203120107810311', 'Jupri', 'Sibualong, 1981-07-0', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.035017', '119.885199'),
(64, '7203124202790000', 'Masliha', 'Sibualong, 1979-02-0', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.034907', '119.885227'),
(65, '7203120611090001', 'Moh Ridho', 'Sibualong, 2008-12-0', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.034964', '119.885235'),
(66, '7203120709760001', 'Djafar', 'Sibualong, 1975-09-0', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.035838', '119.884802'),
(67, '7203125704790003', 'Rapia', 'Sibualong, 1979-04-1', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.035799', '119.884799'),
(68, '7203125704030001', 'Indri Nurhidayah', 'Sibualong, 2003-04-1', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.035826', '119.884754'),
(69, '7203120207050001', 'Adriyansah', 'Sibualong, 2005-07-0', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.035838', '119.884822'),
(70, '7203125701090001', 'Badriah', 'Sibualong, 2009-01-1', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.035778', '119.884721'),
(71, '7203120108870003', 'Moh Tahir', 'Sibualong, 1987-08-0', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.035738', '119.884823'),
(72, '7203127005860001', 'Najmawati', 'Sibualong, 1986-05-3', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.035692', '119.884793'),
(73, '7203121008070001', 'Ahmad Fahri', 'Sibualong, 2007-08-1', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.035731', '119.884738'),
(74, '720312106170001', 'Ahmad Radinka', 'Sibualong, 2017-08-0', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 0, 0, 0, '0.035656', '119.884719'),
(75, '7203120100731004', 'Abd Razak Bunu', 'Ponggerang, 1943-08-', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.035571', '119.884790'),
(76, '7203124107360040', 'Marwiah', 'Bojol Selatan, 1936-', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.035604', '119.884870'),
(77, '7203121020103870', 'Moh Arif', 'Sibuaong, 1987-03-01', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.035429', '119.884857'),
(78, '7233126801950001', 'Rahmawati', 'Sioyong, 1998-01-21', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.035434', '119.884916'),
(79, '7203126706190001', 'Yumna Safiyya', 'Sibualong, 2018-06-1', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.035466', '119.884975'),
(80, '720312120877007', 'Moh Ali', 'Rerang, 1977-08-17', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.035270', '119.884885'),
(81, '7203124107740241', 'Marna', 'Sibualong, 1974-07-0', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.035285', '119.884952'),
(82, '7203120603020006', 'Azwar', 'Sibualong, 2002-03-0', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.035368', '119.884963'),
(83, '7203124707640002', 'Nahdatunnisa', 'Sibualong, 2004-07-0', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.035331', '119.885022'),
(84, '720312220390001', 'Arwin', 'Sibualong, 1983-03-2', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.035097', '119.884987'),
(85, '720312480198006', 'Jumisah', 'Karya M, 1998-01-08', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.035121', '119.885047'),
(86, '720312210317003', 'Moh Darul Ikram', 'Karya M, 2014-06-18', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.035195', '119.885065'),
(87, '7203122103170001', 'Moh Fajrin', 'Karya M, 2017-03-21', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.035156', '119.885115'),
(88, '7203121506530002', 'Jamaluddin M Ali', 'Balawa, 1953-08-15', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.034343', '119.885525'),
(89, '7203125303700001', 'Bahria', 'Soppeng, 1970-03-13', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.034339', '119.885570'),
(90, '7201320203910005', 'Baharudin', 'Tambu, 1991-03-02', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.034376', '119.885604'),
(91, '7203122403930000', 'Hamdan', 'Tambu, 1993-03-24', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.034339', '119.885633'),
(92, '7203120107530287', 'Jamal', 'Laipa, 1963-07-01', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.034378', '119.885668'),
(93, '7203126712640001', 'Mardia', 'Barru, 1964-12-27', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.034292', '119.885548'),
(94, '7203124708960004', 'Agustiani', 'Sibualong, 1996-08-0', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.034371', '119.885663'),
(95, '7505040712860001', 'Aristo Spd Mpo', 'Sibualong, 1986-12-0', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 1, '0.034578', '119.885512'),
(96, '7505044110860001', 'Yuliana A Md Kb', 'Sipi, 1986-10-01', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 1, '0.034572', '119.885609'),
(97, '7505044220510001', 'Alif Arianto Silambi', 'Goronalo, 2010-05-22', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.034565', '119.885660'),
(98, '7203125309120001', 'Anggun Septia Silambi', 'Buol, 2012-09-13', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.034618', '119.885645'),
(99, '7203125212160001', 'Azrina Zareen Silambi', 'Sipure, 2016-12-12', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.034565', '119.885679'),
(100, '7220312700518000', 'Alisha Rahmadani Silambi', 'Sipure, 2018-05-30', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.034611', '119.885655'),
(101, '7203121708680007', 'Junaidi', 'Balik Papapn, 1968-0', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 0, '0.035351', '119.885222'),
(102, '720312410774240', 'Marlina S Ag', 'Sibualong, 1974-07-0', '0', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 1, 1, '0.035322', '119.885435'),
(103, '7203122001100001', 'Adnan Zuhair', 'Palu, 2010-01-20', '1', 'Jl. Poros Palu Sabang Desa Sib', 1, 1, 0, 0, '0.035423', '119.885411'),
(104, '720312010186005', 'Asnawir', 'Labean, 1986-01-01', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035592', '119.885111'),
(105, '7203125509860007', 'Widyawati', 'Toli Toli, 1986-09-1', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035611', '119.885160'),
(106, '720312560208002', 'Moh Farel', 'Sioyong, 2008-08-06', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035635', '119.885214'),
(107, '7203121904140002', 'Rizky', 'Palu, 2014-04-19', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.035681', '119.885252'),
(108, '7203120107670255', 'Moh Rais', 'Sibualong, 1967-07-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035731', '119.885060'),
(109, '7203125201700001', 'Sumaini', 'Sibualong, 1976-01-1', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.035728', '119.885095'),
(110, '7203126802020003', 'Nur Afni', 'Sibualong, 2002-02-2', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035777', '119.885134'),
(111, '7203124112070001', 'Azizah', 'Sibualong, 2007-12-0', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.035753', '119.885169'),
(112, '7203121260610000', 'Jamrin A Hamid', 'Sibualong, 1962-10-1', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.036164', '119.885016'),
(113, '7271020509930002', 'Romi A', 'Palu, 1993-08-05', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.036172', '119.885048'),
(114, '7203125308970002', 'Devianti', 'Sibualong, 1997-08-1', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 1, '0.036202', '119.885079'),
(115, '7203126701190001', 'Fahira', 'Sibualong, 2019-01-0', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.036170', '119.885097'),
(116, '720312150570002', 'Ilham', 'Batu Batu, 1979-05-1', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 1, '0.036391', '119.884826'),
(117, '7203124107860339', 'Parida', 'Sibualong, 1966-07-0', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.036465', '119.884839'),
(118, '7203125811010001', 'Vilda Safitri', 'Sibualong, 2001-11-1', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.036390', '119.884889'),
(119, '7203122507040001', 'Ryo Farham', 'Sibualong, 2004-07-2', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.036485', '119.884883'),
(120, '7203122507040002', 'Ryan Farham', 'Sibualong, 2004-07-2', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.036501', '119.884955'),
(121, '7203123112540004', 'Nahong', 'Maddumpa, 1954-12-31', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 1, '0.036581', '119.884975'),
(122, '720312711208005', 'Rosmini', 'Paddangang, 1988-12-', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.036593', '119.885008'),
(123, '7203126211000002', 'Irmayanti', 'Pangkaseng, 2000-11-', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.036646', '119.885020'),
(124, '7203124812070001', 'Hasmaniar', 'Sibalong, 2007-12-08', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.036590', '119.885029'),
(125, '7203122412090001', 'Hamid', 'Maccodong, 1976-06-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.036946', '119.884680'),
(126, '720312020676001', 'Arni', 'Maccodong, 1975-06-0', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.036895', '119.884621'),
(127, '7203125511990001', 'Umi Kalsum', 'Sibualong, 1999-11-1', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.036906', '119.884709'),
(128, '7203121706100015', 'Hamnas', 'Labean, 1975-12-30', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.036876', '119.884591'),
(129, '7203124808820006', 'Jumarni', 'Sibualong, 1982-08-0', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.037407', '119.884377'),
(130, '7203121410080001', 'Ahmad Rizky', 'Sibualong, 2008-01-1', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.037421', '119.884438'),
(131, '7203125911110003', 'Annisa Ammalia', 'Sibualong, 2011-11-1', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.037457', '119.884468'),
(132, '7203121710170001', 'Ahmad Fadhil', 'Sibualong, 2017-10-1', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.037456', '119.884517'),
(133, '7203122911790003', 'Kasman', 'Bambapula, 1979-11-2', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.037695', '119.884269'),
(134, '7203125011810006', 'Yasse', 'Sibualong, 1961-11-1', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.037780', '119.884271'),
(135, '7203121711960005', 'Sulaeman', 'Sibualong, 1998-11-1', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.037704', '119.884332'),
(136, '7203125806450002', 'Hj Tipa', 'Soppeng, 1945-06-18', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.038280', '119.883999'),
(137, '7203120809790001', 'Suparman', 'Sibualong, 1979-09-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.038261', '119.884043'),
(138, '7203125612860001', 'Hapsa', 'Sibualong, 1986-12-1', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.038335', '119.884014'),
(139, '7203120507030001', 'Ayub', 'Sibualong, 2003-07-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.038296', '119.884084'),
(140, '7203120901080001', 'Fahril', 'Sibualong, 2008-01-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.038357', '119.884060'),
(141, '720312507190002', 'Reza', 'Sibualong, 2013-07-1', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.038303', '119.884104'),
(142, '7203122008720001', 'Nasir Bade', 'Soppeng, 1972-08-20', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.038320', '119.883822'),
(143, '7203125907760001', 'Asnar Ladawi', 'Batulahja, 1976-07-1', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.038422', '119.883870'),
(144, '7203122802990007', 'Ahmad Arif', 'Sibualong, 1999-02-2', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.038366', '119.883888'),
(145, '7203126503100001', 'Aulia Kirana', 'Sibualong, 2010-03-2', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.038430', '119.883915'),
(146, '7203120906140003', 'Ahmad Zaky', 'Sibualong, 2019-08-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.038488', '119.883939'),
(147, '7203120109740005', 'Husen', 'Sibualong, 1974-09-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.038542', '119.883687'),
(148, '7203124307760001', 'Tira', 'Barru, 1976-07-03', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.038554', '119.883740'),
(149, '7203121202820800', 'Hendra Firmansyah', 'Sibualong, 2010-07-3', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.038648', '119.883786'),
(150, '7203120107510113', 'Saude', 'Barru, 1951-07-01', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.038661', '119.883659'),
(151, '7203124107690172', 'Werni', 'Barru, 1969-07-01', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.038668', '119.883718'),
(152, '7203122403750001', 'Moh Khairuddin', 'Banyuwangi, 1975-03-', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.038778', '119.883581'),
(153, '7203126702780661', 'Masni', 'Sibualong, 1978-02-2', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.038846', '119.883617'),
(154, '7203124789050002', 'Revana Septi A Tyas', 'Sibualong, 2005-09-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.038853', '119.883673'),
(155, '7203124412100003', 'Deswita Dwi B Putri', 'Sibualong, 2010-12-0', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.038906', '119.883665'),
(156, '7203124109660001', 'Rabia', 'Berra, 1966-09-01', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 1, '0.039082', '119.883379'),
(157, '7203122506910900', 'Husain', 'Sibualong, 1991-08-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.039098', '119.883430'),
(158, '7203126810990002', 'Nurmiati', 'Sibualong, 1989-10-2', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 1, '0.039148', '119.883439'),
(159, '7203121104770001', 'Hi Burhan', 'Labean, 1977-04-11', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.039221', '119.883328'),
(160, '7203125208820001', 'Nisma Hi Jedding', 'Sibualong, 1982-08-1', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.039270', '119.883381'),
(161, '7203122104020001', 'Hendra', 'Sibualong, 2002-04-2', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.039333', '119.883403'),
(162, '7203120167600245', 'Ukastli Dulla', 'Sibualong, 1960-07-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 1, '0.039600', '119.883781'),
(163, '7203124107660242', 'Hanise', 'Sibualong, 1966-07-0', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.039616', '119.883830'),
(164, '7203120107960387', 'Subhan', 'Sibualong, 1997-09-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.039667', '119.883853'),
(165, '7203124107990403', 'Sulmawati', 'Sibualong, 2001-06-0', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.039613', '119.883843'),
(166, '7203122666750001', 'Djufri', 'Sibayu, 1975-06-26', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.040211', '119.884455'),
(167, '7203124307790003', 'Rosida', 'Sibualong, 1979-07-0', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.040269', '119.884443'),
(168, '7203122511990003', 'Mizbar', 'Sibualong, 1999-11-2', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.040313', '119.884438'),
(169, '7203121811150001', 'Rahmat Hafis', 'Palu, 2015-11-10', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.040303', '119.884377'),
(170, '720312020864000', 'Lakenni', 'Sibualong, 1964-08-0', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.039728', '119.883620'),
(171, '7203125709680001', 'Hj Ati', 'Sibualong, 1968-09-1', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 1, '0.039788', '119.883579'),
(172, '7203120409660001', 'Kasir', 'Tegal, 1988-09-04', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.041386', '119.882070'),
(173, '7203121247067500', 'Ratna', 'Sibualong, 1976-06-0', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 1, '0.041328', '119.882048'),
(174, '7203120605090001', 'Rehan', 'Karya Mukti, 2009-05', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.041421', '119.882069'),
(175, '7203120107730510', 'Laming', 'Sibualong, 1973-07-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.041652', '119.882508'),
(176, '7203124107720221', 'Hanna', 'Soppeng, 1972-07-01', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.041679', '119.882544'),
(177, '720312', 'Rusdi', 'Sibualong, 2002-06-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.041582', '119.882420'),
(178, '7203124206030001', 'Ros', 'Sibualong, 2003-08-0', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.041623', '119.882378'),
(179, '7203122507790002', 'Yahrul', 'Sibualong, 1979-07-2', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.042670', '119.880687'),
(180, '7203126311800002', 'Salma', 'Sibualong, 1990-11-2', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.042687', '119.880771'),
(181, '7203122090102000', 'Fikri Haykal', 'Sibualong, 2002-01-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 1, '0.042614', '119.880781'),
(182, '7203126108140001', 'Dika Firmansyah', 'Subualong, 2005-08-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.042690', '119.880710'),
(183, '7203122101690002', 'Sirajudin', 'Sibualong, 1969-01-2', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 1, '0.042759', '119.881560'),
(184, '7203124908730002', 'Nuraini', 'Sibualong, 1973-08-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.042813', '119.881568'),
(185, '7203121202079800', 'Rahmat Hidayat', 'Sibualong, 1999-07-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.042811', '119.881503'),
(186, '7203120109690001', 'Masnun', 'Sibualong, 1969-09-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 1, '0.042366', '119.881474'),
(187, '7203124606690006', 'Nurlaela', 'Mangkoso, 1969-06-06', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.042416', '119.881462'),
(188, '7203123005010003', 'Gunawan', 'Sibualong, 2001-05-3', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.042448', '119.881429'),
(189, '720312451460001', 'Cenning', 'Labean, 1946-11-05', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 1, '0.042306', '119.881329'),
(190, '7203121506810001', 'Sultan', 'Sibayu, 1981-06-15', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.042357', '119.881309'),
(191, '7203120305870001', 'Moh Saleng', 'Sibualong, 1987-05-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.042397', '119.881255'),
(192, '7203120107670267', 'Nasir Halim', 'Sibualong, 1967-07-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035659', '119.878264'),
(193, '7203124107840283', 'Sana Wati', 'Meli, 1984-07-01', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035666', '119.878304'),
(194, '7203125310110001', 'Nur Fadila', 'Sibualong, 2011-10-1', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035661', '119.878337'),
(195, '7203120609140001', 'Irfan Maulana', 'Sibualong, 2014-09-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.035667', '119.878254'),
(196, '7203120303460001', 'Suitupi L Sg Silansa', 'Sibualong, 1946-03-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035732', '119.878416'),
(197, '7203127012500001', 'Djoha', 'Toaya, 1950-12-30', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 1, '0.035765', '119.878467'),
(198, '7203120101700018', 'Abbas', 'Boneoge, 1970-01-01', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035525', '119.878280'),
(199, '7203124107820304', 'Halima', 'Meli, 1982-07-01', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035598', '119.878296'),
(200, '7203121202020006', 'Ardiansyah', 'Sibualong, 2002-02-1', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.035564', '119.878331'),
(201, '7203122505790003', 'Moh Taher', 'Sibualong, 1979-05-2', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035636', '119.878455'),
(202, '7203126106800003', 'Ivon Nila Krisna', 'Sibualong, 1980-06-2', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035662', '119.878520'),
(203, '7203122411080004', 'Moh Ibnu Katsir', 'Palu, 2008-11-24', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035689', '119.878576'),
(204, '7203121017560136', 'Maser', 'Sibualong, 1956-07-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035564', '119.878487'),
(205, '7203120107610258', 'Rusdin L DG Silasa', 'Sibualong, 1961-07-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035497', '119.878383'),
(206, '7203124606890005', 'Masniati', 'Sibualong, 1969-06-0', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 1, '0.035537', '119.878391'),
(207, '7203122404180005', 'Jasmin', 'Bogge, 1967-09-11', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.035490', '119.878521'),
(208, '720312027740001', 'Supri', 'Sibualong, 1974-07-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.040426', '119.882154'),
(209, '7203120107790279', 'Hanapi', 'Sibualong, 1979-07-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.040504', '119.882347'),
(210, '7203124111680003', 'Nuraini', 'Soppeng, 1968-11-01', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.039734', '119.882860'),
(211, '7203122008820002', 'Jumardin', 'Balukang, 1982-08-20', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.040395', '119.884937'),
(212, '7203122311780001', 'Hermanza', 'Sibualong, 1978-11-2', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.040395', '119.884937'),
(213, '7203124909900004', 'Jumaini', 'Sibualong, 1990-09-0', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.041651', '119.888691'),
(214, '7203120107880257', 'Lami', 'Sibualong, 1988-07-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.041849', '119.889058'),
(215, '7203120107490074', 'Latawing', 'Donggala, 1949-07-01', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.039598', '119.883793'),
(216, '7203120107940262', 'Baharudin', 'Donggala, 1994-07-01', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.041222', '119.892016'),
(217, '7203121803970001', 'Moh Bakri', 'Palu, 1997-02-19', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.042285', '119.880949'),
(218, '720312707800007', 'Iswan', 'Kayumalue, 1980-07-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.041533', '119.881567'),
(219, '7203121212620002', 'Hi Jedding', 'Sibualong, 1962-12-1', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.040495', '119.879971'),
(220, '720312112850002', 'Ardin', 'Sibualong, 1985-12-1', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.040157', '119.879916'),
(221, '72031228760005', 'Asmin', 'Sibualong, 1976-08-2', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035403', '119.878415'),
(222, '7271041512850001', 'Wawan', 'Pantoloan, 1985-12-1', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.035464', '119.878533'),
(223, '7203121501730002', 'Asad', 'Sibualong, 1973-01-1', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 0, 0, '0.035282', '119.878477'),
(224, '7203120107650174', 'Muksin', 'Sibualong, 1965-07-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035312', '119.878612'),
(225, '7203120709490001', 'Ademi', 'Donggala, 1962-06-03', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035186', '119.878525'),
(226, '7203121109890001', 'Lisjan', 'Sibualong, 1989-09-1', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035242', '119.878648'),
(227, '7203125054500003', 'Usman Djalil', 'Sibualong, 1945-05-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 1, '0.035174', '119.878528'),
(228, '7203124107822096', 'Rosdiana', 'Sibualong, 1974-07-0', '0', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035223', '119.878656'),
(229, '7203120303530002', 'Moh Tang', 'Sibualong, 1953-03-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.035100', '119.878546'),
(230, '7203120107940282', 'Makmur', 'Sibualong, 1994-07-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.034814', '119.878817'),
(231, '7203122506810001', 'Sofyan', 'Sibualong, 1981-08-2', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.034722', '119.878687'),
(232, '7203120308770001', 'Erwin Bustamin', 'Sibualong, 1977-08-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.034741', '119.878867'),
(233, '7203120102870004', 'Ruslan', 'Toli Toli, 1987-12-0', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.034686', '119.878699'),
(234, '7203121017680502', 'Masran', 'Sibualong, 1974-07-1', '1', 'Jl Poros Palu Sabang Desa Sibu', 1, 1, 1, 0, '0.034648', '119.878887');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `active` int NOT NULL,
  `role` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `active`, `role`) VALUES
(1, 'Zira', 'admin', 'admin', 1, 1),
(2, 'Hikma Agriady', 'agri', 'agri', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
