-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 29 mars 2019 à 15:10
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `micro`
--

-- --------------------------------------------------------

--
-- Structure de la table `accessoiresimprimante`
--

DROP TABLE IF EXISTS `accessoiresimprimante`;
CREATE TABLE IF NOT EXISTS `accessoiresimprimante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `tva_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A0ED0F3B4D79775F` (`tva_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `accessoires_telephone`
--

DROP TABLE IF EXISTS `accessoires_telephone`;
CREATE TABLE IF NOT EXISTS `accessoires_telephone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `tva_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E58C9D9C4D79775F` (`tva_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `appareil_fax`
--

DROP TABLE IF EXISTS `appareil_fax`;
CREATE TABLE IF NOT EXISTS `appareil_fax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tva_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_329F9E7B4D79775F` (`tva_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cartememoire`
--

DROP TABLE IF EXISTS `cartememoire`;
CREATE TABLE IF NOT EXISTS `cartememoire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `tva_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A5D3C1A54D79775F` (`tva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `cartememoire`
--

INSERT INTO `cartememoire` (`id`, `titre`, `description`, `prix`, `disponible`, `tva_id`, `path`) VALUES
(11, 'CARTE MÉMOIRE ADATA 8G', 'CARTE MÉMOIRE ADATA 8G', 17.55, 0, 7, '1a.png'),
(12, 'CARTE MÉMOIRE SANDISK 16G', 'CARTE MÉMOIRE SANDISK 16G', 22.1, 0, 7, '2d.jpg'),
(13, 'CARTE MÉMOIRE SY-T68 Micro-SD / T-FLASH', 'CARTE MÉMOIRE SY-T68 Micro-SD / T-FLASH', 2.6, 0, 7, '67.png'),
(14, 'CARTE MÉMOIRE SY-368', 'CARTE MÉMOIRE SY-368', 3.51, 0, 7, '68.png'),
(15, 'CARTE MÉMOIRE SY-368', 'CARTE MÉMOIRE SY-368', 4.81, 0, 7, '69.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `cartouchesimprimante`
--

DROP TABLE IF EXISTS `cartouchesimprimante`;
CREATE TABLE IF NOT EXISTS `cartouchesimprimante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `tva_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B76383244D79775F` (`tva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `cartouchesimprimante`
--

INSERT INTO `cartouchesimprimante` (`id`, `titre`, `description`, `prix`, `disponible`, `tva_id`, `path`) VALUES
(6, 'CE285AD', 'HP 85A 2-pack Black Original LaserJet Toner Cartridges', 383.89, 1, 8, '1c.png'),
(7, 'CB435AD', 'HP 35A 2-pack Black Original LaserJet Toner Cartridges', 379.99, 1, 8, '2c.jpg'),
(8, 'CB540AD', 'HP CLJ CB540A Dual Pack Print', 449.93, 1, 8, '4c.png'),
(9, 'CB436AD', 'HP 36A 2-pack Black Original LaserJet Toner Cartridges', 436.8, 1, 8, '3c.png'),
(10, 'CC530AD', 'HP DUAL PACK pour CP2025', 547.56, 1, 8, '5c.jpg'),
(11, 'CE255XD', 'HP LaserJet P3015 Dual Pack', 1297.79, 1, 8, '6c.png'),
(12, 'CE278AD', '78A BlfYack Dual Pack LJ Toner', 447.85, 1, 8, '7c.png'),
(13, 'CE310AD', 'HP 126A Black Dual', 404.17, 1, 8, '8c.png'),
(14, 'CE320AD', 'HP 128A Black Dual Pk LJ', 404.17, 1, 8, '9c.png'),
(15, 'CE505D', 'HP 05A Black LaserJet Toner', 505.96, 1, 8, '10c.png'),
(16, 'CF210XD', 'HP 131X 2-pack High Yield', 493.74, 1, 8, '11c.png'),
(17, 'CF280XD', 'HP 80X Black Dual Pk LJ Toner', 1008.28, 1, 8, '12c.png'),
(18, 'CF283AD', 'HP 83A 2-pack Black Origina', 365.3, 1, 8, '13c.png'),
(19, 'CF370AM', 'HP 305A CYM Tri-Pack LJ Toner', 1022.45, 1, 8, '14c.png'),
(20, 'CF371AM', 'HP 128A CYM Tri-Pack LJ Toner', 576.81, 1, 8, '15c.png'),
(21, 'CF372AM', 'HP 304A CYM Tri-Pack LJ Toner', 1040.91, 1, 8, '16c.png'),
(22, 'CF373AM', 'HP 125A CYM Tri-Pack LJ Toner', 620.34, 1, 8, '17c.jpg'),
(23, 'CF440AM', 'HP 312A 3-pack CYM Original', 1048.71, 1, 8, '18c.png'),
(24, 'U0SL1AM', 'HP 131A CYM Tri-pack LaserJet', 730.86, 1, 8, '19c.png'),
(25, 'C9351AE', 'HP 21 Black Original Ink Cartridge', 57.2, 1, 8, '20c.png'),
(26, 'C9352AE', 'HP 22 Tri-color Original Ink Cartridge', 75.66, 1, 8, '21c.png'),
(27, 'C9364HE', 'HP 129 Black Original Ink Cartridge', 89.7, 1, 8, '22c.png'),
(28, 'C9504HE', 'HP 130 2-pack Black Original Ink Cartridges', 232.05, 1, 8, '23c.png'),
(29, 'CD971AE', 'HP 920 Black Original Ink Cartridge', 65.78, 1, 8, '24c.png'),
(30, 'CD972AE', 'HP 920XL High Yield Cyan Original Ink Cartridge', 49.01, 1, 8, '25c.png'),
(31, 'CD973AE', 'HP 920XL High Yield Magenta Original Ink Cartridge', 49.01, 1, 8, '26c.png'),
(32, 'CD974AE', 'HP 920XL High Yield Yellow Original Ink Cartridge', 49.01, 1, 8, '27c.png'),
(33, 'CD975AE', 'HP 920XL High Yield Black Original Ink Cartridge', 117.78, 1, 8, '28c.png'),
(34, 'F6V24AE', 'HP 652 Tri-color Original Ink Advantage Cartridge', 30.94, 1, 8, '31c.png'),
(35, 'F6V25AE', 'HP 652 Black Original Ink Advantage Cartridge', 36.27, 1, 8, '30c.png'),
(36, 'CN045AE', 'HP 950XL High Yield Black Original Ink Cartridge', 116.61, 1, 8, '31c.png'),
(37, 'CN046AE', 'HP 951XL High Yield Cyan Original Ink Cartridge', 87.75, 1, 8, '32c.png'),
(38, 'CN047AE', 'HP 951XL High Yield Magenta Original Ink Cartridge', 87.75, 1, 8, '33c.jpg'),
(39, 'CN048AE', 'HP 951XL High Yield Yellow Original Ink Cartridge', 87.75, 1, 8, '34c.png'),
(40, 'CN053AE', 'HP 932XL High Yield Black Original Ink Cartridge', 96.2, 1, 8, '35c.png'),
(41, 'CN054AE', 'HP 933XL High Yield Cyan Original Ink Cartridge', 47.71, 1, 8, '36c.png'),
(42, 'CN055AE', 'HP 933XL High Yield Magenta Original Ink Cartridge', 47.71, 1, 8, '37c.png'),
(43, 'CN056AE', 'HP 933XL High Yield Yellow Original Ink Cartridge', 47.71, 1, 8, '38c.png'),
(44, 'CN057AE', 'HP 932 Black Original Ink Cartridge', 58.89, 1, 8, '39c.png'),
(45, 'CR340HE', 'HP 122 2-pack Black/Tri-color Original Ink Cartridges', 68.64, 1, 8, '40c.png'),
(46, 'L0R95AE', 'HP 913A Black Original PageWide Cartridge', 227.76, 1, 8, '41c.png'),
(47, 'F6T77AE', 'HP 913A Cyan Original PageWide Cartridge', 234.26, 1, 8, '42c.png'),
(48, 'F6T78AE', 'HP 913A Magenta Original PageWide Cartridge', 234.26, 1, 8, '43c.png'),
(49, 'F6T79AE', 'HP 913A Yellow Original PageWide Cartridge', 234.26, 1, 8, '44c.png'),
(50, 'L0R16A', 'HP 981Y Extra High Yield Black Original PageWide Cartridge', 487.11, 1, 8, '45c.png'),
(51, 'CZ101AE', 'HP 650 Black Original Ink Advantage Cartridge', 33.02, 1, 8, '46c.png'),
(52, 'CZ102AE', 'HP 650 Tri-color Original Ink Advantage Cartridge', 28.08, 1, 8, '47c.png'),
(53, 'CH561HE', 'HP 122 Black Original Ink Cartridge', 34.06, 1, 8, '48c.png'),
(54, 'CH562HE', 'HP 122 Tri-color Original Ink Cartridge', 40.56, 1, 8, '49c.png'),
(55, 'CH563HE', 'HP 122XL High Yield Black Original Ink Cartridge', 99.45, 1, 8, '50c.png'),
(56, 'CH564HE', 'HP 122XL High Yield Tri-color Original Ink Cartridge', 99.45, 1, 8, '51c.png'),
(57, 'CC364A', 'HP 64A Black Original LaserJet Toner Cartridge', 536.25, 1, 8, '52c.png'),
(58, 'CE255A', 'HP 55A Black Original LaserJet Toner Cartridge', 455, 1, 8, '53c.png'),
(59, 'CE390A', 'HP 90A Black Original LaserJet Toner Cartridge', 536.12, 1, 8, '54c.jpg'),
(60, 'CE400A', 'HP 507A Black Original LaserJet Toner Cartridge', 462.15, 1, 8, '55c.png'),
(61, 'CE401A', 'HP 507A Cyan Original LaserJet Toner Cartridge', 688.81, 1, 8, '56c.png'),
(62, 'CE402A', 'HP 507A Yellow Original LaserJet Toner Cartridge', 688.81, 1, 8, '57c.png'),
(63, 'CE403A', 'HP 507A Magenta Original LaserJet Toner Cartridge', 688.81, 1, 8, '58c.png'),
(64, 'CE410A', 'HP 305A Black Original LaserJet Toner Cartridge', 260.91, 1, 8, '59c.png'),
(65, 'CE740A', 'HP 307A Black Original LaserJet Toner Cartridge', 469.43, 1, 8, '60c.png'),
(66, 'CE741A', 'HP 307A Cyan Original LaserJet Toner Cartridge', 826.8, 1, 8, '61c.png'),
(67, 'CE742A', 'HP 307A Yellow Original LaserJet Toner Cartridge', 826.8, 1, 8, '62c.png'),
(68, 'CE743A', 'HP 307A Magenta Original LaserJet Toner Cartridge', 826.8, 1, 8, '63c.png'),
(69, 'CF226A', 'HP 26A Black Original LaserJet Toner Cartridge', 357.37, 1, 8, '64c.png'),
(70, 'CF280A', 'HP 80A Black Original LaserJet Toner Cartridge', 319.28, 1, 8, '65c.png'),
(71, 'CF281A', 'HP 81A Black Original LaserJet Toner Cartridge', 531.31, 1, 8, '66c.png'),
(72, 'CF287A', 'HP 87A Black Original LaserJet Toner Cartridge', 669.5, 1, 8, '67c.png'),
(73, 'CF360A', 'HP 508A Black Original LaserJet Toner Cartridge', 478.92, 1, 8, '68c.png'),
(74, 'CF361A', 'HP 508A Cyan Original LaserJet Toner Cartridge', 600.47, 1, 8, '69c.png'),
(75, 'CF362A', 'HP 508A Yellow Original LaserJet Toner Cartridge', 600.47, 1, 8, '70c.png'),
(76, 'CF363A', 'HP 508A Magenta Original LaserJet Toner Cartridge', 600.47, 1, 8, '71c.png'),
(77, 'CF380A', 'HP 312A Black Original LaserJet Toner Cartridge', 284.7, 1, 8, '72c.png'),
(78, 'CF410A', 'HP 410A Black Original LaserJet Toner Cartridge', 265.72, 1, 8, '73c.png'),
(79, 'CF411A', 'HP 410A Cyan Original LaserJet Toner Cartridge', 343.07, 1, 8, '74c.png'),
(80, 'CF412A', 'HP 410A Yellow Original LaserJet Toner Cartridge', 263.9, 1, 8, '75c.png'),
(81, 'CF413A', 'HP 410A Magenta Original LaserJet Toner Cartridge', 430.04, 1, 8, '76c.png'),
(82, 'CF400A', 'HP 201A Black Original LaserJet Toner Cartridge', 211.12, 1, 8, '77c.png'),
(83, 'CF403A', 'HP 201A Magenta Original LaserJet Toner Cartridge', 248.9, 1, 8, '78c.png'),
(84, 'CF401A', 'HP 201A Cyan Original LaserJet Toner Cartridge', 248.95, 1, 8, '79c.png'),
(85, 'CF402A', 'HP 201A Yellow Original LaserJet Toner Cartridge', 248.95, 1, 8, '80c.png'),
(86, 'CF217A', 'HP 17A Black Original LaserJet Toner Cartridge', 194.87, 1, 8, '81c.png'),
(89, 'C4096A', 'HP 96A Black Original LaserJet Toner Cartridge', 476.71, 1, 8, '84c.png'),
(90, 'C7115A', 'HP 15A Black Original LaserJet Toner Cartridge', 298.87, 1, 8, '85 c.jpg'),
(91, 'C7115X', 'HP 15X High Yield Black Original LaserJet Toner Cartridge', 325.91, 1, 8, '85c.png'),
(92, 'C8543X', 'HP 43X High Yield Black Original LaserJet Toner Cartridge', 1066.65, 1, 8, '87c.png'),
(93, 'C9721A', 'HP 641A Cyan Original LaserJet Toner Cartridge', 1027.13, 1, 8, '88c.png'),
(94, 'C9722A', 'HP 641A Yellow Original LaserJet Toner Cartridge', 1027.13, 1, 8, '89c.png'),
(95, 'C9723A', 'HP 641A Magenta Original LaserJet Toner Cartridge', 1152.45, 1, 8, '90c.png'),
(96, 'C9730A', 'HP 645A Black Original LaserJet Toner Cartridge', 1051.18, 1, 8, '91c.jpg'),
(97, 'C9731A', 'HP 645A Cyan Original LaserJet Toner Cartridge', 1473.9, 1, 8, '92c.png'),
(98, 'C9732A', 'HP 645A Yellow Original LaserJet Toner Cartridge', 1473.9, 1, 8, '93c.png'),
(99, 'C9733A', 'HP 645A Magenta Original LaserJet Toner Cartridge', 1473.94, 1, 8, '94c.png'),
(100, 'CB381A', 'HP 824A Cyan Original LaserJet Toner Cartridge', 1233.83, 1, 8, '95 c.jpg'),
(101, 'CB382A', 'HP 824A Yellow Original LaserJet Toner Cartridge', 1233.83, 1, 8, '96 c.jpg'),
(102, 'CB383A', 'HP 824A Magenta Original LaserJet Toner Cartridge', 1233.83, 1, 8, '97 c.jpg'),
(103, 'CE320AD', 'HP 128A 2-pack Black Original LaserJet Toner Cartridges', 443.17, 1, 8, '153 c.jpg'),
(104, 'CE323A', 'HP 128A Magenta Original LaserJet Toner Cartridge', 234.26, 1, 8, '155 c.jpg'),
(105, 'CE340A', 'HP 651A Black Original LaserJet Toner Cartridge', 596.18, 1, 8, '156 c.jpg'),
(106, 'CE341A', 'HP 651A Cyan Original LaserJet Toner Cartridge', 1501.24, 1, 8, '157 c.jpg'),
(107, 'CE342A', 'HP 651A Yellow Original LaserJet Toner Cartridge', 1501.24, 1, 8, '158 c ..jpg'),
(108, 'CE343A', 'HP 651A Magenta Original LaserJet Toner Cartridge', 1501.24, 1, 8, '159 c.jpg'),
(109, 'CE390XD', 'HP 90X 2-pack High Yield Black Original LaserJet Toner Cartridges', 1801.41, 1, 8, '160 c.jpg'),
(110, 'CE400X', 'HP 507X High Yield Black Original LaserJet Toner Cartridge', 694.72, 1, 8, '164 c.jpg'),
(111, 'CE400YC', 'HP CE400YC Black Optimized Contract Original LaserJet Toner Cartridge', 791.96, 1, 8, '165.jpg'),
(112, 'CE401A', 'HP 507A Cyan Original LaserJet Toner Cartridge', 863.07, 1, 8, '166 c.jpg'),
(113, 'CE401YC', 'HP CE401YC Cyan Optimized Contract Original LaserJet Toner Cartridge', 1099.93, 1, 8, '167 c.jpg'),
(114, 'CE402A', 'HP 507A Yellow Original LaserJet Toner Cartridge', 863.07, 1, 8, '168 c.jpg'),
(115, 'CE402YC', 'HP CE402YC Yellow Optimized Contract Original LaserJet Toner Cartridge', 1099.93, 1, 8, '169 c.jpg'),
(116, 'CE403A', 'HP 507A Magenta Original LaserJet Toner Cartridge', 863.07, 1, 8, '170c.jpg'),
(117, 'CE403YC', 'HP CE403YC Magenta Optimized Contract Original LaserJet Toner Cartridge', 1099.93, 1, 8, '171 c.jpg'),
(118, 'CE410A', 'HP 305A Black Original LaserJet Toner Cartridge', 326.95, 1, 8, '172 c.jpg'),
(119, 'CE410A', 'HP 305A Black Original LaserJet Toner Cartridge', 326.95, 1, 8, '173 c.jpg'),
(120, 'CE410XC', 'HP 305X Black Contract LaserJet Toner Cartridge (CE410XC)', 722.93, 1, 8, '174 c.jpg'),
(121, 'CE410XD', 'HP 305X 2-pack High Yield Black Original LaserJet Toner Cartridges', 722.93, 1, 8, '175 c.jpg'),
(122, 'CE411AC', 'HP 305A Cyan Contract LaserJet Toner Cartridge (CE411AC)', 456.69, 1, 8, '177 c.jpg'),
(123, 'CE412A', 'HP 305A Yellow Original LaserJet Toner Cartridge', 465.92, 1, 8, '178 c.jpg'),
(124, 'CE413AC', 'HP 305A Magenta Contract LaserJet Toner Cartridge (CE413AC)', 456.69, 1, 8, '180 c.jpg'),
(125, 'CE505A', 'HP 05A Black Original LaserJet Toner Cartridge', 345.56, 1, 8, '181 c.jpg'),
(126, 'CE505D', 'HP 05A 2-pack Black Original LaserJet Toner Cartridges', 622.31, 1, 8, '182 c.jpg'),
(127, 'CE505XD', 'HP 05X 2-pack High Yield Black Original LaserJet Toner Cartridges', 1141.66, 1, 8, '182 c.jpg'),
(128, 'CE740A', 'HP 307A Black Original LaserJet Toner Cartridge', 588.25, 1, 8, '184 c.jpg'),
(129, 'CE741A', 'HP 307A Cyan Original LaserJet Toner Cartridge', 797.1, 1, 8, '185 c.jpg'),
(130, 'CE742A', 'HP 307A Yellow Original LaserJet Toner Cartridge', 1036.23, 1, 8, '186 c.jpg'),
(131, 'CE743A', 'HP 307A Magenta Original LaserJet Toner Cartridge', 1036.23, 1, 8, '187 c.jpg'),
(133, 'CF032A', 'HP 646A Yellow Original LaserJet Toner Cartridge', 988.52, 1, 8, '191 c.jpg'),
(134, 'CF033A', 'HP 646A Magenta Original LaserJet Toner Cartridge', 988.52, 1, 8, '192 c.jpg'),
(135, 'CF033AC', 'HP CF033AC Magenta Contract Original LaserJet Toner Cartridge', 1087.32, 1, 8, '193 c.jpeg'),
(136, 'CF210A', 'HP 131A Black Original LaserJet Toner Cartridge', 262.47, 1, 8, '194 c.jpg'),
(137, 'CF210', 'HP 131A Black Original LaserJet Toner Cartridge', 262.47, 1, 8, '195 c.jpeg'),
(138, 'CF214A', 'HP 14A Black Original LaserJet Toner Cartridge', 788.45, 1, 8, '202 c.jpg'),
(139, 'CF217A', 'HP 17A Black Original LaserJet Toner Cartridge', 194.87, 1, 8, '81c.png'),
(140, 'CF219A', 'HP 19A Original LaserJet Imaging Drum', 275.21, 1, 8, '204 c.jpg'),
(142, 'CF230A', 'HP 30A Black Original LaserJet Toner Cartridge', 247.91, 1, 8, '208 c.jpg'),
(143, 'CF230X', 'HP 30X High Yield Black Original LaserJet Toner Cartridge', 370.24, 1, 8, '209 c.jpeg'),
(146, 'CF280XD', 'HP 80X 2-pack High Yield Black Original LaserJet Toner Cartridges', 1240.33, 1, 8, '212 c.jpg'),
(147, 'CF281A', 'HP 81A Black Original LaserJet Toner Cartridge', 665.99, 1, 8, '213 c.jpg'),
(148, 'CF283A', 'HP 83A Black Original LaserJet Toner Cartridge', 249.73, 1, 8, '216 c.jpg'),
(149, 'CF371AM', 'HP 305A 3-pack Cyan/Magenta/Yellow Original LaserJet Toner Cartridges', 709.54, 1, 8, '258 c.jpg'),
(150, 'U0SL1AM', 'HP 131A 3-pack Cyan/Magenta/Yellow Original LaserJet Toner Cartridges', 899.08, 1, 8, '320 c.jpg'),
(151, 'CF281X', 'HP 81X High Yield Black Original LaserJet Toner Cartridge', 1102.01, 1, 8, '214 c.jpg'),
(152, 'CB402A', 'HP 642A Yellow Original LaserJet Toner Cartridge', 1024.14, 1, 8, '105.jpg'),
(153, 'CE314A', 'HP 126A LaserJet Imaging Drum', 316.55, 1, 8, '152.jpg'),
(154, 'CE322A', 'HP 128A Yellow Original LaserJet Toner Cartridge', 234.26, 1, 8, '154.jpg'),
(155, 'CE390XC', 'HP CE390XC High Yield Black Contract Original LaserJet Toner Cartridge', 1100.84, 1, 8, '161.jpg'),
(156, 'CE400A', 'HP 507A Black Original LaserJet Toner Cartridge', 579.28, 1, 8, '163.jpg'),
(157, 'CE411A', 'HP 305A Cyan Original LaserJet Toner Cartridge', 465.92, 1, 8, '176 c.jpg'),
(158, 'CE413A', 'HP 305A Magenta Original LaserJet Toner Cartridge', 465.92, 1, 8, '179.jpg'),
(159, 'CF031A', 'HP 646A Cyan Original LaserJet Toner Cartridge', 988.52, 1, 8, '188 c.jpg'),
(160, 'CF032A', 'HP 646A Yellow Original LaserJet Toner Cartridge', 988.52, 1, 8, '190.jpg'),
(161, 'CF210XD', 'HP 131X 2-pack High Yield Black Original LaserJet Toner Cartridges', 607.36, 1, 8, '196.jpg'),
(162, 'CF211A', 'HP 131A Cyan Original LaserJet Toner Cartridge', 296.79, 1, 8, '197.jpg'),
(163, 'CF212A', 'HP 131A Yellow Original LaserJet Toner Cartridge', 296.79, 1, 8, '199.jpg'),
(164, 'CF213A', 'HP 131A Magenta Original LaserJet Toner Cartridge', 296.79, 1, 8, '200.jpg'),
(165, 'CF280A', 'HP 80A Black Original LaserJet Toner Cartridge', 400.27, 1, 8, '211.jpg'),
(166, 'CF281XC', 'HP CF281XC High Yield Black Contract Original LaserJet Toner Cartridge', 1212.12, 1, 8, '215.jpg'),
(167, 'CF283AD', 'HP 83A 2-pack Black Original LaserJet Toner Cartridges', 449.41, 1, 8, '217.jpg'),
(168, 'CF283X', 'HP 83X High Yield Black Original LaserJet Toner Cartridge', 310.57, 1, 8, '218.jpg'),
(169, 'CF283XC', 'HP Contractual High Yield Black Original LaserJet Toner Cartridge (CF283XC)', 341.64, 1, 8, '219.jpg'),
(170, 'CF287A', 'HP 87A Black Original LaserJet Toner Cartridge', 839.15, 1, 8, '220.jpg'),
(171, 'CF287X', 'HP 87X High Yield Black Original LaserJet Toner Cartridge', 1134.77, 1, 8, '221.jpg'),
(172, 'CF287XC', 'HP CF287XC High Yield Black Contract Original LaserJet Toner Cartridge', 1248.26, 1, 8, '222.jpg'),
(173, 'CF300A', 'HP 827A Black Original LaserJet Toner Cartridge', 412.1, 1, 8, '223.jpg'),
(174, 'CF300AC', 'HP CF300AC Black Contract Original LaserJet Toner Cartridge', 453.31, 1, 8, '224.jpg'),
(175, 'CF301A', 'HP 827A Cyan Original LaserJet Toner Cartridge', 1836.51, 1, 8, '225.jpg'),
(176, 'CF301AC', 'HP CF301AC Cyan Contract Original LaserJet Toner Cartridge', 2020.2, 1, 8, '226.jpg'),
(177, 'CF302A', 'HP 827A Yellow Original LaserJet Toner Cartridge', 1836.51, 1, 8, '227.jpg'),
(178, 'CF303A', 'HP 827A Magenta Original LaserJet Toner Cartridge', 1836.51, 1, 8, '228.jpg'),
(179, 'CF303AC', 'HP CF303AC Magenta Contract Original LaserJet Toner Cartridge', 2020.2, 1, 8, '229.jpg'),
(180, 'CF311AC', 'HP CF311AC Cyan Contract Original LaserJet Toner Cartridge', 2184.52, 1, 8, '231.jpg'),
(181, 'CF312AC', 'HP CF312AC Yellow Contract Original LaserJet Toner Cartridge', 2184.52, 1, 8, '232.jpg'),
(182, 'CF313AC', 'HP CF313AC Magenta Contract Original LaserJet Toner Cartridge', 2184.52, 1, 8, '233.jpg'),
(183, 'CF320A', 'HP 652A Black Original LaserJet Toner Cartridge', 803.27, 1, 8, '234.jpg'),
(184, 'CF320XC', 'HP CF320XC Black High Yield Contract Original LaserJet Toner Cartridge', 1066, 1, 8, '235.jpg'),
(185, 'CF321A', 'HP 653A Cyan Original LaserJet Toner Cartridge', 1305.07, 1, 8, '236.jpg'),
(186, 'CF321AC', 'HP CF321AC Cyan Contract Original LaserJet Toner Cartridge', 1435.46, 1, 8, '237.jpg'),
(187, 'CF322A', 'HP 653A Yellow Original LaserJet Toner Cartridge', 1305.07, 1, 8, '238.jpg'),
(188, 'CF322AC', 'HP CF322AC Yellow Contract Original LaserJet Toner Cartridge', 1435.46, 1, 8, '239.jpg'),
(189, 'CF323A', 'HP 653A Magenta Original LaserJet Toner Cartridge', 1305.07, 1, 8, '240.jpg'),
(190, 'CF323AC', 'HP CF323AC Magenta Contract Original LaserJet Toner Cartridge', 1435.46, 1, 8, '241.jpg'),
(191, 'CF330XC', 'HP CF330XC Black High Yield Contract Original LaserJet Toner Cartridge', 1161.29, 1, 8, '242.jpg'),
(192, 'CF331AC', 'HP CF331AC Cyan Contract Original LaserJet Toner Cartridge', 1619.41, 1, 8, '243.jpg'),
(193, 'CF332AC', 'HP CF332AC Yellow Contract Original LaserJet Toner Cartridge', 1619.41, 1, 8, '244.jpg'),
(194, 'CF333AC', 'HP CF333AC Magenta Contract Original LaserJet Toner Cartridge', 1619.41, 1, 8, '245.jpg'),
(195, 'CF341A', 'HP 126A 3-pack Cyan/Magenta/Yellow Original LaserJet Toner Cartridges', 600.21, 1, 8, '246.jpg'),
(196, 'CF350A', 'HP 130A Black Original LaserJet Toner Cartridge', 219.44, 1, 8, '247.jpg'),
(197, 'CF351A', 'HP 130A Black Original LaserJet Toner Cartridge', 226.33, 1, 8, '249.jpg'),
(198, 'CF352A', 'HP 130A Yellow Original LaserJet Toner Cartridge', 226.33, 1, 8, '250.jpg'),
(199, 'CF353A', 'HP 130A Magenta Original LaserJet Toner Cartridge', 226.33, 1, 8, '251.jpg'),
(200, 'CF360A', 'HP 508A Black Original LaserJet Toner Cartridge', 600.21, 1, 8, '252.jpg'),
(201, 'CF360XC', 'HP Contract High Yield Black Original LaserJet Toner Cartridge (CF360X)', 923, 1, 8, '253.jpg'),
(202, 'CF361A', 'HP 508A Cyan Original LaserJet Toner Cartridge', 752.57, 1, 8, '254.jpg'),
(203, 'CF361XC', 'HP Contract High Yield Cyan Original LaserJet Toner Cartridge (CF361X)', 1277.9, 1, 8, '255.jpg'),
(204, 'CF362A', 'HP 508A Yellow Original LaserJet Toner Cartridge', 752.57, 1, 8, '256.jpg'),
(205, 'CF362XC', 'HP 508A Yellow Original LaserJet Toner Cartridge', 1277.9, 1, 8, '257.jpg'),
(206, 'CF363A', 'HP 508A Magenta Original LaserJet Toner Cartridge', 752.57, 1, 8, '258.jpg'),
(207, 'CF363XC', 'HP Contract High Yield Magenta Original LaserJet Toner Cartridge (CF363X)', 1277.9, 1, 8, '259.jpg'),
(208, 'CF370AM', 'HP 305A 3-pack Cyan/Magenta/Yellow Original LaserJet Toner Cartridges', 1257.88, 1, 8, '260.jpg'),
(209, 'CF372AM', 'HP 304A 3-pack Cyan/Magenta/Yellow Original LaserJet Toner Cartridges', 1280.5, 1, 8, '261.jpg'),
(210, 'CF373AM', 'HP 125A 3-pack Cyan/Magenta/Yellow Original LaserJet Toner Cartridges', 763.1, 1, 8, '262.jpg'),
(211, 'CF380A', 'HP 312A Black Original LaserJet Toner Cartridge', 356.85, 1, 8, '263.jpg'),
(212, 'CF381A', 'HP 312A Cyan Original LaserJet Toner Cartridge', 477.88, 1, 8, '264.jpg'),
(213, 'CF381AC', 'HP CF381AC Cyan Contract Original LaserJet Toner Cartridge', 525.59, 1, 8, '265.jpg'),
(214, 'CF382A', 'HP 312A Yellow Original LaserJet Toner Cartridge', 477.88, 1, 8, '266.jpg'),
(215, 'CF382AC', 'HP CF382AC Yellow Contract Original LaserJet Toner Cartridge', 525.59, 1, 8, '268.jpg'),
(216, 'CF383A', 'HP 312A Magenta Original LaserJet Toner Cartridge', 477.88, 1, 8, '269.jpg'),
(217, 'CF383AC', 'HP CF383AC Magenta Contract Original LaserJet Toner Cartridge', 525.59, 1, 8, '270.jpg'),
(218, 'CF400A', 'HP 201A Black Original LaserJet Toner Cartridge', 264.55, 1, 8, '271.jpg'),
(219, 'CF401A', 'HP 201A Cyan Original LaserJet Toner Cartridge', 312.13, 1, 8, '273.jpg'),
(220, 'CF402A', 'HP 201A Yellow Original LaserJet Toner Cartridge', 312.13, 1, 8, '275.png'),
(221, 'CF403A', 'HP 201A Magenta Original LaserJet Toner Cartridge', 312.13, 1, 8, '277.jpg'),
(222, 'CF410A', 'HP 410A Black Original LaserJet Toner Cartridge', 332.93, 1, 8, '279.jpg'),
(223, 'CF410XC', 'HP CF410XC High Yield Black Contract Original LaserJet Toner Cartridge', 611, 1, 8, '281.jpg'),
(224, 'CF411A', 'HP 410A Cyan Original LaserJet Toner Cartridge', 430.04, 1, 8, '282.jpg'),
(225, 'CF411X', 'HP 410X High Yield Cyan Original LaserJet Toner Cartridge', 743.6, 1, 8, '283.jpg'),
(226, 'CF411XC', 'HP CF411XC High Yield Cyan Contract Original LaserJet Toner Cartridge', 817.96, 1, 8, '284.jpg'),
(227, 'CF412A', 'HP 410A Yellow Original LaserJet Toner Cartridge', 430.04, 1, 8, '285.jpg'),
(228, 'CF412X', 'HP 410X High Yield Yellow Original LaserJet Toner Cartridge', 743.6, 1, 8, '286.jpg'),
(229, 'CF412XC', 'HP CF412XC High Yield Yellow Contract Original LaserJet Toner Cartridge', 817.96, 1, 8, '286.jpg'),
(230, 'CF413A', 'HP 410A Magenta Original LaserJet Toner Cartridge', 430.04, 1, 8, '288.jpg'),
(231, 'CF413X', 'HP 410X High Yield Magenta Original LaserJet Toner Cartridge', 743.6, 1, 8, '290.jpg'),
(232, 'CF413XC', 'HP CF413XC High Yield Magenta Contract Original LaserJet Toner Cartridge', 817.96, 1, 8, '291.jpg'),
(233, 'CF440AM', 'HP 312A 3-pack Cyan/Magenta/Yellow Original LaserJet Toner Cartridges', 1290.12, 1, 8, '292.jpg'),
(234, 'CZ192A', 'HP 93A Black Original LaserJet Toner Cartridge', 771.94, 1, 8, '293.png'),
(235, 'Q2612AD', 'HP 12A 2-pack Black Original LaserJet Toner Cartridges', 547.43, 1, 8, '294.jpg'),
(236, 'Q2613A', 'HP 13A Black Original LaserJet Toner Cartridge', 393.12, 1, 8, '295.jpg'),
(237, 'Q2624A', 'HP 24A Black Original LaserJet Toner Cartridge', 340.86, 1, 8, '296.jpg'),
(238, 'Q3960A', 'HP 122A Black Original LaserJet Toner Cartridge', 394.29, 1, 8, '297.png'),
(239, 'Q3961A', 'HP 122A Cyan Original LaserJet Toner Cartridge', 475.54, 1, 8, '298.jpg'),
(240, 'Q3963A', 'HP 122A Magenta Original LaserJet Toner Cartridge', 475.54, 1, 8, '299.jpg'),
(241, 'Q5942A', 'HP 42A Black Original LaserJet Toner Cartridge', 712.01, 1, 8, '300.jpg'),
(242, 'Q5945A', 'HP 45A Black Original LaserJet Toner Cartridge', 972.14, 1, 8, '301.jpg'),
(243, 'Q5949A', 'HP 49A Black Original LaserJet Toner Cartridge', 393.12, 1, 8, '302.jpg'),
(244, 'Q5949XD', 'HP 49X 2-pack High Yield Black Original LaserJet Toner Cartridges', 1294.8, 1, 8, '303.jpg'),
(245, 'Q5950A', 'HP 643A Black Original LaserJet Toner Cartridge', 848.9, 1, 8, '304.jpg'),
(246, 'Q5952A', 'HP 643A Yellow Original LaserJet Toner Cartridge', 1207.05, 1, 8, '305.jpg'),
(247, 'Q5953A', 'HP 643A Magenta Original LaserJet Toner Cartridge', 1207.05, 1, 8, '306.jpg'),
(248, 'Q6000A', 'HP 124A Black Original LaserJet Toner Cartridge', 361.27, 1, 8, '307.jpg'),
(249, 'Q6001A', 'HP 124A Cyan Original LaserJet Toner Cartridge', 394.29, 1, 8, '308.jpg'),
(250, 'Q6002A', 'HP 124A Yellow Original LaserJet Toner Cartridge', 394.29, 1, 8, '309.jpg'),
(251, 'Q6003A', 'HP 124A Magenta Original LaserJet Toner Cartridge', 394.29, 1, 8, '310.jpg'),
(252, 'Q6470A', 'HP 501A Black Original LaserJet Toner Cartridge', 631.93, 1, 8, '311.jpg'),
(253, 'Q6511A', 'HP 11A Black Original LaserJet Toner Cartridge', 592.02, 1, 8, '312.jpg'),
(254, 'Q7516A', 'HP 16A Black Original LaserJet Toner Cartridge', 790.4, 1, 8, '313.jpg'),
(255, 'Q7551A', 'HP 51A Black Original LaserJet Toner Cartridge', 563.03, 1, 8, '314.png'),
(256, 'Q7551X', 'HP 51X High Yield Black Original LaserJet Toner Cartridge', 943.28, 1, 8, '315.jpg'),
(257, 'Q7551XD', 'HP 51X 2-pack High Yield Black Original LaserJet Toner Cartridges', 1697.93, 1, 8, '316.jpg'),
(258, 'Q7553A', 'HP 53A Black Original LaserJet Toner Cartridge', 384.28, 1, 8, '317.jpg'),
(259, 'Q7553X', 'HP 53X High Yield Black Original LaserJet Toner Cartridge', 709.54, 1, 8, '318.jpg'),
(260, 'Q7553XD', 'HP 53X 2-pack High Yield Black Original LaserJet Toner Cartridges', 1277.12, 1, 8, '319.jpg'),
(261, 'Q7570A', 'HP 70A Black Original LaserJet Toner Cartridge', 823.16, 1, 8, '320.png'),
(262, 'Q7581A', 'HP 503A Cyan Original LaserJet Toner Cartridge', 812.76, 1, 8, '321.jpg'),
(263, 'CF237A', 'HP 37A Black Original LaserJet Toner Cartridge', 530.01, 1, 8, '83c.png'),
(264, 'C4096A', 'HP 96A Black Original LaserJet Toner Cartridge', 476.71, 1, 8, '84c.png'),
(265, 'C7115A', 'HP 15A Black Original LaserJet Toner Cartridge', 298.87, 1, 8, '85c.png'),
(266, 'C7115X', 'HP 15X High Yield Black Original LaserJet Toner Cartridge', 325.91, 1, 8, '86c.png');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cd`
--

DROP TABLE IF EXISTS `cd`;
CREATE TABLE IF NOT EXISTS `cd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `tva_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_45D68FDA4D79775F` (`tva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `cd`
--

INSERT INTO `cd` (`id`, `titre`, `description`, `prix`, `disponible`, `tva_id`, `path`) VALUES
(2, 'DVD-R RONC 50PCS', 'DVD-R RONC 50PCS', 17.16, 0, 7, '87.png'),
(3, 'disquette verbatim PAQUET DE 10', 'disquette verbatim PAQUET DE 10', 35, 1, 7, '444.jpg'),
(4, 'CD-RW CASE', 'CD-RW CASE', 1.25, 1, 7, '443.png'),
(5, 'DVD-R MAXDATA POCHETTE PLASTIQUE', 'DVD-R MAXDATA POCHETTE PLASTIQUE', 1.2, 1, 7, '442.jpg'),
(6, 'DVD-R IMPRIMABLE SLIM CASE', 'DVD-R IMPRIMABLE SLIM CASE', 0.72, 1, 7, '441.jpg'),
(7, 'BOBINE DVD+R 16X VERBATIM', 'BOBINE DVD+R 16X VERBATIM', 29.26, 1, 7, '433.jpg'),
(8, 'BOBINE CD-R SPINDLE VERBATIM 52X 700MB', 'BOBINE CD-R SPINDLE VERBATIM 52X 700MB', 29.16, 1, 7, '434.jpg'),
(9, 'BOBINE DVD+R MAX DATA 7GB 16X SPINDLE', 'BOBINE DVD+R MAX DATA 7GB 16X SPINDLE', 27.2, 1, 7, '435.jpg'),
(10, 'POCHETTE CD/DVD DIFFÉRENTES COULEURS', 'POCHETTE CD/DVD DIFFÉRENTES COULEURS', 7.56, 1, 7, '436.jpg'),
(11, 'CD-R MAX DATA 700MB 52X SLIM CASE', 'CD-R MAX DATA 700MB 52X SLIM CASE', 0.98, 1, 7, '437.jpg'),
(12, 'BOBINE DVD-R X16 KINGPRO', 'BOBINE DVD-R X16 KINGPRO', 23.8, 1, 7, '438.jpg'),
(13, 'DVD + R W SLIM', 'DVD + R W SLIM', 0.38, 1, 7, '440.jpg'),
(14, 'BOBINE DATA RIGHT', 'BOBINE DATA RIGHT', 23, 1, 7, '439.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `classementetarchivage`
--

DROP TABLE IF EXISTS `classementetarchivage`;
CREATE TABLE IF NOT EXISTS `classementetarchivage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tva_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8A122A504D79775F` (`tva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `classementetarchivage`
--

INSERT INTO `classementetarchivage` (`id`, `tva_id`, `titre`, `description`, `prix`, `disponible`, `path`) VALUES
(7, 8, 'CLASSEUR CHRONOS', 'CLASSEUR CHRONOS', 4.8, 1, 'Archive.png'),
(8, 8, 'Boite D\'archive', 'AZ5', 1.45, 1, 'az10.png'),
(9, 8, 'Boite D\'archive', 'AZ10', 1.65, 1, 'az10.png'),
(10, 8, 'Boite D\'archive', 'AZ15', 2.2, 1, 'az10.png'),
(11, 8, 'Chrono Exacompta noir DOS 50', 'Chrono Exacompta noir DOS 50', 7.4, 1, '399.jpg'),
(12, 8, 'Chrono Exacompta noir DOS 70', 'Chrono Exacompta noir DOS 70', 7.4, 1, '400 (2).jpg'),
(13, 8, 'Chrono GRIS MS DOS 70', 'Chrono GRIS MS DOS 70', 4.8, 1, '414.jpg'),
(14, 8, 'Chrono ORANGE DOS 50 / 70', 'Chrono ORANGE DOS 50 / 70', 4, 1, '396.jpg'),
(15, 8, 'BOITE D’ARCHIVE FORMAT ENVIRON 34*25CM DOS 5 CM EN CARTON FORMETURE PAR BOUTON PRESSION', 'BOITE D’ARCHIVE FORMAT ENVIRON 34*25CM DOS 5 CM EN CARTON FORMETURE PAR BOUTON PRESSION', 1.69, 1, '403.jpg'),
(16, 8, 'BOITE D’ARCHIVE FORMAT ENVIRON 34*25CM DOS 10 CM EN CARTON FORMETURE PAR BOUTON PRESSION', 'BOITE D’ARCHIVE FORMAT ENVIRON 34*25CM DOS 10 CM EN CARTON FORMETURE PAR BOUTON PRESSION', 1.45, 1, '402.jpg'),
(17, 8, 'BOITE D’ARCHIVE FORMAT ENVIRON 34*25CM DOS 15 CM EN CARTON FORMETURE PAR BOUTON PRESSION', 'BOITE D’ARCHIVE FORMAT ENVIRON 34*25CM DOS 15 CM EN CARTON FORMETURE PAR BOUTON PRESSION', 1.76, 1, '402.jpg'),
(18, 8, 'classeur Chrono ORANGE DOS 50 / 70', 'classeur Chrono ORANGE DOS 50 / 70', 4.8, 1, '396.jpg'),
(19, 8, 'classeur Chrono VIOLET DOS 50/70', 'classeur Chrono VIOLET DOS 50/70', 4.8, 1, '397.jpg'),
(20, 8, 'classeur Chrono SMR noir DOS 70', 'classeur Chrono SMR noir DOS 70', 4.8, 1, '399.jpg'),
(21, 8, 'Classeur Chrono ANCOR  DOS 70', 'Classeur Chrono ANCOR DOS 70', 4.8, 1, '400.jpg'),
(22, 8, 'Chrono SMR  DOS 70', 'Chrono SMR  DOS 70', 4.8, 1, '400 (2).jpg'),
(23, 8, 'Classeur Chrono SMR DOS 50', 'Classeur Chrono SMR DOS 50', 4.8, 1, '450.png'),
(24, 8, 'Classeur Chrono ANCOR  DOS 50', 'Classeur Chrono ANCOR  DOS 50', 4.8, 1, '452.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utilisateur_id` int(11) DEFAULT NULL,
  `valider` tinyint(1) NOT NULL,
  `date` datetime NOT NULL,
  `reference` int(11) NOT NULL,
  `commande` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_6EEAA67DFB88E14F` (`utilisateur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `utilisateur_id`, `valider`, `date`, `reference`, `commande`) VALUES
(31, 16, 1, '2018-04-04 16:17:12', 1, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:2.4710000000000001;}s:7:\"produit\";a:1:{i:36;a:4:{s:9:\"reference\";s:14:\"Chemises kRAFT\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:12.5;s:7:\"prixTTC\";d:14.881;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:6:\"prixHT\";d:12.5;s:7:\"prixTTC\";d:14.971;s:5:\"token\";s:40:\"b72857ac11d86b4ee5ba03fcb6883de859846502\";}'),
(32, 16, 1, '2018-04-04 16:17:38', 2, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:35.328000000000003;}s:7:\"produit\";a:1:{i:33;a:4:{s:9:\"reference\";s:27:\"Disque Externe ADATA AHD710\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:185;s:7:\"prixTTC\";d:220.238;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:6:\"prixHT\";d:185;s:7:\"prixTTC\";d:220.328;s:5:\"token\";s:40:\"b96906c6f64e80d75b53e0564a9cbbac7096fa73\";}'),
(33, 16, 1, '2018-04-04 16:18:02', 3, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:84.942000000000007;}s:7:\"produit\";a:2:{i:33;a:4:{s:9:\"reference\";s:27:\"Disque Externe ADATA AHD710\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:185;s:7:\"prixTTC\";d:220.238;}i:35;a:4:{s:9:\"reference\";s:25:\"Disque Externe ADATA NH03\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:260;s:7:\"prixTTC\";d:309.524;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:6:\"prixHT\";d:445;s:7:\"prixTTC\";d:529.94200000000001;s:5:\"token\";s:40:\"493f8061e6e31199802e5970245b5754c94f57c4\";}'),
(34, 17, 1, '2018-04-04 16:19:10', 4, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:1.8999999999999999;}s:7:\"produit\";a:1:{i:32;a:4:{s:9:\"reference\";s:19:\"Chemises CARTONNEES\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:3:\"222\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:2:\"22\";s:4:\"pays\";s:4:\"2222\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:3:\"222\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:2:\"22\";s:4:\"pays\";s:4:\"2222\";s:10:\"complement\";N;}s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.4;s:5:\"token\";s:40:\"6b101ec3ac8e57c8f47dda59efb2bbaa958d9c59\";}'),
(35, 17, 1, '2018-04-04 16:19:28', 5, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:35.328000000000003;}s:7:\"produit\";a:1:{i:33;a:4:{s:9:\"reference\";s:27:\"Disque Externe ADATA AHD710\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:185;s:7:\"prixTTC\";d:220.238;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:3:\"222\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:2:\"22\";s:4:\"pays\";s:4:\"2222\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:3:\"222\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:2:\"22\";s:4:\"pays\";s:4:\"2222\";s:10:\"complement\";N;}s:6:\"prixHT\";d:185;s:7:\"prixTTC\";d:220.328;s:5:\"token\";s:40:\"1dab4977b82de2fe7c8df86e0e27e3ba79557613\";}'),
(36, 16, 1, '2018-04-05 08:25:08', 6, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:35.328000000000003;}s:7:\"produit\";a:1:{i:33;a:4:{s:9:\"reference\";s:27:\"Disque Externe ADATA AHD710\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:185;s:7:\"prixTTC\";d:220.238;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:6:\"prixHT\";d:185;s:7:\"prixTTC\";d:220.328;s:5:\"token\";s:40:\"0c85acb5ebb8169c29a46f9c0385a1b1c881a9c0\";}'),
(37, 16, 1, '2018-04-05 08:31:40', 7, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:35.328000000000003;}s:7:\"produit\";a:1:{i:33;a:4:{s:9:\"reference\";s:27:\"Disque Externe ADATA AHD710\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:185;s:7:\"prixTTC\";d:220.238;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:6:\"prixHT\";d:185;s:7:\"prixTTC\";d:220.328;s:5:\"token\";s:40:\"fd4953d16333a7ff15aad04ff5582ca251d1c7d4\";}'),
(41, 16, 1, '2018-04-05 08:45:01', 8, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:1.7849999999999999;}s:7:\"produit\";a:1:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.685;s:5:\"token\";s:40:\"8d8fba237d6c9e07836305a7e885ae6db43a4329\";}'),
(42, 16, 1, '2018-04-05 08:45:25', 9, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:37.113;}s:7:\"produit\";a:2:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}i:33;a:4:{s:9:\"reference\";s:27:\"Disque Externe ADATA AHD710\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:185;s:7:\"prixTTC\";d:220.238;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:6:\"prixHT\";d:193.90000000000001;s:7:\"prixTTC\";d:231.01300000000001;s:5:\"token\";s:40:\"c4d9256a1a290f647592ad31b259395fe7fb26e8\";}'),
(43, 16, 1, '2018-04-05 08:45:45', 10, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:84.942000000000007;}s:7:\"produit\";a:2:{i:33;a:4:{s:9:\"reference\";s:27:\"Disque Externe ADATA AHD710\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:185;s:7:\"prixTTC\";d:220.238;}i:35;a:4:{s:9:\"reference\";s:25:\"Disque Externe ADATA NH03\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:260;s:7:\"prixTTC\";d:309.524;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:6:\"prixHT\";d:445;s:7:\"prixTTC\";d:529.94200000000001;s:5:\"token\";s:40:\"3b1810731194db2a5d4708bffc10b9b0a6121898\";}'),
(44, 16, 1, '2018-04-05 08:46:04', 11, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:37.113;}s:7:\"produit\";a:2:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}i:33;a:4:{s:9:\"reference\";s:27:\"Disque Externe ADATA AHD710\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:185;s:7:\"prixTTC\";d:220.238;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:6:\"prixHT\";d:193.90000000000001;s:7:\"prixTTC\";d:231.01300000000001;s:5:\"token\";s:40:\"30e507216e00d0db051a6ab99d1952a293ea251b\";}'),
(45, 17, 1, '2018-04-05 08:46:55', 12, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:37.228000000000002;}s:7:\"produit\";a:2:{i:32;a:4:{s:9:\"reference\";s:19:\"Chemises CARTONNEES\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;}i:33;a:4:{s:9:\"reference\";s:27:\"Disque Externe ADATA AHD710\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:185;s:7:\"prixTTC\";d:220.238;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:3:\"222\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:2:\"22\";s:4:\"pays\";s:4:\"2222\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:3:\"222\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:2:\"22\";s:4:\"pays\";s:4:\"2222\";s:10:\"complement\";N;}s:6:\"prixHT\";d:194.5;s:7:\"prixTTC\";d:231.72800000000001;s:5:\"token\";s:40:\"78363ddc1e1b77a2718e59ced580cd9e43500bb6\";}'),
(46, 17, 1, '2018-04-05 08:47:15', 13, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:33.418999999999997;}s:7:\"produit\";a:2:{i:32;a:4:{s:9:\"reference\";s:19:\"Chemises CARTONNEES\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;}i:34;a:4:{s:9:\"reference\";s:27:\"Disque Externe ADATA HV 610\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:165;s:7:\"prixTTC\";d:196.429;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:3:\"222\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:2:\"22\";s:4:\"pays\";s:4:\"2222\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:3:\"222\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:2:\"22\";s:4:\"pays\";s:4:\"2222\";s:10:\"complement\";N;}s:6:\"prixHT\";d:174.5;s:7:\"prixTTC\";d:207.91900000000001;s:5:\"token\";s:40:\"378b8282af86f2b39c891a5cbb36e32091060698\";}'),
(48, 16, 1, '2018-04-06 07:42:51', 14, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:3.6849999999999996;}s:7:\"produit\";a:2:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}i:32;a:4:{s:9:\"reference\";s:19:\"Chemises CARTONNEES\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:6:\"prixHT\";d:18.399999999999999;s:7:\"prixTTC\";d:22.085000000000001;s:5:\"token\";s:40:\"989ffb1e38a626c08354c7d5009fc41770969a56\";}'),
(49, 16, 1, '2018-04-06 08:14:41', 15, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:1.7849999999999999;}s:7:\"produit\";a:1:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"chokri\";s:3:\"nom\";s:6:\"chokri\";s:16:\"matriculefiscale\";s:3:\"222\";s:13:\"bonducommande\";s:3:\"222\";s:9:\"telephone\";s:8:\"22476099\";s:7:\"adresse\";s:3:\"222\";s:10:\"codepostal\";s:3:\"222\";s:5:\"ville\";s:5:\"tunis\";s:4:\"pays\";s:7:\"tunisia\";s:10:\"complement\";N;}s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.685;s:5:\"token\";s:40:\"8b483d21176fbda1e2e3250ec4d38531b0029f4d\";}'),
(50, 16, 1, '2018-04-06 14:31:38', 16, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:39.013000000000005;}s:7:\"produit\";a:3:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";s:1:\"1\";s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}i:32;a:4:{s:9:\"reference\";s:19:\"Chemises CARTONNEES\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;}i:33;a:4:{s:9:\"reference\";s:27:\"Disque Externe ADATA AHD710\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:185;s:7:\"prixTTC\";d:220.238;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"Meriam\";s:3:\"nom\";s:3:\"Ben\";s:16:\"matriculefiscale\";s:5:\"12555\";s:13:\"bonducommande\";s:5:\"12055\";s:9:\"telephone\";s:8:\"55555555\";s:7:\"adresse\";s:8:\"gggggggg\";s:10:\"codepostal\";s:4:\"2012\";s:5:\"ville\";s:6:\"fgdsfh\";s:4:\"pays\";s:6:\"dfgdfg\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"Meriam\";s:3:\"nom\";s:3:\"Ben\";s:16:\"matriculefiscale\";s:5:\"12555\";s:13:\"bonducommande\";s:5:\"12055\";s:9:\"telephone\";s:8:\"55555555\";s:7:\"adresse\";s:8:\"gggggggg\";s:10:\"codepostal\";s:4:\"2012\";s:5:\"ville\";s:6:\"fgdsfh\";s:4:\"pays\";s:6:\"dfgdfg\";s:10:\"complement\";N;}s:6:\"prixHT\";d:203.40000000000001;s:7:\"prixTTC\";d:242.41300000000001;s:5:\"token\";s:40:\"d96591caef5f4f2ea39cefa7bbcab641f8cb06c8\";}'),
(51, 16, 1, '2018-04-06 14:35:06', 17, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:3.6849999999999996;}s:7:\"produit\";a:2:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}i:32;a:4:{s:9:\"reference\";s:19:\"Chemises CARTONNEES\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"Meriam\";s:3:\"nom\";s:3:\"Ben\";s:16:\"matriculefiscale\";s:5:\"12555\";s:13:\"bonducommande\";s:5:\"12055\";s:9:\"telephone\";s:8:\"55555555\";s:7:\"adresse\";s:8:\"gggggggg\";s:10:\"codepostal\";s:4:\"2012\";s:5:\"ville\";s:6:\"fgdsfh\";s:4:\"pays\";s:6:\"dfgdfg\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"Meriam\";s:3:\"nom\";s:3:\"Ben\";s:16:\"matriculefiscale\";s:5:\"12555\";s:13:\"bonducommande\";s:5:\"12055\";s:9:\"telephone\";s:8:\"55555555\";s:7:\"adresse\";s:8:\"gggggggg\";s:10:\"codepostal\";s:4:\"2012\";s:5:\"ville\";s:6:\"fgdsfh\";s:4:\"pays\";s:6:\"dfgdfg\";s:10:\"complement\";N;}s:6:\"prixHT\";d:18.399999999999999;s:7:\"prixTTC\";d:22.085000000000001;s:5:\"token\";s:40:\"1e0e986de090ccf6761024e43193a84f222c67a8\";}'),
(52, 18, 1, '2018-04-06 15:33:09', 18, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:3.6849999999999996;}s:7:\"produit\";a:2:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}i:32;a:4:{s:9:\"reference\";s:19:\"Chemises CARTONNEES\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:8:\"ben said\";s:3:\"nom\";s:6:\"meriam\";s:16:\"matriculefiscale\";s:4:\"1258\";s:13:\"bonducommande\";s:4:\"dqfz\";s:9:\"telephone\";s:7:\"2584455\";s:7:\"adresse\";s:23:\"bensaidmeriam@gmail.com\";s:10:\"codepostal\";s:4:\"8024\";s:5:\"ville\";s:7:\"tazarka\";s:4:\"pays\";s:7:\"tunisie\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:8:\"ben said\";s:3:\"nom\";s:6:\"meriam\";s:16:\"matriculefiscale\";s:4:\"1258\";s:13:\"bonducommande\";s:4:\"dqfz\";s:9:\"telephone\";s:7:\"2584455\";s:7:\"adresse\";s:23:\"bensaidmeriam@gmail.com\";s:10:\"codepostal\";s:4:\"8024\";s:5:\"ville\";s:7:\"tazarka\";s:4:\"pays\";s:7:\"tunisie\";s:10:\"complement\";N;}s:6:\"prixHT\";d:18.399999999999999;s:7:\"prixTTC\";d:22.085000000000001;s:5:\"token\";s:40:\"714054e3a16dc1c9f23323bf8a240711bd2bd154\";}'),
(53, 18, 1, '2018-04-07 06:18:35', 19, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:3.6849999999999996;}s:7:\"produit\";a:2:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";s:1:\"1\";s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}i:32;a:4:{s:9:\"reference\";s:19:\"Chemises CARTONNEES\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:8:\"ben said\";s:3:\"nom\";s:6:\"meriam\";s:16:\"matriculefiscale\";s:4:\"1258\";s:13:\"bonducommande\";s:4:\"dqfz\";s:9:\"telephone\";s:7:\"2584455\";s:7:\"adresse\";s:23:\"bensaidmeriam@gmail.com\";s:10:\"codepostal\";s:4:\"8024\";s:5:\"ville\";s:7:\"tazarka\";s:4:\"pays\";s:7:\"tunisie\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:8:\"ben said\";s:3:\"nom\";s:6:\"meriam\";s:16:\"matriculefiscale\";s:4:\"1258\";s:13:\"bonducommande\";s:4:\"dqfz\";s:9:\"telephone\";s:7:\"2584455\";s:7:\"adresse\";s:23:\"bensaidmeriam@gmail.com\";s:10:\"codepostal\";s:4:\"8024\";s:5:\"ville\";s:7:\"tazarka\";s:4:\"pays\";s:7:\"tunisie\";s:10:\"complement\";N;}s:6:\"prixHT\";d:18.399999999999999;s:7:\"prixTTC\";d:22.085000000000001;s:5:\"token\";s:40:\"c13a71d5741e6b7e2ca31f2bae4b7edc2638c21b\";}'),
(54, 18, 1, '2018-04-07 06:34:51', 20, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:37.113;}s:7:\"produit\";a:2:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";s:1:\"1\";s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}i:33;a:4:{s:9:\"reference\";s:27:\"Disque Externe ADATA AHD710\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:185;s:7:\"prixTTC\";d:220.238;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:4:\"SAID\";s:3:\"nom\";s:3:\"BEN\";s:16:\"matriculefiscale\";s:4:\"1200\";s:13:\"bonducommande\";s:3:\"500\";s:9:\"telephone\";s:8:\"55450222\";s:7:\"adresse\";s:16:\"RUE AZIZAOTHMANE\";s:10:\"codepostal\";s:4:\"8024\";s:5:\"ville\";s:7:\"TAZARKA\";s:4:\"pays\";s:7:\"TUNISIE\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:4:\"SAID\";s:3:\"nom\";s:3:\"BEN\";s:16:\"matriculefiscale\";s:4:\"1200\";s:13:\"bonducommande\";s:3:\"500\";s:9:\"telephone\";s:8:\"55450222\";s:7:\"adresse\";s:16:\"RUE AZIZAOTHMANE\";s:10:\"codepostal\";s:4:\"8024\";s:5:\"ville\";s:7:\"TAZARKA\";s:4:\"pays\";s:7:\"TUNISIE\";s:10:\"complement\";N;}s:6:\"prixHT\";d:193.90000000000001;s:7:\"prixTTC\";d:231.01300000000001;s:5:\"token\";s:40:\"fc85a7cb150323cffd4c9d1d4ec86987ea7b3b3e\";}'),
(55, 18, 1, '2018-04-07 06:48:22', 21, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:1.8999999999999999;}s:7:\"produit\";a:1:{i:32;a:4:{s:9:\"reference\";s:19:\"Chemises CARTONNEES\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:4:\"SAID\";s:3:\"nom\";s:3:\"BEN\";s:16:\"matriculefiscale\";s:4:\"1200\";s:13:\"bonducommande\";s:3:\"500\";s:9:\"telephone\";s:8:\"55450222\";s:7:\"adresse\";s:16:\"RUE AZIZAOTHMANE\";s:10:\"codepostal\";s:4:\"8024\";s:5:\"ville\";s:7:\"TAZARKA\";s:4:\"pays\";s:7:\"TUNISIE\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:4:\"SAID\";s:3:\"nom\";s:3:\"BEN\";s:16:\"matriculefiscale\";s:4:\"1200\";s:13:\"bonducommande\";s:3:\"500\";s:9:\"telephone\";s:8:\"55450222\";s:7:\"adresse\";s:16:\"RUE AZIZAOTHMANE\";s:10:\"codepostal\";s:4:\"8024\";s:5:\"ville\";s:7:\"TAZARKA\";s:4:\"pays\";s:7:\"TUNISIE\";s:10:\"complement\";N;}s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.4;s:5:\"token\";s:40:\"a61993dcfae759ca3e9c11707d9b7487687dc1e8\";}'),
(57, 18, 1, '2018-04-07 07:05:09', 22, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:1.7849999999999999;}s:7:\"produit\";a:1:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:4:\"SAID\";s:3:\"nom\";s:3:\"Ben\";s:16:\"matriculefiscale\";s:4:\"1200\";s:13:\"bonducommande\";s:3:\"500\";s:9:\"telephone\";s:8:\"55450222\";s:7:\"adresse\";s:9:\"rue korba\";s:10:\"codepostal\";s:4:\"8000\";s:5:\"ville\";s:5:\"korba\";s:4:\"pays\";s:7:\"tunisie\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:4:\"SAID\";s:3:\"nom\";s:3:\"Ben\";s:16:\"matriculefiscale\";s:4:\"1200\";s:13:\"bonducommande\";s:3:\"500\";s:9:\"telephone\";s:8:\"55450222\";s:7:\"adresse\";s:9:\"rue korba\";s:10:\"codepostal\";s:4:\"8000\";s:5:\"ville\";s:5:\"korba\";s:4:\"pays\";s:7:\"tunisie\";s:10:\"complement\";N;}s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.685;s:5:\"token\";s:40:\"4c326ff49d5c4cd121b9d0b14d3e9d3dff542c63\";}'),
(58, 16, 1, '2018-04-10 07:31:24', 23, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:1.7849999999999999;}s:7:\"produit\";a:1:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"Meriam\";s:3:\"nom\";s:3:\"Ben\";s:16:\"matriculefiscale\";s:5:\"12555\";s:13:\"bonducommande\";s:5:\"12055\";s:9:\"telephone\";s:8:\"55555555\";s:7:\"adresse\";s:8:\"gggggggg\";s:10:\"codepostal\";s:4:\"2012\";s:5:\"ville\";s:6:\"fgdsfh\";s:4:\"pays\";s:6:\"dfgdfg\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"Meriam\";s:3:\"nom\";s:3:\"Ben\";s:16:\"matriculefiscale\";s:5:\"12555\";s:13:\"bonducommande\";s:5:\"12055\";s:9:\"telephone\";s:8:\"55555555\";s:7:\"adresse\";s:8:\"gggggggg\";s:10:\"codepostal\";s:4:\"2012\";s:5:\"ville\";s:6:\"fgdsfh\";s:4:\"pays\";s:6:\"dfgdfg\";s:10:\"complement\";N;}s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.685;s:5:\"token\";s:40:\"8f3cc4566e7799aaf9c63ca54fc614318b950566\";}'),
(59, 19, 1, '2018-04-10 15:05:48', 24, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:39.698999999999998;}s:7:\"produit\";a:3:{i:32;a:4:{s:9:\"reference\";s:19:\"Chemises CARTONNEES\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;}i:33;a:4:{s:9:\"reference\";s:27:\"Disque Externe ADATA AHD710\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:185;s:7:\"prixTTC\";d:220.238;}i:36;a:4:{s:9:\"reference\";s:14:\"Chemises kRAFT\";s:8:\"quantite\";s:1:\"1\";s:6:\"prixHT\";d:12.5;s:7:\"prixTTC\";d:14.881;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:4:\"SAID\";s:3:\"nom\";s:3:\"Ben\";s:16:\"matriculefiscale\";s:4:\"1200\";s:13:\"bonducommande\";s:3:\"696\";s:9:\"telephone\";s:8:\"55450222\";s:7:\"adresse\";s:8:\"gggggggg\";s:10:\"codepostal\";s:4:\"8000\";s:5:\"ville\";s:6:\"fgdsfh\";s:4:\"pays\";s:7:\"tunisie\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:4:\"SAID\";s:3:\"nom\";s:3:\"Ben\";s:16:\"matriculefiscale\";s:4:\"1200\";s:13:\"bonducommande\";s:3:\"696\";s:9:\"telephone\";s:8:\"55450222\";s:7:\"adresse\";s:8:\"gggggggg\";s:10:\"codepostal\";s:4:\"8000\";s:5:\"ville\";s:6:\"fgdsfh\";s:4:\"pays\";s:7:\"tunisie\";s:10:\"complement\";N;}s:6:\"prixHT\";d:207;s:7:\"prixTTC\";d:246.69900000000001;s:5:\"token\";s:40:\"104ecf2b4a973a957801ca80eb0449d42e9a85a9\";}'),
(62, 16, 0, '2018-05-26 11:11:43', 0, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:18.738;}s:7:\"produit\";a:1:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";s:2:\"11\";s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"Meriam\";s:3:\"nom\";s:3:\"Ben\";s:16:\"matriculefiscale\";s:5:\"12555\";s:13:\"bonducommande\";s:5:\"12055\";s:9:\"telephone\";s:8:\"55555555\";s:7:\"adresse\";s:8:\"gggggggg\";s:10:\"codepostal\";s:4:\"2012\";s:5:\"ville\";s:6:\"fgdsfh\";s:4:\"pays\";s:6:\"dfgdfg\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"Meriam\";s:3:\"nom\";s:3:\"Ben\";s:16:\"matriculefiscale\";s:5:\"12555\";s:13:\"bonducommande\";s:5:\"12055\";s:9:\"telephone\";s:8:\"55555555\";s:7:\"adresse\";s:8:\"gggggggg\";s:10:\"codepostal\";s:4:\"2012\";s:5:\"ville\";s:6:\"fgdsfh\";s:4:\"pays\";s:6:\"dfgdfg\";s:10:\"complement\";N;}s:6:\"prixHT\";d:97.900000000000006;s:7:\"prixTTC\";d:116.63800000000001;s:5:\"token\";s:40:\"a3d1cee1e1e61f2f232e2ba160416954c8079f7c\";}'),
(63, 16, 1, '2018-06-14 12:23:11', 25, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:33.189999999999998;}s:7:\"produit\";a:2:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";s:2:\"12\";s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}i:32;a:4:{s:9:\"reference\";s:19:\"Chemises CARTONNEES\";s:8:\"quantite\";s:1:\"7\";s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:6:\"Meriam\";s:3:\"nom\";s:3:\"Ben\";s:16:\"matriculefiscale\";s:5:\"12555\";s:13:\"bonducommande\";s:5:\"12055\";s:9:\"telephone\";s:8:\"55555555\";s:7:\"adresse\";s:8:\"gggggggg\";s:10:\"codepostal\";s:4:\"2012\";s:5:\"ville\";s:6:\"fgdsfh\";s:4:\"pays\";s:6:\"dfgdfg\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:6:\"Meriam\";s:3:\"nom\";s:3:\"Ben\";s:16:\"matriculefiscale\";s:5:\"12555\";s:13:\"bonducommande\";s:5:\"12055\";s:9:\"telephone\";s:8:\"55555555\";s:7:\"adresse\";s:8:\"gggggggg\";s:10:\"codepostal\";s:4:\"2012\";s:5:\"ville\";s:6:\"fgdsfh\";s:4:\"pays\";s:6:\"dfgdfg\";s:10:\"complement\";N;}s:6:\"prixHT\";d:173.30000000000001;s:7:\"prixTTC\";d:206.49000000000001;s:5:\"token\";s:40:\"50096ff01d9406b1f0cd07b7e6cab100f1bf6d12\";}'),
(64, 16, 1, '2018-07-11 11:47:32', 26, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:1.7849999999999999;}s:7:\"produit\";a:1:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:4:\"eee\"\";s:3:\"nom\";s:3:\"eee\";s:16:\"matriculefiscale\";s:7:\"\"é\"\"é\";s:13:\"bonducommande\";s:12:\"\"éé\"é\"\"é\";s:9:\"telephone\";s:9:\"é\"\"éée\";s:7:\"adresse\";s:9:\"\"é\"é\"é\";s:10:\"codepostal\";s:9:\"\"é\"é\"é\";s:5:\"ville\";s:9:\"\"é\"é\"é\";s:4:\"pays\";s:10:\"\"é\"é\"eé\";s:10:\"complement\";s:7:\"\"\"eée\"\";}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:4:\"eee\"\";s:3:\"nom\";s:3:\"eee\";s:16:\"matriculefiscale\";s:7:\"\"é\"\"é\";s:13:\"bonducommande\";s:12:\"\"éé\"é\"\"é\";s:9:\"telephone\";s:9:\"é\"\"éée\";s:7:\"adresse\";s:9:\"\"é\"é\"é\";s:10:\"codepostal\";s:9:\"\"é\"é\"é\";s:5:\"ville\";s:9:\"\"é\"é\"é\";s:4:\"pays\";s:10:\"\"é\"é\"eé\";s:10:\"complement\";s:7:\"\"\"eée\"\";}s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.685;s:5:\"token\";s:40:\"c3334e7b21269add6e32da8f9eff6d6d0902aa8e\";}'),
(65, 16, 1, '2018-07-11 12:43:52', 27, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:6.1559999999999997;}s:7:\"produit\";a:3:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}i:32;a:4:{s:9:\"reference\";s:19:\"Chemises CARTONNEES\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;}i:36;a:4:{s:9:\"reference\";s:14:\"Chemises kRAFT\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:12.5;s:7:\"prixTTC\";d:14.881;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:4:\"tttr\";s:3:\"nom\";s:6:\"trtrtr\";s:16:\"matriculefiscale\";s:5:\"ttrtr\";s:13:\"bonducommande\";s:6:\"trtrtr\";s:9:\"telephone\";s:6:\"trtrtr\";s:7:\"adresse\";s:6:\"trtrtr\";s:10:\"codepostal\";s:4:\"ttrr\";s:5:\"ville\";s:6:\"trtrtr\";s:4:\"pays\";s:6:\"trtrtr\";s:10:\"complement\";s:6:\"trtrtr\";}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:4:\"tttr\";s:3:\"nom\";s:6:\"trtrtr\";s:16:\"matriculefiscale\";s:5:\"ttrtr\";s:13:\"bonducommande\";s:6:\"trtrtr\";s:9:\"telephone\";s:6:\"trtrtr\";s:7:\"adresse\";s:6:\"trtrtr\";s:10:\"codepostal\";s:4:\"ttrr\";s:5:\"ville\";s:6:\"trtrtr\";s:4:\"pays\";s:6:\"trtrtr\";s:10:\"complement\";s:6:\"trtrtr\";}s:6:\"prixHT\";d:30.899999999999999;s:7:\"prixTTC\";d:37.055999999999997;s:5:\"token\";s:40:\"f32b7784ab7895fd0fb0ebbb630d0b71b64eac24\";}'),
(66, 16, 1, '2018-07-11 12:46:14', 28, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:1.7849999999999999;}s:7:\"produit\";a:1:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:4:\"tttr\";s:3:\"nom\";s:6:\"trtrtr\";s:16:\"matriculefiscale\";s:5:\"ttrtr\";s:13:\"bonducommande\";s:6:\"trtrtr\";s:9:\"telephone\";s:6:\"trtrtr\";s:7:\"adresse\";s:6:\"trtrtr\";s:10:\"codepostal\";s:4:\"ttrr\";s:5:\"ville\";s:6:\"trtrtr\";s:4:\"pays\";s:6:\"trtrtr\";s:10:\"complement\";s:6:\"trtrtr\";}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:4:\"tttr\";s:3:\"nom\";s:6:\"trtrtr\";s:16:\"matriculefiscale\";s:5:\"ttrtr\";s:13:\"bonducommande\";s:6:\"trtrtr\";s:9:\"telephone\";s:6:\"trtrtr\";s:7:\"adresse\";s:6:\"trtrtr\";s:10:\"codepostal\";s:4:\"ttrr\";s:5:\"ville\";s:6:\"trtrtr\";s:4:\"pays\";s:6:\"trtrtr\";s:10:\"complement\";s:6:\"trtrtr\";}s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.685;s:5:\"token\";s:40:\"bd1e1515f50dc635d0c2d05b7f41f1cfe9dbfcdd\";}'),
(67, 16, 1, '2018-07-11 12:48:29', 29, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:1.7849999999999999;}s:7:\"produit\";a:1:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:4:\"tttr\";s:3:\"nom\";s:6:\"trtrtr\";s:16:\"matriculefiscale\";s:5:\"ttrtr\";s:13:\"bonducommande\";s:6:\"trtrtr\";s:9:\"telephone\";s:6:\"trtrtr\";s:7:\"adresse\";s:6:\"trtrtr\";s:10:\"codepostal\";s:4:\"ttrr\";s:5:\"ville\";s:6:\"trtrtr\";s:4:\"pays\";s:6:\"trtrtr\";s:10:\"complement\";s:6:\"trtrtr\";}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:4:\"tttr\";s:3:\"nom\";s:6:\"trtrtr\";s:16:\"matriculefiscale\";s:5:\"ttrtr\";s:13:\"bonducommande\";s:6:\"trtrtr\";s:9:\"telephone\";s:6:\"trtrtr\";s:7:\"adresse\";s:6:\"trtrtr\";s:10:\"codepostal\";s:4:\"ttrr\";s:5:\"ville\";s:6:\"trtrtr\";s:4:\"pays\";s:6:\"trtrtr\";s:10:\"complement\";s:6:\"trtrtr\";}s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.685;s:5:\"token\";s:40:\"ceac6abb23362728e258bfb873fd8e7b724c4ca8\";}'),
(68, 16, 0, '2018-07-11 12:55:21', 0, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:1.8999999999999999;}s:7:\"produit\";a:1:{i:32;a:4:{s:9:\"reference\";s:19:\"Chemises CARTONNEES\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:4:\"tttr\";s:3:\"nom\";s:6:\"trtrtr\";s:16:\"matriculefiscale\";s:5:\"ttrtr\";s:13:\"bonducommande\";s:6:\"trtrtr\";s:9:\"telephone\";s:6:\"trtrtr\";s:7:\"adresse\";s:6:\"trtrtr\";s:10:\"codepostal\";s:4:\"ttrr\";s:5:\"ville\";s:6:\"trtrtr\";s:4:\"pays\";s:6:\"trtrtr\";s:10:\"complement\";s:6:\"trtrtr\";}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:4:\"tttr\";s:3:\"nom\";s:6:\"trtrtr\";s:16:\"matriculefiscale\";s:5:\"ttrtr\";s:13:\"bonducommande\";s:6:\"trtrtr\";s:9:\"telephone\";s:6:\"trtrtr\";s:7:\"adresse\";s:6:\"trtrtr\";s:10:\"codepostal\";s:4:\"ttrr\";s:5:\"ville\";s:6:\"trtrtr\";s:4:\"pays\";s:6:\"trtrtr\";s:10:\"complement\";s:6:\"trtrtr\";}s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.4;s:5:\"token\";s:40:\"f11c759ad1ad1326702e1ec9001f617dfc1f198b\";}'),
(69, 16, 0, '2018-07-11 15:09:29', 0, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:1.7849999999999999;}s:7:\"produit\";a:1:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:4:\"tttr\";s:3:\"nom\";s:6:\"trtrtr\";s:16:\"matriculefiscale\";s:5:\"ttrtr\";s:13:\"bonducommande\";s:6:\"trtrtr\";s:9:\"telephone\";s:6:\"trtrtr\";s:7:\"adresse\";s:6:\"trtrtr\";s:10:\"codepostal\";s:4:\"ttrr\";s:5:\"ville\";s:6:\"trtrtr\";s:4:\"pays\";s:6:\"trtrtr\";s:10:\"complement\";s:6:\"trtrtr\";}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:4:\"tttr\";s:3:\"nom\";s:6:\"trtrtr\";s:16:\"matriculefiscale\";s:5:\"ttrtr\";s:13:\"bonducommande\";s:6:\"trtrtr\";s:9:\"telephone\";s:6:\"trtrtr\";s:7:\"adresse\";s:6:\"trtrtr\";s:10:\"codepostal\";s:4:\"ttrr\";s:5:\"ville\";s:6:\"trtrtr\";s:4:\"pays\";s:6:\"trtrtr\";s:10:\"complement\";s:6:\"trtrtr\";}s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.685;s:5:\"token\";s:40:\"7f2d34f52b28b9af8b2bdcb40ad57e1d4879b408\";}'),
(70, 16, 1, '2018-10-04 14:00:19', 30, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:1687.057;}s:7:\"produit\";a:2:{i:22;a:4:{s:9:\"reference\";s:14:\"PAPIER A4-80gr\";s:8:\"quantite\";s:3:\"994\";s:6:\"prixHT\";d:8.9000000000000004;s:7:\"prixTTC\";d:10.595000000000001;}i:32;a:4:{s:9:\"reference\";s:19:\"Chemises CARTONNEES\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:4:\"sqsq\";s:3:\"nom\";s:4:\"wafa\";s:16:\"matriculefiscale\";s:3:\"sqs\";s:13:\"bonducommande\";s:5:\"qsqsd\";s:9:\"telephone\";s:7:\"dsqdsds\";s:7:\"adresse\";s:6:\"2555sq\";s:10:\"codepostal\";s:8:\"sdqdsqds\";s:5:\"ville\";s:6:\"sddsds\";s:4:\"pays\";s:6:\"sdsdsd\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:4:\"sqsq\";s:3:\"nom\";s:4:\"wafa\";s:16:\"matriculefiscale\";s:3:\"sqs\";s:13:\"bonducommande\";s:5:\"qsqsd\";s:9:\"telephone\";s:7:\"dsqdsds\";s:7:\"adresse\";s:6:\"2555sq\";s:10:\"codepostal\";s:8:\"sdqdsqds\";s:5:\"ville\";s:6:\"sddsds\";s:4:\"pays\";s:6:\"sdsdsd\";s:10:\"complement\";N;}s:6:\"prixHT\";d:8856.1000000000004;s:7:\"prixTTC\";d:10543.156999999999;s:5:\"token\";s:40:\"7872607deb0fed934d9a48cf1296d69bf5903da4\";}'),
(71, 16, 1, '2018-10-25 09:35:04', 31, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:1.8100000000000001;}s:7:\"produit\";a:1:{i:32;a:4:{s:9:\"reference\";s:19:\"Chemises CARTONNEES\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:4:\"sqsq\";s:3:\"nom\";s:4:\"wafa\";s:16:\"matriculefiscale\";s:3:\"sqs\";s:13:\"bonducommande\";s:5:\"qsqsd\";s:9:\"telephone\";s:7:\"dsqdsds\";s:7:\"adresse\";s:6:\"2555sq\";s:10:\"codepostal\";s:8:\"sdqdsqds\";s:5:\"ville\";s:6:\"sddsds\";s:4:\"pays\";s:6:\"sdsdsd\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:4:\"sqsq\";s:3:\"nom\";s:4:\"wafa\";s:16:\"matriculefiscale\";s:3:\"sqs\";s:13:\"bonducommande\";s:5:\"qsqsd\";s:9:\"telephone\";s:7:\"dsqdsds\";s:7:\"adresse\";s:6:\"2555sq\";s:10:\"codepostal\";s:8:\"sdqdsqds\";s:5:\"ville\";s:6:\"sddsds\";s:4:\"pays\";s:6:\"sdsdsd\";s:10:\"complement\";N;}s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;s:5:\"token\";s:40:\"2ac41c79f2720b6253c41b5a6d8e64769aca3147\";}'),
(72, 16, 0, '2019-03-28 14:08:42', 0, 'a:7:{s:3:\"tva\";a:2:{s:3:\"%19\";d:7.54;s:2:\"%7\";d:16.399999999999999;}s:7:\"produit\";a:2:{i:22;a:4:{s:9:\"reference\";s:54:\"RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES PIONNER\";s:8:\"quantite\";s:1:\"4\";s:6:\"prixHT\";d:9.9000000000000004;s:7:\"prixTTC\";d:11.789999999999999;}i:35;a:4:{s:9:\"reference\";s:25:\"Disque Externe ADATA NH03\";s:8:\"quantite\";s:1:\"1\";s:6:\"prixHT\";d:234;s:7:\"prixTTC\";d:250.40000000000001;}}s:9:\"livraison\";a:8:{s:6:\"prenom\";s:4:\"sqsq\";s:3:\"nom\";s:4:\"wafa\";s:9:\"telephone\";s:7:\"dsqdsds\";s:7:\"adresse\";s:6:\"2555sq\";s:10:\"codepostal\";s:8:\"sdqdsqds\";s:5:\"ville\";s:6:\"sddsds\";s:4:\"pays\";s:6:\"sdsdsd\";s:10:\"complement\";N;}s:11:\"facturation\";a:8:{s:6:\"prenom\";s:4:\"sqsq\";s:3:\"nom\";s:4:\"wafa\";s:9:\"telephone\";s:7:\"dsqdsds\";s:7:\"adresse\";s:6:\"2555sq\";s:10:\"codepostal\";s:8:\"sdqdsqds\";s:5:\"ville\";s:6:\"sddsds\";s:4:\"pays\";s:6:\"sdsdsd\";s:10:\"complement\";N;}s:6:\"prixHT\";d:273.60000000000002;s:7:\"prixTTC\";d:297.54000000000002;s:5:\"token\";s:40:\"ab05b3af82eef0cee75bb117c8df43a0e17479dd\";}'),
(73, 16, 0, '2019-03-28 14:43:43', 0, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:3.7000000000000002;}s:7:\"produit\";a:2:{i:22;a:4:{s:9:\"reference\";s:54:\"RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES PIONNER\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.9000000000000004;s:7:\"prixTTC\";d:11.789999999999999;}i:32;a:4:{s:9:\"reference\";s:19:\"Chemises CARTONNEES\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.5;s:7:\"prixTTC\";d:11.31;}}s:9:\"livraison\";a:8:{s:6:\"prenom\";s:4:\"sqsq\";s:3:\"nom\";s:4:\"wafa\";s:9:\"telephone\";s:7:\"dsqdsds\";s:7:\"adresse\";s:6:\"2555sq\";s:10:\"codepostal\";s:8:\"sdqdsqds\";s:5:\"ville\";s:6:\"sddsds\";s:4:\"pays\";s:6:\"sdsdsd\";s:10:\"complement\";N;}s:11:\"facturation\";a:8:{s:6:\"prenom\";s:4:\"sqsq\";s:3:\"nom\";s:4:\"wafa\";s:9:\"telephone\";s:7:\"dsqdsds\";s:7:\"adresse\";s:6:\"2555sq\";s:10:\"codepostal\";s:8:\"sdqdsqds\";s:5:\"ville\";s:6:\"sddsds\";s:4:\"pays\";s:6:\"sdsdsd\";s:10:\"complement\";N;}s:6:\"prixHT\";d:19.399999999999999;s:7:\"prixTTC\";d:23.100000000000001;s:5:\"token\";s:40:\"4f26b32e2394dca430b91d488b8f993f9a0b6732\";}'),
(74, 16, 1, '2019-03-28 14:52:18', 32, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:1.8899999999999999;}s:7:\"produit\";a:1:{i:22;a:4:{s:9:\"reference\";s:54:\"RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES PIONNER\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.9000000000000004;s:7:\"prixTTC\";d:11.789999999999999;}}s:9:\"livraison\";a:8:{s:6:\"prenom\";s:4:\"sqsq\";s:3:\"nom\";s:4:\"wafa\";s:9:\"telephone\";s:7:\"dsqdsds\";s:7:\"adresse\";s:6:\"2555sq\";s:10:\"codepostal\";s:8:\"sdqdsqds\";s:5:\"ville\";s:6:\"sddsds\";s:4:\"pays\";s:6:\"sdsdsd\";s:10:\"complement\";N;}s:11:\"facturation\";a:8:{s:6:\"prenom\";s:4:\"sqsq\";s:3:\"nom\";s:4:\"wafa\";s:9:\"telephone\";s:7:\"dsqdsds\";s:7:\"adresse\";s:6:\"2555sq\";s:10:\"codepostal\";s:8:\"sdqdsqds\";s:5:\"ville\";s:6:\"sddsds\";s:4:\"pays\";s:6:\"sdsdsd\";s:10:\"complement\";N;}s:6:\"prixHT\";d:9.9000000000000004;s:7:\"prixTTC\";d:11.789999999999999;s:5:\"token\";s:40:\"7ca4a503689b761d296aac3fc203ce05dbd1bec7\";}'),
(75, 16, 1, '2019-03-28 14:58:53', 33, 'a:7:{s:3:\"tva\";a:1:{s:3:\"%19\";d:1.8859999999999999;}s:7:\"produit\";a:1:{i:22;a:4:{s:9:\"reference\";s:54:\"RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES PIONNER\";s:8:\"quantite\";i:1;s:6:\"prixHT\";d:9.9000000000000004;s:7:\"prixTTC\";d:11.786;}}s:9:\"livraison\";a:10:{s:6:\"prenom\";s:5:\"aaaaa\";s:3:\"nom\";s:3:\"aaa\";s:16:\"matriculefiscale\";s:6:\"aaaaaa\";s:13:\"bonducommande\";s:9:\"aaaaaaaaa\";s:9:\"telephone\";s:9:\"aaaaaaaaa\";s:7:\"adresse\";s:7:\"aaaaaaa\";s:10:\"codepostal\";s:7:\"aaaaaaa\";s:5:\"ville\";s:7:\"aaaaaaa\";s:4:\"pays\";s:8:\"aaaaaaaa\";s:10:\"complement\";N;}s:11:\"facturation\";a:10:{s:6:\"prenom\";s:5:\"aaaaa\";s:3:\"nom\";s:3:\"aaa\";s:16:\"matriculefiscale\";s:6:\"aaaaaa\";s:13:\"bonducommande\";s:9:\"aaaaaaaaa\";s:9:\"telephone\";s:9:\"aaaaaaaaa\";s:7:\"adresse\";s:7:\"aaaaaaa\";s:10:\"codepostal\";s:7:\"aaaaaaa\";s:5:\"ville\";s:7:\"aaaaaaa\";s:4:\"pays\";s:8:\"aaaaaaaa\";s:10:\"complement\";N;}s:6:\"prixHT\";d:9.9000000000000004;s:7:\"prixTTC\";d:11.786;s:5:\"token\";s:40:\"660961dedc0a62dfd68d23bb8d695c2481cb7dc1\";}');

-- --------------------------------------------------------

--
-- Structure de la table `composantinformatique`
--

DROP TABLE IF EXISTS `composantinformatique`;
CREATE TABLE IF NOT EXISTS `composantinformatique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tva_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_457952E14D79775F` (`tva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `composantinformatique`
--

INSERT INTO `composantinformatique` (`id`, `tva_id`, `titre`, `description`, `prix`, `disponible`, `path`) VALUES
(1, 7, 'CLAVIER USB KB-42', 'CLAVIER USB KB-42', 8.19, 0, '5.jpg'),
(2, 7, 'CLAVIER USB KB-28', 'CLAVIER USB KB-28', 9.62, 0, '6.jpg'),
(3, 7, 'COMBO CLAVIER & SOURIS SANS FIL PR-KB02GCM', 'COMBO CLAVIER & SOURIS SANS FIL PR-KB02GCM', 30.03, 0, '7.jpg'),
(4, 7, 'COMBO CLAVIER & SOURIS USB HAVIT HV-K513CM', 'COMBO CLAVIER & SOURIS USB HAVIT HV-K513CM', 16.25, 0, '8.jpg'),
(5, 7, 'SOURIS USB HOT01', 'SOURIS USB HOT01', 3.38, 0, '9.jpg'),
(6, 7, 'SOURIS USB MS60', 'SOURIS USB MS60', 3.77, 0, '10.png'),
(7, 7, 'SOURIS USB T212', 'SOURIS USB T212', 6.24, 0, '11.png'),
(8, 7, 'SOURIS USB MS58', 'SOURIS USB MS58', 5.46, 0, '12.jpg'),
(9, 7, 'SOURIS USB MS52', 'SOURIS USB MS52', 5.46, 0, '13.png'),
(10, 7, 'SOURIS USB MS56', 'SOURIS USB MS56', 5.46, 0, '17.jpg'),
(11, 7, 'SOURIS USB MS50', 'SOURIS USB MS50', 5.46, 0, '15.jpg'),
(12, 7, 'SOURIS USB MS57', 'SOURIS USB MS57', 5.46, 0, '16.jpg'),
(13, 7, 'SOURIS USB MS59', 'SOURIS USB MS59', 5.46, 0, '17.jpg'),
(14, 7, 'SOURIS USB GAMER X-3', 'SOURIS USB GAMER X-3', 16.25, 0, '18.png'),
(15, 7, 'SOURIS USB GAMER G-5', 'SOURIS USB GAMER G-5', 17.55, 0, '19.png'),
(16, 7, 'SOURIS SANS FIL MS67', 'SOURIS SANS FIL MS67', 10.14, 0, '20.jpg'),
(17, 7, 'SOURIS SANS FIL MS68', 'SOURIS SANS FIL MS68', 10.14, 0, '21.jpg'),
(18, 7, 'SOURIS SANS FIL MS69', 'SOURIS SANS FIL MS69', 10.14, 0, '22.jpg'),
(19, 7, 'SOURIS SANS FIL MS70', 'SOURIS SANS FIL MS70', 10.14, 0, '23.jpg'),
(20, 7, 'SOURIS SANS FIL MS71', 'SOURIS SANS FIL MS71', 11.51, 0, '24.jpg'),
(21, 7, 'SOURIS SANS FIL MS66', 'SOURIS SANS FIL MS66', 11.51, 0, '26.png'),
(23, 7, 'SOURIS SANS FIL MS73', 'SOURIS SANS FIL MS73', 12.22, 0, '27.png'),
(24, 7, 'SOURIS SANS FIL MS72', 'SOURIS SANS FIL MS72', 12.22, 0, '28.png'),
(25, 7, 'SOURIS LOGITECH M187', 'SOURIS LOGITECH M187', 19.11, 0, '29.jpg'),
(26, 7, 'SOURIS LOGITECH M235', 'SOURIS LOGITECH M235', 19.76, 0, '30.png'),
(27, 7, 'SOURI LOGITECH M171', 'SOURI LOGITECH M171', 19.76, 0, '31.png'),
(28, 7, 'SOURIS LOGITECH M905', 'SOURIS LOGITECH M905', 22.49, 0, '32.png'),
(29, 7, 'SOURIS LOGITECH M185', 'SOURIS LOGITECH M185', 20.54, 0, '33.png'),
(30, 7, 'OAKORN OK-808', 'OAKORN OK-808', 9.75, 0, '34.png'),
(31, 7, 'OAKORN OK-301', 'OAKORN OK-301', 14.69, 0, '35.png'),
(32, 7, 'OAKORN EP-16', 'OAKORN EP-16', 21.97, 0, '36.png'),
(33, 7, 'PROTECH USB PRO 04', 'PROTECH USB PRO 04', 24.31, 0, '37.png'),
(34, 7, 'PC VIBREUR PROTECH USB-703B', 'PC VIBREUR PROTECH USB-703B', 8.78, 0, '38.png'),
(35, 7, 'PC SIMPLE PROTECH USB-8828', 'PC SIMPLE PROTECH USB-8828', 5.46, 0, '38.png'),
(36, 7, 'PC DOUBLE VIBREUR PROTECH USB-8878B', 'PC DOUBLE VIBREUR PROTECH USB-8878B', 16.25, 0, '40.png'),
(37, 7, 'PLAYSTATION 2 LBM', 'PLAYSTATION 2 LBM', 9.75, 0, '41.png'),
(38, 8, 'SPEAKER 2.0 RZ-180', 'SPEAKER 2.0 RZ-180', 7.41, 0, '42.jpg'),
(39, 8, 'SPEAKER 2.0 RZ-480', 'SPEAKER 2.0 RZ-480', 9.75, 0, '43.jpg'),
(40, 8, 'SPEAKER 2.0 RZ-390', 'SPEAKER 2.0 RZ-390', 16.45, 0, '44.jpg'),
(41, 8, 'SPEAKER 2.1 RS-820', 'SPEAKER 2.1 RS-820', 26.78, 0, '45.jpg'),
(42, 8, 'SPEAKER 2.1 XSD-2', 'SPEAKER 2.1 XSD-2', 26.78, 0, '46.jpg'),
(43, 8, 'SUBWOOFER 2.1 PR-314 LECTEUR FLASH & CM & RADIO', 'SUBWOOFER 2.1 PR-314 LECTEUR FLASH & CM & RADIO', 110.5, 0, '47.jpg'),
(44, 8, 'SUBWOOFER 4.1 PR-425 LECTEUR FLASH & CM & RADIO', 'SUBWOOFER 4.1 PR-425 LECTEUR FLASH & CM & RADIO', 135.2, 0, '48.jpg'),
(45, 8, 'ECOUTEUR SIMPLE', 'ECOUTEUR SIMPLE', 4.29, 0, '49.png'),
(46, 8, 'ECOUTEUR MK-800', 'ECOUTEUR MK-800', 6.24, 0, '50.png'),
(47, 8, 'ECOUTEUR E002/03 /PC', 'ECOUTEUR E002/03 /PC', 12.35, 0, '51.png'),
(48, 8, 'ECOUTEUR E092 /PC', 'ECOUTEUR E092 /PC', 12.35, 0, '52.png'),
(49, 8, 'ECOUTEUR KEENION E028', 'ECOUTEUR KEENION E028', 12.35, 0, '53.png'),
(50, 8, 'ECOUTEUR KEENION E203', 'ECOUTEUR KEENION E203', 10.14, 0, '54.png'),
(51, 7, 'WEBCAM PROTECH 107', 'WEBCAM PROTECH 107', 12.35, 0, '55....png'),
(52, 7, 'WEBCAM HAVIT 302', 'WEBCAM HAVIT 302', 16.9, 0, '56.png'),
(53, 7, 'REFEROIDISSEUR N191', 'REFEROIDISSEUR N191', 8.58, 0, '79.png'),
(54, 7, 'REFEROIDISSEUR N131', 'REFEROIDISSEUR N131', 12.35, 0, '80.jpg'),
(55, 7, 'REFEROIDISSEUR 2004', 'REFEROIDISSEUR 2004', 18.59, 0, '81.png'),
(56, 7, 'REFEROIDISSEUR 2002', 'REFEROIDISSEUR 2002', 18.59, 0, '82.png'),
(57, 7, 'POCHETTE CD/DVD', 'POCHETTE CD/DVD', 3.71, 0, '89.png'),
(58, 7, 'CLE WIFI PROTECH 150MBPS', 'CLE WIFI PROTECH 150MBPS', 16.25, 0, '90.png'),
(59, 7, 'VENTILATEUR CPU LGA1155/1156', 'VENTILATEUR CPU LGA1155/1156', 6.11, 0, '91.png'),
(60, 7, 'SOUFLEUR', 'SOUFLEUR', 42.51, 0, '92.jpg'),
(61, 7, 'PATE THERMIQUE PM', 'PATE THERMIQUE PM', 0.91, 0, '93.jpg'),
(62, 7, 'PATE THERMIQUE GM', 'PATE THERMIQUE GM', 2.47, 0, '94.jpg'),
(63, 7, 'KIT DE NETTOYAGE PC OPULA', 'KIT DE NETTOYAGE PC OPULA', 2.47, 0, '95.jpg'),
(64, 7, 'KIT DE NETTOYAGE PC', 'KIT DE NETTOYAGE PC', 2.47, 0, '96.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `destockage`
--

DROP TABLE IF EXISTS `destockage`;
CREATE TABLE IF NOT EXISTS `destockage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `prix1` double NOT NULL,
  `tva_id` int(11) NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82EC636C4D79775F` (`tva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `destockage`
--

INSERT INTO `destockage` (`id`, `titre`, `description`, `prix`, `prix1`, `tva_id`, `disponible`, `path`) VALUES
(6, 'Z4B04A', 'imprimante hp ink tank 315', 390, 378, 7, 1, 'imprimante-jet-d-encre-ink-tank-315-3en1-couleur-z4b04a.jpg'),
(7, 'V1N05C', 'HP DESKJET 2632 ALL PRINTER', 98.8, 82.8, 7, 1, 'c5a49852-72a0-4dd4-b31c-fcc58452dbee._SR300,300_.jpg'),
(8, '1WY64EA', 'HP 250G6 I3 6006 4GB 15.6', 1180, 1050, 7, 1, 'ordinateurs_Ordinateur_portable_HP_250G6_i3_6006U_15_4GB-737411-images800jpg-1.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `disque_dur_externe`
--

DROP TABLE IF EXISTS `disque_dur_externe`;
CREATE TABLE IF NOT EXISTS `disque_dur_externe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `tva_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EE6517304D79775F` (`tva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `disque_dur_externe`
--

INSERT INTO `disque_dur_externe` (`id`, `titre`, `description`, `prix`, `disponible`, `tva_id`, `path`) VALUES
(6, 'Disque Externe ADATA AHD710', 'Couleur : Bleu - Jaune - Noir Format de Disque : 2.5 Interface : USB 3.0 Capacité : 1 To - 2 To', 185, 1, 8, '3.png'),
(7, 'Disque Externe ADATA HV 610', 'Couleur : Blanc - Noir Format de Disque : 2.5 Capacité : 1 To', 165, 1, 8, '2.png'),
(8, 'Disque Externe ADATA NH03', 'Interface : USB 3.0 Capacité : 2 To', 260, 1, 8, '1.png');

-- --------------------------------------------------------

--
-- Structure de la table `fournituredubureau`
--

DROP TABLE IF EXISTS `fournituredubureau`;
CREATE TABLE IF NOT EXISTS `fournituredubureau` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tva_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FF232BB04D79775F` (`tva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `fournituredubureau`
--

INSERT INTO `fournituredubureau` (`id`, `tva_id`, `titre`, `description`, `prix`, `disponible`, `path`) VALUES
(1, 8, 'STYLO A BILLE,POINTE MOYENNE OU FINE ,BLEU', 'STYLO A BILLE,POINTE MOYENNE OU FINE ,BLEU', 0.45, 1, '344.jpg'),
(2, 8, 'STYLO A BILLE,POINTE MOYENNE OU FINE,NOIR', 'STYLO A BILLE,POINTE MOYENNE OU FINE,NOIR', 0.45, 1, '345.jpg'),
(3, 8, 'STYLO A BILLE,POINTE MOYENNE OU FINE,ROUGE', 'STYLO A BILLE,POINTE MOYENNE OU FINE,ROUGE', 0.45, 1, '346.jpg'),
(4, 8, 'STYLO A BILLE,POINTE MOYENNE OU FINE,VERT', 'STYLO A BILLE,POINTE MOYENNE OU FINE,VERT', 0.45, 1, '347.jpg'),
(5, 8, 'STYLO GEL POINTE 0,5 MM OU 0,7 MM BLEU', 'STYLO GEL POINTE 0,5 MM OU 0,7 MM BLEU', 3.8, 1, '348.jpg'),
(6, 8, 'STYLO GEL POINTE 0,5 MM OU 0,7 MM NOIR', 'STYLO GEL POINTE 0,5 MM OU 0,7 MM NOIR', 3.8, 1, '349.jpg'),
(7, 8, 'STYLO GEL POINTE 0,5 MM OU 0,7 MM ROUGE', 'STYLO GEL POINTE 0,5 MM OU 0,7 MM ROUGE', 3.8, 1, '350.jpg'),
(8, 8, 'STYLO GEL POINTE 0,5 MM OU 0,7 MM VERT', 'STYLO GEL POINTE 0,5 MM OU 0,7 MM VERT', 3.8, 1, '351.jpg'),
(9, 8, 'STYLO A BILLE (BLEU) SUR SOCLE', 'STYLO A BILLE (BLEU) SUR SOCLE', 8.9, 1, '352.jpg'),
(10, 8, 'Marquer tableau Blanc Rouge', 'Marquer tableau Blanc Rouge', 1.32, 1, '353.jpg'),
(11, 8, 'Marquer tableau Blanc Vert', 'Marquer tableau Blanc Vert', 1.32, 1, '354.jpg'),
(12, 8, 'Marquer tableau Blanc Noir', 'Marquer tableau Blanc Noir', 1.32, 1, '355.jpg'),
(13, 8, 'Marquer permanent Rouge NEW WILSON', 'Marquer permanent Rouge NEW WILSON', 0.99, 1, '356.jpg'),
(14, 8, 'Marquer permanent Noir NEW WILSON', 'Marquer permanent Noir NEW WILSON', 0.99, 1, '358.jpg'),
(15, 8, 'Marquer permanent Bleu NEW WILSON', 'Marquer permanent Bleu NEW WILSON', 0.99, 1, '359.jpg'),
(16, 8, 'MARQEUR PERMENANT MUTI USAGES (PAPIER,PLASTIQUE,VERRE,TISSU…)POINTE BISO :TRAITS 3', 'MARQEUR PERMENANT MUTI USAGES (PAPIER,PLASTIQUE,VERRE,TISSU…)POINTE BISO :TRAITS 3', 1.68, 1, '360.jpg'),
(17, 8, 'GOMES BLANCHES', 'GOMES BLANCHES', 0.38, 1, '365.jpg'),
(18, 8, 'AGRAFEUSES DE BUREAU,CAPACTE D’AGRAFAGE :25 TYPE D’AGRAFAGES :26/6,24/6', 'AGRAFEUSES DE BUREAU,CAPACTE D’AGRAFAGE :25 TYPE D’AGRAFAGES :26/6,24/6', 8.9, 1, '366.jpg'),
(19, 8, 'TAILLE CRAYON CLASSIC 2TROUS EN METAL POUR 2 GRANDEURS DE CRAYON POUR CRAYON JUSQU\'A UN', 'TAILLE CRAYON CLASSIC 2TROUS EN METAL POUR 2 GRANDEURS DE CRAYON POUR CRAYON JUSQU\'A UN', 0.89, 1, '367.jpg'),
(20, 8, 'ENCRE A TAMPON BLEU', 'ENCRE A TAMPON BLEU', 0.85, 1, '387.jpg'),
(21, 8, 'RECHARGE CUBE DIFFERENTES COULEURS (9*9*9)', 'RECHARGE CUBE DIFFERENTES COULEURS (9*9*9)', 2.2, 1, '369.jpg'),
(22, 8, 'CISEAUX DE BUREAU GM', 'CISEAUX DE BUREAU GM', 3.8, 1, '370.jpg'),
(23, 8, 'ARRACHE AGRAPHE POUR TOUTES LES AGRAPHES STANDARDS', 'ARRACHE AGRAPHE POUR TOUTES LES AGRAPHES STANDARDS', 1.2, 1, '371.jpg'),
(24, 8, 'BLOC NOTES A5 (14,8*21cm) DE 100 PAGES MICRO PERFOREES', 'BLOC NOTES A5 (14,8*21cm) DE 100 PAGES MICRO PERFOREES', 1.78, 1, '372.jpg'),
(25, 8, 'BLOC NOTES A4 (21*29,7cm) DE 100 PAGES MICRO PERFOREES', 'BLOC NOTES A4 (21*29,7cm) DE 100 PAGES MICRO PERFOREES', 2.3, 1, '373.jpg'),
(26, 8, 'BLOC rep (postit notes) MUNIS D’UN ADHESIF REVOLITIONNAIRE BLOC DE 100 FEUILLES 75*75MM', 'BLOC rep (postit notes) MUNIS D’UN ADHESIF REVOLITIONNAIRE BLOC DE 100 FEUILLES 75*75MM', 2.6, 1, '374.jpg'),
(27, 8, 'PERFORATEUR DE BUREAU METALIQUE :2TROUS AVEC INDICATEUR D’ALIGNEMENT DES FEUILLES CAPACITE DE PERFORATION :25 FEULLES', 'PERFORATEUR DE BUREAU METALIQUE :2TROUS AVEC INDICATEUR D’ALIGNEMENT DES FEUILLES CAPACITE DE PERFORATION :25 FEULLES', 9.8, 1, '375.jpg'),
(28, 8, 'REGLE PLATE GRADUEE 40 CM EN PLASTIQUE', 'REGLE PLATE GRADUEE 40 CM EN PLASTIQUE', 0.95, 1, '376.jpg'),
(29, 8, 'BOITE DE 1000 AGRAFES 24/6', 'BOITE DE 1000 AGRAFES 24/6', 0.54, 1, '377.jpg'),
(30, 8, 'BOITE D’ELASTIQUE DE 50 GR', 'BOITE D’ELASTIQUE DE 50 GR', 2.9, 1, '378.jpg'),
(31, 8, 'PAQUET DE 100 TROMBONS (33mm)', 'PAQUET DE 100 TROMBONS (33mm)', 0.94, 1, '379.jpg'),
(32, 8, 'CAHIER SPIRAL A4 DE 200 PAGES COUVERTURE VERNIE LAVABLE INTERIEUR EN PAPIER ETRA BLANC SATINE', 'CAHIER SPIRAL A4 DE 200 PAGES COUVERTURE VERNIE LAVABLE INTERIEUR EN PAPIER ETRA BLANC SATINE', 8.9, 1, '380.jpg'),
(33, 8, 'ADHESIF TRANSPARANT ENVIRON 18MM*60M', 'ADHESIF TRANSPARANT ENVIRON 18MM*60M', 0.78, 1, '381.jpg'),
(34, 8, 'ADHESIF POUR EMBALLAGE MARRON ENVIRON 50MM*50M', 'ADHESIF POUR EMBALLAGE MARRON ENVIRON 50MM*50M', 1.56, 1, '382.jpg'),
(35, 8, 'TUBE COLLE PM', 'TUBE COLLE PM', 0.68, 1, '383.jpg'),
(36, 8, 'Boite à tampon bleu', 'Boite à tampon bleu', 3.65, 1, '386.jpg'),
(37, 8, 'Encre à tampon bleu', 'Encre à tampon bleu', 0.98, 1, '387.jpg'),
(38, 8, 'Encre à tampon rouge', 'Encre à tampon rouge', 0.98, 1, '388.jpg'),
(39, 8, 'Agrafeuse NOVUS STABIL 24/6', 'Agrafeuse NOVUS STABIL 24/6', 12.3, 1, '389.jpg'),
(40, 8, 'Agrafeuse KANGARO 24/6', 'Agrafeuse KANGARO 24/6', 9.8, 1, '390.jpg'),
(41, 8, 'Perforatrice PUNCH', 'Perforatrice PUNCH', 8.6, 1, '391.jpg'),
(42, 8, 'Arrache agrafe', 'Arrache agrafe', 1.17, 1, '392.jpg'),
(43, 8, 'PAQUET DE 100 POCHETTES LISSES DE QUALITE PERFOEE ET INCOLORE ,EN POLYPROPYLENE POUR FUILLES A4', 'PAQUET DE 100 POCHETTES LISSES DE QUALITE PERFOEE ET INCOLORE ,EN POLYPROPYLENE POUR FUILLES A4', 9.8, 1, '431.jpg'),
(44, 8, 'CARNET DE BORD POUR VOITURE DE SERVICE', 'CARNET DE BORD POUR VOITURE DE SERVICE', 6, 1, '430.jpg'),
(45, 8, 'PORTE DOCUMENTS POLYCLASS A4 DE 200 VUES', 'PORTE DOCUMENTS POLYCLASS A4 DE 200 VUES', 8.8, 1, '429.jpg'),
(46, 8, 'PORTE CHARGE CUBE CARRE METALLIQUE', 'PORTE CHARGE CUBE CARRE METALLIQUE', 3.6, 1, '428.jpg'),
(47, 8, 'ROULEAU CALQUE 1,10M 60 GR', 'ROULEAU CALQUE 1,10M 60 GR', 90, 1, '426.jpg'),
(48, 8, 'ROULEAU CALQUE 1,10M 90 GR', 'ROULEAU CALQUE 1,10M 90 GR', 85, 1, '426.jpg'),
(49, 8, 'BAGUETTE A RELIER N14MM', 'BAGUETTE A RELIER N14MM', 0.98, 1, '425.jpg'),
(50, 8, 'BAGUETTE A RELIER N12MM', 'BAGUETTE A RELIER N12MM', 0.59, 1, '421.jpg'),
(51, 8, 'BAGUETTE A RELIER N10MM', 'BAGUETTE A RELIER N10MM', 0.56, 1, '423.jpg'),
(52, 8, 'BAGUETTE A RELIER N8MM', 'BAGUETTE A RELIER N8MM', 0.25, 1, '422.jpg'),
(53, 8, 'PAQUET DE 100 SPIRAL N°32', 'PAQUET DE 100 SPIRAL N°32', 22, 1, '416.jpg'),
(54, 8, 'PAQUET DE 100 SPIRAL N°8', 'PAQUET DE 100 SPIRAL N°8', 5.8, 1, '418.jpg'),
(55, 8, 'PAQUET DE 100 SPIRAL N°6', 'PAQUET DE 100 SPIRAL N°6', 5.2, 1, '417.jpg'),
(56, 8, 'PAQUET DE 100 SPIRAL N°25', 'PAQUET DE 100 SPIRAL N°25', 17, 1, '419.jpg'),
(57, 8, 'PAQUET DE 100 SPIRAL N°22', 'PAQUET DE 100 SPIRAL N°22', 26, 1, '415.jpg'),
(58, 8, 'DEVIDOIRE SCOTCH', 'DEVIDOIRE SCOTCH', 7.8, 1, '413.jpg'),
(59, 8, 'Cahier 5/5 (96P G CARREAU)', 'Cahier 5/5 (96P G CARREAU)', 1.78, 1, '412.jpg'),
(60, 8, 'PORTE REVUE', 'PORTE REVUE', 6.9, 1, '411.jpg'),
(61, 8, 'CHEMISE A CLIP', 'CHEMISE A CLIP', 1.9, 1, '410.jpg'),
(62, 8, 'PARAPHEUR DE 12 VOLETS COUVERTURE CARTON PLASTIC', 'PARAPHEUR DE 12 VOLETS COUVERTURE CARTON PLASTIC', 4.8, 1, '409.jpg'),
(63, 8, 'PARAPHEUR DE 12 VOLETS COUVERTURE CARTON PLASTIC', 'PARAPHEUR DE 12 VOLETS COUVERTURE CARTON PLASTIC', 4.8, 1, '408.jpg'),
(64, 8, 'CHEMISE A RABT', 'CHEMISE A RABT', 1.45, 1, '407.jpg'),
(65, 8, 'CHEMISE CARTONNEE 180 G FORMAT 24*32CM DIFFERENTES COULEURS', 'CHEMISE CARTONNEE 180 G FORMAT 24*32CM DIFFERENTES COULEURS', 0.1, 1, '406.jpg'),
(66, 8, 'Intercalaire Transparent de 50', 'Intercalaire Transparent de 50', 4.9, 1, '405.jpg'),
(67, 8, 'Intercalaire Transparent de 100', 'Intercalaire Transparent de 100', 8.8, 1, '404.jpg'),
(68, 8, 'BATTON DE COLE (ALENTOUR 20 GRS _25GRS)', 'BATTON DE COLE (ALENTOUR 20 GRS _25GRS)', 0.97, 1, '361.jpg'),
(69, 8, 'BOITE DE 4 SURLGNEURS (4 COULEURS)', 'BOITE DE 4 SURLGNEURS (4 COULEURS)', 4.8, 1, '362.jpg'),
(70, 8, 'PORTE MINE RECHARGEABLE/0,5+BOITE MINES 0,5MM', 'PORTE MINE RECHARGEABLE/0,5+BOITE MINES 0,5MM', 6.8, 1, '363.jpg'),
(71, 8, 'CORRECTEUR A PINCEAU SET DE 2 BOUTEILLES,UN FLACON FLUIDE CORRECTEUR (20ml) ET UN FLACON', 'CORRECTEUR A PINCEAU SET DE 2 BOUTEILLES,UN FLACON FLUIDE CORRECTEUR (20ml) ET UN FLACON', 1.7, 1, '364.jpg'),
(72, 8, 'CRAYON NOIR N°2 HB', 'CRAYON NOIR N°2 HB', 0.38, 1, '432.jpg'),
(73, 8, 'Cahier 5/5 (96P G CARREAU)', 'Cahier 5/5 (96P G CARREAU)', 1.78, 1, '372.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `impression`
--

DROP TABLE IF EXISTS `impression`;
CREATE TABLE IF NOT EXISTS `impression` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tva_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_245BB1B14D79775F` (`tva_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `imprimante`
--

DROP TABLE IF EXISTS `imprimante`;
CREATE TABLE IF NOT EXISTS `imprimante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tva_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4DF2C3AA4D79775F` (`tva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `imprimante`
--

INSERT INTO `imprimante` (`id`, `tva_id`, `titre`, `description`, `prix`, `disponible`, `path`) VALUES
(1, 7, 'Z4B04A', 'imprimante hp ink tank 315', 378, 1, 'imprimante-jet-d-encre-ink-tank-315-3en1-couleur-z4b04a.jpg'),
(2, 7, 'V1N05C', 'HP DESKJET 2632 ALL PRINTER', 82.8, 1, 'c5a49852-72a0-4dd4-b31c-fcc58452dbee._SR300,300_.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `logiciels`
--

DROP TABLE IF EXISTS `logiciels`;
CREATE TABLE IF NOT EXISTS `logiciels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tva_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E29B40024D79775F` (`tva_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `onduleur`
--

DROP TABLE IF EXISTS `onduleur`;
CREATE TABLE IF NOT EXISTS `onduleur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tva_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C698A4E64D79775F` (`tva_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ordinateurdebureau`
--

DROP TABLE IF EXISTS `ordinateurdebureau`;
CREATE TABLE IF NOT EXISTS `ordinateurdebureau` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `tva_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_694020254D79775F` (`tva_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ordinateurportable`
--

DROP TABLE IF EXISTS `ordinateurportable`;
CREATE TABLE IF NOT EXISTS `ordinateurportable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tva_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E48DEB4C4D79775F` (`tva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `ordinateurportable`
--

INSERT INTO `ordinateurportable` (`id`, `titre`, `description`, `prix`, `disponible`, `path`, `tva_id`) VALUES
(10, '1WY64EA', 'HP 250G6 I3 6006 4GB 15.6', 1050, 1, 'ordinateurs_Ordinateur_portable_HP_250G6_i3_6006U_15_4GB-737411-images800jpg-1.jpg', 7);

-- --------------------------------------------------------

--
-- Structure de la table `papier`
--

DROP TABLE IF EXISTS `papier`;
CREATE TABLE IF NOT EXISTS `papier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tva_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_940A2D5E4D79775F` (`tva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `papier`
--

INSERT INTO `papier` (`id`, `tva_id`, `titre`, `description`, `prix`, `disponible`, `path`) VALUES
(27, 8, 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES PIONNER', 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES PIONNER', 9.9, 1, 'A4.png'),
(28, 8, 'Paquet Chemises CARTONNEES (100) 180 G FORMAT 24*32 DIFFERENTS COULEURS', 'Paquet Chemises CARTONNEES (100) 180 G FORMAT 24*32 DIFFERENTS COULEURS', 13.5, 1, 'Chemise Cartonnee.png'),
(29, 8, 'Paquet Chemises kRAFT (200) 24*32 CM', 'Paquet Chemises kRAFT (200) 24*32 CM', 11.8, 1, 'Chemise Craft.png'),
(30, 8, 'RAME PAGE DE GARDE TRANSPARENT A4 DE 100 FEUILLES', 'RAME PAGE DE GARDE TRANSPARENT A4 DE 100 FEUILLES', 15.6, 1, '323.jpg'),
(31, 8, 'RAME DE PAPIER DE GARDE CARTONNEE A4 DE 100 FEUILLES', 'RAME DE PAPIER DE GARDE CARTONNEE A4 DE 100 FEUILLES', 13.2, 1, '324.jpg'),
(32, 8, 'RAME PAPIER ETRA BLANC A3 DE 500 FEUILLES', 'RAME PAPIER ETRA BLANC A3 DE 500 FEUILLES', 16.5, 1, '326.jpg'),
(33, 8, 'RAME PAPIER EXTRA STRONG', 'RAME PAPIER EXTRA STRONG', 12.3, 1, '327.jpg'),
(34, 8, 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES', 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES', 8.6, 1, '328.jpg'),
(35, 8, 'RAME OFFSET DE 100 FEUILLES FORMAT A4 (différents couleurs)', 'RAME OFFSET DE 100 FEUILLES FORMAT A4 (différents couleurs)', 14.7, 1, '328.jpg'),
(36, 8, 'Papier A4 COULEUR VERT', 'Papier A4 COULEUR VERT', 13.3, 1, '329.jpg'),
(37, 8, 'Papier A4 COULEUR ROUGE', 'Papier A4 COULEUR ROUGE', 13.3, 1, '330.jpg'),
(38, 8, 'Papier A4 COULEUR BLEU', 'Papier A4 COULEUR BLEU', 13.3, 1, '331.jpg'),
(39, 8, 'Rame Papier consone Bleu', 'Rame Papier consone Bleu', 13.3, 1, '332.jpg'),
(40, 8, 'REGISTRE A4 400 PAGES', 'REGISTRE A4 400 PAGES', 6.8, 1, '333.jpg'),
(41, 8, 'REGISTRE ARRIVEE ARABE', 'REGISTRE ARRIVEE ARABE', 9, 1, '334.jpg'),
(42, 8, 'REGISTRE DEPART ARABE', 'REGISTRE DEPART ARABE', 9, 1, '335.jpg'),
(43, 8, 'REGISTRE A4 300 PAGES', 'REGISTRE A4 300 PAGES', 5.6, 1, '336.jpg'),
(44, 8, 'REGISTRE A4 200 PAGES', 'REGISTRE A4 200 PAGES', 4.8, 1, '337.jpg'),
(45, 8, 'REGISTRE A4 PETIT CARREAUX 100(OU 96 BPAGES)', 'REGISTRE A4 PETIT CARREAUX 100(OU 96 BPAGES)', 3.35, 1, '338.jpg'),
(46, 8, 'REGISTRE REPERTOIRE ALPHABETIQUE A4 200 PAGES)', 'REGISTRE REPERTOIRE ALPHABETIQUE A4 200 PAGES)', 7.8, 1, '339.jpg'),
(47, 8, 'ENVOLOPE OFFSET BLANC 90 G12*17,6 CM', 'ENVOLOPE OFFSET BLANC 90 G12*17,6 CM', 0.05, 1, '340.jpg'),
(48, 8, 'ENVOLOPE 11,4*16,2 CM PAPIER 80 G/M² FERMETURE AUTOCOLANTE AVEC BANDE SILICONEE', 'ENVOLOPE 11,4*16,2 CM PAPIER 80 G/M² FERMETURE AUTOCOLANTE AVEC BANDE SILICONEE', 0.09, 1, '341.jpg'),
(49, 8, 'ENVOLOPE BLANCHE DE 90G FORMAT 26*36 CM FERMETURE AVEC BONDE SILICONEE', 'ENVOLOPE BLANCHE DE 90G FORMAT 26*36 CM FERMETURE AVEC BONDE SILICONEE', 0.1, 1, '342.jpg'),
(50, 8, 'ENVOLOPE KRAFT BRUN AUTOCOMMANT 80 GR FORMAT 16,2*22,9 CM FERMETURE PAR BANDE SILICONEE', 'ENVOLOPE KRAFT BRUN AUTOCOMMANT 80 GR FORMAT 16,2*22,9 CM FERMETURE PAR BANDE SILICONEE', 0.19, 1, '343.jpg'),
(51, 8, 'BLOC NOTES A5 (14,8*21cm) DE 100 PAGES MICRO PERFOREES', 'BLOC NOTES A5 (14,8*21cm) DE 100 PAGES MICRO PERFOREES', 1.78, 1, '412.jpg'),
(52, 8, 'BLOC NOTES A4 (21*29,7cm) DE 100 PAGES MICRO PERFOREES', 'BLOC NOTES A4 (21*29,7cm) DE 100 PAGES MICRO PERFOREES', 2.3, 1, '373.jpg'),
(53, 8, 'BLOC rep (postit notes) MUNIS D’UN ADHESIF REVOLITIONNAIRE BLOC DE 100 FEUILLES 75*75MM', 'BLOC rep (postit notes) MUNIS D’UN ADHESIF REVOLITIONNAIRE BLOC DE 100 FEUILLES 75*75MM', 2.6, 1, '374.jpg'),
(54, 8, 'CAHIER SPIRAL A4 DE 200 PAGES COUVERTURE VERNIE LAVABLE INTERIEUR EN PAPIER ETRA BLANC SATINE', 'CAHIER SPIRAL A4 DE 200 PAGES COUVERTURE VERNIE LAVABLE INTERIEUR EN PAPIER ETRA BLANC SATINE', 8.9, 1, '380.jpg'),
(55, 8, 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES MAESTRO', 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES MAESTRO', 8.2, 1, '457.jpg'),
(56, 8, 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES HIGHT VOLUME', 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES HIGHT VOLUME', 8.69, 1, '458.jpg'),
(57, 8, 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES MY PRINT', 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES MY PRINT', 8.65, 1, '459.jpg'),
(58, 8, 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES DOUBLE A', 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES DOUBLE A', 8.8, 1, '461.jpg'),
(59, 8, 'rame offset de 100 feuilles format a4 (différents couleurs)', 'rame offset de 100 feuilles format a4 (différents couleurs)', 14.7, 1, '462.jpg'),
(60, 8, 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES HIGHT VOLUME', 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES HIGHT VOLUME', 8.69, 1, '458.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `photocopieur`
--

DROP TABLE IF EXISTS `photocopieur`;
CREATE TABLE IF NOT EXISTS `photocopieur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tva_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6FBF680C4D79775F` (`tva_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tva_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BE2DDF8C4D79775F` (`tva_id`),
  KEY `IDX_BE2DDF8CBCF5E72D` (`categorie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=586 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `tva_id`, `titre`, `description`, `prix`, `disponible`, `path`, `categorie_id`) VALUES
(22, 8, 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES PIONNER', 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES PIONNER', 9.9, 1, 'A4.png', NULL),
(32, 8, 'Chemises CARTONNEES', 'paquet de 100', 9.5, 1, 'Chemise Cartonnee.png', NULL),
(33, 7, 'Disque Externe ADATA AHD710', 'Couleur : Bleu - Jaune - Noir\r\n\r\nFormat de Disque : 2.5\r\n\r\nInterface : USB 3.0 \r\n\r\nCapacité : 1 To - 2 To', 187.2, 1, '3.png', NULL),
(34, 8, 'Disque Externe ADATA HV 610', 'Couleur : Blanc - Noir\r\n\r\nFormat de Disque : 2.5\r\n\r\nCapacité : 1 To', 165, 1, '2.png', NULL),
(35, 7, 'Disque Externe ADATA NH03', 'Interface : USB 3.0 \r\n\r\nCapacité : 2 To', 234, 1, '1.png', NULL),
(36, 8, 'Paquet Chemises kRAFT (200) 24*32 CM', 'Paquet Chemises kRAFT (200) 24*32 CM', 11.8, 1, 'Chemise Craft.png', NULL),
(37, 8, 'CLASSEUR CHRONOS', 'CLASSEUR CHRONOS', 4.8, 1, '1Z15.png', NULL),
(38, 8, 'Boite D\'archive', 'AZ5', 1.45, 1, '1Z15.png', NULL),
(39, 8, 'Boite D\'archive', 'AZ10', 1.65, 1, 'az10.png', NULL),
(40, 8, 'Boite D\'archive', 'AZ15', 2.2, 1, '1Z15.png', NULL),
(43, 7, 'CARTE MÉMOIRE ADATA 8G', 'CARTE MÉMOIRE ADATA 8G', 17.55, 1, '1a.png', NULL),
(45, 7, 'CARTE MÉMOIRE SANDISK 16G', 'CARTE MÉMOIRE SANDISK 16G', 22.1, 1, '2d.jpg', NULL),
(49, 7, 'FLASH DISQUE SANDISK 8G', 'FLASH DISQUE SANDISK 8G', 16.25, 1, '3d.jpg', NULL),
(50, 7, 'FLASH DISQUE SANDISK 16G', 'FLASH DISQUE SANDISK 16G', 20.15, 1, '4d.jpg', NULL),
(51, 7, 'CLAVIER USB KB-42', 'CLAVIER USB KB-42', 8.19, 1, '5.jpg', NULL),
(52, 7, 'CLAVIER USB KB-28', 'CLAVIER USB KB-28', 9.62, 1, '6.jpg', NULL),
(53, 7, 'COMBO CLAVIER & SOURIS SANS FIL PR-KB02GCM', 'COMBO CLAVIER & SOURIS SANS FIL PR-KB02GCM', 30.03, 1, '7.jpg', NULL),
(54, 7, 'COMBO CLAVIER & SOURIS USB HAVIT HV-K513CM', 'COMBO CLAVIER & SOURIS USB HAVIT HV-K513CM', 16.25, 1, '7.jpg', NULL),
(55, 7, 'SOURIS USB HOT01', 'SOURIS USB HOT01', 3.38, 1, '9.jpg', NULL),
(56, 7, 'SOURIS USB MS60', 'SOURIS USB MS60', 3.77, 1, '10.png', NULL),
(57, 7, 'SOURIS USB T212', 'SOURIS USB T212', 6.24, 1, '11.png', NULL),
(58, 7, 'SOURIS USB MS58', 'SOURIS USB MS58', 5.46, 1, '12.jpg', NULL),
(59, 7, 'SOURIS USB MS52', 'SOURIS USB MS52', 5.46, 1, '13.png', NULL),
(60, 7, 'SOURIS USB MS56', 'SOURIS USB MS56', 5.46, 1, '14.jpg', NULL),
(61, 7, 'SOURIS USB MS50', 'SOURIS USB MS50', 5.46, 1, '15.jpg', NULL),
(62, 7, 'SOURIS USB MS57', 'SOURIS USB MS57', 5.46, 1, '16.jpg', NULL),
(63, 7, 'SOURIS USB MS59', 'SOURIS USB MS59', 5.46, 1, '17.jpg', NULL),
(64, 7, 'SOURIS USB GAMER X-3', 'SOURIS USB GAMER X-3', 12.5, 1, '18.png', NULL),
(65, 7, 'SOURIS USB GAMER G-5', 'SOURIS USB GAMER G-5', 17.55, 1, '19.png', NULL),
(66, 7, 'SOURIS SANS FIL MS67', 'SOURIS SANS FIL MS67', 10.14, 1, '20.jpg', NULL),
(67, 7, 'SOURIS SANS FIL MS68', 'SOURIS SANS FIL MS68', 10.14, 1, '21.jpg', NULL),
(68, 7, 'SOURIS SANS FIL MS69', 'SOURIS SANS FIL MS69', 10.14, 1, '23.jpg', NULL),
(69, 7, 'SOURIS SANS FIL MS70', 'SOURIS SANS FIL MS70', 10.14, 1, '23.jpg', NULL),
(70, 7, 'SOURIS SANS FIL MS71', 'SOURIS SANS FIL MS71', 11.51, 1, '24.jpg', NULL),
(71, 7, 'SOURIS SANS FIL MS66', 'SOURIS SANS FIL MS66', 11.51, 1, '25.jpg', NULL),
(72, 7, 'SOURIS SANS FIL MS-66', 'SOURIS SANS FIL MS-66', 11.51, 1, '26.png', NULL),
(73, 7, 'SOURIS SANS FIL MS73', 'SOURIS SANS FIL MS73', 12.22, 1, '27.png', NULL),
(74, 7, 'SOURIS SANS FIL MS72', 'SOURIS SANS FIL MS72', 12.22, 1, '28.png', NULL),
(75, 7, 'SOURIS LOGITECH M187', 'SOURIS LOGITECH M187', 19.11, 1, '29.jpg', NULL),
(76, 7, 'SOURIS LOGITECH M235', 'SOURIS LOGITECH M235', 19.76, 1, '30.png', NULL),
(77, 7, 'SOURI LOGITECH M171', 'SOURIS LOGITECH M171', 19.76, 1, '31.png', NULL),
(78, 7, 'SOURIS LOGITECH M905', 'SOURIS LOGITECH M905', 17.3, 1, '32.png', NULL),
(79, 7, 'SOURIS LOGITECH M185', 'SOURIS LOGITECH M185', 20.54, 1, '33.png', NULL),
(80, 7, 'OAKORN OK-808', 'OAKORN OK-808', 9.75, 1, '34.png', NULL),
(81, 7, 'OAKORN OK-301', 'OAKORN OK-301', 14.69, 1, '35.png', NULL),
(82, 7, 'OAKORN EP-16', 'OAKORN EP-16', 21.97, 1, '36.png', NULL),
(83, 7, 'PROTECH USB PRO 04', 'PROTECH USB PRO 04', 24.31, 1, '37.png', NULL),
(84, 7, 'PC VIBREUR PROTECH USB-703B', 'PC VIBREUR PROTECH USB-703B', 8.78, 1, '38.png', NULL),
(85, 7, 'PC SIMPLE PROTECH USB-8828', 'PC SIMPLE PROTECH USB-8828', 5.46, 1, '38.png', NULL),
(86, 7, 'PC DOUBLE VIBREUR PROTECH USB-8878B', 'PC DOUBLE VIBREUR PROTECH USB-8878B', 16.25, 1, '40.png', NULL),
(87, 7, 'PLAYSTATION 2 LBM', 'PLAYSTATION 2 LBM', 9.75, 1, '41.png', NULL),
(88, 8, 'SPEAKER 2.0 RZ-180', 'SPEAKER 2.0 RZ-180', 7.41, 1, '42.jpg', NULL),
(89, 8, 'SPEAKER 2.0 RZ-480', 'SPEAKER 2.0 RZ-480', 9.75, 1, '43.jpg', NULL),
(90, 7, 'SPEAKER 2.0 RZ-390', 'SPEAKER 2.0 RZ-390', 16.45, 1, '44.jpg', NULL),
(91, 7, 'SPEAKER 2.1 RS-820', 'SPEAKER 2.1 RS-820', 26.78, 1, '45.jpg', NULL),
(92, 7, 'SPEAKER 2.1 XSD-2', 'SPEAKER 2.1 XSD-2', 26.78, 1, '46.jpg', NULL),
(93, 8, 'SUBWOOFER 2.1 PR-314	LECTEUR FLASH & CM & RADIO', 'SUBWOOFER 2.1 PR-314	SUBWOOFER 4.1 PR-425\r\nLECTEUR FLASH & CM & RADIO', 110.5, 1, '47.jpg', NULL),
(94, 8, 'SUBWOOFER 4.1 PR-425 LECTEUR FLASH & CM & RADIO', 'SUBWOOFER 4.1 PR-425 LECTEUR FLASH & CM & RADIO', 135.2, 1, '48.jpg', NULL),
(95, 8, 'ECOUTEUR SIMPLE', 'ECOUTEUR SIMPLE', 4.29, 1, '49.png', NULL),
(96, 8, 'ECOUTEUR MK-800', 'ECOUTEUR MK-800', 6.24, 1, '50.png', NULL),
(98, 8, 'ECOUTEUR E002/03 /PC', 'ECOUTEUR E002/03 /PC', 12.35, 1, '51.png', NULL),
(99, 8, 'ECOUTEUR E092 /PC', 'ECOUTEUR E092 /PC', 12.35, 1, '52.png', NULL),
(100, 8, 'ECOUTEUR KEENION E028', 'ECOUTEUR KEENION E028', 12.35, 1, '53.png', NULL),
(101, 8, 'ECOUTEUR KEENION E203', 'ECOUTEUR KEENION E203', 10.14, 1, '54.png', NULL),
(102, 7, 'WEBCAM PROTECH 107', 'WEBCAM PROTECH 107', 12.35, 1, '55....png', NULL),
(103, 7, 'WEBCAM HAVIT 302', 'WEBCAM HAVIT 302', 16.9, 1, '56.png', NULL),
(104, 8, 'ETUI TABLETTE 7’’ MOD1', 'ETUI TABLETTE 7’’ MOD1', 4.94, 1, '57.png', NULL),
(105, 8, 'ETUI TABLETTE 7’’ MOD2', 'ETUI TABLETTE 7’’ MOD2', 6.24, 1, '58.png', NULL),
(106, 8, 'ETUI TABLETTE 7’’ MOD3', 'ETUI TABLETTE 7’’ MOD3', 7.54, 1, '59.png', NULL),
(107, 8, 'ETUI TABLETTE 7’’ MOD4', 'ETUI TABLETTE 7’’ MOD4', 8.84, 1, '60.png', NULL),
(108, 8, 'ETUI TABLETTE 7’’ +CLAVIER', 'ETUI TABLETTE 7’’ +CLAVIER', 13.65, 1, '60.png', NULL),
(109, 8, 'ETUI TABLETTE 7’’ +CLAVIER', 'ETUI TABLETTE 7’’ +CLAVIER', 14.95, 1, '62.png', NULL),
(110, 8, 'ETUI TABLETTE 8’’', 'ETUI TABLETTE 8’’', 10.14, 1, '63.png', NULL),
(111, 8, 'ETUI TABLETTE 8’’+ CLAVIER', 'ETUI TABLETTE 8’’+ CLAVIER', 18.85, 1, '64.png', NULL),
(112, 8, 'ETUI TABLETTE 10’’', 'ETUI TABLETTE 10’’', 12.35, 1, '65.png', NULL),
(113, 8, 'ETUI TABLETTE 10’’+ CLAVIER', 'ETUI TABLETTE 10’’+ CLAVIER', 22.1, 1, '66.png', NULL),
(114, 7, 'CARTE MÉMOIRE SY-T68 Micro-SD / T-FLASH', 'CARTE MÉMOIRE SY-T68 Micro-SD / T-FLASH', 2.6, 1, '67.png', NULL),
(115, 7, 'CARTE MÉMOIRE SY-368', 'SD/SDHC/MMC/RSMMC/MS/\r\nMS DUO/MS PRO DUO/MICRO MS (M2) /T-Flash /MICRO SD', 3.51, 1, '68.png', NULL),
(116, 7, 'CARTE MÉMOIRE SY-368', 'SD/SDHC/MMC/RSMMC/MS/\r\nMS DUO/MS PRO DUO/MICRO MS (M2) /T-Flash /MICRO SD', 4.81, 1, '69.jpg', NULL),
(117, 7, 'BOITIER HDD 2.5’’ USB 2.0', 'BOITIER HDD 2.5’’ USB 2.0', 10.92, 1, '70.jpg', NULL),
(118, 7, 'BOITIER HDD 2.5’’ USB 3.0', 'BOITIER HDD 2.5’’ USB 3.0', 20.54, 1, '71.png', NULL),
(119, 7, 'BOITIER HDD 3.5’’ USB 3.0', 'BOITIER HDD 3.5’’ USB 3.0', 54.6, 1, '72.png', NULL),
(120, 7, 'PINENG PN-960 6000mAH', 'PINENG PN-960 6000mAH', 53.3, 1, '73.png', NULL),
(121, 7, 'ORICO LD-100 10000mAH', 'ORICO LD-100 10000mAH', 53.3, 1, '73.png', NULL),
(122, 7, 'PINENG PN-983 10000mAH', 'PINENG PN-983 10000mAH', 53.95, 1, '74.png', NULL),
(123, 7, 'PINENG PN-928 10000mAH', 'PINENG PN-928 10000mAH', 50.44, 1, '77.png', NULL),
(124, 7, 'PINENG PN-929 15000mAH', 'PINENG PN-929 15000mAH', 66.17, 1, '77.png', NULL),
(125, 7, 'PINENG PN-999 20000mAH', 'PINENG PN-999 20000mAH', 75.92, 1, '78.jpg', NULL),
(126, 7, 'REFEROIDISSEUR N191', 'REFEROIDISSEUR N191', 8.58, 1, '79.png', NULL),
(127, 7, 'REFEROIDISSEUR N131', 'REFEROIDISSEUR N131', 12.35, 1, '80.jpg', NULL),
(128, 7, 'REFEROIDISSEUR 2004', 'REFEROIDISSEUR 2004', 18.59, 1, '81.png', NULL),
(129, 7, 'REFEROIDISSEUR 2002', 'REFEROIDISSEUR 2002', 18.59, 1, '82.png', NULL),
(130, 7, 'SACCOCHE 12’’ PROTECH T32', 'SACCOCHE 12’’ PROTECH T32', 14.69, 1, '83.png', NULL),
(131, 7, 'SACCOCHE 15.6’’ PROTECH T22', 'SACCOCHE 15.6’’ PROTECH T22', 27.04, 1, '84.png', NULL),
(132, 8, 'SAC A DOS 17.3 PROTECH', 'SAC A DOS 17.3 PROTECH', 40.3, 1, '85.png', NULL),
(133, 7, 'SAC A DOS 17.3 PROTECH', 'SAC A DOS 17.3 PROTECH', 42.9, 1, '86.png', NULL),
(135, 7, 'CD-R RONC 50PCS', 'CD-R RONC 50PCS', 17.6, 1, '87.png', NULL),
(136, 7, 'POCHETTE CD/DVD', 'POCHETTE CD/DVD', 3.71, 1, '89.png', NULL),
(137, 7, 'CLE WIFI PROTECH 150MBPS', 'CLE WIFI PROTECH 150MBPS', 16.25, 1, '90.png', NULL),
(138, 7, 'VENTILATEUR CPU LGA1155/1156', 'VENTILATEUR CPU LGA1155/1156', 6.11, 1, '91.png', NULL),
(139, 7, 'SOUFLEUR', 'SOUFLEUR', 42.51, 1, '92.jpg', NULL),
(140, 7, 'PATE THERMIQUE PM', 'PATE THERMIQUE PM', 0.91, 1, '93.jpg', NULL),
(141, 8, 'PATE THERMIQUE GM', 'PATE THERMIQUE GM', 2.47, 1, '94.jpg', NULL),
(142, 7, 'KIT DE NETTOYAGE PC OPULA', 'KIT DE NETTOYAGE PC OPULA', 2.47, 1, '95.jpg', NULL),
(143, 7, 'KIT DE NETTOYAGE PC', 'KIT DE NETTOYAGE PC', 2.47, 1, '96.jpg', NULL),
(144, 8, 'CE285AD', 'HP 85A 2-pack Black Original LaserJet Toner Cartridges', 383.89, 1, '1c.png', NULL),
(145, 8, 'CB435AD', 'HP 35A 2-pack Black Original LaserJet Toner Cartridges', 379.99, 1, '2c.jpg', NULL),
(146, 8, 'CB436AD', 'HP 36A 2-pack Black Original LaserJet Toner Cartridges', 436.8, 1, '3c.png', NULL),
(147, 8, 'CB540AD', 'HP CLJ CB540A Dual Pack Print', 449.93, 1, '4c.png', NULL),
(148, 8, 'CC530AD', 'HP DUAL PACK pour CP2025', 547.56, 1, '5c.jpg', NULL),
(149, 8, 'CE255XD', 'HP LaserJet P3015 Dual Pack', 1297.79, 1, '6c.png', NULL),
(150, 8, 'CE278AD', '78A BlfYack Dual Pack LJ Toner', 447.85, 1, '7c.png', NULL),
(151, 8, 'CE310AD', 'HP 126A Black Dual', 292.76, 1, '8c.png', NULL),
(163, 8, 'C9351AE', 'HP 21 Black Original Ink Cartridge', 57.2, 1, '20c.png', NULL),
(164, 8, 'C9352AE', 'HP 22 Tri-color Original Ink Cartridge', 75.66, 1, '21c.png', NULL),
(165, 8, 'C9364HE', 'HP 129 Black Original Ink Cartridge', 89.7, 1, '22c.png', NULL),
(166, 8, 'C9504HE', 'HP 130 2-pack Black Original Ink Cartridges', 232.05, 1, '23c.png', NULL),
(167, 8, 'CD971AE', 'HP 920 Black Original Ink Cartridge', 65.78, 1, '24c.png', NULL),
(168, 8, 'CD972AE', 'HP 920XL High Yield Cyan Original Ink Cartridge', 49.01, 1, '25c.png', NULL),
(169, 8, 'CD973AE', 'HP 920XL High Yield Magenta Original Ink Cartridge', 49.01, 1, '26c.png', NULL),
(170, 8, 'CD974AE', 'HP 920XL High Yield Yellow Original Ink Cartridge', 49.01, 1, '27c.png', NULL),
(171, 8, 'CD975AE', 'HP 920XL High Yield Black Original Ink Cartridge', 117.78, 1, '28c.png', NULL),
(172, 8, 'F6V24AE', 'HP 652 Tri-color Original Ink Advantage Cartridge', 30.94, 1, '29c.jpg', NULL),
(173, 8, 'F6V25AE', 'HP 652 Black Original Ink Advantage Cartridge', 36.27, 1, '30c.png', NULL),
(174, 8, 'CN045AE', 'HP 950XL High Yield Black Original Ink Cartridge', 116.61, 1, '31c.png', NULL),
(175, 8, 'CN046AE', 'HP 951XL High Yield Cyan Original Ink Cartridge', 87.75, 1, '32c.png', NULL),
(176, 8, 'CN047AE', 'HP 951XL High Yield Magenta Original Ink Cartridge', 87.75, 1, '33c.jpg', NULL),
(177, 8, 'CN048AE', 'HP 951XL High Yield Yellow Original Ink Cartridge', 87.75, 1, '34c.png', NULL),
(178, 8, 'CN053AE', 'HP 932XL High Yield Black Original Ink Cartridge', 96.2, 1, '35c.png', NULL),
(179, 8, 'CN054AE', 'HP 933XL High Yield Cyan Original Ink Cartridge', 47.71, 1, '36c.png', NULL),
(180, 8, 'CN055AE', 'HP 933XL High Yield Magenta Original Ink Cartridge', 47.71, 1, '37c.png', NULL),
(181, 8, 'CN056AE', 'HP 933XL High Yield Yellow Original Ink Cartridge', 47.71, 1, '38c.png', NULL),
(182, 8, 'CN057AE', 'HP 932 Black Original Ink Cartridge', 58.89, 1, '39c.png', NULL),
(183, 8, 'CR340HE', 'HP 122 2-pack Black/Tri-color Original Ink Cartridges', 68.64, 1, '40c.png', NULL),
(184, 8, 'L0R95AE', 'HP 913A Black Original PageWide Cartridge', 227.76, 1, '41c.png', NULL),
(185, 8, 'F6T77AE', 'HP 913A Cyan Original PageWide Cartridge', 234.26, 1, '42c.png', NULL),
(186, 8, 'F6T78AE', 'HP 913A Magenta Original PageWide Cartridge', 234.26, 1, '43c.png', NULL),
(187, 8, 'F6T79AE', 'HP 913A Yellow Original PageWide Cartridge', 234.26, 1, '44c.png', NULL),
(188, 8, 'L0R16A', 'HP 981Y Extra High Yield Black Original PageWide Cartridge', 487.11, 1, '45c.png', NULL),
(189, 8, 'CZ101AE', 'HP 650 Black Original Ink Advantage Cartridge', 33.02, 1, '46c.png', NULL),
(190, 8, 'CZ102AE', 'HP 650 Tri-color Original Ink Advantage Cartridge', 28.08, 1, '47c.png', NULL),
(191, 8, 'CH561HE', 'HP 122 Black Original Ink Cartridge', 34.06, 1, '48c.png', NULL),
(192, 8, 'CH562HE', 'HP 122 Tri-color Original Ink Cartridge', 40.56, 1, '49c.png', NULL),
(193, 8, 'CH563HE', 'HP 122XL High Yield Black Original Ink Cartridge', 99.45, 1, '50c.png', NULL),
(194, 8, 'CH564HE', 'HP 122XL High Yield Tri-color Original Ink Cartridge', 99.45, 1, '51c.png', NULL),
(195, 8, 'CC364A', 'HP 64A Black Original LaserJet Toner Cartridge', 536.25, 1, '52c.png', NULL),
(196, 8, 'CE255A', 'HP 55A Black Original LaserJet Toner Cartridge', 455, 1, '53c.png', NULL),
(216, 8, 'CF410A', 'HP 410A Black Original LaserJet Toner Cartridge', 265.72, 1, '56c.png', NULL),
(221, 8, 'CF403A', 'HP 201A Magenta Original LaserJet Toner Cartridge', 248.95, 1, '58c.png', NULL),
(224, 8, 'CF402A', 'HP 201A Yellow Original LaserJet Toner Cartridge', 688.61, 1, '57c.png', NULL),
(228, 8, 'C4096A', 'HP 96A Black Original LaserJet Toner Cartridge', 476.71, 1, '84c.png', NULL),
(229, 8, 'C7115A', 'HP 15A Black Original LaserJet Toner Cartridge', 298.87, 1, '85c.png', NULL),
(230, 8, 'C7115X', 'HP 15X High Yield Black Original LaserJet Toner Cartridge', 325.91, 1, '86c.png', NULL),
(231, 8, 'C8543X', 'HP 43X High Yield Black Original LaserJet Toner Cartridge', 1066.65, 1, '87c.png', NULL),
(232, 8, 'C9721A', 'HP 641A Cyan Original LaserJet Toner Cartridge', 1027.13, 1, '88c.png', NULL),
(233, 8, 'C9722A', 'HP 641A Yellow Original LaserJet Toner Cartridge', 1027.13, 1, '89c.png', NULL),
(234, 8, 'C9723A', 'HP 641A Magenta Original LaserJet Toner Cartridge', 1152.45, 1, '90c.png', NULL),
(235, 8, 'C9730A', 'HP 645A Black Original LaserJet Toner Cartridge', 1051.18, 1, '91c.jpg', NULL),
(236, 8, 'C9731A', 'HP 645A Cyan Original LaserJet Toner Cartridge', 1473.9, 1, '92c.png', NULL),
(237, 8, 'C9732A', 'HP 645A Yellow Original LaserJet Toner Cartridge', 1473.9, 1, '93c.png', NULL),
(238, 8, 'C9733A', 'HP 645A Magenta Original LaserJet Toner Cartridge', 1473.9, 1, '94c.png', NULL),
(239, 8, 'CB381A', 'HP 824A Cyan Original LaserJet Toner Cartridge', 1233.83, 1, '95 c.jpg', NULL),
(240, 8, 'CB382A', 'HP 824A Yellow Original LaserJet Toner Cartridge', 1233.83, 1, '96 c.jpg', NULL),
(241, 8, 'CB383A', 'HP 824A Magenta Original LaserJet Toner Cartridge', 1233.83, 1, '97 c.jpg', NULL),
(243, 8, 'CE320AD', 'HP 128A 2-pack Black Original LaserJet Toner Cartridges', 443.17, 1, '153 c.jpg', NULL),
(244, 8, 'CE323A', 'HP 128A Magenta Original LaserJet Toner Cartridge', 234.26, 1, '155 c.jpg', NULL),
(245, 8, 'CE340A', 'HP 651A Black Original LaserJet Toner Cartridge', 596.18, 1, '156 c.jpg', NULL),
(246, 8, 'CE341A', 'HP 651A Cyan Original LaserJet Toner Cartridge', 1501.24, 1, '157 c.jpg', NULL),
(247, 8, 'CE342A', 'HP 651A Yellow Original LaserJet Toner Cartridge', 1501.24, 1, '158 c.jpg', NULL),
(248, 8, 'CE390A', 'HP 90A Black Original LaserJet Toner Cartridge', 1501.24, 1, '160 c.jpg', NULL),
(249, 8, 'CE343A', 'HP 651A Magenta Original LaserJet Toner Cartridge', 1501.24, 1, '159 c.jpg', NULL),
(250, 8, 'CE390XD', 'HP 90X 2-pack High Yield Black Original LaserJet Toner Cartridges', 1801.41, 1, '162 c.jpg', NULL),
(251, 8, 'CE400X', 'HP 507X High Yield Black Original LaserJet Toner Cartridge', 694.72, 1, '164 c.jpg', NULL),
(252, 8, 'CE400YC', 'HP CE400YC Black Optimized Contract Original LaserJet Toner Cartridge', 791.96, 1, '165.jpg', NULL),
(253, 8, 'CE401A', 'HP 507A Cyan Original LaserJet Toner Cartridge', 863.07, 1, '166 c.jpg', NULL),
(254, 8, 'CE401YC', 'HP CE401YC Cyan Optimized Contract Original LaserJet Toner Cartridge', 1099.93, 1, '167 c.jpg', NULL),
(255, 8, 'CE402A', 'HP 507A Yellow Original LaserJet Toner Cartridge', 863.07, 1, '168 c.jpg', NULL),
(256, 8, 'CE402YC', 'HP CE402YC Yellow Optimized Contract Original LaserJet Toner Cartridge', 1099.93, 1, '169 c.jpg', NULL),
(257, 8, 'CE403A', 'HP 507A Magenta Original LaserJet Toner Cartridge', 863.07, 1, '170c.jpg', NULL),
(258, 8, 'CE403YC', 'HP CE403YC Magenta Optimized Contract Original LaserJet Toner Cartridge', 1099.93, 1, '171 c.jpg', NULL),
(260, 8, 'CE410A', 'HP 305A Black Original LaserJet Toner Cartridge', 326.95, 1, '173 c.jpg', NULL),
(261, 8, 'CE410XC', 'HP 305X Black Contract LaserJet Toner Cartridge (CE410XC)', 393.77, 1, '174 c.jpg', NULL),
(262, 8, 'CE411AC', 'HP 305A Cyan Contract LaserJet Toner Cartridge (CE411AC)', 456.69, 1, '177 c.jpg', NULL),
(263, 8, 'CE412A', 'HP 305A Yellow Original LaserJet Toner Cartridge', 465.92, 1, '178 c.jpg', NULL),
(264, 8, 'CE413AC', 'HP 305A Magenta Contract LaserJet Toner Cartridge (CE413AC)', 456.69, 1, '180 c.jpg', NULL),
(265, 8, 'CE505A', 'HP 05A Black Original LaserJet Toner Cartridge', 345.56, 1, '181 c.jpg', NULL),
(266, 8, 'CE505D', 'HP 05A 2-pack Black Original LaserJet Toner Cartridges', 505.96, 1, '10c.png', NULL),
(267, 8, 'CE505XD', 'HP 05X 2-pack High Yield Black Original LaserJet Toner Cartridges', 1141.66, 1, '182 c.jpg', NULL),
(268, 7, 'CE740A', 'HP 307A Black Original LaserJet Toner Cartridge', 588.25, 1, '184 c.jpg', NULL),
(269, 8, 'CE741A', 'HP 307A Cyan Original LaserJet Toner Cartridge', 1036.23, 1, '185 c.jpg', NULL),
(270, 8, 'CE742A', 'HP 307A Yellow Original LaserJet Toner Cartridge', 1036.23, 1, '186 c.jpg', NULL),
(271, 8, 'CE743A', 'HP 307A Magenta Original LaserJet Toner Cartridge', 1036.23, 1, '187 c.jpg', NULL),
(273, 8, 'CF032A', 'HP 646A Yellow Original LaserJet Toner Cartridge', 988.52, 1, '190.jpg', NULL),
(274, 8, 'CF033A', 'HP 646A Magenta Original LaserJet Toner Cartridge', 988.52, 1, '192 c.jpg', NULL),
(275, 8, 'CF033AC', 'HP CF033AC Magenta Contract Original LaserJet Toner Cartridge', 1087.32, 1, '193 c.jpeg', NULL),
(276, 8, 'CF210A', 'HP 131A Black Original LaserJet Toner Cartridge', 262.47, 1, '194 c.jpg', NULL),
(277, 8, 'CF210', 'HP 131A Black Original LaserJet Toner Cartridge', 262.47, 1, '195 c.jpeg', NULL),
(278, 8, 'CF214A', 'HP 14A Black Original LaserJet Toner Cartridge', 788.45, 1, '202 c.jpg', NULL),
(279, 8, 'CF217A', 'HP 17A Black Original LaserJet Toner Cartridge', 244.27, 1, '203 c.jpg', NULL),
(280, 8, 'CF219A', 'HP 19A Original LaserJet Imaging Drum', 275.21, 1, '204 c.jpg', NULL),
(282, 8, 'CF226X', 'HP 26X Black Original LaserJet Toner Cartridge', 754, 1, '206 c.jpeg', NULL),
(283, 8, 'CF226A', 'HP 26A Black Original LaserJet Toner Cartridge', 447.98, 1, '207 c.jpg', NULL),
(284, 8, 'CF230A', 'HP 30A Black Original LaserJet Toner Cartridge', 247.91, 1, '208 c.jpg', NULL),
(285, 8, 'CF230X', 'HP 30X High Yield Black Original LaserJet Toner Cartridge', 370.24, 1, '209 c.jpeg', NULL),
(286, 8, 'CF237A', 'HP 37A Black Original LaserJet Toner Cartridge', 530.01, 1, '83c.png', NULL),
(287, 8, 'CF280XD', 'HP 80X 2-pack High Yield Black Original LaserJet Toner Cartridges', 1008.28, 1, '12c.png', NULL),
(288, 8, 'CF281A', 'HP 81A Black Original LaserJet Toner Cartridge', 665.99, 1, '213 c.jpg', NULL),
(289, 8, 'CF283A', 'HP 83A Black Original LaserJet Toner Cartridge', 249.73, 1, '216 c.jpg', NULL),
(290, 8, 'CF371AM', 'HP 305A 3-pack Cyan/Magenta/Yellow Original LaserJet Toner Cartridges', 576.81, 1, '15c.png', NULL),
(291, 8, 'U0SL1AM', 'HP 131A 3-pack Cyan/Magenta/Yellow Original LaserJet Toner Cartridges', 730.86, 1, '19c.png', NULL),
(292, 8, 'CF281X', 'HP 81X High Yield Black Original LaserJet Toner Cartridge', 1102.01, 1, '214 c.jpg', NULL),
(293, 7, 'Z4B04A', 'imprimante hp ink tank 315', 378, 1, 'imprimante-jet-d-encre-ink-tank-315-3en1-couleur-z4b04a.jpg', NULL),
(294, 7, 'V1N05C', 'HP DESKJET 2632 ALL PRINTER', 82.8, 1, 'c5a49852-72a0-4dd4-b31c-fcc58452dbee._SR300,300_.jpg', NULL),
(295, 7, '1WY64EA', 'HP 250G6 I3 6006 4GB 15.6', 1050, 1, 'ordinateurs_Ordinateur_portable_HP_250G6_i3_6006U_15_4GB-737411-images800jpg-1.jpg', NULL),
(296, 8, 'CB402A', 'HP 642A Yellow Original LaserJet Toner Cartridge', 1024.14, 1, '105.jpg', NULL),
(297, 8, 'CE314A', 'HP 126A LaserJet Imaging Drum', 316.55, 1, '152.jpg', NULL),
(298, 8, 'CE322A', 'HP 128A Yellow Original LaserJet Toner Cartridge', 234.26, 1, '154.jpg', NULL),
(299, 8, 'CE390XC', 'HP CE390XC High Yield Black Contract Original LaserJet Toner Cartridge', 1100.84, 1, '161.jpg', NULL),
(300, 8, 'CE400A', 'HP 507A Black Original LaserJet Toner Cartridge', 579.28, 1, '163.jpg', NULL),
(301, 8, 'CE411A', 'HP 305A Cyan Original LaserJet Toner Cartridge', 465.92, 1, '176.jpg', NULL),
(302, 8, 'CE413A', 'HP 305A Magenta Original LaserJet Toner Cartridge', 465.92, 1, '179.jpg', NULL),
(303, 8, 'CF031A', 'HP 646A Cyan Original LaserJet Toner Cartridge', 988.52, 1, '188.jpg', NULL),
(305, 8, 'CF210XD', 'HP 131X 2-pack High Yield Black Original LaserJet Toner Cartridges', 493.74, 1, '11c.png', NULL),
(306, 8, 'CF211A', 'HP 131A Cyan Original LaserJet Toner Cartridge', 269.79, 1, '197.jpg', NULL),
(308, 8, 'CF212A', 'HP 131A Yellow Original LaserJet Toner Cartridge', 269.79, 1, '199.jpg', NULL),
(309, 8, 'CF213A', 'HP 131A Magenta Original LaserJet Toner Cartridge', 269.79, 1, '200.jpg', NULL),
(310, 8, 'CF280A', 'HP 80A Black Original LaserJet Toner Cartridge', 400.27, 1, '211.jpg', NULL),
(311, 8, 'CF281XC', 'HP CF281XC High Yield Black Contract Original LaserJet Toner Cartridge', 1212.12, 1, '215.jpg', NULL),
(312, 8, 'CF283AD', 'HP 83A 2-pack Black Original LaserJet Toner Cartridges', 365.3, 1, '13c.png', NULL),
(313, 8, 'CF283X', 'HP 83X High Yield Black Original LaserJet Toner Cartridge', 310.57, 1, '218.jpg', NULL),
(314, 8, 'CF283XC', 'HP Contractual High Yield Black Original LaserJet Toner Cartridge (CF283XC)', 341.64, 1, '219.jpg', NULL),
(315, 8, 'CF287A', 'HP 87A Black Original LaserJet Toner Cartridge', 839.15, 1, '220.jpg', NULL),
(316, 8, 'CF287X', 'HP 87X High Yield Black Original LaserJet Toner Cartridge', 1134.77, 1, '221.jpg', NULL),
(317, 8, 'CF287XC', 'HP CF287XC High Yield Black Contract Original LaserJet Toner Cartridge', 1248.26, 1, '222.jpg', NULL),
(319, 8, 'CF300A', 'HP 827A Black Original LaserJet Toner Cartridge', 412.1, 1, '223.jpg', NULL),
(320, 8, 'CF300AC', 'HP CF300AC Black Contract Original LaserJet Toner Cartridge', 453.31, 1, '224.jpg', NULL),
(321, 8, 'CF301A', 'HP 827A Cyan Original LaserJet Toner Cartridge', 1836.51, 1, '225.jpg', NULL),
(322, 8, 'CF301AC', 'HP CF301AC Cyan Contract Original LaserJet Toner Cartridge', 2020.2, 1, '226.jpg', NULL),
(323, 8, 'CF302A', 'HP 827A Yellow Original LaserJet Toner Cartridge', 1836.51, 1, '227.jpg', NULL),
(324, 8, 'CF303A', 'HP 827A Magenta Original LaserJet Toner Cartridge', 1836.51, 1, '228.jpg', NULL),
(325, 8, 'CF310AC', 'HP CF310AC Black Contract Original LaserJet Toner Cartridge', 1330.42, 1, '230.jpg', NULL),
(326, 8, 'CF311AC', 'HP CF311AC Cyan Contract Original LaserJet Toner Cartridge', 2184.52, 1, '231.jpg', NULL),
(327, 8, 'CF312AC', 'HP CF312AC Yellow Contract Original LaserJet Toner Cartridge', 2184.52, 1, '232.jpg', NULL),
(328, 8, 'CF313AC', 'HP CF313AC Magenta Contract Original LaserJet Toner Cartridge', 2184.52, 1, '233.jpg', NULL),
(329, 8, 'CF320A', 'HP 652A Black Original LaserJet Toner Cartridge', 803.27, 1, '234.jpg', NULL),
(330, 8, 'CF320XC', 'HP CF320XC Black High Yield Contract Original LaserJet Toner Cartridge', 1066, 1, '235.jpg', NULL),
(331, 8, 'CF321A', 'HP 653A Cyan Original LaserJet Toner Cartridge', 1305.07, 1, '236.jpg', NULL),
(332, 8, 'CF321AC', 'HP CF321AC Cyan Contract Original LaserJet Toner Cartridge', 1435.46, 1, '237.jpg', NULL),
(333, 8, 'CF322A', 'HP 653A Yellow Original LaserJet Toner Cartridge', 1305.07, 1, '238.jpg', NULL),
(334, 8, 'CF322AC', 'HP CF322AC Yellow Contract Original LaserJet Toner Cartridge', 1435.46, 1, '239.jpg', NULL),
(335, 8, 'CF323A', 'HP 653A Magenta Original LaserJet Toner Cartridge', 1305.07, 1, '240.jpg', NULL),
(336, 8, 'CF323AC', 'HP CF323AC Magenta Contract Original LaserJet Toner Cartridge', 1435.46, 1, '241.jpg', NULL),
(337, 8, 'CF330XC', 'HP CF330XC Black High Yield Contract Original LaserJet Toner Cartridge', 1161.29, 1, '242.jpg', NULL),
(338, 8, 'CF331AC', 'HP CF331AC Cyan Contract Original LaserJet Toner Cartridge', 1619.41, 1, '243.jpg', NULL),
(339, 8, 'CF332AC', 'HP CF332AC Yellow Contract Original LaserJet Toner Cartridge', 1619.41, 1, '244.jpg', NULL),
(340, 8, 'CF333AC', 'HP CF333AC Magenta Contract Original LaserJet Toner Cartridge', 1619.41, 1, '245.jpg', NULL),
(341, 8, 'CF341A', 'HP 126A 3-pack Cyan/Magenta/Yellow Original LaserJet Toner Cartridges', 600.21, 1, '246.jpg', NULL),
(342, 8, 'CF350A', 'HP 130A Black Original LaserJet Toner Cartridge', 219.44, 1, '247.jpg', NULL),
(343, 8, 'CF351A', 'HP 130A Cyan Original LaserJet Toner Cartridge', 226.33, 1, '249.jpg', NULL),
(344, 8, 'CF352A', 'HP 130A Yellow Original LaserJet Toner Cartridge', 226.33, 1, '250.jpg', NULL),
(345, 8, 'CF353A', 'HP 130A Magenta Original LaserJet Toner Cartridge', 226.33, 1, '251.jpg', NULL),
(346, 8, 'CF360A', 'HP 508A Black Original LaserJet Toner Cartridge', 600.21, 1, '252.jpg', NULL),
(347, 8, 'CF360XC', 'HP Contract High Yield Black Original LaserJet Toner Cartridge (CF360X)', 923, 1, '253.jpg', NULL),
(348, 8, 'CF361A', 'HP 508A Cyan Original LaserJet Toner Cartridge', 752.57, 1, '254.jpg', NULL),
(349, 8, 'CF361XC', 'HP Contract High Yield Cyan Original LaserJet Toner Cartridge (CF361X)', 1277.9, 1, '255.jpg', NULL),
(350, 8, 'CF362A', 'HP 508A Yellow Original LaserJet Toner Cartridge', 752.57, 1, '256.jpg', NULL),
(351, 8, 'CF362XC', 'HP Contract High Yield Yellow Original LaserJet Toner Cartridge (CF362X)', 1277.9, 1, '257.jpg', NULL),
(352, 8, 'CF363A', 'HP 508A Magenta Original LaserJet Toner Cartridge', 752.57, 1, '258.jpg', NULL),
(353, 8, 'CF363XC', 'HP Contract High Yield Magenta Original LaserJet Toner Cartridge (CF363X)', 1277.9, 1, '259.jpg', NULL),
(354, 8, 'CF370AM', 'HP 305A 3-pack Cyan/Magenta/Yellow Original LaserJet Toner Cartridges', 1022.45, 1, '14c.png', NULL),
(355, 8, 'CF372AM', 'HP 304A 3-pack Cyan/Magenta/Yellow Original LaserJet Toner Cartridges', 1040.91, 1, '16c.png', NULL),
(356, 8, 'CF373AM', 'HP 125A 3-pack Cyan/Magenta/Yellow Original LaserJet Toner Cartridges', 763.1, 1, '262.jpg', NULL),
(357, 8, 'CF380A', 'HP 312A Black Original LaserJet Toner Cartridge', 356.85, 1, '263.jpg', NULL),
(358, 8, 'CF381A', 'HP 312A Cyan Original LaserJet Toner Cartridge', 477.88, 1, '264.jpg', NULL),
(359, 8, 'CF381AC', 'HP CF381AC Cyan Contract Original LaserJet Toner Cartridge', 525.59, 1, '265.jpg', NULL),
(360, 8, 'CF382A', 'HP 312A Yellow Original LaserJet Toner Cartridge', 477.88, 1, '266.jpg', NULL),
(361, 8, 'CF382AC', 'HP CF382AC Yellow Contract Original LaserJet Toner Cartridge', 525.59, 1, '268.jpg', NULL),
(362, 8, 'CF383A', 'HP 312A Magenta Original LaserJet Toner Cartridge', 477.88, 1, '269.jpg', NULL),
(363, 8, 'CF383AC', 'HP CF383AC Magenta Contract Original LaserJet Toner Cartridge', 525.59, 1, '270.jpg', NULL),
(364, 8, 'CF400A', 'HP 201A Black Original LaserJet Toner Cartridge', 264.55, 1, '271.jpg', NULL),
(365, 8, 'CF401A', 'HP 201A Cyan Original LaserJet Toner Cartridge', 312.13, 1, '273.jpg', NULL),
(367, 8, 'CF410XC', 'HP CF410XC High Yield Black Contract Original LaserJet Toner Cartridge', 611, 1, '281.jpg', NULL),
(368, 8, 'CF411A', 'HP 410A Cyan Original LaserJet Toner Cartridge', 430.04, 1, '282.jpg', NULL),
(369, 8, 'CF411X', 'HP 410X High Yield Cyan Original LaserJet Toner Cartridge', 743.6, 1, '283.jpg', NULL),
(370, 8, 'CF411XC', 'HP CF411XC High Yield Cyan Contract Original LaserJet Toner Cartridge', 817.96, 1, '284.jpg', NULL),
(371, 8, 'CF412A', 'HP 410A Yellow Original LaserJet Toner Cartridge', 430.04, 1, '285.jpg', NULL),
(372, 8, 'CF412X', 'HP 410X High Yield Yellow Original LaserJet Toner Cartridge', 743.6, 1, '286.jpg', NULL),
(373, 8, 'CF412XC', 'HP CF412XC High Yield Yellow Contract Original LaserJet Toner Cartridge', 817.96, 1, '287.jpg', NULL),
(374, 8, 'CF413A', 'HP 410A Magenta Original LaserJet Toner Cartridge', 430.04, 1, '288.jpg', NULL),
(375, 8, 'CF413X', 'HP 410X High Yield Magenta Original LaserJet Toner Cartridge', 743.6, 1, '290.jpg', NULL),
(376, 8, 'CF413XC', 'HP CF413XC High Yield Magenta Contract Original LaserJet Toner Cartridge', 817.96, 1, '291.jpg', NULL),
(377, 8, 'CF440AM', 'HP 312A 3-pack Cyan/Magenta/Yellow Original LaserJet Toner Cartridges', 1048.71, 1, '18c.png', NULL),
(378, 8, 'CZ192A', 'HP 93A Black Original LaserJet Toner Cartridge', 771.94, 1, '293.png', NULL),
(379, 8, 'Q2612AD', 'HP 12A 2-pack Black Original LaserJet Toner Cartridges', 547.43, 1, '294.jpg', NULL),
(380, 8, 'Q2613A', 'HP 13A Black Original LaserJet Toner Cartridge', 393.12, 1, '295.jpg', NULL),
(381, 8, 'Q2624A', 'HP 24A Black Original LaserJet Toner Cartridge', 340.86, 1, '296.jpg', NULL),
(382, 8, 'Q3960A', 'HP 122A Black Original LaserJet Toner Cartridge', 394.29, 1, '297.png', NULL),
(383, 8, 'Q3961A', 'HP 122A Cyan Original LaserJet Toner Cartridge', 475.54, 1, '298.jpg', NULL),
(384, 8, 'Q3963A', 'HP 122A Magenta Original LaserJet Toner Cartridge', 475.54, 1, '299.jpg', NULL),
(385, 8, 'Q5942A', 'HP 42A Black Original LaserJet Toner Cartridge', 712.01, 1, '300.jpg', NULL),
(386, 8, 'Q5945A', 'HP 45A Black Original LaserJet Toner Cartridge', 972.14, 1, '300.jpg', NULL),
(387, 8, 'Q5949A', 'HP 49A Black Original LaserJet Toner Cartridge', 393.12, 1, '302.jpg', NULL),
(388, 8, 'Q5949XD', 'HP 49X 2-pack High Yield Black Original LaserJet Toner Cartridges', 1294.8, 1, '303.jpg', NULL),
(389, 8, 'Q5950A', 'HP 643A Black Original LaserJet Toner Cartridge', 848.9, 1, '304.jpg', NULL),
(390, 8, 'Q5952A', 'HP 643A Yellow Original LaserJet Toner Cartridge', 1207.05, 1, '305.jpg', NULL),
(391, 8, 'Q5953A', 'HP 643A Magenta Original LaserJet Toner Cartridge', 1207.05, 1, '306.jpg', NULL),
(392, 8, 'Q6000A', 'HP 124A Black Original LaserJet Toner Cartridge', 361.27, 1, '307.jpg', NULL),
(393, 8, 'Q6001A', 'HP 124A Cyan Original LaserJet Toner Cartridge', 394.29, 1, '308.jpg', NULL),
(394, 8, 'Q6002A', 'HP 124A Yellow Original LaserJet Toner Cartridge', 394.29, 1, '309.jpg', NULL),
(395, 8, 'Q6003A', 'HP 124A Magenta Original LaserJet Toner Cartridge', 394.29, 1, '310.jpg', NULL),
(396, 8, 'Q6470A', 'HP 501A Black Original LaserJet Toner Cartridge', 631.93, 1, '311.jpg', NULL),
(397, 8, 'Q6511A', 'HP 11A Black Original LaserJet Toner Cartridge', 592.02, 1, '312.jpg', NULL),
(398, 8, 'Q7516A', 'HP 16A Black Original LaserJet Toner Cartridge', 790.4, 1, '313.jpg', NULL),
(399, 8, 'Q7551A', 'HP 51A Black Original LaserJet Toner Cartridge', 563.03, 1, '314.png', NULL),
(400, 8, 'Q7551X', 'HP 51X High Yield Black Original LaserJet Toner Cartridge', 943.28, 1, '315.jpg', NULL),
(401, 8, 'Q7551XD', 'HP 51X 2-pack High Yield Black Original LaserJet Toner Cartridges', 1697.93, 1, '316.jpg', NULL),
(402, 8, 'Q7553A', 'HP 53A Black Original LaserJet Toner Cartridge', 384.28, 1, '317.jpg', NULL),
(403, 8, 'Q7553X', 'HP 53X High Yield Black Original LaserJet Toner Cartridge', 709.54, 1, '318.jpg', NULL),
(404, 8, 'Q7553XD', 'HP 53X 2-pack High Yield Black Original LaserJet Toner Cartridges', 1277.12, 1, '319.jpg', NULL),
(405, 8, 'Q7570A', 'HP 70A Black Original LaserJet Toner Cartridge', 823.16, 1, '320.png', NULL),
(406, 8, 'Q7581A', 'HP 503A Cyan Original LaserJet Toner Cartridge', 812.76, 1, '321.jpg', NULL),
(407, 8, 'CB384A', 'HP 824A Black LaserJet Image Drum', 273.91, 1, '98.jpg', NULL),
(408, 8, 'CB385A', 'HP 824A Cyan LaserJet Image Drum', 770.12, 1, '99.png', NULL),
(409, 8, 'CB386A', 'HP 824A Yellow LaserJet Image Drum', 770.12, 1, '100.png', NULL),
(410, 8, 'CB387A', 'HP 824A Magenta LaserJet Image Drum', 770.12, 1, '101.jpg', NULL),
(411, 8, 'CB390YC', 'HP CB390YC Black Optimized Contract Original LaserJet Toner Cartridge', 291.46, 1, '102.jpg', NULL),
(412, 8, 'CB400A', 'HP 642A Black Original LaserJet Toner Cartridge', 688.35, 1, '103.jpg', NULL),
(413, 8, 'CB401A', 'HP 642A Cyan Original LaserJet Toner Cartridge', 1024.14, 1, '104.jpg', NULL),
(414, 8, 'CB403A', 'HP 642A Magenta Original LaserJet Toner Cartridge', 1024.14, 1, '277.jpg', NULL),
(415, 8, 'CB436A', 'HP 36A Black Original LaserJet Toner Cartridge', 271.05, 1, '110.jpg', NULL),
(416, 8, 'CB541A', 'HP 125A Cyan Original LaserJet Toner Cartridge', 251.94, 1, '114.jpg', NULL),
(417, 8, 'CB542A', 'HP 125A Yellow Original LaserJet Toner Cartridge', 251.94, 1, '115.png', NULL),
(418, 8, 'CB543A', 'HP 125A Magenta Original LaserJet Toner Cartridge', 251.94, 1, '116.png', NULL),
(419, 8, 'CC364X', 'HP 64X High Yield Black Original LaserJet Toner Cartridge', 1066, 1, '118.jpg', NULL),
(420, 8, 'CC364XD', 'HP 64X 2-pack High Yield Black Original LaserJet Toner Cartridges', 1918.67, 1, '119.jpg', NULL),
(421, 8, 'CC531A', 'HP 304A Cyan Original LaserJet Toner Cartridge', 422.67, 1, '122.jpg', NULL),
(422, 8, 'CC532A', 'HP 304A Yellow Original LaserJet Toner Cartridge', 422.76, 1, '123.jpg', NULL),
(423, 8, 'CC533A', 'HP 304A Magenta Original LaserJet Toner Cartridge', 422.76, 1, '124.jpg', NULL),
(424, 8, 'CE250A', 'HP 504A Black Original LaserJet Toner Cartridge', 526.89, 1, '125.jpg', NULL),
(425, 8, 'CE250X', 'HP 504X High Yield Black Original LaserJet Toner Cartridge', 681.46, 1, '126.jpg', NULL),
(426, 8, 'CB540A', 'HP 125A Black Original LaserJet Toner Cartridge', 274.04, 1, '112.jpg', NULL),
(427, 8, 'CE250XD', 'HP 504X 2-pack High Yield Black Original LaserJet Toner Cartridges', 1226.55, 1, '127.jpg', NULL),
(428, 8, 'CE251A', 'HP 504A Cyan Original LaserJet Toner Cartridge', 922.09, 1, '128.jpg', NULL),
(429, 8, 'CE252A', 'HP 504A Yellow Original LaserJet Toner Cartridge', 922.09, 1, '129.jpg', NULL),
(430, 8, 'CE253A', 'HP 504A Magenta Original LaserJet Toner Cartridge', 922.09, 1, '130.jpg', NULL),
(431, 8, 'CE260A', 'HP 647A Black Original LaserJet Toner Cartridge', 553.67, 1, '133.jpg', NULL),
(432, 8, 'CE261A', 'HP 648A Cyan Original LaserJet Toner Cartridge', 1003.47, 1, '134.jpg', NULL),
(433, 8, 'CE262A', 'HP 648A Yellow Original LaserJet Toner Cartridge', 1003.47, 1, '135.jpg', NULL),
(434, 8, 'CE263A', 'HP 648A Magenta Original LaserJet Toner Cartridge', 1003.47, 1, '136.jpg', NULL),
(435, 8, 'CE270AC', 'HP CE270AC Black Contract Original LaserJet Toner Cartridge', 942.76, 1, '139.png', NULL),
(436, 8, 'CE271A', 'HP 650A Cyan Original LaserJet Toner Cartridge', 1394.77, 1, '140.jpg', NULL),
(437, 8, 'CE271AC', 'HP CE271AC Cyan Contract Original LaserJet Toner Cartridge', 1534.26, 1, '141.jpg', NULL),
(438, 8, 'CE272A', 'HP 650A Yellow Original LaserJet Toner Cartridge', 1394.77, 1, '142.jpg', NULL),
(439, 8, 'CE272AC', 'HP CE272AC Yellow Contract Original LaserJet Toner Cartridge', 1534.26, 1, '143.jpg', NULL),
(440, 8, 'CE273A', 'HP 650A Magenta Original LaserJet Toner Cartridge', 1394.77, 1, '144.jpg', NULL),
(441, 8, 'CE278A', 'HP 78A Black Original LaserJet Toner Cartridge', 272.74, 1, '146.jpg', NULL),
(442, 8, 'CF303AC', 'HP CF303AC Magenta Contract Original LaserJet Toner Cartridge', 2020.2, 1, '229.jpg', NULL),
(443, 8, 'CE410XD', 'HP 305X 2-pack High Yield Black Original LaserJet Toner Cartridges', 722.93, 1, '175 c.jpg', NULL),
(444, 8, 'CE313A', 'HP 126A Magenta Original LaserJet Toner Cartridge', 222.43, 1, '151.jpg', NULL),
(445, 8, 'CE273AC', 'HP CE273AC Magenta Contract Original LaserJet Toner Cartridge', 1534.26, 1, '145.jpg', NULL),
(446, 8, 'CF031AC', 'HP CF031AC Cyan Contract Original LaserJet Toner Cartridge', 1087.32, 1, '189 c.jpg', NULL),
(447, 8, 'CF032AC', 'HP CF032AC Yellow Contract Original LaserJet Toner Cartridge', 1087.32, 1, '191 c.jpg', NULL),
(448, 8, 'CB435A', 'HP 35A Black Original LaserJet Toner Cartridge', 235.82, 1, '108.jpg', NULL),
(449, 8, 'CC530A', 'HP 304A Black Original LaserJet Toner Cartridge', 428.87, 1, '120.jpg', NULL),
(450, 8, 'CE264XC', 'HP CE264XC High Yield Black Contract Original LaserJet Toner Cartridge', 775.84, 1, '137.jpg', NULL),
(451, 8, 'CE270A', 'HP 650A Black Original LaserJet Toner Cartridge', 857.09, 1, '138.jpg', NULL),
(452, 8, 'CE310A', 'HP 126A Black Original LaserJet Toner Cartridge', 200.07, 1, '149.jpg', NULL),
(453, 8, 'RAME PAGE DE GARDE TRANSPARENT A4 DE 100 FEUILLES', 'RAME PAGE DE GARDE TRANSPARENT A4 DE 100 FEUILLES', 15.6, 1, '323.jpg', NULL),
(455, 8, 'RAME DE PAPIER DE GARDE CARTONNEE A4 DE 100 FEUILLES', 'RAME DE PAPIER DE GARDE CARTONNEE A4 DE 100 FEUILLES', 13.2, 1, '324.jpg', NULL),
(456, 8, 'RAME PAPIER ETRA BLANC A3 DE 500 FEUILLES', 'RAME PAPIER ETRA BLANC A3 DE 500 FEUILLES', 16.5, 1, '325.jpg', NULL),
(457, 8, 'RAME PAPIER EXTRA STRONG', 'RAME PAPIER EXTRA STRONG', 12.3, 1, '326.jpg', NULL),
(458, 8, 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES', 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES', 8.6, 1, '327.jpg', NULL),
(460, 8, 'RAME OFFSET DE 100 FEUILLES FORMAT A4 (différents couleurs)', 'RAME OFFSET DE 100 FEUILLES FORMAT A4 (différents couleurs)', 14.7, 1, '328.jpg', NULL),
(461, 8, 'Papier A4 COULEUR VERT', 'Papier A4 COULEUR VERT', 13.3, 1, '329.jpg', NULL),
(462, 8, 'Papier A4 COULEUR ROUGE', 'Papier A4 COULEUR ROUGE', 13.3, 1, '330.jpg', NULL),
(463, 8, 'Papier A4 COULEUR BLEU', 'Papier A4 COULEUR BLEU', 13.3, 1, '331.jpg', NULL),
(464, 8, 'Rame Papier consone Bleu', 'Rame Papier consone Bleu', 13.3, 1, '332.jpg', NULL),
(465, 8, 'REGISTRE A4 400 PAGES', 'REGISTRE A4 400 PAGES', 6.8, 1, '333.jpg', NULL),
(466, 8, 'REGISTRE ARRIVEE ARABE', 'REGISTRE ARRIVEE ARABE', 9, 1, '334.jpg', NULL),
(467, 8, 'REGISTRE DEPART ARABE', 'REGISTRE DEPART ARABE', 9, 1, '335.jpg', NULL),
(468, 8, 'REGISTRE A4 300 PAGES', 'REGISTRE A4 300 PAGES', 5.6, 1, '336.jpg', NULL),
(469, 8, 'REGISTRE A4 200 PAGES', 'REGISTRE A4 200 PAGES', 4.8, 1, '337.jpg', NULL),
(470, 8, 'REGISTRE A4 PETIT CARREAUX 100(OU 96 BPAGES)', 'REGISTRE A4 PETIT CARREAUX 100(OU 96 BPAGES)', 3.35, 1, '338.jpg', NULL),
(471, 8, 'REGISTRE REPERTOIRE ALPHABETIQUE A4 200 PAGES)', 'REGISTRE REPERTOIRE ALPHABETIQUE A4 200 PAGES)', 7.8, 1, '339.jpg', NULL),
(472, 8, 'ENVOLOPE OFFSET BLANC 90 G12*17,6 CM', 'ENVOLOPE OFFSET BLANC 90 G12*17,6 CM', 0.05, 1, '340.jpg', NULL),
(473, 8, 'ENVOLOPE 11,4*16,2 CM PAPIER 80 G/M² FERMETURE AUTOCOLANTE AVEC BANDE SILICONEE', 'ENVOLOPE 11,4*16,2 CM PAPIER 80 G/M² FERMETURE AUTOCOLANTE AVEC BANDE SILICONEE', 0.09, 1, '341.jpg', NULL),
(474, 7, 'ENVOLOPE BLANCHE DE 90G FORMAT 26*36 CM FERMETURE AVEC BONDE SILICONEE', 'ENVOLOPE BLANCHE DE 90G FORMAT 26*36 CM FERMETURE AVEC BONDE SILICONEE', 0.1, 1, '342.jpg', NULL),
(475, 8, 'ENVOLOPE KRAFT BRUN AUTOCOMMANT 80 GR FORMAT 16,2*22,9 CM FERMETURE PAR BANDE SILICONEE', 'ENVOLOPE KRAFT BRUN AUTOCOMMANT 80 GR FORMAT 16,2*22,9 CM FERMETURE PAR BANDE SILICONEE', 0.19, 1, '343.jpg', NULL),
(476, 8, 'STYLO A BILLE,POINTE MOYENNE OU FINE ,BLEU', 'STYLO A BILLE,POINTE MOYENNE OU FINE ,BLEU', 0.45, 1, '344.jpg', NULL),
(477, 8, 'STYLO A BILLE,POINTE MOYENNE OU FINE,NOIR', 'STYLO A BILLE,POINTE MOYENNE OU FINE,NOIR', 0.45, 1, '345.jpg', NULL),
(478, 8, 'STYLO A BILLE,POINTE MOYENNE OU FINE,ROUGE', 'STYLO A BILLE,POINTE MOYENNE OU FINE,ROUGE', 0.45, 1, '346.jpg', NULL),
(479, 8, 'STYLO A BILLE,POINTE MOYENNE OU FINE,VERT', 'STYLO A BILLE,POINTE MOYENNE OU FINE,VERT', 0.45, 1, '347.jpg', NULL),
(480, 8, 'STYLO GEL POINTE 0,5 MM OU 0,7 MM BLEU', 'STYLO GEL POINTE 0,5 MM OU 0,7 MM BLEU', 3.8, 1, '348.jpg', NULL),
(481, 8, 'STYLO GEL POINTE 0,5 MM OU 0,7 MM NOIR', 'STYLO GEL POINTE 0,5 MM OU 0,7 MM NOIR', 3.8, 1, '349.jpg', NULL),
(482, 8, 'STYLO GEL POINTE 0,5 MM OU 0,7 MM ROUGE', 'STYLO GEL POINTE 0,5 MM OU 0,7 MM ROUGE', 3.8, 1, '350.jpg', NULL),
(483, 8, 'STYLO GEL POINTE 0,5 MM OU 0,7 MM VERT', 'STYLO GEL POINTE 0,5 MM OU 0,7 MM VERT', 3.8, 1, '351.jpg', NULL),
(484, 8, 'STYLO A BILLE (BLEU) SUR SOCLE', 'STYLO A BILLE (BLEU) SUR SOCLE', 8.9, 1, '352.jpg', NULL),
(485, 8, 'Marquer tableau Blanc Rouge', 'Marquer tableau Blanc Rouge', 1.32, 1, '353.jpg', NULL),
(486, 8, 'Marquer tableau Blanc Vert', 'Marquer tableau Blanc Vert', 1.32, 1, '354.jpg', NULL),
(487, 8, 'Marquer tableau Blanc Noir', 'Marquer tableau Blanc Noir', 1.32, 1, '355.jpg', NULL),
(488, 8, 'Marquer permanent Rouge NEW WILSON', 'Marquer permanent Rouge NEW WILSON', 0.99, 1, '356.jpg', NULL),
(489, 8, 'Marquer permanent Noir NEW WILSON', 'Marquer permanent Noir NEW WILSON', 0.99, 1, '358.jpg', NULL),
(490, 8, 'Marquer permanent Bleu NEW WILSON', 'Marquer permanent Bleu NEW WILSON', 0.99, 1, '359.jpg', NULL),
(491, 8, 'MARQEUR PERMENANT MUTI USAGES (PAPIER,PLASTIQUE,VERRE,TISSU…)POINTE BISO :TRAITS 3', 'MARQEUR PERMENANT MUTI USAGES (PAPIER,PLASTIQUE,VERRE,TISSU…)POINTE BISO :TRAITS 3', 1.68, 1, '360.jpg', NULL),
(492, 8, 'BATTON DE COLE (ALENTOUR 20 GRS _25GRS)', 'BATTON DE COLE (ALENTOUR 20 GRS _25GRS)', 0.97, 1, '361.jpg', NULL),
(493, 8, 'BOITE DE 4 SURLGNEURS (4 COULEURS)', 'BOITE DE 4 SURLGNEURS (4 COULEURS)', 4.8, 1, '362.jpg', NULL),
(494, 8, 'PORTE MINE RECHARGEABLE/0,5+BOITE MINES 0,5MM', 'PORTE MINE RECHARGEABLE/0,5+BOITE MINES 0,5MM', 6.8, 1, '363.jpg', NULL),
(495, 8, 'CORRECTEUR A PINCEAU SET DE 2 BOUTEILLES,UN FLACON FLUIDE CORRECTEUR (20ml) ET UN FLACON', 'CORRECTEUR A PINCEAU SET DE 2 BOUTEILLES,UN FLACON FLUIDE CORRECTEUR (20ml) ET UN FLACON', 1.7, 1, '364.jpg', NULL),
(497, 8, 'GOMES BLANCHES', 'GOMES BLANCHES', 0.38, 1, '365.jpg', NULL),
(498, 8, 'AGRAFEUSES DE BUREAU,CAPACTE D’AGRAFAGE :25 TYPE D’AGRAFAGES :26/6,24/6', 'AGRAFEUSES DE BUREAU,CAPACTE D’AGRAFAGE :25 TYPE D’AGRAFAGES :26/6,24/6', 8.9, 1, '366.jpg', NULL),
(499, 8, 'TAILLE CRAYON CLASSIC 2TROUS EN METAL POUR 2 GRANDEURS DE CRAYON POUR CRAYON JUSQU\'A UN', 'TAILLE CRAYON CLASSIC 2TROUS EN METAL POUR 2 GRANDEURS DE CRAYON POUR CRAYON JUSQU\'A UN', 0.89, 1, '367.jpg', NULL),
(500, 8, 'ENCRE A TAMPON BLEU', 'ENCRE A TAMPON BLEU', 0.85, 1, '368.jpg', NULL),
(501, 8, 'RECHARGE CUBE DIFFERENTES COULEURS (9*9*9)', 'RECHARGE CUBE DIFFERENTES COULEURS (9*9*9)', 2.2, 1, '369.jpg', NULL),
(502, 8, 'CISEAUX DE BUREAU  GM', 'CISEAUX DE BUREAU  GM', 3.8, 1, '370.jpg', NULL),
(503, 8, 'ARRACHE AGRAPHE POUR TOUTES LES AGRAPHES STANDARDS', 'ARRACHE AGRAPHE POUR TOUTES LES AGRAPHES STANDARDS', 1.2, 1, '371.jpg', NULL),
(504, 8, 'BLOC NOTES A5 (14,8*21cm) DE 100  PAGES MICRO PERFOREES', 'BLOC NOTES A5 (14,8*21cm) DE 100  PAGES MICRO PERFOREES', 1.78, 1, '372.jpg', NULL),
(505, 8, 'BLOC NOTES A4 (21*29,7cm) DE 100 PAGES MICRO PERFOREES', 'BLOC NOTES A4 (21*29,7cm) DE 100 PAGES MICRO PERFOREES', 2.3, 1, '373.jpg', NULL),
(506, 8, 'BLOC rep (postit notes) MUNIS D’UN ADHESIF REVOLITIONNAIRE BLOC DE 100 FEUILLES 75*75MM', 'BLOC rep (postit notes) MUNIS D’UN ADHESIF REVOLITIONNAIRE BLOC DE 100 FEUILLES 75*75MM', 2.6, 1, '374.jpg', NULL),
(507, 8, 'PERFORATEUR DE BUREAU METALIQUE :2TROUS AVEC INDICATEUR  D’ALIGNEMENT DES FEUILLES CAPACITE  DE PERFORATION :25 FEULLES', 'PERFORATEUR DE BUREAU METALIQUE :2TROUS AVEC INDICATEUR  D’ALIGNEMENT DES FEUILLES CAPACITE  DE PERFORATION :25 FEULLES', 9.8, 1, '375.jpg', NULL),
(508, 8, 'REGLE PLATE GRADUEE 40 CM EN PLASTIQUE', 'REGLE PLATE GRADUEE 40 CM EN PLASTIQUE', 0.95, 1, '376.jpg', NULL),
(509, 8, 'BOITE DE 1000 AGRAFES 24/6', 'BOITE DE 1000 AGRAFES 24/6', 0.54, 1, '377.jpg', NULL),
(510, 8, 'BOITE D’ELASTIQUE DE 50 GR', 'BOITE D’ELASTIQUE DE 50 GR', 2.9, 1, '378.jpg', NULL),
(511, 8, 'PAQUET DE 100 TROMBONS (33mm)', 'PAQUET DE 100 TROMBONS (33mm)', 0.94, 1, '379.jpg', NULL),
(512, 8, 'CAHIER SPIRAL A4 DE 200 PAGES COUVERTURE VERNIE LAVABLE INTERIEUR EN PAPIER ETRA BLANC SATINE', 'CAHIER SPIRAL A4 DE 200 PAGES COUVERTURE VERNIE LAVABLE INTERIEUR EN PAPIER ETRA BLANC SATINE', 8.9, 1, '380.jpg', NULL),
(513, 8, 'ADHESIF TRANSPARANT ENVIRON  18MM*60M', 'ADHESIF TRANSPARANT ENVIRON  18MM*60M', 0.78, 1, '381.jpg', NULL),
(514, 8, 'ADHESIF POUR EMBALLAGE MARRON ENVIRON 50MM*50M', 'ADHESIF POUR EMBALLAGE MARRON ENVIRON 50MM*50M', 1.56, 1, '382.jpg', NULL),
(515, 8, 'TUBE COLLE PM', 'TUBE COLLE PM', 0.68, 1, '383.jpg', NULL),
(516, 8, 'Boite à tampon bleu', 'Boite à tampon bleu', 3.65, 1, '386.jpg', NULL),
(517, 8, 'Encre à tampon bleu', 'Encre à tampon bleu', 0.98, 1, '387.jpg', NULL),
(518, 8, 'Encre à tampon rouge', 'Encre à tampon rouge', 0.98, 1, '388.jpg', NULL),
(519, 8, 'Agrafeuse NOVUS STABIL 24/6', 'Agrafeuse NOVUS STABIL 24/6', 12.3, 1, '389.jpg', NULL),
(520, 8, 'Agrafeuse KANGARO 24/6', 'Agrafeuse KANGARO 24/6', 9.8, 1, '390.jpg', NULL),
(521, 8, 'Perforatrice PUNCH', 'Perforatrice PUNCH', 8.6, 1, '391.jpg', NULL),
(522, 8, 'Arrache agrafe', 'Arrache agrafe', 1.17, 1, '392.jpg', NULL),
(523, 8, 'Chrono Exacompta  DOS 50', 'Chrono Exacompta DOS 50', 7.4, 1, '399.jpg', NULL),
(524, 8, 'Chrono Exacompta DOS 70', 'Chrono Exacompta  DOS 70', 7.4, 1, '400 (2).jpg', NULL),
(525, 8, 'Chrono GRIS MS DOS 70', 'Chrono GRIS MS DOS 70', 4.8, 1, '395.jpg', NULL),
(526, 8, 'Chrono ORANGE DOS 50 / 70', 'Chrono ORANGE DOS 50 / 70', 4, 1, '398.jpg', NULL),
(527, 8, 'CRAYON NOIR N°2 HB', 'CRAYON NOIR N°2 HB', 0.38, 1, '432.jpg', NULL),
(528, 8, 'PAQUET DE 100 POCHETTES LISSES DE QUALITE PERFOEE ET INCOLORE ,EN POLYPROPYLENE POUR FUILLES A4', 'PAQUET DE 100 POCHETTES LISSES DE QUALITE PERFOEE ET INCOLORE ,EN POLYPROPYLENE POUR FUILLES A4', 9.8, 1, '431.jpg', NULL),
(529, 8, 'CARNET  DE BORD POUR VOITURE DE SERVICE', 'CARNET  DE BORD POUR VOITURE DE SERVICE', 6, 1, '430.jpg', NULL),
(530, 8, 'PORTE DOCUMENTS POLYCLASS A4 DE 200 VUES', 'PORTE DOCUMENTS POLYCLASS A4 DE 200 VUES', 8.8, 1, '429.jpg', NULL),
(531, 8, 'PORTE CHARGE CUBE CARRE METALLIQUE', 'PORTE CHARGE CUBE CARRE METALLIQUE', 3.6, 1, '428.jpg', NULL),
(532, 8, 'ENVOLOPPE CARTE DE VISITE 11*16', 'ENVOLOPPE CARTE DE VISITE 11*16', 0.65, 1, '427.jpg', NULL),
(533, 8, 'ROULEAU CALQUE 1,10M 60 GR', 'ROULEAU CALQUE 1,10M 60 GR', 90, 1, '426.jpg', NULL),
(534, 8, 'ROULEAU CALQUE 1,10M 90 GR', 'ROULEAU CALQUE 1,10M 90 GR', 85, 1, '426.jpg', NULL),
(535, 8, 'BAGUETTE A RELIER N14MM', 'BAGUETTE A RELIER N14MM', 0.98, 1, '425.jpg', NULL),
(536, 8, 'BAGUETTE A RELIER N12MM', 'BAGUETTE A RELIER N12MM', 0.59, 1, '424.jpg', NULL),
(537, 8, 'BAGUETTE A RELIER N10MM', 'BAGUETTE A RELIER N10MM', 0.56, 1, '423.jpg', NULL),
(538, 8, 'BAGUETTE A RELIER N8MM', 'BAGUETTE A RELIER N8MM', 0.25, 1, '422.jpg', NULL),
(539, 8, 'CHEMISE KRAFT 24*32CM', 'CHEMISE KRAFT 24*32CM', 0.08, 1, '420.jpg', NULL),
(540, 8, 'PAQUET DE 100 SPIRAL N°32', 'PAQUET DE 100 SPIRAL N°32', 22, 1, '419.jpg', NULL),
(541, 8, 'PAQUET DE 100 SPIRAL N°8', 'PAQUET DE 100 SPIRAL N°8', 5.8, 1, '418.jpg', NULL),
(542, 8, 'PAQUET DE 100 SPIRAL N°6', 'PAQUET DE 100 SPIRAL N°6', 5.2, 1, '417.jpg', NULL),
(543, 8, 'PAQUET DE 100 SPIRAL N°25', 'PAQUET DE 100 SPIRAL N°25', 17, 1, '416.jpg', NULL),
(544, 8, 'PAQUET DE 100 SPIRAL N°22', 'PAQUET DE 100 SPIRAL N°22', 26, 1, '415.jpg', NULL),
(545, 8, 'CLASSEUR A LEVIER PVC DOS LARGE GM RECOUVERT PLASTIQUE', 'CLASSEUR A LEVIER PVC DOS LARGE GM RECOUVERT PLASTIQUE', 5.6, 1, '414.jpg', NULL),
(546, 8, 'DEVIDOIRE SCOTCH', 'DEVIDOIRE SCOTCH', 7.8, 1, '413.jpg', NULL),
(547, 8, 'Cahier 5/5 (96P G CARREAU)', 'Cahier 5/5 (96P G CARREAU)', 1.78, 1, '412.jpg', NULL),
(548, 8, 'PORTE REVUE', 'PORTE REVUE', 6.9, 1, '411.jpg', NULL),
(549, 8, 'CHEMISE A CLIP', 'CHEMISE A CLIP', 1.9, 1, '410.jpg', NULL),
(550, 8, 'PARAPHEUR DE 12 VOLETS COUVERTURE CARTON PLASTIC', 'PARAPHEUR DE 12 VOLETS COUVERTURE CARTON PLASTIC', 4.8, 1, '409.jpg', NULL),
(551, 8, 'PARAPHEUR DE 12 VOLETS COUVERTURE CARTON PLASTIC', 'PARAPHEUR DE 12 VOLETS COUVERTURE CARTON PLASTIC', 4.8, 1, '408.jpg', NULL),
(552, 8, 'CHEMISE A RABT', 'CHEMISE A RABT', 1.45, 1, '407.jpg', NULL),
(553, 8, 'CHEMISE CARTONNEE 180 G FORMAT 24*32CM DIFFERENTES COULEURS', 'CHEMISE CARTONNEE 180 G FORMAT 24*32CM DIFFERENTES COULEURS', 0.1, 1, '406.jpg', NULL),
(554, 8, 'Intercalaire Transparent de 50', 'Intercalaire Transparent de 50', 4.9, 1, '405.jpg', NULL),
(555, 8, 'Intercalaire Transparent de 100', 'Intercalaire Transparent de 100', 8.8, 1, '404.jpg', NULL),
(556, 8, 'BOITE D’ARCHIVE FORMAT ENVIRON 34*25CM DOS 5 CM EN CARTON FORMETURE PAR BOUTON PRESSION', 'BOITE D’ARCHIVE FORMAT ENVIRON 34*25CM DOS 5 CM EN CARTON FORMETURE PAR BOUTON PRESSION', 1.69, 1, '403.jpg', NULL),
(557, 8, 'BOITE D’ARCHIVE FORMAT ENVIRON 34*25CM DOS 10 CM EN CARTON FORMETURE PAR BOUTON PRESSION', 'BOITE D’ARCHIVE FORMAT ENVIRON 34*25CM DOS 10 CM EN CARTON FORMETURE PAR BOUTON PRESSION', 1.76, 1, '402.jpg', NULL),
(560, 8, 'BOITE D’ARCHIVE FORMAT ENVIRON 34*25CM DOS 15 CM EN CARTON FORMETURE PAR BOUTON PRESSION', 'BOITE D’ARCHIVE FORMAT ENVIRON 34*25CM DOS 15 CM EN CARTON FORMETURE PAR BOUTON PRESSION', 2.28, 1, '403.jpg', NULL),
(561, 8, 'classeur Chrono ORANGE DOS 50 / 70', 'classeur Chrono ORANGE DOS 50 / 70', 4.8, 1, '396.jpg', NULL),
(562, 8, 'classeur Chrono VIOLET DOS 50/70', 'Chrono VIOLET DOS 50/70', 4.8, 1, '397.jpg', NULL),
(563, 8, 'classeur Chrono SMR DOS 70', 'classeur Chrono SMR DOS 70', 4.8, 1, '450.png', NULL),
(564, 8, 'Classeur Chrono ANCOR  DOS 70', 'Chrono ANCOR  DOS 70', 4.8, 1, '452.jpg', NULL),
(565, 8, 'Chrono SMR rouge DOS 70', 'Chrono SMR rouge DOS 70', 4.8, 1, '400 (2).jpg', NULL),
(566, 8, 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES MY PRINT', 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES MY PRINT', 8.65, 1, '459.jpg', NULL),
(567, 8, 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES DOUBLE A', 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES DOUBLE A', 8.8, 1, '461.jpg', NULL),
(568, 8, 'rame offset de 100 feuilles format a4 (différents couleurs)', 'rame offset de 100 feuilles format a4 (différents couleurs)', 14.7, 1, '462.jpg', NULL),
(569, 8, 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES MAESTRO', 'RAME DE PAPIER OFFSET 80 GR A4 DE 500 FEUILLES MAESTRO', 8.2, 1, '457.jpg', NULL),
(570, 8, 'Paquet Chemises CARTONNEES (100) 180 G FORMAT 24*32 DIFFERENTS COULEURS', 'Paquet Chemises CARTONNEES (100) 180 G FORMAT 24*32 DIFFERENTS COULEURS', 13.5, 1, 'Chemise Cartonnee.png', NULL),
(573, 8, 'Classeur Chrono SMR DOS 50', 'Classeur Chrono SMR DOS 50', 4.8, 1, '450.png', NULL),
(574, 7, 'disquette verbatim PAQUET DE 10', 'disquette verbatim PAQUET DE 10', 35, 1, '444.jpg', NULL),
(575, 7, 'CD-RW CASE', 'CD-RW CASE', 1.25, 1, '443.png', NULL),
(576, 7, 'DVD-R MAXDATA POCHETTE PLASTIQUE', 'DVD-R MAXDATA POCHETTE PLASTIQUE', 1.2, 1, '442.jpg', NULL),
(577, 7, 'DVD-R IMPRIMABLE SLIM CASE', 'DVD-R IMPRIMABLE SLIM CASE', 0.72, 1, '441.jpg', NULL);
INSERT INTO `produits` (`id`, `tva_id`, `titre`, `description`, `prix`, `disponible`, `path`, `categorie_id`) VALUES
(578, 7, 'BOBINE DVD-R X16 KINGPRO', 'BOBINE DVD-R X16 KINGPRO', 23.8, 1, '438.jpg', NULL),
(579, 7, 'CD-R MAX DATA 700MB 52X SLIM CASE', 'CD-R MAX DATA 700MB 52X SLIM CASE', 0.98, 1, '437.jpg', NULL),
(580, 7, 'POCHETTE CD/DVD DIFFÉRENTES COULEURS', 'POCHETTE CD/DVD DIFFÉRENTES COULEURS', 7.56, 1, '436.jpg', NULL),
(581, 7, 'BOBINE DVD+R MAX DATA 7GB 16X SPINDLE', 'BOBINE DVD+R MAX DATA 7GB 16X SPINDLE', 27.2, 1, '435.jpg', NULL),
(582, 7, 'BOBINE CD-R SPINDLE VERBATIM 52X 700MB', 'BOBINE CD-R SPINDLE VERBATIM 52X 700MB', 29.16, 1, '434.jpg', NULL),
(583, 7, 'BOBINE DVD+R 16X VERBATIM', 'BOBINE DVD+R 16X VERBATIM', 29.26, 1, '433.jpg', NULL),
(584, 7, 'DVD + R W SLIM', 'DVD + R W SLIM', 0.38, 1, '440.jpg', NULL),
(585, 7, 'BOBINE DATA RIGHT', 'BOBINE DATA RIGHT', 23, 1, '439.jpg', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resaux`
--

DROP TABLE IF EXISTS `resaux`;
CREATE TABLE IF NOT EXISTS `resaux` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tva_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9AF32F8C4D79775F` (`tva_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sac`
--

DROP TABLE IF EXISTS `sac`;
CREATE TABLE IF NOT EXISTS `sac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `tva_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1AB651F4D79775F` (`tva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sac`
--

INSERT INTO `sac` (`id`, `titre`, `description`, `prix`, `disponible`, `tva_id`, `path`) VALUES
(3, 'SACCOCHE 12’’ PROTECH T32', 'SACCOCHE 12’’ PROTECH T32', 14.69, 0, 7, '83.png'),
(4, 'SACCOCHE 15.6’’ PROTECH T22', 'SACCOCHE 15.6’’ PROTECH T22', 40.3, 0, 7, '84.png'),
(5, 'SAC A DOS 17.3 PROTECH', 'SAC A DOS 17.3 PROTECH', 40.3, 0, 7, '85.png'),
(6, 'SAC A DOS 17.3 PROTECH', 'SAC A DOS 17.3 PROTECH', 42.9, 0, 7, '86.png');

-- --------------------------------------------------------

--
-- Structure de la table `scanner`
--

DROP TABLE IF EXISTS `scanner`;
CREATE TABLE IF NOT EXISTS `scanner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tva_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_55EFDF294D79775F` (`tva_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stockage`
--

DROP TABLE IF EXISTS `stockage`;
CREATE TABLE IF NOT EXISTS `stockage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tva_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CABCB4924D79775F` (`tva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `stockage`
--

INSERT INTO `stockage` (`id`, `tva_id`, `titre`, `description`, `prix`, `disponible`, `path`) VALUES
(10, 8, 'Disque Externe ADATA AHD710', 'Couleur : Bleu - Jaune - Noir Format de Disque : 2.5 Interface : USB 3.0 Capacité : 1 To - 2 To', 185, 1, '3.png'),
(11, 8, 'Disque Externe ADATA HV 610', 'Couleur : Blanc - Noir Format de Disque : 2.5 Capacité : 1 To', 165, 1, '2.png'),
(12, 8, 'Disque Externe ADATA NH03', 'Interface : USB 3.0 Capacité : 2 To', 260, 1, '1.png'),
(13, 7, 'CARTE MÉMOIRE ADATA 8G', 'CARTE MÉMOIRE ADATA 8G', 17.55, 0, '1a.png'),
(14, 7, 'CARTE MÉMOIRE SANDISK 16G', 'CARTE MÉMOIRE SANDISK 16G', 22.1, 0, '2d.jpg'),
(15, 7, 'FLASH DISQUE SANDISK 8G', 'FLASH DISQUE SANDISK 8G', 16.25, 0, '3d.jpg'),
(16, 7, 'FLASH DISQUE SANDISK 16G', 'FLASH DISQUE SANDISK 16G', 20.15, 0, '4d.jpg'),
(17, 7, 'CARTE MÉMOIRE SY-T68 Micro-SD / T-FLASH', 'CARTE MÉMOIRE SY-T68 Micro-SD / T-FLASH', 2.6, 0, '67.png'),
(18, 7, 'CARTE MÉMOIRE SY-368', 'CARTE MÉMOIRE SY-368', 3.51, 0, '68.png'),
(19, 7, 'CARTE MÉMOIRE SY-368', 'CARTE MÉMOIRE SY-368', 4.81, 0, '69.jpg'),
(20, 7, 'BOITIER HDD 2.5’’ USB 2.0', 'BOITIER HDD 2.5’’ USB 2.0', 10.92, 0, '70.jpg'),
(21, 7, 'BOITIER HDD 2.5’’ USB 3.0', 'BOITIER HDD 2.5’’ USB 3.0', 20.54, 0, '71.png'),
(22, 7, 'BOITIER HDD 3.5’’ USB 3.0', 'BOITIER HDD 3.5’’ USB 3.0', 54.6, 0, '72.png'),
(23, 7, 'PINENG PN-960 6000mAH', 'PINENG PN-960 6000mAH', 53.3, 0, '73.png'),
(24, 8, 'ORICO LD-100 10000mAH', 'ORICO LD-100 10000mAH', 53.3, 0, '73.png'),
(25, 7, 'PINENG PN-983 10000mAH', 'PINENG PN-983 10000mAH', 53.95, 0, '74.png'),
(26, 7, 'PINENG PN-928 10000mAH', 'PINENG PN-928 10000mAH', 50.44, 0, '75.png'),
(27, 7, 'PINENG PN-929 15000mAH', 'PINENG PN-929 15000mAH', 66.17, 0, '77.png'),
(28, 7, 'PINENG PN-999 20000mAH', 'PINENG PN-999 20000mAH', 75.92, 0, '77.png'),
(29, 7, 'DVD-R RONC 50PCS', 'DVD-R RONC 50PCS', 17.16, 0, '87.png');

-- --------------------------------------------------------

--
-- Structure de la table `stocksortie`
--

DROP TABLE IF EXISTS `stocksortie`;
CREATE TABLE IF NOT EXISTS `stocksortie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomdeuproduit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantite` double NOT NULL,
  `nomclient` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stock_entree`
--

DROP TABLE IF EXISTS `stock_entree`;
CREATE TABLE IF NOT EXISTS `stock_entree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomduproduit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantite` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tableaux`
--

DROP TABLE IF EXISTS `tableaux`;
CREATE TABLE IF NOT EXISTS `tableaux` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `tva_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_307CE1D44D79775F` (`tva_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tablette`
--

DROP TABLE IF EXISTS `tablette`;
CREATE TABLE IF NOT EXISTS `tablette` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `tva_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_508CDDD74D79775F` (`tva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tablette`
--

INSERT INTO `tablette` (`id`, `titre`, `description`, `prix`, `disponible`, `tva_id`, `path`) VALUES
(1, 'ETUI TABLETTE 7’’ MOD1', 'ETUI TABLETTE 7’’ MOD1', 4.94, 0, 8, '57.png'),
(2, 'ETUI TABLETTE 7’’ MOD2', 'ETUI TABLETTE 7’’ MOD2', 6.24, 0, 8, '58.png'),
(3, 'ETUI TABLETTE 7’’ MOD3', 'ETUI TABLETTE 7’’ MOD3', 7.54, 0, 8, '59.png'),
(4, 'ETUI TABLETTE 7’’ MOD4', 'ETUI TABLETTE 7’’ MOD4', 8.84, 0, 8, '60.png'),
(5, 'ETUI TABLETTE 7’’ +CLAVIER', 'ETUI TABLETTE 7’’ +CLAVIER', 13.65, 0, 8, '61.jpg'),
(6, 'ETUI TABLETTE 7’’ +CLAVIER', 'ETUI TABLETTE 7’’ +CLAVIER', 14.95, 0, 8, '62.png'),
(7, 'ETUI TABLETTE 8’’', 'ETUI TABLETTE 8’’', 10.14, 0, 8, '63.png'),
(8, 'ETUI TABLETTE 8’’+ CLAVIER', 'ETUI TABLETTE 8’’+ CLAVIER', 18.85, 0, 8, '64.png'),
(9, 'ETUI TABLETTE 10’’', 'ETUI TABLETTE 10’’', 12.35, 0, 8, '65.png'),
(10, 'ETUI TABLETTE 10’’+ CLAVIER', 'ETUI TABLETTE 10’’+ CLAVIER', 22.1, 0, 8, '66.png');

-- --------------------------------------------------------

--
-- Structure de la table `telephone_fixe`
--

DROP TABLE IF EXISTS `telephone_fixe`;
CREATE TABLE IF NOT EXISTS `telephone_fixe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tva_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9FC0EC064D79775F` (`tva_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tva`
--

DROP TABLE IF EXISTS `tva`;
CREATE TABLE IF NOT EXISTS `tva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `multiplcate` double NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valeur` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tva`
--

INSERT INTO `tva` (`id`, `multiplcate`, `nom`, `valeur`) VALUES
(7, 0.9345, 'TVA 7%', 7),
(8, 0.84, 'TVA 19%', 19);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_497B315E92FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_497B315EA0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_497B315EC05FB297` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(16, 'admin', 'admin', 'admin@gmail.com', 'admin@gmail.com', 1, NULL, '$2y$13$mqbiBQdaPZyQhd5EJr./DuNTpZjtrjqjJQs/0b22SdmX1DRArqehK', '2019-03-28 15:24:51', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}'),
(17, 'chokri', 'chokri', 'chokri@gmail.com', 'chokri@gmail.com', 1, NULL, '$2y$13$QlotCN5PfL5tQg3ryFwELOUyJGOIWoTC/jX/F/0Qf2aKfm2u.e./G', '2018-07-14 12:34:14', NULL, NULL, 'a:0:{}'),
(18, 'meriam', 'meriam', 'bensaidmeriam@gmail.com', 'bensaidmeriam@gmail.com', 1, NULL, '$2y$13$.9i2yDUK9q9rNu6WywNiyOEpMhOZAqdb0yhcUE2qyphXI6UhZUZji', '2018-04-07 07:07:08', NULL, NULL, 'a:0:{}'),
(19, 'meriambss', 'meriambss', 'binouswafa@yahoo.fr', 'binouswafa@yahoo.fr', 1, NULL, '$2y$13$7G8LBqTVmpUONdvSBHxuyughCYT9monxZ8ZkqzOg9287kt3gdB7NG', '2018-04-10 15:07:24', NULL, NULL, 'a:0:{}'),
(20, 'Skander', 'skander', 'skander.fitouhi@gnet.tn', 'skander.fitouhi@gnet.tn', 1, NULL, '$2y$13$xgcMdfl6KiDw4TwV3Y96eORLBo570iPLoBZiXeTWELHSZp0Y.uObS', '2018-07-11 11:00:00', NULL, NULL, 'a:0:{}'),
(21, 'admin1', 'admin1', 'admin1@gmail.com', 'admin1@gmail.com', 1, NULL, '$2y$13$ehZpXrzyJWRSn8RlJXUUs.B.2UYmCzJ4YTPwB2LvlGslz7ADRvc9u', '2019-01-22 14:04:03', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}'),
(24, 'admin2', 'admin2', 'admin2@gmail.com', 'admin2@gmail.com', 1, NULL, '$2y$13$cPCqHioFo2jjI25f5Se62erXvVoeK6xCiSDgsPcKlRp0PEiizbEXO', '2019-01-28 08:50:56', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs_adress`
--

DROP TABLE IF EXISTS `utilisateurs_adress`;
CREATE TABLE IF NOT EXISTS `utilisateurs_adress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utilisateur_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codepostal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pays` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `complement` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matriculefiscale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bonducommande` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_710DA0B6FB88E14F` (`utilisateur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `utilisateurs_adress`
--

INSERT INTO `utilisateurs_adress` (`id`, `utilisateur_id`, `nom`, `prenom`, `telephone`, `adresse`, `codepostal`, `pays`, `ville`, `complement`, `matriculefiscale`, `bonducommande`) VALUES
(1, 16, 'wafa', 'sqsq', 'dsqdsds', '2555sq', 'sdqdsqds', 'sdsdsd', 'sddsds', NULL, 'sqs', 'qsqsd'),
(2, 16, 'aaa', 'aaaaa', 'aaaaaaaaa', 'aaaaaaa', 'aaaaaaa', 'aaaaaaaa', 'aaaaaaa', NULL, 'aaaaaa', 'aaaaaaaaa');

-- --------------------------------------------------------

--
-- Structure de la table `videosurveillance`
--

DROP TABLE IF EXISTS `videosurveillance`;
CREATE TABLE IF NOT EXISTS `videosurveillance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tva_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BD44AE044D79775F` (`tva_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

DROP TABLE IF EXISTS `villes`;
CREATE TABLE IF NOT EXISTS `villes` (
  `ville_id` int(11) NOT NULL AUTO_INCREMENT,
  `ville_departement` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_nom` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_nom_simple` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_nom_reel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_nom_soundex` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_nom_metaphone` varchar(22) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_code_postal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_commune` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_code_commune` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `ville_arrondissement` smallint(6) DEFAULT NULL,
  `ville_canton` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_amdi` smallint(6) DEFAULT NULL,
  `ville_population_2010` int(11) DEFAULT NULL,
  `ville_population_1999` int(11) DEFAULT NULL,
  `ville_population_2012` int(11) DEFAULT NULL,
  `ville_densite_2010` int(11) DEFAULT NULL,
  `ville_surface` double DEFAULT NULL,
  `ville_longitude_deg` double DEFAULT NULL,
  `ville_latitude_deg` double DEFAULT NULL,
  `ville_longitude_grd` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_latitude_grd` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_longitude_dms` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_latitude_dms` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_zmin` int(11) DEFAULT NULL,
  `ville_zmax` int(11) DEFAULT NULL,
  PRIMARY KEY (`ville_id`),
  UNIQUE KEY `ville_code_commune_2` (`ville_code_commune`),
  UNIQUE KEY `ville_slug` (`ville_slug`),
  KEY `ville_departement` (`ville_departement`),
  KEY `ville_nom` (`ville_nom`),
  KEY `ville_nom_reel` (`ville_nom_reel`),
  KEY `ville_code_postal` (`ville_code_postal`),
  KEY `ville_longitude_latitude_deg` (`ville_longitude_deg`,`ville_latitude_deg`),
  KEY `ville_nom_soundex` (`ville_nom_soundex`),
  KEY `ville_nom_metaphone` (`ville_nom_metaphone`),
  KEY `ville_population_2010` (`ville_population_2010`),
  KEY `ville_nom_simple` (`ville_nom_simple`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `accessoiresimprimante`
--
ALTER TABLE `accessoiresimprimante`
  ADD CONSTRAINT `FK_A0ED0F3B4D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `accessoires_telephone`
--
ALTER TABLE `accessoires_telephone`
  ADD CONSTRAINT `FK_E58C9D9C4D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `appareil_fax`
--
ALTER TABLE `appareil_fax`
  ADD CONSTRAINT `FK_329F9E7B4D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `cartememoire`
--
ALTER TABLE `cartememoire`
  ADD CONSTRAINT `FK_A5D3C1A54D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `cartouchesimprimante`
--
ALTER TABLE `cartouchesimprimante`
  ADD CONSTRAINT `FK_B76383244D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `cd`
--
ALTER TABLE `cd`
  ADD CONSTRAINT `FK_45D68FDA4D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `classementetarchivage`
--
ALTER TABLE `classementetarchivage`
  ADD CONSTRAINT `FK_8A122A504D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_6EEAA67DFB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`id`);

--
-- Contraintes pour la table `composantinformatique`
--
ALTER TABLE `composantinformatique`
  ADD CONSTRAINT `FK_457952E14D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `destockage`
--
ALTER TABLE `destockage`
  ADD CONSTRAINT `FK_82EC636C4D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `disque_dur_externe`
--
ALTER TABLE `disque_dur_externe`
  ADD CONSTRAINT `FK_EE6517304D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `fournituredubureau`
--
ALTER TABLE `fournituredubureau`
  ADD CONSTRAINT `FK_FF232BB04D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `impression`
--
ALTER TABLE `impression`
  ADD CONSTRAINT `FK_245BB1B14D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `imprimante`
--
ALTER TABLE `imprimante`
  ADD CONSTRAINT `FK_4DF2C3AA4D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `logiciels`
--
ALTER TABLE `logiciels`
  ADD CONSTRAINT `FK_E29B40024D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `onduleur`
--
ALTER TABLE `onduleur`
  ADD CONSTRAINT `FK_C698A4E64D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `ordinateurdebureau`
--
ALTER TABLE `ordinateurdebureau`
  ADD CONSTRAINT `FK_694020254D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `ordinateurportable`
--
ALTER TABLE `ordinateurportable`
  ADD CONSTRAINT `FK_E48DEB4C4D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `papier`
--
ALTER TABLE `papier`
  ADD CONSTRAINT `FK_940A2D5E4D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `photocopieur`
--
ALTER TABLE `photocopieur`
  ADD CONSTRAINT `FK_6FBF680C4D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `FK_BE2DDF8C4D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`),
  ADD CONSTRAINT `FK_BE2DDF8CBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `resaux`
--
ALTER TABLE `resaux`
  ADD CONSTRAINT `FK_9AF32F8C4D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `sac`
--
ALTER TABLE `sac`
  ADD CONSTRAINT `FK_1AB651F4D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `scanner`
--
ALTER TABLE `scanner`
  ADD CONSTRAINT `FK_55EFDF294D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `stockage`
--
ALTER TABLE `stockage`
  ADD CONSTRAINT `FK_CABCB4924D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `tableaux`
--
ALTER TABLE `tableaux`
  ADD CONSTRAINT `FK_307CE1D44D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `tablette`
--
ALTER TABLE `tablette`
  ADD CONSTRAINT `FK_508CDDD74D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `telephone_fixe`
--
ALTER TABLE `telephone_fixe`
  ADD CONSTRAINT `FK_9FC0EC064D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `utilisateurs_adress`
--
ALTER TABLE `utilisateurs_adress`
  ADD CONSTRAINT `FK_710DA0B6FB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`id`);

--
-- Contraintes pour la table `videosurveillance`
--
ALTER TABLE `videosurveillance`
  ADD CONSTRAINT `FK_BD44AE044D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
