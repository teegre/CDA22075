DROP DATABASE IF EXISTS greenvillage;
CREATE DATABASE greenvillage;
USE greenvillage;

--
-- TABLE STRUCTURE FOR: fournisseur
--

DROP TABLE IF EXISTS `fournisseur`;

CREATE TABLE `fournisseur` (
  `fournisseur_id` int(11) NOT NULL AUTO_INCREMENT,
  `fournisseur_nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fournisseur_adresse` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fournisseur_cp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fournisseur_ville` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fournisseur_pays` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fournisseur_contact` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fournisseur_tel` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fournisseur_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`fournisseur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (1, 'Bechtelar', '74880 O\'Reilly Trace Apt. 910', '63991-8765', 'Lake Anissa', 'Togo', 'Lowell Bradtke DVM', '603.020.1852', 'zoey.berge@example.org');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (2, 'Boyle', '869 Mann Highway', '70933', 'Trentland', 'Sweden', 'Jake Kilback V', '1-466-281-87', 'thompson.sigmund@example.net');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (3, 'Maggio', '9663 Alexanne Coves', '81220', 'Turcottefort', 'Malta', 'Shanna Gislason', '131.659.4637', 'emard.cierra@example.com');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (4, 'Wiegand', '714 Barrows Fords', '72482', 'Lake Emilia', 'British Indian Ocean Territory (Chagos Archipelago', 'Kade Lockman', '708.178.7439', 'hayes.mitchel@example.org');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (5, 'Quigley', '549 Willms Burg', '10711', 'South Lazaroshire', 'Moldova', 'Mr. Richmond Klein PhD', '(507)280-115', 'opollich@example.com');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (6, 'Koelpin', '57122 Brown Underpass', '31679', 'Prosaccomouth', 'Isle of Man', 'Rahul Kuphal I', '(740)464-154', 'wvandervort@example.net');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (7, 'Ankunding', '04392 Sierra Common', '77871-1938', 'West Katarina', 'Tokelau', 'Julie Langosh', '+24(8)202949', 'kayley.hettinger@example.net');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (8, 'Beier', '989 Madisyn Way Suite 378', '01219-7391', 'Garrettville', 'Benin', 'Johann Harris', '(173)499-809', 'qschmidt@example.net');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (9, 'Haley', '365 Gerhold Knoll', '97724', 'North Georgianna', 'Greenland', 'Paula Hamill DDS', '287.102.1819', 'jaylen76@example.net');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (10, 'Skiles', '8936 Schneider Mall Suite 617', '54647-1390', 'West Shemarfurt', 'Sao Tome and Principe', 'Miss Gail Hayes II', '237.964.0893', 'vrutherford@example.org');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (11, 'West', '601 Skiles Mill', '44049', 'Pfefferstad', 'Venezuela', 'Jarrell Schumm', '06756041169', 'jermey.jacobi@example.net');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (12, 'Larkin', '172 Cole Meadows', '88890-5083', 'Stammhaven', 'Anguilla', 'Prof. Alejandrin Kirlin MD', '1-843-232-59', 'medhurst.natasha@example.org');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (13, 'Corkery', '39270 Reichert Points Apt. 164', '35977', 'East Rodport', 'Algeria', 'Prof. Claudie Kunze IV', '1-369-397-69', 'hessel.jon@example.com');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (14, 'Emmerich', '3548 Florence Drive Suite 364', '50442', 'New Hal', 'Argentina', 'Miller Stroman', '(071)014-341', 'jerald51@example.com');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (15, 'Turner', '05335 Schimmel Center', '44045', 'Tannerfort', 'New Caledonia', 'Vilma Hand', '1-605-585-22', 'urban00@example.org');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (16, 'Hickle', '1045 Deon Tunnel Apt. 947', '99667-3904', 'West Robinport', 'Tanzania', 'Prof. Gardner O\'Connell', '114.968.0520', 'fmckenzie@example.org');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (17, 'Mohr', '110 London Stravenue Suite 009', '39573', 'Dianaside', 'Bahamas', 'Clay Rosenbaum', '00272299065', 'rowe.beaulah@example.net');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (18, 'Reichel', '46316 Celestino Crossing', '96896', 'North Rudyborough', 'Bouvet Island (Bouvetoya)', 'Lillian Crist', '1-960-975-79', 'bartoletti.tad@example.com');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (19, 'Dach', '744 Conroy Ports', '36663-8531', 'West Daphneefurt', 'Macedonia', 'Caden Schiller', '441.912.1005', 'runolfsdottir.hollie@example.com');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (20, 'Bernier', '42916 Madison Mills Suite 105', '54429-3326', 'New Milfordfurt', 'Cook Islands', 'Susanna McClure', '146-154-7320', 'zhilll@example.net');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (21, 'Mitchell', '50261 Makayla Trafficway', '36282-8310', 'Haaghaven', 'Guernsey', 'Edgardo Veum', '254-675-2396', 'keshaun.prohaska@example.com');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (22, 'Ernser', '22927 McGlynn Ford', '10646-8643', 'Port Wilma', 'United Kingdom', 'Ali Cummerata', '121-880-6991', 'eulah26@example.org');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (23, 'Goyette', '002 Cole Mountain Apt. 304', '36909-6063', 'West Vinnieberg', 'Panama', 'Triston McGlynn', '(028)804-090', 'ondricka.hiram@example.net');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (24, 'Runte', '851 Ondricka Curve Apt. 810', '69323-9446', 'Josephburgh', 'Brazil', 'Ansel Lang', '412-753-5502', 'jordy02@example.net');
INSERT INTO `fournisseur` (`fournisseur_id`, `fournisseur_nom`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`, `fournisseur_pays`, `fournisseur_contact`, `fournisseur_tel`, `fournisseur_email`) VALUES (25, 'Walsh', '271 West Villages', '21768', 'New Magdalenton', 'Dominica', 'Arne Keeling', '1-153-899-90', 'tyree65@example.net');

