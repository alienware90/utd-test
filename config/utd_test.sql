-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Feb 09, 2020 alle 17:32
-- Versione del server: 10.1.35-MariaDB
-- Versione PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utd_test`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `card_hands`
--

CREATE TABLE `card_hands` (
  `id` int(5) NOT NULL,
  `hand_a` varchar(10) NOT NULL,
  `hand_b` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `card_hands`
--

INSERT INTO `card_hands` (`id`, `hand_a`, `hand_b`) VALUES
(1, '8CTSKC9H4S', '7D2S5D3SAC'),
(2, '5CAD5DAC9C', '7C5H8DTDKS'),
(3, '3H7H6SKCJS', 'QHTDJC2D8S'),
(4, 'TH8H5CQSTC', '9H4DJCKSJS'),
(5, '7C5HKCQHJD', 'ASKH4CAD4S'),
(6, '5HKS9C7D9H', '8D3S5D5CAH'),
(7, '6H4H5C3H2H', '3SQH5S6SAS'),
(8, 'TD8C4H7CTC', 'KC4C3H7SKS'),
(9, '7C9C6DKD3H', '4CQSQCACKH'),
(10, 'JC6S5H2H2D', 'KD9D7CASJS'),
(11, 'ADQHTH9D8H', 'TS6D3SASAC'),
(12, '2H4S5C5STC', 'KCJD6CTS3C'),
(13, 'QDAS6HJS2C', '3D9HKC4H8S'),
(14, 'KD8S9S7C2S', '3S6D6S4HKC'),
(15, '3C8C2D7D4D', '9S4SQH4HJD'),
(16, '8CKC7STC2D', 'TS8HQDAC5C'),
(17, '3DKHQD6C6S', 'ADAS8H2HQS'),
(18, '6S8D4C8S6C', 'QHTC6D7D9D'),
(19, '2S8D8C4CTS', '9S9D9CAC3D'),
(20, '3CQS2S4HJH', '3D2DTD8S9H'),
(21, '5HQS8S6D3C', '8CJDAS7H7D'),
(22, '6HTD9DASJH', '6CQC9SKDJC'),
(23, 'AH8SQS4DTH', 'ACTS3C3D5C'),
(24, '5S4DJS3D8H', '6CTS3SAD8C'),
(25, '6D7C5D5H3S', '5CJC2H5S3D'),
(26, '5H6H2SKS3D', '5DJD7HJS8H'),
(27, 'KH4HASJSQS', 'QCTC6D7CKS'),
(28, '3DQSTS2HJS', '4DAS9SJCKD'),
(29, 'QD5H4D5DKH', '7H3DJSKD4H'),
(30, '2C9H6H5C9D', '6CJC2DTH9S'),
(31, '7D6DASQDJH', '4DJS7CQS5C'),
(32, '3HKHQDAD8C', '8H3STH9D5S'),
(33, 'AH9S4D9D8S', '4HJS3CTC8D'),
(34, '2CKS5HQD3S', 'TS9HAHAD8S'),
(35, '5C7H5DKD9H', '4D3D2DKSAD'),
(36, 'KSKC9S6D2C', 'QH9D9HTSTC'),
(37, '9C6H5DQH4D', 'AD6DQCJSKH'),
(38, '9S3H9DJD5C', '4D9HASTCQH'),
(39, '2C6DJC9C3C', 'AD9SKH9D7D'),
(40, 'KC9C7CJCJS', 'KD3HAS3C7D'),
(41, 'QDKHQS2C3S', '8S8H9H9CJC'),
(42, 'QH8D3CKC4C', '4H6DAD9H9D'),
(43, '3SKSQS7HKH', '7D5H5DJDAD'),
(44, '2H2C6HTHTC', '7D8D4H8CAS'),
(45, '4S2HACQC3S', '6DTH4D4CKH'),
(46, '4DTCKSAS7C', '3C6D2D9H6C'),
(47, '8CTD5DQS2C', '7H4C9C3H9H'),
(48, '5HJHTS7STD', '6HADQD8H8S'),
(49, '5SAD9C8C7C', '8D5H9D8S2S'),
(50, '4HKHKS9S2S', 'KC5SAD4S7D'),
(51, 'QS9CQD6HJS', '5DAC8D2SAS'),
(52, 'KHACJC3S9D', '9S3C9C5SJS'),
(53, 'AD3C3DKS3S', '5C9C8CTS4S'),
(54, 'JH8D5D6HKD', 'QSQD3D6CKC'),
(55, '8SJD6C3S8C', 'TCQC3CQHJS'),
(56, 'KCJC8H2S9H', '9CJH8S8C9S'),
(57, '8S2HQH4DQC', '9DKCASTH3C'),
(58, '8S6HTH7C2H', '6S3C3HAS7S'),
(59, 'QH5SJS4H5H', 'TS8HAHACJC'),
(60, '9D8H2S4STC', 'JC3C7H3H5C'),
(61, '3DAD3C3S4C', 'QCAS5DTH8C'),
(62, '6S9D4CJSKH', 'AHTSJD8HAD'),
(63, '4C6S9D7SAC', '4D3D3STCJD'),
(64, 'AD7H6H4HJH', 'KCTDTS7D6S'),
(65, '8HJHTC3S8D', '8C9S2C5C4D'),
(66, '2C9DKCQHTH', 'QSJC9C4HTS'),
(67, 'QS3CQD8HKH', '4H8DTD8SAC'),
(68, '7C3CTH5S8H', '8C9CJDTCKD'),
(69, 'QCTCJDTS8C', '3H6HKD7CTD'),
(70, 'JHQSKS9C6D', '6SAS9HKH6H'),
(71, '2H4DAH2DJH', '6HTD5D4HJD'),
(72, 'KD8C9SJHQD', 'JS2CQS5C7C'),
(73, '4STC7H8D2S', '6H7S9C7CKC'),
(74, '8C5D7H4STD', 'QC8SJS4HKS'),
(75, 'AD8SJH6DTD', 'KD7C6C2D7D'),
(76, 'JC6H6SJS4H', 'QH9HAH4C3C'),
(77, '6H5HAS7C7S', '3DKHKC5D5C'),
(78, 'JC3DTDAS4D', '6D6SQHJDKS'),
(79, '8C7S8SQH2S', 'JD5C7HAHQD'),
(80, '8S3C6H6C2C', '8DTD7D4C4D'),
(81, '5DQHKH7C2S', '7HJS6DQCQD'),
(82, 'AD6C6S7DTH', '6H2H8HKH4H'),
(83, 'KSJSKD5D2D', 'KH7D9C8C3D'),
(84, '9C6DQD3CKS', '3S7SAHJD2D'),
(85, 'AHQHASJC8S', '8H4CKCTH7D'),
(86, 'JC5HTD7C5D', 'KD4CAD8HJS'),
(87, 'KC2HACAH7D', 'JHKH5D7S6D'),
(88, '9S5S9C6H8S', 'TDJD9H6CAC'),
(89, '7D8S6DTSKD', '7HAC5S7C5D'),
(90, 'AHQCJC4CTC', '8C2HTS2C7D'),
(91, 'KDKC6S3D7D', '2S8S3H5S5C'),
(92, '8S5D8H4C6H', 'KC3H7C5SKD'),
(93, 'JH8C3D3C6C', 'KCTD7H7C4C'),
(94, 'JCKC6HTSQS', 'TDKS8H8C9S'),
(95, '6C5S9CQH7D', 'AHKSKC9S2C'),
(96, '4D4S8HTD9C', '3S7D9DASTH'),
(97, '6S7D3C6H5D', 'KD2C5C9D9C'),
(98, '2HKC3DAD3H', 'QDQS8DJC4S'),
(99, '8C3H9C7CAD', '5DJC9DJSAS'),
(100, '5D9H5C7H6S', '6CQCJCQD9S'),
(101, 'JCQSJH2C6S', '9CQC3D4STC'),
(102, '4H5S8D3D4D', '2SKC2HJS2C'),
(103, 'TD3STHKD4D', '7HJHJSKSAC'),
(104, '7S8C9S2D8S', '7D5CAD9DAS'),
(105, '8C7H2S6CTH', '3H4C3S8HAC'),
(106, 'KD5HJC8HJD', '2D4HTDJH5C'),
(107, '3DASQHKS7H', 'JD8S5S6D5H'),
(108, '9S6STCQSJC', '5C5D9CTH8C'),
(109, '5H3SJH9H2S', '2C6S7SASKS'),
(110, '8CQDJCQSTC', 'QC4HACKH6C'),
(111, 'TC5H7DJH4H', '2H8DJCKS4D'),
(112, '5S9CKHKD9H', '5CTS3D7D2D'),
(113, '5HASTC4D8C', '2CTS9D3H8D'),
(114, '6H8D2D9HJD', '6C4S5H5S6D'),
(115, 'AD9CJC7D6H', '9S6DJS9H3C'),
(116, 'ADJHTCQS4C', '5D9S7C9CAH'),
(117, 'KD6H2HTH8S', 'QDKS9D9HAS'),
(118, '4H8H8D5H6C', 'AH5SASAD8S'),
(119, 'QS5D4S2HTD', 'KS5HAC3HJC'),
(120, '9C7DQDKDAC', '6D5HQH6H5S'),
(121, 'KCAHQH2H7D', 'QS3HKS7SJD'),
(122, '6C8S3H6DKS', 'QD5D5C8HTC'),
(123, '9H4D4S6S9D', 'KHQC4H6CJD'),
(124, 'TD2DQH4S6H', 'JHKD3CQD8C'),
(125, '4S6H7CQD9D', 'ASAH6SAD3C'),
(126, '2CKCTH6H8D', 'AH5C6D8S5D'),
(127, 'TDTS7CADJC', 'QD9H3CKC7H'),
(128, '5D4D5S8H4H', '7D3HJDKD2D'),
(129, 'JHTD6HQS4S', 'KD5C8S7D8H'),
(130, 'AC3DAS8CTD', '7HKH5D6CJD'),
(131, '9DKS7C6DQH', 'TCJDKDASKC'),
(132, 'JH8S5S7S7D', 'AS2D3DAD2H'),
(133, '2H5DAS3CQD', 'KC6H9H9S2C'),
(134, '9D5DTH4CJH', '3H8DTC8H9H'),
(135, '6HKD2CTD2H', '6C9D2DJS8C'),
(136, 'KD7S3C7CAS', 'QHTSAD8C2S'),
(137, 'QS8H6CJS4C', '9SQCADTDTS'),
(138, '2H7CTSTC8C', '3C9H2D6DJC'),
(139, 'TC2H8DJHKS', '6D3HTDTH8H'),
(140, '9DTD9HQC5D', '6C8H8CKCTS'),
(141, '2H8C3DAH4D', 'THTC7D8HKC'),
(142, 'TS5C2D8C6S', 'KHAH5H6HKC'),
(143, '5S5DAHTC4C', 'JD8D6H8C6C'),
(144, 'KCQD3D8H2D', 'JC9H4HAD2S'),
(145, 'TD6S7DJSKD', '4HQS2S3S8C'),
(146, '4C9HJHTS3S', '4HQC5S9S9C'),
(147, '2CKD9HJS9S', '3HJCTS5DAC'),
(148, 'AS2H5DAD5H', 'JC7STDJS4C'),
(149, '2D4S8H3D7D', '2CADKD9CTS'),
(150, '7HQDJH5HJS', 'AC3DTH4C8H'),
(151, '6DKHKCQD5C', 'AD7C2D4HAC'),
(152, '3D9DTC8SQD', '2CJC4HJDAH'),
(153, '6CTD5STC8S', 'AH2C5DASAC'),
(154, 'TH7S3DAS6C', '4C7H7D4HAH'),
(155, '5C2HKS6H7S', '4H5H3D3C7H'),
(156, '3C9SAC7SQH', '2H3D6S3S3H'),
(157, '2D3HAS2C6H', 'TCJS6S9C6C'),
(158, 'QHKDQD6DAC', '6HKH2CTS8C'),
(159, '8H7D3S9H5D', '3H4SQC9S5H'),
(160, '2D9D7H6H3C', '8S5H4D3S4S'),
(161, 'KD9S4STC7S', 'QC3S8S2H7H'),
(162, 'TC3D8C3H6C', '2H6HKSKD4D'),
(163, 'KC3D9S3HJS', '4S8H2D6C8S'),
(164, '6HQS6CTCQD', '9H7D7C5H4D'),
(165, 'TD9D8D6S6C', 'TC5DTSJS8H'),
(166, '4HKCJD9HTC', '2C6S5H8HAS'),
(167, 'JS9C5C6S9D', 'JD8HKC4C6D'),
(168, '4D8D8S6C7C', '6H7H8H5CKC'),
(169, 'TC3DJC6DKS', '9S6H7S9C2C'),
(170, '6C3SKD5HTS', '7D9H9S6HKH'),
(171, '3DQD4C6HTS', 'AC3S5C2HKD'),
(172, '4CASJS9S7C', 'TS7H9HJCKS'),
(173, '4H8CJD3H6H', 'AD9S4S5SKS'),
(174, '4C2C7D3DAS', '9C2SQSKC6C'),
(175, '8S5H3D2SAC', '9D6S3S4DTD'),
(176, 'QDTH7STS3D', 'AC7H6C5DQC'),
(177, 'TCQDAD9CQS', '5C8DKD3D3C'),
(178, '9D8HAS3S7C', '8SJD2D8DKC'),
(179, '4CTHACQHJS', '8D7D7S9CKH'),
(180, '9D8D4CJH2C', '2SQDKDTS4H'),
(181, '4D6D5D2DJH', '3S8S3HTCKH'),
(182, 'AD4D2CQS8C', 'KDJHJDAH5C'),
(183, '5C6C5H2HJH', '4HKS7CTC3H'),
(184, '3C4CQC5DJH', '9CQDKH8DTC'),
(185, '3H9CJS7HQH', 'AS7C9H5HJC'),
(186, '2D5SQD4S3C', 'KC6S6C5C4C'),
(187, '5DKH2DTS8S', '9CAS9S7C4C'),
(188, '7CAH8C8D5S', 'KDQHQSJH2C'),
(189, '8C9DAH2HAC', 'QC5S8H7H2C'),
(190, 'QD9H5SQSQC', '9C5HJCTH4H'),
(191, '6C6S3H5H3S', '6HKS8DAC7S'),
(192, 'ACQH7H8C4S', 'KC6C3D3STC'),
(193, '9D3DJSTHAC', '5H3H8S3STC'),
(194, 'QDKHJSKS9S', 'QC8DAH3CAC'),
(195, '5H6CKH3S9S', 'JH2DQDAS8C'),
(196, '6C4D7S7H5S', 'JC6S9H4HJH'),
(197, 'AH5S6H9SAD', '3STH2H9D8C'),
(198, '4C8D9H7CQC', 'AD4S9CKC5S'),
(199, '9D6H4DTC4C', 'JH2S5D3SAS'),
(200, '2H6C7CKH5C', 'ADQSTHJD8S'),
(201, '3S4S7SAHAS', 'KCJS2SADTH'),
(202, 'JSKC2S7D8C', '5C9CTS5H9D'),
(203, '7S9S4DTDJH', 'JSKH6H5D2C'),
(204, 'JDJSJCTH2D', '3DQD8CAC5H'),
(205, '7SKH5S9D5D', 'TD4S6H3C2D'),
(206, '4S5DAC8D4D', '7CADASAH9C'),
(207, '6STHTSKS2C', 'QCAHAS3C4S'),
(208, '2H8C3SJC5C', '7C3H3CKHJH'),
(209, '7S3HJC5S6H', '4C2S4DKC7H'),
(210, '4D7C4H9S8S', '6SADTC6CJC'),
(211, 'KHQS3STC4C', '8H8SAC3CTS'),
(212, 'QDQSTH3CTS', '7H7DAHTDJC'),
(213, 'TDJDQC4D9S', '7STSAD7DAC'),
(214, 'AH7H4S6D7C', '2H9DKSJCTD'),
(215, '7CAHJD4H6D', 'QSTS2H2C5C'),
(216, 'TCKC8C9S4C', 'JS3CJC6SAH'),
(217, 'AS7DQC3D5S', 'JCJD9DTDKH'),
(218, 'TH3C2S6HAH', 'AC5H5C7S8H'),
(219, 'QC2DACQD2S', '3SJDQS6S8H'),
(220, 'KC4H3C9DJS', '6H3S8SAS8C'),
(221, '7HKC7DJD2H', 'JCQH5S3HQS'),
(222, '9HTD3S8H7S', 'AC5C6CAH7C'),
(223, '8D9HAHJDTD', 'QS7D3S9C8S'),
(224, 'AHQH3CJDKC', '4S5S5DTDKS'),
(225, '9H7H6SJHTH', '4C7CAD5C2D'),
(226, '7CKD5STC9D', '6S6C5D2STH'),
(227, 'KC9H8D5H7H', '4HQC3D7CAS'),
(228, '6S8SQCTD4S', '5CTHQSQD2S'),
(229, '8S5HTHQC9H', '6SKC7D7C5C'),
(230, '7HKDAH4DKH', '5C4S2DKCQH'),
(231, '6S2CTDJCAS', '4D6C8C4H5S'),
(232, 'JCTCJD5S6S', '8DAS9DAD3S'),
(233, '6D6H5D5STC', '3D7DQS9DQD'),
(234, '4S6C8S3S7S', 'ADKS2D7D7C'),
(235, 'KCQHJCACQD', '5D8DQS7H7D'),
(236, 'JSAH8S5H3D', 'TD3H4S6CJH'),
(237, '4SQS7DAS9H', 'JSKS6DTC5C'),
(238, '2D5C6HTC4D', 'QH3D9H8S6C'),
(239, '6D7HTCTH5S', 'JD5C9CKSKD'),
(240, '8DTDQH6S4S', '6C8SKC5CTC'),
(241, '5S3DKSAC4S', '7DQD4CTH2S'),
(242, 'TS8H9S6S7S', 'QH3CAH7H8C'),
(243, '4C8CTSJSQC', '3D7D5D7SJH'),
(244, '8S7S9DQCAC', '7C6D2HJHKC'),
(245, 'JSKD3C6S4S', '7CAHQCKS5H'),
(246, 'KS6S4HJDQS', 'TC8HKC6HAS'),
(247, 'KH7CTC6STD', 'JC5C7DAH3S'),
(248, '3H4C4HTCTH', '6S7H6D9CQH'),
(249, '7D5H4S8CJS', '4D3D8SQHKC'),
(250, '3H6SAD7H3S', 'QC8S4S7SJS'),
(251, '3SJDKHTH6H', 'QS9C6C2DQD'),
(252, '4SQH4D5HKC', '7D6D8DTH5S'),
(253, 'TDAD6S7HKD', 'KH9H5SKCJC'),
(254, '3HQCASTS4S', 'QDKS9C7SKC'),
(255, 'TS6SQC6CTH', 'TC9D5C5DKD'),
(256, 'JS3S4HKD4C', 'QD6D9SJC9D'),
(257, '8SJS6D4HJH', '6H6S6CKSKH'),
(258, 'AC7D5DTC9S', 'KH6SQD6HAS'),
(259, 'AS7H6DQH8D', 'TH2SKH5C5H'),
(260, '4C7C3DQCTC', '4SKH8C2DJS'),
(261, '6H5D7S5H9C', '9HJH8STH7H'),
(262, 'ASJS2SQDKH', '8H4SAC8D8S'),
(263, '3H4CTDKD8C', 'JC5CQS2DJD'),
(264, 'TS7D5D6C2C', 'QS2H3CAHKS'),
(265, '4S7C9C7DJH', '6C5C8H9DQD'),
(266, '2STD7S6D9C', '9SQSKHQH5C'),
(267, 'JC6S9CQHJH', '8D7SJSKH2H'),
(268, '8D5HTHKC4D', '4S3S6S3DQS'),
(269, '2DJD4CTD7C', '6DTH7SJCAH'),
(270, 'QS7S4CTH9D', 'TSAD4D3H6H'),
(271, '2D3H7DJD3D', 'AS2S9CQC8S'),
(272, '4H9H9C2C7S', 'JHKD5C5D6H'),
(273, 'TC9H8HJC3C', '9S8DKSADKC'),
(274, 'TS5HJDQSQH', 'QC8D5DKHAH'),
(275, '5DAS8S6S4C', 'AHQCQDTH7H'),
(276, '3H4H7D6S4S', '9HAS8HJS9D'),
(277, 'JD8C2C9D7D', '5H5S9SJCKD'),
(278, 'KD9C4SQDAH', '7CAD9DACTD'),
(279, '6S4H4S9C8D', 'KSTC9DJH7C'),
(280, '5SJC5H4SQH', 'AC2CJS2S9S'),
(281, '8C5HASQDAD', '5C7D8SQCTD'),
(282, 'JC4C8D5CKH', 'QS4D6H2H2C'),
(283, 'TH4S2DKC3H', 'QDAC7HAD9D'),
(284, 'KHQDAS8HTH', 'KC8D7SQH8C'),
(285, 'JC6C7D8CKH', 'ADQS2H6S2D'),
(286, 'JCKH2D7DJS', 'QC5H4C5DAD'),
(287, 'TS3SAD4STD', '2DTH6S9HJH'),
(288, '9H2DQS2C4S', '3DKHASAC9D'),
(289, 'KH6S8H4SKD', '7D9DTSQDQC'),
(290, 'JH5HAHKSAS', 'ADJCQC5SKH'),
(291, '5D7D6DKSKD', '3D7C4DJD3S'),
(292, 'ACJS8D5H9C', '3H4H4DTS2C'),
(293, '6HKSKH9D7C', '2S6S8S2H3D'),
(294, '6HACJS7S3S', 'TD8H3H4HTH'),
(295, '9HTCQCKC5C', 'KS6H4HAC8S'),
(296, 'TC7DQH4SJC', 'TS6D6CACKH'),
(297, 'QH7D7CJHQS', 'QDTH3H5DKS'),
(298, '3D5S8DJS4C', '2CKS7H9C4H'),
(299, '5H8S4HTD2C', '3SQDQC3HKC'),
(300, 'QCJSKD9CAD', '5S9D7D7HTS'),
(301, '8CJCKH7C7S', '6CTS2CQDTH'),
(302, '5S9DTH3C7S', 'QH8S9C2H5H'),
(303, '5D9H6H2SJS', 'KH3H7C2H5S'),
(304, 'JD5D5S2CTC', '2S6S6C3C8S'),
(305, '4DKH8H4H2D', 'KS3H5C2S9H'),
(306, '3S2DTD7H8S', '6HJDKC9C8D'),
(307, '6SQDJH7C9H', '5H8S8HTHTD'),
(308, 'QS7STD7DTS', 'JCKD7C3C2C'),
(309, '3CJD8S4H2D', '2STDAS4DAC'),
(310, 'AHKS6C4C4S', '7D8C9H6HAS'),
(311, '5S3C9S2CQS', 'KD4D4SAC5D'),
(312, '2DTS2CJSKH', 'QH5D8CASKC'),
(313, 'KD3H6CTH8S', '7SKH6H9SAC'),
(314, '6H7S6CQSAH', '2S2H4H5D5H'),
(315, '5HJCQD2C2S', 'JDASQC6S7D'),
(316, '6CTCASKD8H', '9D2C7DJH9S'),
(317, '2H4C6CAH8S', 'TD3HTH7CTS'),
(318, 'KD4STS6CQH', '8D9D9CAH7D'),
(319, '6DJS5CQDQC', '9C5D8C2HKD'),
(320, '3CQHJHAD6S', 'AHKC8S6D6H'),
(321, '3D7C4C7S5S', '3S6S5HJC3C'),
(322, 'QH7C5H3C3S', '8CTS4CKD9C'),
(323, 'QD3S7S5H7H', 'QHJC7C8CKD'),
(324, '3CKDKH2S4C', 'TSAC6S2C7C'),
(325, '2CKH3C4C6H', '4D5H5S7SQD'),
(326, '4D7C8SQDTS', '9DKS6HKD3C'),
(327, 'QS4DTS7S4C', '3HQD8D9STC'),
(328, 'TSQHAC6S3C', '9H9DQS8S6H'),
(329, '3S7S5D4SJS', '2D6CQH6STH'),
(330, '4C4HASJS5D', '3DTS9CAC8S'),
(331, '6S9C7C3S5C', 'QSADAS6H3C'),
(332, '9S8C7H3H6S', '7CAS9HJDKH'),
(333, '3D3H7S4D6C', '7CAC2H9CTH'),
(334, '4H5S3HACTC', 'TH9C9H9S8D'),
(335, '8D9H5H4D6C', '2HQD6S5D3S'),
(336, '4C5CJDQS4D', '3HTHACQH8C'),
(337, 'QC5S3C7HAD', '4CKS4HJD6D'),
(338, 'QSAH3HKS9H', '2SJSJH5H2H'),
(339, '2H5STH6STS', '3SKS3C5HJS'),
(340, '2D9S7H3DKC', 'JH6D7DJSTD'),
(341, 'ACJS8H2C8C', 'JHJC2DTH7S'),
(342, '5D9S8H2H3D', 'TCAHJCKD9C'),
(343, '9DQDJC2H6D', 'KHTS9SQHTH'),
(344, '2C8D4SJD5H', '3HTHTC9CKC'),
(345, 'AS3D9H7D4D', 'THKH2H7S3H'),
(346, '4H7SKS2SJS', 'TS8S2HQD8D'),
(347, '5S6HJHKS8H', '2SQCAC6S3S'),
(348, 'JCASADQS8H', '6CKH4C4DQD'),
(349, '2S3DTSTD9S', 'KS6SQS5C8D'),
(350, '3C6D4SQCKC', 'JHQDTHKHAD'),
(351, '9HAH4DKS2S', '8DJHJC7CQS'),
(352, '2D6CTH3C8H', 'QDQH2S3SKS'),
(353, '6H5D9S4CTS', 'TDJSQD9DJD'),
(354, '5H8HKH8SKS', '7CTDAD4SKD'),
(355, '2C7CJC5SAS', '6C7D8S5H9C'),
(356, '6SQD9STSKH', 'QS5SQH3CKC'),
(357, '7D3H3CKD5C', 'ASJH7H6HJD'),
(358, '9D5C9HKC8H', 'KS4SAD4D2S'),
(359, '3SJDQD8D2S', '7C5S6S5HTS'),
(360, '6D9SKCTD3S', '6HQDJD5C8D'),
(361, '5H9DTSKD8D', '6HTDQC4C7D'),
(362, '6D4SJD9DAH', '9SASTD9HQD'),
(363, '2D5S2H9C6H', '9STDQC7DTC'),
(364, '3S2HKSTS2C', '9C8SJS9D7D'),
(365, '3CKC6D5D6C', '6H8SAS7SQS'),
(366, 'JH9S2H8D4C', '8H9HADTHKH'),
(367, 'QCAS2SJS5C', '6HKD3H7H2C'),
(368, 'QD8H2S8D3S', '6DAH2CTC5C'),
(369, 'JDJSTS8S3H', '5DTDKCJC6H'),
(370, '6SQSTC3H5D', 'AHJC7C7D4H'),
(371, '7C5D8H9C2H', '9HJHKH5S2C'),
(372, '9C7H6STH3S', 'QCQD4CACJD'),
(373, '2H5D9S7DKC', '3SQS2DASKH'),
(374, '2S4S2H7D5C', 'TDTHQH9S4D'),
(375, '6D3STS6H4H', 'KS9D8H5S2D'),
(376, '9HKS4H3S5C', '5DKH6H6SJS'),
(377, 'KCAS8C4CJC', 'KHQCTHQDAH'),
(378, '6SKH9S2C5H', 'TC3C7HJC4D'),
(379, 'JD4S6S5S8D', '7H7S4D4C2H'),
(380, '7H9H5DKH9C', '7CTSTC7S5H'),
(381, '4C8DQCTS4S', '9H3DADJS7C'),
(382, '8CQS5C5D3H', 'JSAHKC4S9D'),
(383, 'TSJD8SQSTH', 'JHKH2DQDJS'),
(384, 'JDQC5D6S9H', '3S2C8H9STS'),
(385, '2S4CAD7HJC', '5C2D6D4H3D'),
(386, '7SJS2C4H8C', 'ADQD9C3STD'),
(387, 'JDTS4C6H9H', '7DQD6D3CAS'),
(388, 'AS7C4C6S5D', '5S5CJSQC4S'),
(389, 'KD6S9S7C3C', '5S7DJHQDJS'),
(390, '4S7SJH2C8S', '5D7H3DQHAD'),
(391, 'TD6H2H8D4H', '2D7CADKH5D'),
(392, 'TS3S5H2CQD', 'AH2S5CKHTD'),
(393, 'KC4D8C5DAS', '6C2H2S9H7C'),
(394, 'KDJSQCTSQS', 'KHJH2C5DAD'),
(395, '3S5HKC6C9H', '3H2HAD7D7S'),
(396, '7SJSJHKD8S', '7D2S9H7C2H'),
(397, '9H2D8DQC6S', 'ADAS8H5H6C'),
(398, '2S7H6C6D7D', '8C5D9DJC3C'),
(399, '7C9C7HJD2H', 'KD3SKHAD4S'),
(400, 'QHAS9H4DJD', 'KSKDTSKH5H'),
(401, '4C8H5S3S3D', '7DTDAD7SKC'),
(402, 'JS8S5SJC8H', 'TH9C4D5DKC'),
(403, '7C5S9CQD2C', 'QHJS5H8DKH'),
(404, 'TD2SKS3DAD', 'KC7STC3C5D'),
(405, '4C2SADQS6C', '9SQDTHQH5C'),
(406, '8CADQS2D2S', 'KCJDKS6CJC'),
(407, '8D4DJS2H5D', 'QD7S7DQHTS'),
(408, '6S7H3S8C8S', '9DQS8H6C9S'),
(409, '4STC2S5CQD', '4DQS6DTH6S'),
(410, '3S5C9D6H8D', '4C7DTC7CTD'),
(411, 'AH6SAS7H5S', 'KD3H5HAC4C'),
(412, '8D8SAHKSQS', '2CAD6H7D5D'),
(413, '6H9H9S2HQS', '8S9C5D2DKD'),
(414, 'TSQC5SJH7D', '7STH9S9HAC'),
(415, '7H3H6SKC4D', '6D5C4SQDTS'),
(416, 'TD2S7CQD3H', 'JH9D4H7S7H'),
(417, 'KS3D4H5HTC', '2SAS2D6D7D'),
(418, '8H3C7HTD3H', 'ADKCTH9CKH'),
(419, 'TC4C2C9S9D', '9C5C2HJD3C'),
(420, '3HACTS5DAD', '8D6HQC6S8C'),
(421, '2STS3SJD7H', '8SQH4C5S8D'),
(422, 'AC4S6C3CKH', '3D7C2D8S2H'),
(423, '4H6C8STH2H', '4S8H9S3H7S'),
(424, '7C4C9C2C5C', 'AS5DKD4DQH'),
(425, '9H4HTSAS7D', '8D5D9S8C2H'),
(426, 'QCKDACAD2H', '7SAS3S2D9S'),
(427, '2HQC8HTC6D', 'QDQS5DKH3C'),
(428, 'THJDQS4C2S', '5SAD7H3SAS'),
(429, '7HJS3D6C3S', '6DAS9SACQS'),
(430, '9CTSAS8CTC', '8S6H9D8D6C'),
(431, '4DJD9CKC7C', '6DKS3S8CAS'),
(432, '3H6STC8DTS', '3SKC9S7CAS'),
(433, '8CQC4H4S8S', '6C3STCAHAC'),
(434, '4D7D5CAS2H', '6STSQCADTC'),
(435, 'QDQC8S4STH', '3DAHTSJH4H'),
(436, '5C2D9S2C3H', '3C9DQDQH7D'),
(437, 'KC9H6CKD7S', '3C4DASTC2D'),
(438, '3DJS4D9DKS', '7DTHQC3H3C'),
(439, '8D5S2H9D3H', '8C4C4H3CTH'),
(440, 'JCTH4S6SJD', '2D4D6C3D4C'),
(441, 'TS3S2D4HAC', '2C6S2HJH6H'),
(442, 'TD8SADTCAH', 'ACJH9S6S7S'),
(443, '6CKC4SJD8D', '9H5S7HQHAH'),
(444, 'KD8DTSJH5C', '5H3HADASJS'),
(445, '2D4H3D6C8C', '7SAD5D5C8S'),
(446, 'TD5D7S9C4S', '5H6C8C4C8S'),
(447, 'JSQH9CAS5C', 'QSJC3DQC7C'),
(448, 'JC9CKHJHQS', 'QC2CTS3DAD'),
(449, '5DJHAC5C9S', 'TS4CJD8CKS'),
(450, 'KCAS2DKH9H', '2C5S4D3D6H'),
(451, 'THAH2D8SJC', '3D8CQH7S3S'),
(452, '8HQD4HJCAS', 'KHKS3C9S6D'),
(453, '9SQH7D9C4S', 'AC7HKH4DKD'),
(454, 'AHADTH6D9C', '9SKDKSQH4H'),
(455, 'QD6H9C7CQS', '6D6S9D5SJH'),
(456, 'AH8D5HQD2H', 'JCKS4HKH5S'),
(457, '5C2SJS8D9C', '8C3DASKCAH'),
(458, 'JD9S2HQS8H', '5S8CTH5C4C'),
(459, 'QCQS8C2S2C', '3S9C4CKSKH'),
(460, '2D5D8SAHAD', 'TD2CJSKS8C'),
(461, 'TC5S5H8HQC', '9H6HJD4H9S'),
(462, '3CJH4H9HAH', '4S2H4C8DAC'),
(463, '8STH4D7D6D', 'QDQS7STC7C'),
(464, 'KH6D2DJD5H', 'JSQDJH4H4S'),
(465, '9C7SJH4S3S', 'TSQC8CTC4H'),
(466, 'QH9D4DJHQS', '3S2C7C6C2D'),
(467, '4H9SJD5C5H', 'AH9DTS2D4C'),
(468, 'KSJHTS5D2D', 'AHJS7HAS8D'),
(469, 'JSAH8CADKS', '5S8H2C6CTH'),
(470, '2H5DADACKS', '3D8HTS6HQC'),
(471, '6D4HTS9C5H', 'JSJH6SJD4C'),
(472, 'JHQH4H2C6D', '3C5D4CQSKC'),
(473, '6H4H6C7H6S', '2S8SKHQC8C'),
(474, '3H3D5DKS4H', 'TDAD3S4DTS'),
(475, '5S7C8S7D2C', 'KS7S6C8CJS'),
(476, '5D2H3S7C5C', 'QD5H6D9C9H'),
(477, 'JS2SKD9S8D', 'TDTSAC8C9D'),
(478, '5HQD2SAC8C', '9HKS7C4S3C'),
(479, 'KHAS3H8S9C', 'JSQS4SAD4D'),
(480, 'AS2STDAD4D', '9HJC4C5HQS'),
(481, '5D7C4HTC2D', '6CJS4SKC3S'),
(482, '4C2C5DAC9H', '3DJD8SQSQH'),
(483, '2C8S6H3CQH', '6DTCKDACAH'),
(484, 'QC6C3SQS4S', 'AC8D5CADKH'),
(485, '5S4CACKHAS', 'QC2C5C8D9C'),
(486, '8HJD3CKH8D', '5C9CQDQH9D'),
(487, '7HTS2C8C4S', 'TDJC9C5HQH'),
(488, 'JS4S2C7CTH', '6CASKS7SJD'),
(489, 'JH7C9H7HTC', '5H3D6D5D4D'),
(490, '2CQDJH2H9D', '5S3DTDADKS'),
(491, 'JDQH3S4DTH', '7D6SQSKS4H'),
(492, 'TCKS5S8D8H', 'AD2S2D4CJH'),
(493, '5SJHTC3S2D', 'QS9D4CKD9S'),
(494, 'ACKH3HAS9D', 'KC9HQD6C6S'),
(495, '9H7S3D5C7D', 'KCTD8H4H6S'),
(496, '3C7H8HTCQD', '4D7S6SQH6C'),
(497, '6DAD4CQD6C', '5D7D9DKSTS'),
(498, 'JH2HJD9S7S', 'TSKH8D5D8H'),
(499, '2D9S4C7D9D', '5HQD6DAC6S'),
(500, '7S6DJCQDJH', '4C6SQS2H7D'),
(501, '8CTDJHKD2H', '5CQS2CJS7S'),
(502, 'TC5H4HJHQD', '3S5S5D8SKH'),
(503, 'KSKH7C2C5D', 'JH6S9C6DJC'),
(504, '5HAHJD9CJS', 'KC2H6H4D5S'),
(505, 'AS3CTHQC6H', '9C8S8CTD7C'),
(506, 'KC2CQD9CKH', '4D7S3CTS9H'),
(507, '9CQC2STS8C', 'TD9SQD3S3C'),
(508, '4D9DTHJHAH', '6S2SJDQHJS'),
(509, 'QD9H6CKD7D', '7H5D6S8HAH'),
(510, '8H3C4S2H5H', 'QSQH7S4HAC'),
(511, 'QS3C7S9S4H', '3SAHKS9D7C'),
(512, 'AD5S6S2H2D', '5HTC4S3C8C'),
(513, 'QHTS6S4DJS', 'KSJHAS8S6D'),
(514, '2C8S2STD5H', 'ASTCTS6CKC'),
(515, 'KCTS8H2H3H', '7C4C5STHTD'),
(516, 'KDADKH7H7S', '5D5H5S2D9C'),
(517, 'AD9S3D7S8C', 'QC7C9CKDKS'),
(518, '3CQC9S8C4D', '5CASQD6C2C'),
(519, '2HKC8SJD7S', 'AC8D5C2S4D'),
(520, '9DQH3D2STC', '3SKS3C9HTD'),
(521, 'KD6SAC2C7H', '5H3S6C6H8C'),
(522, 'QHTC8S6SKH', 'TH4H5DTS4D'),
(523, '8CJS4H6H2C', '2H7DACQD3D'),
(524, 'QSKC6S2D5S', '4HTD3HJH4C'),
(525, '7S5H7H8HKH', '6HQSTHKD7D'),
(526, '5HADKD7CKH', '5STD6D3C6C'),
(527, '8C9C5HJD7C', 'KCKH7H2H3S'),
(528, '7S4HAD4D8S', 'QSTH3D7H5S'),
(529, '8DTCKSKD9S', '6DADJD5C2S'),
(530, '7H8H6CQD2H', '6H9DTC9S7C'),
(531, '8D6D4C7C6C', '3CTHKHJSJH'),
(532, '5S3S8SJS9H', 'ASAD8H7SKD'),
(533, 'JH7C2CKC5H', 'ASAD9C9SJS'),
(534, 'ADAC2C6SQD', '7C3HTHKSKD'),
(535, '9DJD4H8H4C', 'KH7STS8CKC'),
(536, '3S5S2H7S6H', '7DKS5C6DAD'),
(537, '5S8C9HQS7H', '7S2H6C7DTD'),
(538, 'QS5STDAC9D', 'KC3DTC2D4D'),
(539, 'TD2H7DJDQD', '4C7H5DKC3D'),
(540, '4C3H8SKDQH', '5SQC9HTC5H'),
(541, '9CQDTH5HTS', '5C9HAHQH2C'),
(542, '4D6S3CAC6C', '3D2C2HTDTH'),
(543, 'AC9C5DQC4D', 'AD8D6D8CKC'),
(544, 'AD3C4HAC8D', '8H7S9STDJC'),
(545, '4H9HQHJS2D', 'THTDTCKDKS'),
(546, '5S6S9S8DTH', 'ASKH5H5C8S'),
(547, 'JD2S9S6S5S', '8S5D7S7H9D'),
(548, '5D8C4C9DAD', 'TS2C7DKDTC'),
(549, '8SQS4DKC5C', '8D4SKHJDKD'),
(550, 'AS5CADQH7D', '2H9S7H7CTC'),
(551, '2S8SJDKH7S', '6C6DAD5DQC'),
(552, '9H6H3S8C8H', 'AHTC4HJSTD'),
(553, '2CTS4D7H2D', 'QC9C5DTH7C'),
(554, '6C8HQC5DTS', 'JH5C5H9H4S'),
(555, '2DQC7HASJS', '8S2H4C4H8D'),
(556, 'JS6SACKD3D', '3C4S7HTHKC'),
(557, 'QHKH6SQS5S', '4H3CQD3S3H'),
(558, '7HASKH8C4H', '9C5S3D6STS'),
(559, '9C7C3H5SQD', '2C3DADAC5H'),
(560, 'JHTD2D4CTS', '3HKHAD3S7S'),
(561, 'AS4C5H4D6S', 'KDJC3C6H2D'),
(562, '3H6S8C2DTH', '4SAHQHAD5H'),
(563, '7C2S9H7HKC', '5C6D5S3HJC'),
(564, '3CTC9C4HQD', 'TDJH6D9H5S'),
(565, '7C6S5C5D6C', '4S7H9H6HAH'),
(566, 'AD2H7DKC2C', '4C2S9S7H3S'),
(567, 'TH4C8S6S3S', 'ADKSASJHTD'),
(568, '5CTD4S4DAD', '6S5DTC9C7D'),
(569, '8H3S4D4S5S', '6H5CAC3H3D'),
(570, '9H3CAC4SQS', '8S9DQH5H4D'),
(571, 'JC6C5HTSAC', '9CJD8C7CQD'),
(572, '8S8H9CJD2D', 'QCQH6H3C8D'),
(573, 'KSJS2H6H5H', 'QHQS3H7C6D'),
(574, 'TC3H4S7HQC', '2H3S8CJSKH'),
(575, 'AH8H5S4C9H', 'JD3H7SJCAC'),
(576, '3C2D4C5S6C', '4SQS3SJD3D'),
(577, '5H2DTCAHKS', '6D7HAD8C6H'),
(578, '6C7S3CJD7C', '8HKSKHAH6D'),
(579, 'AH7D3H8H8S', '7HQS5H9D2D'),
(580, 'JDAC4H7S8S', '9SKSAS9DQH'),
(581, '7S2C8S5SJH', 'QSJCAHKD4C'),
(582, 'AH2S9H4H8D', 'TSTD6HQHJD'),
(583, '4HJC3HQS6D', '7S9C8S9D8D'),
(584, '5HTD4S9S4C', '8C8D7H3H3D'),
(585, 'QSKH3S2C2S', '3C7STD4SQD'),
(586, '7CTD4D5SKH', 'ACAS7H4C6C'),
(587, '2S5H6DJD9H', 'QS8S2C2HTD'),
(588, '2STS6H9H7S', '4HJC4C5D5S'),
(589, '2C5H7D4H3S', 'QHJCJS6D8H'),
(590, '4CQH7CQD3S', 'ADTH8S5STS'),
(591, '9HTC2STDJC', '7D3S3DTHQH'),
(592, '7D4C8S5CJH', '8H6S3SKC3H'),
(593, 'JC3HKHTCQH', 'TH6H2CAC5H'),
(594, 'QS2H9D2CAS', '6S6C2S8C8S'),
(595, '9H7DQCTH4H', 'KDQSAC7S3C'),
(596, '4DJH6S5S8H', 'KS9SQC3SAS'),
(597, 'JD2D6S7STC', '9HKC3H7DKD'),
(598, '2HKH7C4D4S', '3HJSQD7DKC'),
(599, '4CJCAS9D3C', 'JS6C8HQD4D'),
(600, 'AHJS3S6C4C', '3DJH6D9C9H'),
(601, '9H2D8C7H5S', 'KS6H9C2STC'),
(602, '6C8CAD7H6H', '3DKHAS5DTH'),
(603, 'KS8C3STS8S', '4D5S9S6C4H'),
(604, '9H4S4H5C7D', 'KC2D2H9DJH'),
(605, '5CJSTC9D9H', '5H7SKHJC6S'),
(606, '7C9H8H4DJC', 'KHJD2HTDTC'),
(607, '8H6C2H2CKH', '6H9DQSQH5H'),
(608, 'AC7D2S3DQD', 'JC2D8DJDJH'),
(609, '2HJC2D7H2C', '3C8DKDTD4H'),
(610, '3S4H6D8DTS', '3HTD3D6HTH'),
(611, 'JHJC3SACQH', '9H7H8SQC2C'),
(612, '7HTDQS4S8S', '9C2S5D4D2H'),
(613, '3DTS3H2SQC', '8H6HKCJCKS'),
(614, '5DJD7DTC8C', '6C9S3D8DAC'),
(615, '8H6HJH6C5D', '8D8S4HAD2C'),
(616, '9D4H2D2C3S', 'TSASTC3C5D'),
(617, '4DTH5HKSQS', '6C4S2H3DAD'),
(618, '5CKC6H2C5S', '3C4D2D9H9S'),
(619, 'JD4C3HTHQH', '9H5SAH8SAC'),
(620, '7D9S6S2HTD', '9C4H8HQS4C'),
(621, '3C6H5D4H8C', '9CKC6SQDQS'),
(622, '3S9HKDTC2D', 'JS8C6S4H4S'),
(623, '2S4C8SQS6H', 'KH3HTH8C5D'),
(624, '2CKH5S3S7S', '7H6C9DQD8D'),
(625, '8HKSAC2DKH', 'TS6CJSKC7H'),
(626, '9CKS5CTDQC', 'AH6C5H9S7C'),
(627, '5D4D3H4H6S', '7C7SAHQDTD'),
(628, '2H7DQC6STC', 'TSAH7S9D3H'),
(629, 'TH5HQD9SKS', '7S7C6H8CTD'),
(630, 'TH2D4DQC5C', '7DJDAH9C4H'),
(631, '4H3HAH8D6H', 'QCQH9H2H2C'),
(632, '2DAD4CTS6H', '7STH4HQSTD'),
(633, '3CKD2H3HQS', 'JDTCQC5D8H'),
(634, 'KSJCQDTH9S', 'KD8D8C2D9C'),
(635, '3CQDKD6D4D', '8DAHADQC8S'),
(636, '8H3S9D2S3H', 'KS6H4C7CKC'),
(637, 'TH9S5C3D7D', '6HAC7S4D2C'),
(638, '5C3DJD4D2D', '6D5H9H4CKH'),
(639, 'AS7HTD6C2H', '3DQDKS4C4S'),
(640, 'JC3CAC7CJD', 'JS8H9SQC5D'),
(641, 'JD6S5S2HAS', '8C7D5HJH3D'),
(642, '8DTC5S9S8S', '3HJC5H7SAS'),
(643, '5CTD3D7D4H', '8D7H4D5DJS'),
(644, 'QS9CKSTD2S', '8S5C2H4HAS'),
(645, 'TH7S4H7D3H', 'JDKD5D2SKC'),
(646, 'JD7H4S8H4C', 'JS6HQH5S4H'),
(647, '2CQS8C5S3H', 'QC2S6CQDAD'),
(648, '8C3DJDTC4H', '2HAD5SAC2S'),
(649, '5D2CJS2DAD', '9D3D4C4SJH'),
(650, '8D5H5D6H7S', '4DKS9DTDJD'),
(651, '3D6D9C2SAS', '7D5S5C8HJD'),
(652, '7C8S3S6S5H', 'JDTCAD7H7S'),
(653, '2S9DTS4DAC', '8D6CQDJD3H'),
(654, '9SKH2C3CAC', '3D5H6H8D5D'),
(655, 'KS3D2D6SAS', '4C2S7C7HKH'),
(656, 'AC2H3SJC5C', 'QH4D2D5H7S'),
(657, 'TSASJD8C6H', 'JC8S5S2C5D'),
(658, '7SQH7H6CQC', '8H2D7CJD2S'),
(659, '2CQD2S2HJC', '9C5D2DJDJH'),
(660, '7C5C9C8S7D', '6D8D6C9SJH'),
(661, '2CAD6S5H3S', 'KS7S9DKH4C'),
(662, '7H6C2C5CTH', '9D8D3SQCAH'),
(663, '5SKC6HTC5H', '8STH6D3CAH'),
(664, '9CKD4HADTD', '9S4S7D6H5D'),
(665, '7H5C5H6DAS', '4CKDKH4H9D'),
(666, '3C2S5C6CJD', 'QS2H9D7D3H'),
(667, 'AC2S6S7SJS', 'QD5CQS6HAD'),
(668, '5HTHQC7HTC', '3S7C6DKC3D'),
(669, '4H3DQC9S8H', '2C3SJCKS5C'),
(670, '4S6S2C6H8S', '3S3D9H3HJS'),
(671, '4S8C4D2D8H', '9H7D9DAHTS'),
(672, '9S2C9H4C8D', 'AS7D3D6D5S'),
(673, '6S4C7H8C3H', '5HJCAH9D9C'),
(674, '2S7C5SJD8C', '3S3D4D7D6S'),
(675, '3CKC4S5D7D', '3DJD7H3H4H'),
(676, '9C9H4H4DTH', '6DQD8S9S7S'),
(677, '2HAC8S4SAD', '8C2CAH7DTC'),
(678, 'TS9H3CADKS', 'TC3D8C8HJD'),
(679, 'QC8D2C3C7D', '7CJD9H9C6C'),
(680, 'AH6SJSJH5D', 'ASQC2CJDTD'),
(681, '9HKD2H5D2D', '3S7DTCAHTS'),
(682, 'TD8HAS5DAH', 'QCAC6STC5H'),
(683, 'KS4S7H4D8D', '9CTC2H6H3H'),
(684, '3HKD4SQDQH', '3D8H8CTD7S'),
(685, '8SJDTCAHJS', 'QS2DKHKS4D'),
(686, '3CADJCKDJS', 'KH4STH9H2C'),
(687, 'QC5SJS9SKS', 'AS7CQD2SJD'),
(688, 'KC5SQS3S2D', 'AC5D9H8HKS'),
(689, '6H9CTCAD2C', '6D5SJD6C7C'),
(690, 'QSKHTDQD2C', '3H8S2SQCAH'),
(691, '9D9HJHTCQH', '3C2SJS5C7H'),
(692, '6C3S3D2S4S', 'QD2DTH5D2C'),
(693, '2D6H6D2SJC', 'QHAS7H4HKH'),
(694, '5H6SKSADTC', 'TS7CAC4S4H'),
(695, 'AD3C4HQS8C', '9DKS2H2D4D'),
(696, '4S9D6C6D9C', 'AC8D3H7HKD'),
(697, 'JCAH6CTSJD', '6DAD3S5DQD'),
(698, 'JCJHJD3S7S', '8SJSQC3H4S'),
(699, 'JDTH5C2CAD', 'JS7H9S2H7S'),
(700, '8D3SJH4DQC', 'ASJD2CKC6H'),
(701, '2CAC5HKD5S', '7HQDJHAH2D'),
(702, 'JCQH8D8STC', '5H5CAH8C6C'),
(703, '3HJS8SQDJH', '3C4H6D5C3S'),
(704, '6D4S4CAH5H', '5S3HJD7C8D'),
(705, '8HAH2H3HJS', '3C7DQC4HKD'),
(706, '6S2HKD5H8H', '2D3C8S7SQD'),
(707, '2S7SKCQCAH', 'TCQS6D4C8D'),
(708, '5S9H2C3SQD', '7S6C2H7C9D'),
(709, '3C6C5C5SJD', 'JCKS3S5DTS'),
(710, '7CKS6S5S2S', '2DTC2H5HQS'),
(711, 'AS7H6STS5H', '9S9D3CKD2H'),
(712, '4SJSQS3S4H', '7C2SAC6S9D'),
(713, '8CJH2H5H7C', '5DQHQSKHQC'),
(714, '3STD3H7CKC', '8D5H8SKH8C'),
(715, '4HKHJDTS3C', '7HASQCJS5S'),
(716, 'AH9D2C8D4D', '2D6H6CKC6S'),
(717, '2S6H9D3S7H', '4DKH8HKD3D'),
(718, '9CTCACJHKH', '4DJD5HTD3S'),
(719, '7S4H9DAS4C', '7DQS9S2SKH'),
(720, '3S8D8SKS8C', 'JC5CKH2H5D'),
(721, '8SQH2C4DKC', 'JSQC9DAC6H'),
(722, '8S8C7CJSJD', '6S4C9CAC4S'),
(723, 'QH5D2C7DJC', '8S2DJSJH4C'),
(724, 'JS4C7STSJH', 'KCKH5HQD4S'),
(725, 'QD8C8D2D6S', 'TD9DACQH5S'),
(726, 'QHQCJS3D3C', '5C4HKH8S7H'),
(727, '7C2C5SJC8S', '3HQC5D2HKC'),
(728, '5S8DKD6H4H', 'QDQH6DAH3D'),
(729, '7SKS6C2S4D', 'ACQS5HTSJD'),
(730, '7C2DTC5DQS', 'ACJSQC6CKC'),
(731, '2CKS4D3HTS', '8SAD4H7S9S'),
(732, 'QD9HQH5H4H', '4DKH3SJCAD'),
(733, '4DACKC8D6D', '4C2DKH2CJD'),
(734, '2C9H2DAH3H', '6D9C7DTCKS'),
(735, '8C3HKD7C5C', '2S4S5HASAH'),
(736, 'THJD4HKD3H', 'TC5C3SACKH'),
(737, '6D7HAH7SQC', '6H2DTDJDAS'),
(738, 'JH5D7HTC9S', '7DJCAS5SKH'),
(739, '2H8CADTH6H', 'QDKD9H6S6C'),
(740, 'QHKC9D4D3S', 'JSJH4H2C9H'),
(741, 'TC7HKH4HJC', '7D9S3HQS7S'),
(742, 'AD7DJH6C7H', '4H3S3H4DQH'),
(743, 'JD2H5CAS6C', 'QC4D3CTCJH'),
(744, 'ACJD3H6H4C', 'JCAD7D7H9H'),
(745, '4HTCTS2C8C', '6SKS2HJD9S'),
(746, '4C3HQSQC9S', '9H6DKC9D9C'),
(747, '5CAD8C2CQH', 'THQDJC8D8H'),
(748, 'QC2C2SQD9C', '4D3S8DJHQS'),
(749, '9D3S2C7S7C', 'JCTD3CTC9H'),
(750, '3CTS8H5C4C', '2C6S8D7C4H'),
(751, 'KS7H2HTC4H', '2C3SASAHQS'),
(752, '8C2D2H2C4S', '4C6S7D5S3S'),
(753, 'THQC5DTD3C', 'QSKDKCKSAS'),
(754, '4DAHKD9HKS', '5C4C6HJC7S'),
(755, 'KC4H5CQSTC', '2HJC9SAHQH'),
(756, '4S9H3H5H3C', 'QD2HQCJH8H'),
(757, '5DAS7H2C3D', 'JH6H4C6S7D'),
(758, '9CJD9HAHJS', '8SQH3HKS8H'),
(759, '3SACQCTS4D', 'AD3DAH8S9H'),
(760, '7H3HQS9C9S', '5HJHJSAHAC'),
(761, '8D3CJD2HAC', '9C7H5S4D8H'),
(762, '7CJH9H6CJS', '9S7H8C9D4H'),
(763, '2DAS9S6H4D', 'JSJH9HADQD'),
(764, '6H7SJHKHAH', '7HTD5S6S2C'),
(765, '8HJH6S5H5S', '9DTC4CQC9S'),
(766, '7D2CKD3H5H', 'ASQD7HJS4D'),
(767, 'TSQH6C8HTH', '5H3C3H9C9D'),
(768, 'ADKHJS5D3H', 'ASAC9S5CKC'),
(769, '2CKH8CJCQS', '6DAH2DKCTC'),
(770, '9D3H2S7C4D', '6DKHKS8D7D'),
(771, '9H2STCJHAC', 'QC3H5S3S8H'),
(772, '3SASKD8H4C', '3H7CJHQHTS'),
(773, '7S6D7H9DJH', '4C3D3S6CAS'),
(774, '4S2H2C4C8S', '5HKC8CQCQD'),
(775, '3H3S6CQSQC', '2D6S5D2C9D'),
(776, '2H8DJH2S3H', '2D6C5C7SAD'),
(777, '9HJS5DQH8S', 'TS2H7S6SAD'),
(778, '6DQC9S7H5H', '5C7DKCJD4H'),
(779, 'QC5S9H9C4D', '6SKS2S4C7C'),
(780, '9H7C4H8D3S', '6H5C8HJS7S'),
(781, '2D6HJSTD4H', '4DJCTH5HKC'),
(782, 'AC7C8DTH3H', '9S2D4CKC4D'),
(783, 'KDQS9C7S3D', 'KSADTS4C4H'),
(784, 'QH9C8H2S7D', 'KS7H5DKD4C'),
(785, '9C2S2HJC6S', '6CTCQCJH5C'),
(786, '7SAC8HKC8S', '6HQSJC3D6S'),
(787, 'JS2DJH8C4S', '6H8H6D5DAD'),
(788, '6H7D2S4H9H', '7CASAC8H5S'),
(789, '3CJS4S6D5H', '2SQH6S9C2C'),
(790, '3D5S6S9S4C', 'QS8DQD8STC'),
(791, '9C3DAH9H5S', '2C7DADJC3S'),
(792, '7HTCAS3C6S', '6D7SKHKC9H'),
(793, '3STC8H6S5H', 'JH8C7DAC2S'),
(794, 'QD9D9C3SJC', '8CKS8H5D4D'),
(795, 'JSAHJD6D9D', '8C9H9S8H3H'),
(796, '2D6S4C4D8S', 'AD4STCAH9H'),
(797, 'TSACQCTHKC', '6D4H7S8C2H'),
(798, '3CQDJS9D5S', 'JCAH2HTS9H'),
(799, '3H4DQH5D9C', '5H7D4SJC3S'),
(800, '8STH3H7C2H', 'JDJSTSAC8D'),
(801, '9C2HTDKCJD', '2S8C5SAD2C'),
(802, '3DKD7C5H4D', 'QHQDTC6H7D'),
(803, '7H2CKC5SKD', '6HAHQC7SQH'),
(804, '6H5CAC5H2C', '9C2D7CTD2S'),
(805, '4D9DAH3D7C', 'JD4H8C4CKS'),
(806, 'TH3CJSQH8H', '4CAS3DQSQC'),
(807, '4D7S5HJH6D', '7D6HJSKH3C'),
(808, 'QD8S7D2H2C', '7CJC2S5H8C'),
(809, 'QH8S9DTC2H', 'AD7C8DQD6S'),
(810, '3S7CAD9H2H', '9SJDTS4C2D'),
(811, '3SAS4HQC2C', '8H8S7STDTC'),
(812, 'JHTHTD3S4D', '4H5S5DQS2C'),
(813, '8CQDQHTC6D', '4S9S9D4HQC'),
(814, '8CJS9D6HJD', '3HAD6STDQC'),
(815, 'KC8S3D7CTD', '7D8D9H4S3S'),
(816, '6C4S3D9DKD', 'TCKCKSAC5S'),
(817, '7C6SQH3DJS', 'KD6H6D2D8C'),
(818, 'JD2S5S4H8S', 'AC2D6STS5C'),
(819, '5H8C5S3C4S', '3D7C8DAS3H'),
(820, 'ASTS7C3HAD', '7DJCQS6C6H'),
(821, '3S9S4CACQH', '5H5D9HTS4H'),
(822, '6C5C7H7STD', 'ADJD5S2H2S'),
(823, '7D6CKC3SJD', '8D8STSQSKH'),
(824, '8SQS8D6CTH', 'ACAH2C8H9S'),
(825, '7HTDKHQH8S', '3D4DAHJDAS'),
(826, 'TS3D2HJC2S', 'JHKH6CQCJS'),
(827, 'KCTH2D6H7S', '2STC8C9DQS'),
(828, '3C9D6SKH8H', '6D5DTH2C2H'),
(829, '6HTC7DAD4D', '8STS9HTD7S'),
(830, 'JS6DJDJC2H', 'AC6C3DKH8D'),
(831, 'KHJD9S5D4H', '4C3H7SQS5C'),
(832, '4HJD5D3S3C', '4DKHQHQS7S'),
(833, 'JDTS8SQDAH', '4C6H3S5S2C'),
(834, 'QS3DJDAS8D', 'TH7C6SQCKS'),
(835, '7S2H8CQC7H', 'AC6D2DTHKH'),
(836, '5S6C7HKH7D', 'AH8C5C7S3D'),
(837, '3CKDAD7D6C', '4DKS2D8C4S'),
(838, '7C8D5S2D2S', 'AHAD2C9DTD'),
(839, '3CAD4SKSJH', '7C5C8C9CTH'),
(840, 'ASTD4D7CJD', '8CQH3C5H9S'),
(841, '3H9C8S9S6S', 'QDKSAH5HJH'),
(842, 'QC9C5S4H2H', 'TD7DAS8C9D'),
(843, '8C2C9DKDTC', '7S3DKHQC3C'),
(844, '4DAS4CQS5S', '9D6SJDQHKS'),
(845, '6DAH6C4C5H', 'TS9H7D3D5S'),
(846, 'QSJD7C8D9C', 'AC3S6S6CKH'),
(847, '8HJH5D9S6D', 'AS6S3SQC7H'),
(848, 'QDAD5CJH2H', 'AH4HASKC2C'),
(849, 'JH9C2C6H2D', 'JS5D9HKC6D'),
(850, '7D9DKDTH3H', 'AS6SQC6HAD'),
(851, 'JD4H7DKC3H', 'JS3CTH3DQS'),
(852, '4C3H8CQD5H', '6HAS8HADJD'),
(853, 'TH8SKD5DQC', '7DJS5S5HTS'),
(854, '7DKC9DQS3H', '3C6DTS7SAH'),
(855, '7C4H7HAHQC', 'AC4D5D6DTH'),
(856, '3C4H2SKD8H', '5HJHTC6CJD'),
(857, '4S8C3D4HJS', 'TD7SJHQSKD'),
(858, '7CQCKD4D7H', '6SADTDTCKH'),
(859, '5H9HKC3H4D', '3DAD6SQD6H'),
(860, 'TH7C6HTSQH', '5S2CKCTD6S'),
(861, '7C4D5SJDJH', '7DACKDKH4H'),
(862, '7D6C8D8H5C', 'JH8SQDTHJD'),
(863, '8D7D6C7C9D', 'KDAS5CQHJH'),
(864, '9S2C8C3C4C', 'KSJH2D8D4H'),
(865, '7S6CJHKH8H', '3H9D2DAH6D'),
(866, '4DTC9C8D7H', 'TDKSTHKD3C'),
(867, 'JD9H8DQDAS', 'KD9D2C2S9C'),
(868, '8D3H5C7HKS', '5HQH2D8C9H'),
(869, '2DTH6DQD6C', 'KC3H3SAD4C'),
(870, '4H3HJS9D3C', 'TC5HQHQCJC'),
(871, '3D5C6H3S3C', 'JC5S7S2SQH'),
(872, 'AC5C8C4D5D', '4H2SQD3C3H'),
(873, '2CTDAH9CKD', 'JS6SQD4CQC'),
(874, 'QS8C3S4HTC', 'JS3H7CJCAD'),
(875, '5H4D9CKSJC', 'TD9STS8S9H'),
(876, 'QDTS7DASAC', '2CTD6H8HAH'),
(877, '6SAD8C4S9H', '8D9DKH8S3C'),
(878, 'QS4D2D7SKH', 'JSJCAD4C3C'),
(879, 'QS9S7HKCTD', 'TH5HJSACJH'),
(880, '6DAC2SQS7C', 'ASKS6SKH5S'),
(881, '6D8HKH3CQS', '2H5C9C9D6C'),
(882, 'JS2C4C6H7D', 'JCACQDTD3H'),
(883, '4HQC8HJD4C', 'KDKS5CKC7S'),
(884, '6D2D3H2SQD', '5S7HASTH6S'),
(885, 'AS6D8D2C8S', 'TD8HQDJCAH'),
(886, '9C9H2DTDQH', '2H5CTC3D8H'),
(887, 'KC8S3DKH2S', 'TSTC6S4DJH'),
(888, '9H9DQSACKC', '6H5D4D8DAH'),
(889, '9S5CQS4H7C', '7D2H8SADJS'),
(890, '3DAC9SAS2C', '2D2H3HJCKH'),
(891, '7HQHKHJDTC', 'KS5S8H4C8D'),
(892, '2H7H3S2S5H', 'QS3CAS9HKD'),
(893, 'AD3DJD6H5S', '9C6DAC9S3S'),
(894, '3D5D9C2DAC', '4S2SAD6C6S'),
(895, 'QC4C2D3H6S', 'KCQHQD2HJH'),
(896, 'QC3C8S4D9S', '2H5C8HQSQD'),
(897, '6DKD6S7H3S', 'KH2H5CJC6C'),
(898, '3S9STC6S8H', '2DAD7S8STS'),
(899, '3C6H9C3H5C', 'JC8HQHTDQD'),
(900, '3CJSQD5DTD', '2CKH9HTHAS'),
(901, '9STCJD3D5C', '5HADQH9HKC'),
(902, 'TC7H4H8H3H', 'TD6SAC7C2S'),
(903, 'QS9D5D3CJC', 'KS4D6CJH2S'),
(904, '9S6S3C7HTS', '4CKD6D3D9C'),
(905, '2D9HAHAC7H', '2SJH3S7CQC'),
(906, 'QD9H3C2HAC', 'AS8SKD8CKH'),
(907, '2D7STDTH6D', 'JD8D4D2H5S'),
(908, '8SQHKDJDQS', 'JH4DKC5H3S'),
(909, '3CKHQC6D8H', '3SAH7DTD2D'),
(910, '5S9HQH4S6S', '6C6DTSTH7S'),
(911, '6C4C6DQSJS', '9CTS3H8D8S'),
(912, 'JS5C7SAS2C', 'AH2HAD5STC'),
(913, 'KD6C9C9DTS', '2SJC4H2CQD'),
(914, 'QS9HTC3HKC', 'KS4H3CADTH'),
(915, 'KH9C2HKD9D', 'TC7SKCJH2D'),
(916, '7C3SKCAS8C', '5D9C9SQH3H'),
(917, '2D8CTD4C2H', 'QC5DTC2C7D'),
(918, 'KS4D6CQHTD', 'KH5D7CAD8D'),
(919, '2S9S8S4C8C', '3D6HQD7C7H'),
(920, '6C8SQH5HTS', '5C3C4S2S2H'),
(921, '8S6S2HJC3S', '3H9D8C2S7H'),
(922, 'QC2C8H9CAC', 'JD4C4H6S3S'),
(923, '3H3S7D4C9S', '5H8HJC3DTC'),
(924, 'QH2S2D9SKD', 'QD9HAD6D9C'),
(925, '8D2DKS9SJC', '4CJDKC4STH'),
(926, 'KHTS6D4D5C', 'KD5HAS9HAD'),
(927, 'QDJS7C6D5D', '5CTH5HQHQS'),
(928, '9DQHKH5HJH', '4C4DTCTH6C'),
(929, 'KHASTS9DKD', '9C7S4D8H5S'),
(930, 'KHAS2S7D9D', '4CTSTHAH7C'),
(931, 'KS4DAC8S9S', '8DTHQH9D5C'),
(932, '5D5C8CQSTC', '4C3D3S2C8D'),
(933, '9DKS2D3CKC', '4S8CKH6CJC'),
(934, '8HAH6H7D7S', 'QD3C4C6CKC'),
(935, '3H2CQH8HAS', '7D4C8C4HKC'),
(936, 'QD5S4H2CTD', 'AHJHQH4C8S'),
(937, '3HQS5SJS8H', '2S9H9C3S2C'),
(938, '6HTS7SJCQD', 'ACTDKC5S3H'),
(939, 'QHASQS7DJC', 'KC2C4C5C5S'),
(940, 'QH3DASJS4H', '8D7HJC2S9C'),
(941, '5D4D2S4S9D', '9C2DQS8H7H'),
(942, '6D7H3HJSTS', 'AC2DJH7C8S'),
(943, 'JH5HKC3CTC', '5S9H4C8H9D'),
(944, '8SKC5H9HAD', 'KS9DKH8DAH'),
(945, 'JC2H9HKS6S', '3HQC5HAH9C'),
(946, '5CKH5SAD6C', 'JC9HQC9CTD'),
(947, '5S5DJCQH2D', 'KS8HQS2HTS'),
(948, 'JH5H5SAH7H', '3C8SASTDKH'),
(949, '6H3DJD2C4C', 'KC7SAH6CJH'),
(950, '4CKS9DAD7S', 'KC7D8H3S9C'),
(951, '7H5C5H3C8H', 'QC3DKH6DJC'),
(952, '2D4H5D7DQC', 'ADAH9HQH8H'),
(953, 'KD8CJS9D3S', '3C2H5D6D2S'),
(954, '8S6STS3C6H', '8D5S3HTD6C'),
(955, 'KS3DJH9C7C', '9SQS5S4H6H'),
(956, '7S6STH4SKC', 'KD3SJCJHKS'),
(957, '7C3C2S6DQH', '2C7S5H8HAH'),
(958, 'KC8DQD6DKH', '5C7H9D3D9C'),
(959, '6H2D8SJS9S', '2S6DKC7CTC'),
(960, 'KD9CJH7HKC', '8S2S7S3D6H'),
(961, '4H9H2D4C8H', '7H5S8S2H8D'),
(962, 'AD7C3C7S5S', '4D9H3DJCKH'),
(963, '5DAS7D6D9C', 'JC4CQHQSKH'),
(964, 'KDJD7D3DQS', 'QC8S6DJSQD'),
(965, '6S8C5SQHTH', '9HASAC2CJD'),
(966, 'QCKSQH7S3C', '4C5CKC5DAH'),
(967, '6C4H9DAH2C', '3HKD3DTS5C'),
(968, 'TD8SQSASJS', '3HKDAC4HKS'),
(969, '7D5DTS9H4H', '4C9C2H8CQC'),
(970, '2C7D9H4DKS', '4CQHADKDJS'),
(971, 'QDADAHKH9D', 'JS9HJCKDJD'),
(972, '8S3C4STS7S', '4D5C2S6H7C'),
(973, 'JS7S5CKD6D', 'QH8STD2H6S'),
(974, 'QH6CTC6HTD', '4C9D2HQC8H'),
(975, '3DTS4D2H6H', '6S2C7H8S6C'),
(976, '9H9DJDJH3S', 'AH2C6S3H8S'),
(977, '2CQS8C5S3H', '2S7D3CAD4S'),
(978, '5CQCQHASTS', '4S6S4C5HJS'),
(979, 'JH5CTD4C6H', 'JSKDKHQS4H'),
(980, 'TCKHJC4D9H', '9D8DKC3C8H'),
(981, '2HTC8SAD9S', '4HTS7H2C5C'),
(982, '4H2S6C5SKS', 'AH9C7C8HKD'),
(983, 'TSQHTDQS3C', 'JHAH2C8D7D'),
(984, '5DKC3H5SAC', '4S7HQS4C2H'),
(985, '3D7DQCKHJH', '6D6CTDTHKD'),
(986, '5S8DTH6C9D', '7DKH8C9S6D'),
(987, 'JDQS7SQC2S', 'QHJC4SKS8D'),
(988, '7S5S9SJDKD', '9CJCAD2D7C'),
(989, '4S5HAHJH9C', '5DTD7C2D6S'),
(990, 'KC6C7H6S9C', 'QD5S4HKSTD'),
(991, '6S8DKS2DTH', 'TD9HJDTS3S'),
(992, 'KHJS4H5D9D', 'TCTDQCJDTS'),
(993, 'QSQDACAD4C', '6S2DAS3HKC'),
(994, '4C7C3CTDQS', '9CKCAS8DAD'),
(995, 'KC7HQC6D8H', '6S5SAH7S8C'),
(996, '3SAD9HJC6D', 'JDASKH6SJH'),
(997, 'AD3DTSKS7H', 'JH2DJSQDAC'),
(998, '9CJD7C6DTC', '6H6CJC3D3S'),
(999, 'QCKC3SJCKD', '2C8DAHQSTS'),
(1000, 'ASKD3DJD8H', '7C8C5CQD6C');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(12) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `age` smallint(3) UNSIGNED NOT NULL,
  `avatar` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roletype` enum('admin','editor','user') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `age`, `avatar`, `password`, `roletype`) VALUES
(1, 'John', 'user@user.com', 20, NULL, '$2y$10$FYFwDCC5lKX17lPKUrPYr.q9yugIThQMwRPP4MOkrP1XC5zTzyCii', 'user'),
(2, 'Admin', 'admin@admin.com', 45, NULL, '$2y$10$BDIbgrV9XjIGfU9deW.cvujTNCCOHVHBgfGMqHh0BEUex/M9D/I32', 'admin');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `card_hands`
--
ALTER TABLE `card_hands`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_email` (`email`),
  ADD KEY `i_username` (`username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `card_hands`
--
ALTER TABLE `card_hands`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