--
-- TABLE STRUCTURE FOR: rubrique
--

DROP TABLE IF EXISTS `rubrique`;

CREATE TABLE `rubrique` (
  `rubrique_id` int(11) NOT NULL AUTO_INCREMENT,
  `rubrique_nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rubrique_parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`rubrique_id`),
  KEY `rubrique_parent_id` (`rubrique_parent_id`),
  CONSTRAINT `rubrique_ibfk_1` FOREIGN KEY (`rubrique_parent_id`) REFERENCES `rubrique` (`rubrique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `rubrique` (`rubrique_id`, `rubrique_nom`, `rubrique_parent_id`) VALUES (1, 'avalanche', NULL);
INSERT INTO `rubrique` (`rubrique_id`, `rubrique_nom`, `rubrique_parent_id`) VALUES (2, 'banane', NULL);

--
-- TABLE STRUCTURE FOR: produit
--

DROP TABLE IF EXISTS `produit`;

CREATE TABLE `produit` (
  `produit_id` int(11) NOT NULL AUTO_INCREMENT,
  `produit_ref_fournisseur` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `produit_lib` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produit_desc` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produit_prix_ht` decimal(5,2) NOT NULL,
  `produit_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produit_stock` int(11) NOT NULL,
  `produit_rubrique_id` int(11) NOT NULL,
  PRIMARY KEY (`produit_id`),
  KEY `produit_rubrique_id` (`produit_rubrique_id`),
  CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`produit_rubrique_id`) REFERENCES `rubrique` (`rubrique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (1, '8', '1', '5', '5.00', '1', 3, 1);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (2, '7', '4', '4', '7.00', '5', 2, 2);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (3, '5', '7', '3', '5.00', '4', 5, 1);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (4, '3', '2', '6', '3.00', '3', 8, 2);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (5, '6', '7', '4', '3.00', '5', 9, 1);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (6, '3', '9', '3', '8.00', '9', 5, 2);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (7, '5', '7', '6', '5.00', '7', 8, 1);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (8, '4', '5', '5', '9.00', '1', 1, 2);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (9, '3', '4', '2', '9.00', '5', 8, 1);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (10, '5', '2', '3', '6.00', '4', 3, 2);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (11, '1', '5', '9', '6.00', '7', 6, 1);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (12, '6', '8', '3', '1.00', '1', 2, 2);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (13, '7', '1', '8', '1.00', '1', 5, 1);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (14, '4', '8', '5', '3.00', '3', 1, 2);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (15, '7', '1', '5', '7.00', '6', 7, 1);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (16, '7', '3', '5', '9.00', '9', 3, 2);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (17, '2', '4', '9', '4.00', '7', 8, 1);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (18, '8', '4', '5', '4.00', '6', 9, 2);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (19, '6', '4', '9', '1.00', '8', 8, 1);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (20, '9', '9', '2', '7.00', '6', 1, 2);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (21, '8', '3', '5', '3.00', '7', 4, 1);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (22, '2', '9', '1', '1.00', '5', 9, 2);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (23, '3', '7', '6', '3.00', '9', 9, 1);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (24, '6', '2', '3', '4.00', '1', 8, 2);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (25, '7', '1', '5', '1.00', '5', 5, 1);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (26, '3', '4', '3', '1.00', '3', 4, 2);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (27, '5', '3', '1', '7.00', '2', 9, 1);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (28, '9', '9', '8', '4.00', '8', 6, 2);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (29, '5', '3', '5', '6.00', '4', 6, 1);
INSERT INTO `produit` (`produit_id`, `produit_ref_fournisseur`, `produit_lib`, `produit_desc`, `produit_prix_ht`, `produit_photo`, `produit_stock`, `produit_rubrique_id`) VALUES (30, '8', '6', '5', '7.00', '9', 1, 2);

--
-- TABLE STRUCTURE FOR: fournisseur_produit
--

DROP TABLE IF EXISTS `fournisseur_produit`;

CREATE TABLE `fournisseur_produit` (
  `fournisseur_produit_produit_id` int(11) NOT NULL,
  `fournisseur_produit_fournisseur_id` int(11) NOT NULL,
  PRIMARY KEY (`fournisseur_produit_produit_id`,`fournisseur_produit_fournisseur_id`),
  KEY `fournisseur_produit_fournisseur_id` (`fournisseur_produit_fournisseur_id`),
  CONSTRAINT `fournisseur_produit_ibfk_1` FOREIGN KEY (`fournisseur_produit_produit_id`) REFERENCES `produit` (`produit_id`),
  CONSTRAINT `fournisseur_produit_ibfk_2` FOREIGN KEY (`fournisseur_produit_fournisseur_id`) REFERENCES `fournisseur` (`fournisseur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (1, 1);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (2, 2);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (3, 3);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (4, 4);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (5, 5);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (6, 6);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (7, 7);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (8, 8);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (9, 9);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (10, 10);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (11, 11);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (12, 12);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (13, 13);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (14, 14);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (15, 15);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (16, 16);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (17, 17);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (18, 18);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (19, 19);
INSERT INTO `fournisseur_produit` (`fournisseur_produit_produit_id`, `fournisseur_produit_fournisseur_id`) VALUES (20, 20);

--
-- TABLE STRUCTURE FOR: service
--

DROP TABLE IF EXISTS `service`;

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `service` (`service_id`, `service_nom`) VALUES (1, 'in');
INSERT INTO `service` (`service_id`, `service_nom`) VALUES (2, 'perferendis');
INSERT INTO `service` (`service_id`, `service_nom`) VALUES (3, 'voluptas');
INSERT INTO `service` (`service_id`, `service_nom`) VALUES (4, 'quo');
INSERT INTO `service` (`service_id`, `service_nom`) VALUES (5, 'magni');

--
-- TABLE STRUCTURE FOR: employe
--

DROP TABLE IF EXISTS `employe`;

CREATE TABLE `employe` (
  `employe_id` int(11) NOT NULL AUTO_INCREMENT,
  `employe_nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employe_prenom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`employe_id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `employe` (`employe_id`, `employe_nom`, `employe_prenom`, `service_id`) VALUES (1, 'Pollich', 'Carmella', 1);
INSERT INTO `employe` (`employe_id`, `employe_nom`, `employe_prenom`, `service_id`) VALUES (2, 'Konopelski', 'Thomas', 2);
INSERT INTO `employe` (`employe_id`, `employe_nom`, `employe_prenom`, `service_id`) VALUES (3, 'Crooks', 'Brooklyn', 3);
INSERT INTO `employe` (`employe_id`, `employe_nom`, `employe_prenom`, `service_id`) VALUES (4, 'Bahringer', 'Eudora', 4);
INSERT INTO `employe` (`employe_id`, `employe_nom`, `employe_prenom`, `service_id`) VALUES (5, 'Jones', 'Shea', 5);
INSERT INTO `employe` (`employe_id`, `employe_nom`, `employe_prenom`, `service_id`) VALUES (6, 'Bergstrom', 'Madie', 1);
INSERT INTO `employe` (`employe_id`, `employe_nom`, `employe_prenom`, `service_id`) VALUES (7, 'Sanford', 'Amya', 2);
INSERT INTO `employe` (`employe_id`, `employe_nom`, `employe_prenom`, `service_id`) VALUES (8, 'Dooley', 'Cindy', 3);
INSERT INTO `employe` (`employe_id`, `employe_nom`, `employe_prenom`, `service_id`) VALUES (9, 'Hansen', 'Gertrude', 4);
INSERT INTO `employe` (`employe_id`, `employe_nom`, `employe_prenom`, `service_id`) VALUES (10, 'Auer', 'Adah', 5);

--
-- TABLE STRUCTURE FOR: client
--

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_ref` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_prenom` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_adresse` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_cp` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_ville` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_pays` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_telephone` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_coeff` decimal(2,2) DEFAULT NULL,
  `client_particulier` tinyint(1) DEFAULT NULL,
  `client_employe_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `client_ref` (`client_ref`),
  KEY `client_employe_id` (`client_employe_id`),
  CONSTRAINT `client_ibfk_1` FOREIGN KEY (`client_employe_id`) REFERENCES `employe` (`employe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (1, '11236ead-b', 'Hickle', 'Faustino', '26900 McClure Shoal Suite 249', '12306-7297', 'East Ransomberg', 'Guyana', 'rbraun@example.com', '708.809.0455', NULL, NULL, 1);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (2, '4070b1e3-a', 'Leffler', 'Deven', '02092 Greenholt Trafficway', '82006', 'Schadenfort', 'Saint Helena', 'cbashirian@example.net', '197.882.8163', NULL, NULL, 2);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (3, 'b103bcf6-8', 'Stiedemann', 'Hershel', '3603 Coralie Street Suite 486', '98596-3734', 'Lake Donfort', 'Italy', 'ncassin@example.org', '(591)813-605', NULL, NULL, 3);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (4, '01d6147c-7', 'Gutkowski', 'Daphne', '176 Ned Harbors', '06128-7818', 'Chloeside', 'Finland', 'donna.jacobi@example.org', '571-995-7505', NULL, NULL, 4);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (5, '375f5239-3', 'Kertzmann', 'Ludie', '28715 Jammie Circles', '86671-4627', 'Port Desmondhaven', 'China', 'zquitzon@example.org', '1-788-776-02', NULL, NULL, 5);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (6, '89be3049-1', 'O\'Keefe', 'Gabriel', '869 Katharina Summit Apt. 575', '63768', 'East Rosellaside', 'Lao People\'s Democratic Republic', 'kaylee.ondricka@example.com', '518-141-6977', NULL, NULL, 6);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (7, 'e5b515d6-8', 'Kovacek', 'Maximillia', '23086 Powlowski Prairie', '85285-8355', 'North Shany', 'Latvia', 'edna.gusikowski@example.org', '(833)456-230', NULL, NULL, 7);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (8, 'd194984d-3', 'Hermiston', 'Alexandre', '03986 Berge Rest', '61680', 'Ziemetown', 'Svalbard & Jan Mayen Islands', 'dan79@example.com', '128-964-4278', NULL, NULL, 8);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (9, '3172f18c-3', 'Eichmann', 'Astrid', '6369 Adrian Shores', '91113-2691', 'Medaberg', 'Benin', 'elfrieda.larkin@example.com', '+74(3)346291', NULL, NULL, 9);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (10, 'bdfbb302-f', 'Welch', 'Clarabelle', '78449 Stokes Forges', '51941-5479', 'North Stone', 'Jordan', 'lavern.o\'kon@example.com', '503.687.2422', NULL, NULL, 10);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (11, '3de5ee25-a', 'Douglas', 'Lucie', '711 Brady Station Apt. 107', '26034-7886', 'East Marcelchester', 'Equatorial Guinea', 'wnienow@example.net', '169.787.6687', NULL, NULL, 1);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (12, 'e984f986-0', 'Torphy', 'Sean', '97752 Ebba Squares', '89663-8338', 'Waterstown', 'Niger', 'schiller.elva@example.net', '(990)433-489', NULL, NULL, 2);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (13, '9e869de9-b', 'Russel', 'Leopoldo', '8503 Haley Port', '79075-3869', 'Lake Tiffany', 'South Georgia and the South Sandwich Islands', 'anderson.malinda@example.net', '(836)530-210', NULL, NULL, 3);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (14, '8364b26f-a', 'Franecki', 'Sallie', '3850 Jones Lake', '42375-0471', 'West Adambury', 'Bolivia', 'keith.parisian@example.org', '431-210-9778', NULL, NULL, 4);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (15, 'b9dd9f7f-0', 'Buckridge', 'Micheal', '4023 Declan Glen Suite 707', '33421', 'New Adastad', 'Malta', 'hollie17@example.net', '1-625-083-10', NULL, NULL, 5);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (16, '2758f923-4', 'Jacobi', 'Alysson', '672 Meagan Spur Suite 410', '91494-0487', 'New Hilton', 'Angola', 'schneider.carol@example.net', '(764)696-486', NULL, NULL, 6);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (17, 'bc9f6aae-3', 'Nicolas', 'Maynard', '6596 Mack Street Apt. 492', '38205-6035', 'North Maiyaside', 'Netherlands Antilles', 'quentin.morissette@example.net', '1-923-546-46', NULL, NULL, 7);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (18, 'a5ada791-1', 'Nolan', 'Celestine', '3798 O\'Keefe Oval', '62231-8594', 'Joanaburgh', 'Uruguay', 'blanca72@example.org', '1-242-264-79', NULL, NULL, 8);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (19, '78d69a7c-c', 'Grady', 'Coty', '3918 Marlen Rue Apt. 310', '51436-2612', 'Alexandroside', 'Turkey', 'purdy.lemuel@example.com', '(792)415-296', NULL, NULL, 9);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (20, 'ca5568e7-1', 'Breitenberg', 'Jarvis', '39179 Turner Inlet Suite 006', '93691', 'South Godfreyville', 'Norway', 'lang.christiana@example.com', '(778)135-311', NULL, NULL, 10);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (21, 'e081427d-7', 'Berge', 'Emmy', '4414 Cristina Fall', '34613-5521', 'Port Eldridge', 'Isle of Man', 'nicklaus.watsica@example.net', '(960)022-111', NULL, NULL, 1);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (22, 'ff0738b7-1', 'Bruen', 'Jimmy', '77641 Olson Junction', '85165-9348', 'Stantonport', 'Colombia', 'adickens@example.net', '(429)186-547', NULL, NULL, 2);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (23, 'edb0a1cc-c', 'Schmidt', 'Heath', '134 Bosco Greens', '20266-2381', 'Port Maudie', 'Cape Verde', 'eunice.leannon@example.org', '815-704-2761', NULL, NULL, 3);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (24, '13c50bf6-5', 'Dietrich', 'Gavin', '60843 Hassie Pass', '56542-1311', 'Altenwerthbury', 'Bahrain', 'makenzie.okuneva@example.net', '1-069-993-53', NULL, NULL, 4);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (25, 'a12434b6-5', 'Parisian', 'Amber', '8558 Noemy Center', '39373', 'West Misty', 'Monaco', 'bethel.rippin@example.org', '(677)680-640', NULL, NULL, 5);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (26, '5ef460ec-c', 'Stokes', 'Ladarius', '888 Heath Groves Suite 638', '74089-6665', 'Kuvalisville', 'Comoros', 'mariane79@example.org', '1-288-718-48', NULL, NULL, 6);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (27, 'b5864f92-3', 'Bogisich', 'Lynn', '87164 Moen Ramp Suite 703', '50356-2702', 'New George', 'Jamaica', 'stracke.keagan@example.net', '+55(4)499115', NULL, NULL, 7);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (28, 'd73046f5-7', 'Runte', 'Jacinthe', '1729 Watsica Glens', '59029', 'Herzogland', 'Hungary', 'tracey14@example.net', '199.180.7474', NULL, NULL, 8);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (29, '29bbd4b2-0', 'Lubowitz', 'Bethany', '0855 Homenick Trafficway Suite 324', '25327-5670', 'Darronchester', 'Djibouti', 'parisian.braulio@example.org', '(466)311-005', NULL, NULL, 9);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (30, 'a9fd34f9-9', 'Cole', 'Bonnie', '278 Luna Union Suite 763', '42939', 'Pacochaside', 'Faroe Islands', 'chelsie.olson@example.com', '(999)783-389', NULL, NULL, 10);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (31, 'e51fa57c-2', 'Cruickshank', 'Shayna', '929 Johnson Valley Suite 005', '93939-4644', 'Melyssashire', 'Tuvalu', 'bartell.aubree@example.org', '778.289.4345', NULL, NULL, 1);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (32, 'a79b83dd-d', 'Bruen', 'Dusty', '40468 Nicolette Village Suite 307', '81837-3899', 'New Dee', 'Angola', 'aurelie23@example.org', '(844)689-536', NULL, NULL, 2);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (33, 'ee337973-e', 'Thompson', 'Hanna', '36579 Gislason Curve', '00581-9574', 'Hannahmouth', 'Iran', 'natalia78@example.net', '1-355-061-48', NULL, NULL, 3);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (34, 'afe4c175-f', 'O\'Connell', 'Justus', '3721 Romaguera Gateway Apt. 579', '03362', 'Lake Melyssa', 'Zimbabwe', 'kariane44@example.org', '+47(4)569681', NULL, NULL, 4);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (35, 'dbe8a007-8', 'Wilkinson', 'Reyes', '99486 McKenzie Passage Suite 677', '33491-5034', 'Santastad', 'Sri Lanka', 'graciela92@example.org', '+33(9)031793', NULL, NULL, 5);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (36, '88cbf112-a', 'Auer', 'Aditya', '581 Collins Brook', '67327-4310', 'Greysonland', 'Netherlands', 'wbauch@example.net', '09740979723', NULL, NULL, 6);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (37, '5c92f0c6-7', 'Boyer', 'Alexa', '860 O\'Kon Vista', '57731', 'Port Jettie', 'Azerbaijan', 'boyer.blaise@example.net', '(784)384-716', NULL, NULL, 7);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (38, 'b6b323ef-a', 'Gottlieb', 'Julio', '1445 Bauch Cape Apt. 121', '19071', 'Everardofurt', 'Timor-Leste', 'konopelski.nigel@example.com', '241.320.5435', NULL, NULL, 8);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (39, 'f3e3603b-d', 'Hackett', 'Cassie', '49827 Ansley Way', '99126', 'Shieldsfurt', 'Andorra', 'bruce45@example.org', '262.967.7908', NULL, NULL, 9);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (40, '54aadaee-3', 'Ferry', 'Niko', '96633 West Fort', '38695-9609', 'Borerbury', 'Yemen', 'cleveland.kohler@example.org', '456.896.3262', NULL, NULL, 10);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (41, 'fe51ac59-6', 'Weimann', 'Rodrigo', '541 Thompson Mission', '77878-4367', 'North Amiyaport', 'United States Virgin Islands', 'ocie19@example.org', '1-377-340-59', NULL, NULL, 1);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (42, 'eac2b327-6', 'Runolfsdottir', 'Litzy', '1721 Jayne Ports Apt. 630', '19574-0541', 'Lake Emmiemouth', 'Paraguay', 'xlarson@example.net', '1-534-868-01', NULL, NULL, 2);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (43, 'c093901c-d', 'Cummerata', 'Laura', '163 Marlene Falls Apt. 040', '00448-6007', 'Carolyneberg', 'Chile', 'goyette.justine@example.com', '1-525-301-38', NULL, NULL, 3);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (44, 'a9d47290-5', 'Glover', 'Oma', '041 Shany Lakes Apt. 093', '95054-0308', 'Sanfordport', 'Guinea-Bissau', 'feest.mohammed@example.net', '1-693-236-56', NULL, NULL, 4);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (45, '2680128f-1', 'Walker', 'Nella', '027 Angie Freeway Suite 949', '61681', 'Leslybury', 'Bulgaria', 'tristin60@example.org', '(754)806-228', NULL, NULL, 5);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (46, '30f189b4-d', 'Hegmann', 'Kenneth', '071 Will Avenue Apt. 375', '49972', 'Fayside', 'Macao', 'botsford.renee@example.net', '+48(8)239150', NULL, NULL, 6);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (47, 'dc9363dd-e', 'Gutkowski', 'Lessie', '88873 Rohan Prairie Suite 261', '97878-3729', 'Lake Gene', 'Cocos (Keeling) Islands', 'vicky59@example.org', '1-189-247-67', NULL, NULL, 7);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (48, 'f114a37f-a', 'Dicki', 'Filomena', '427 Corkery Route Suite 244', '86279-8732', 'North Arlo', 'Kiribati', 'mossie.fisher@example.net', '(522)283-199', NULL, NULL, 8);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (49, '3f243b79-8', 'Davis', 'Daisy', '7250 Rice Fort', '62204', 'East Lelandland', 'British Virgin Islands', 'retha63@example.org', '264.997.5324', NULL, NULL, 9);
INSERT INTO `client` (`client_id`, `client_ref`, `client_nom`, `client_prenom`, `client_adresse`, `client_cp`, `client_ville`, `client_pays`, `client_email`, `client_telephone`, `client_coeff`, `client_particulier`, `client_employe_id`) VALUES (50, '0d65a94b-8', 'Labadie', 'Ivah', '7031 Sporer Island Suite 775', '16887-3349', 'North Destinyfurt', 'Spain', 'shyanne.boyer@example.net', '836-387-1100', NULL, NULL, 10);

--
-- TABLE STRUCTURE FOR: commande
--

DROP TABLE IF EXISTS `commande`;

CREATE TABLE `commande` (
  `commande_id` int(11) NOT NULL AUTO_INCREMENT,
  `commande_validee` tinyint(1) DEFAULT NULL,
  `commande_date` date DEFAULT NULL,
  `commande_date_paiement` date DEFAULT NULL,
  `commande_date_envoi` date DEFAULT NULL,
  `commande_partielle` tinyint(1) DEFAULT NULL,
  `commande_adresse_facturation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commande_adresse_livraison` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commande_pays_livraison` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commande_remise` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`commande_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `commande` (`commande_id`, `commande_validee`, `commande_date`, `commande_date_paiement`, `commande_date_envoi`, `commande_partielle`, `commande_adresse_facturation`, `commande_adresse_livraison`, `commande_pays_livraison`, `commande_remise`) VALUES (1, NULL, '2000-11-20', '2016-08-06', '2012-07-12', NULL, '66989 Walton Plains Suite 577\nBlairtown, TX 23372-5268', '25144 Regan Freeway\nLake Genovevaville, TX 93260', 'Tunisia', NULL);
INSERT INTO `commande` (`commande_id`, `commande_validee`, `commande_date`, `commande_date_paiement`, `commande_date_envoi`, `commande_partielle`, `commande_adresse_facturation`, `commande_adresse_livraison`, `commande_pays_livraison`, `commande_remise`) VALUES (2, NULL, '2016-12-27', '1976-05-31', '2019-10-12', NULL, '95000 Stamm Curve\nAbeltown, MA 23984', '84055 Klein Cliff\nSmithamburgh, CA 74705-2336', 'Dominica', NULL);
INSERT INTO `commande` (`commande_id`, `commande_validee`, `commande_date`, `commande_date_paiement`, `commande_date_envoi`, `commande_partielle`, `commande_adresse_facturation`, `commande_adresse_livraison`, `commande_pays_livraison`, `commande_remise`) VALUES (3, NULL, '1989-04-01', '1974-10-18', '2002-02-25', NULL, '11140 Cremin Flats Apt. 933\nLake Candidaburgh, OK 82444-1660', '34844 Beatty Brook\nNorth Antwan, NE 09733-5768', 'Lebanon', NULL);
INSERT INTO `commande` (`commande_id`, `commande_validee`, `commande_date`, `commande_date_paiement`, `commande_date_envoi`, `commande_partielle`, `commande_adresse_facturation`, `commande_adresse_livraison`, `commande_pays_livraison`, `commande_remise`) VALUES (4, NULL, '2020-09-09', '1980-07-16', '1988-04-10', NULL, '295 Ratke Stravenue Suite 048\nNew Inesville, ID 86459-8795', '8427 Weldon Burg\nHerzogmouth, ND 89594-9002', 'Belgium', NULL);
INSERT INTO `commande` (`commande_id`, `commande_validee`, `commande_date`, `commande_date_paiement`, `commande_date_envoi`, `commande_partielle`, `commande_adresse_facturation`, `commande_adresse_livraison`, `commande_pays_livraison`, `commande_remise`) VALUES (5, NULL, '1980-07-02', '1993-01-27', '1991-07-04', NULL, '5778 Jacobi Spur\nNew Lylaberg, WA 80432', '7537 DuBuque Springs\nHudsonhaven, MT 32553', 'France', NULL);
INSERT INTO `commande` (`commande_id`, `commande_validee`, `commande_date`, `commande_date_paiement`, `commande_date_envoi`, `commande_partielle`, `commande_adresse_facturation`, `commande_adresse_livraison`, `commande_pays_livraison`, `commande_remise`) VALUES (6, NULL, '1988-08-31', '2007-01-01', '2002-12-08', NULL, '750 Ryan Meadows\nEffertzburgh, IN 19371', '72858 Frami Expressway\nCandidatown, MA 47004', 'British Virgin Islands', NULL);
INSERT INTO `commande` (`commande_id`, `commande_validee`, `commande_date`, `commande_date_paiement`, `commande_date_envoi`, `commande_partielle`, `commande_adresse_facturation`, `commande_adresse_livraison`, `commande_pays_livraison`, `commande_remise`) VALUES (7, NULL, '2022-02-02', '1995-11-24', '2018-03-21', NULL, '72294 Zemlak Trafficway\nNew Justus, SC 78451', '0212 O\'Connell Route Apt. 114\nWest Lonhaven, RI 48198-7261', 'Mali', NULL);
INSERT INTO `commande` (`commande_id`, `commande_validee`, `commande_date`, `commande_date_paiement`, `commande_date_envoi`, `commande_partielle`, `commande_adresse_facturation`, `commande_adresse_livraison`, `commande_pays_livraison`, `commande_remise`) VALUES (8, NULL, '2007-08-21', '2008-05-15', '2008-01-22', NULL, '1610 Kaden Common Apt. 635\nKirlinborough, WA 21091', '10311 Bartell Rapid Suite 934\nThielchester, NY 81852', 'Chad', NULL);
INSERT INTO `commande` (`commande_id`, `commande_validee`, `commande_date`, `commande_date_paiement`, `commande_date_envoi`, `commande_partielle`, `commande_adresse_facturation`, `commande_adresse_livraison`, `commande_pays_livraison`, `commande_remise`) VALUES (9, NULL, '2022-05-18', '1972-04-07', '1992-11-23', NULL, '78367 Ernestina Overpass Apt. 314\nNorth Ressiehaven, ND 50619', '49237 Marcos Plain Apt. 910\nMarlonchester, MN 96644-7471', 'Bahamas', NULL);
INSERT INTO `commande` (`commande_id`, `commande_validee`, `commande_date`, `commande_date_paiement`, `commande_date_envoi`, `commande_partielle`, `commande_adresse_facturation`, `commande_adresse_livraison`, `commande_pays_livraison`, `commande_remise`) VALUES (10, NULL, '2018-05-17', '1991-05-05', '2015-09-03', NULL, '129 Okuneva Squares Suite 221\nClementinashire, RI 37794-4536', '1702 Davonte Green Suite 051\nSouth Zackport, KS 23655-5044', 'Iraq', NULL);

--
-- TABLE STRUCTURE FOR: client_commande
--

DROP TABLE IF EXISTS `client_commande`;

CREATE TABLE `client_commande` (
  `client_commande_client_id` int(11) NOT NULL,
  `client_commande_commmande_id` int(11) NOT NULL,
  PRIMARY KEY (`client_commande_client_id`,`client_commande_commmande_id`),
  KEY `client_commande_commmande_id` (`client_commande_commmande_id`),
  CONSTRAINT `client_commande_ibfk_1` FOREIGN KEY (`client_commande_client_id`) REFERENCES `client` (`client_id`),
  CONSTRAINT `client_commande_ibfk_2` FOREIGN KEY (`client_commande_commmande_id`) REFERENCES `commande` (`commande_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (1, 1);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (2, 2);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (3, 3);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (4, 4);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (5, 5);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (6, 6);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (7, 7);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (8, 8);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (9, 9);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (10, 10);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (11, 1);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (12, 2);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (13, 3);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (14, 4);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (15, 5);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (16, 6);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (17, 7);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (18, 8);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (19, 9);
INSERT INTO `client_commande` (`client_commande_client_id`, `client_commande_commmande_id`) VALUES (20, 10);

--
-- TABLE STRUCTURE FOR: detail_commande
--

DROP TABLE IF EXISTS `detail_commande`;

CREATE TABLE `detail_commande` (
  `detail_commande_commande_id` int(11) NOT NULL,
  `detail_commande_produit_id` int(11) NOT NULL,
  `detail_commande_quantite` int(11) DEFAULT NULL,
  `detail_commande_quantite_livree` int(11) DEFAULT NULL,
  `detail_commande_prix_unitaire` decimal(5,2) DEFAULT NULL,
  `detail_commande_remise` decimal(5,2) DEFAULT NULL,
  `detail_commande_total` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`detail_commande_commande_id`,`detail_commande_produit_id`),
  KEY `detail_commande_produit_id` (`detail_commande_produit_id`),
  CONSTRAINT `detail_commande_ibfk_1` FOREIGN KEY (`detail_commande_commande_id`) REFERENCES `commande` (`commande_id`),
  CONSTRAINT `detail_commande_ibfk_2` FOREIGN KEY (`detail_commande_produit_id`) REFERENCES `produit` (`produit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (1, 1, 9, 1, '1.00', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (1, 11, 6, 9, '999.99', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (1, 21, 5, 3, '999.99', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (2, 2, 8, 1, '9.80', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (2, 12, 1, 4, '0.00', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (2, 22, 6, 7, '0.00', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (3, 3, 5, 0, '4.63', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (3, 13, 7, 5, '999.99', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (3, 23, 3, 0, '999.99', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (4, 4, 7, 9, '5.72', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (4, 14, 8, 3, '43.51', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (4, 24, 2, 0, '999.99', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (5, 5, 6, 2, '20.94', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (5, 15, 1, 7, '0.00', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (5, 25, 2, 2, '7.34', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (6, 6, 7, 2, '999.99', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (6, 16, 5, 1, '999.99', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (6, 26, 7, 6, '0.00', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (7, 7, 4, 7, '174.81', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (7, 17, 3, 0, '0.00', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (7, 27, 8, 0, '185.19', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (8, 8, 6, 5, '999.99', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (8, 18, 6, 3, '9.18', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (8, 28, 9, 8, '999.99', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (9, 9, 4, 9, '999.99', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (9, 19, 3, 2, '999.99', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (9, 29, 2, 5, '3.64', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (10, 10, 1, 8, '79.25', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (10, 20, 3, 7, '8.00', NULL, NULL);
INSERT INTO `detail_commande` (`detail_commande_commande_id`, `detail_commande_produit_id`, `detail_commande_quantite`, `detail_commande_quantite_livree`, `detail_commande_prix_unitaire`, `detail_commande_remise`, `detail_commande_total`) VALUES (10, 30, 2, 2, '999.99', NULL, NULL);

--
-- TABLE STRUCTURE FOR: facture
--

DROP TABLE IF EXISTS `facture`;

CREATE TABLE `facture` (
  `facture_id` int(11) NOT NULL AUTO_INCREMENT,
  `facture_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facture_commande_id` int(11) NOT NULL,
  PRIMARY KEY (`facture_id`),
  KEY `facture_commande_id` (`facture_commande_id`),
  CONSTRAINT `facture_ibfk_1` FOREIGN KEY (`facture_commande_id`) REFERENCES `commande` (`commande_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (1, '2001-11-06', 1);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (2, '2012-05-07', 2);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (3, '2001-03-28', 3);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (4, '1983-12-04', 4);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (5, '1998-11-01', 5);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (6, '1971-01-20', 6);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (7, '1974-04-17', 7);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (8, '2010-11-30', 8);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (9, '1993-09-09', 9);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (10, '1997-01-02', 10);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (11, '2003-06-12', 1);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (12, '2016-06-17', 2);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (13, '2000-03-13', 3);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (14, '2010-01-17', 4);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (15, '1988-07-29', 5);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (16, '2020-03-14', 6);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (17, '1971-02-21', 7);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (18, '1982-07-23', 8);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (19, '2007-02-15', 9);
INSERT INTO `facture` (`facture_id`, `facture_date`, `facture_commande_id`) VALUES (20, '2021-11-19', 10);


--
-- TABLE STRUCTURE FOR: bl
--

DROP TABLE IF EXISTS `bl`;

CREATE TABLE `bl` (
  `bl_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bl_date` date DEFAULT NULL,
  `bl_commande_id` int(11) NOT NULL,
  PRIMARY KEY (`bl_id`),
  KEY `bl_commande_id` (`bl_commande_id`),
  CONSTRAINT `bl_ibfk_1` FOREIGN KEY (`bl_commande_id`) REFERENCES `commande` (`commande_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `bl` (`bl_id`, `bl_date`, `bl_commande_id`) VALUES ('animi', '1986-07-17', 2);
INSERT INTO `bl` (`bl_id`, `bl_date`, `bl_commande_id`) VALUES ('consequatur', '2013-01-09', 5);
INSERT INTO `bl` (`bl_id`, `bl_date`, `bl_commande_id`) VALUES ('deserunt', '2017-04-28', 1);
INSERT INTO `bl` (`bl_id`, `bl_date`, `bl_commande_id`) VALUES ('non', '2011-02-06', 4);
INSERT INTO `bl` (`bl_id`, `bl_date`, `bl_commande_id`) VALUES ('quo', '1996-07-24', 3);
