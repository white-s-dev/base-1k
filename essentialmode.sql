-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 10:10:2020 à 15:09
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `essentialmode`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

DROP TABLE IF EXISTS `addon_account`;
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('caution', 'Caution', 0),
('organisation_green', 'Green', 1),
('property_black_money', 'Argent Sale Propriété', 0),
('property_black_money_ambulance', 'Argent Sale Ambulance', 1),
('property_black_money_cardealer', 'Argent Sale Concessionnaire', 1),
('property_black_money_foodtruck', 'Argent Sale Foodtruck', 1),
('property_black_money_mechanic', 'Argent Sale Mécano', 1),
('property_black_money_taxi', 'Argent Sale Taxi', 1),
('society_ambulance', 'Ambulance', 1),
('society_bahama_mamas', 'Bahama Mamas', 1),
('society_biker', 'Biker', 1),
('society_burgershot', 'Burgershot', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_cartel', 'Cartel', 1),
('society_fbi', 'FBI', 1),
('society_foodtruck', 'Foodtruck', 1),
('society_gouv', 'Gouvernement', 1),
('society_mafia', 'Mafia', 1),
('society_mecano', 'Mécano', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_vagos', 'Vagos', 1),
('society_vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

DROP TABLE IF EXISTS `addon_account_data`;
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(41, 'society_biker', 0, NULL),
(42, 'society_cartel', 0, NULL),
(43, 'society_mafia', 0, NULL),
(44, 'society_taxi', 0, NULL),
(45, 'society_vagos', 0, NULL),
(46, 'caution', 0, 'steam:110000134eb9286'),
(47, 'society_gouv', 0, NULL),
(48, 'organisation_green', 0, NULL),
(49, 'property_black_money_ambulance', 0, NULL),
(50, 'property_black_money_cardealer', 0, NULL),
(51, 'property_black_money_foodtruck', 0, NULL),
(52, 'property_black_money_taxi', 0, NULL),
(53, 'society_ambulance', 0, NULL),
(54, 'society_bahama_mamas', 0, NULL),
(55, 'society_burgershot', 0, NULL),
(56, 'society_cardealer', 0, NULL),
(57, 'society_fbi', 0, NULL),
(58, 'society_foodtruck', 0, NULL),
(59, 'society_mecano', 0, NULL),
(60, 'society_police', 550, NULL),
(61, 'society_realestateagent', 0, NULL),
(62, 'society_tabac', 0, NULL),
(63, 'society_vigne', 0, NULL),
(64, 'property_black_money', 0, 'steam:110000134eb9286'),
(65, 'property_black_money_mechanic', 0, NULL),
(66, 'society_mechanic', 143940, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

DROP TABLE IF EXISTS `addon_inventory`;
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('organisation_green', 'Green', 1),
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_bahama_mamas', 'Bahama Mamas', 1),
('society_bahama_mamas_fridge', 'Bahama Mamas (frigo)', 1),
('society_biker', 'Biker', 1),
('society_burgershot', 'Burgershot', 1),
('society_burgershot_fridge', 'Burgershot (frigo)', 1),
('society_cardealer', 'Concesionnaire', 1),
('society_cartel', 'Cartel', 1),
('society_fbi', 'FBI', 1),
('society_foodtruck', 'Foodtruck', 1),
('society_mafia', 'Mafia', 1),
('society_mecano', 'Mécano', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_vagos', 'Vagos', 1),
('society_vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

DROP TABLE IF EXISTS `addon_inventory_items`;
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `batterie_phone`
--

DROP TABLE IF EXISTS `batterie_phone`;
CREATE TABLE IF NOT EXISTS `batterie_phone` (
  `owner` varchar(255) NOT NULL,
  `pourcentage` int(11) NOT NULL DEFAULT 100,
  PRIMARY KEY (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `batterie_phone`
--

INSERT INTO `batterie_phone` (`owner`, `pourcentage`) VALUES
('steam:110000134eb9286', 88);

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

DROP TABLE IF EXISTS `billing`;
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
(1, 'steam:110000134eb9286', 'steam:RADARS_AUTO', 'society', 'society_police', 'Amende pour excès de vitesse: 110.0Km/h au lieu de 80Km/h - ', 485),
(2, 'steam:110000134eb9286', 'steam:RADARS_AUTO', 'society', 'society_police', 'Amende pour excès de vitesse: 86.0Km/h au lieu de 80Km/h - ', 485),
(3, 'steam:110000134eb9286', 'steam:RADARS_AUTO', 'society', 'society_police', 'Amende pour excès de vitesse: 106.0Km/h au lieu de 80Km/h - ', 485),
(4, 'steam:110000134eb9286', 'steam:RADARS_AUTO', 'society', 'society_police', 'Amende pour excès de vitesse: 118.0Km/h au lieu de 80Km/h - ', 485),
(5, 'steam:110000134eb9286', 'steam:RADARS_AUTO', 'society', 'society_police', 'Amende pour excès de vitesse: 86.0Km/h au lieu de 80Km/h - ', 485),
(6, 'steam:110000134eb9286', 'steam:RADARS_AUTO', 'society', 'society_police', 'Amende pour excès de vitesse: 95.0Km/h au lieu de 80Km/h - ', 485),
(7, 'steam:110000134eb9286', 'steam:RADARS_AUTO', 'society', 'society_police', 'Amende pour excès de vitesse: 86.0Km/h au lieu de 80Km/h - ', 485);

-- --------------------------------------------------------

--
-- Structure de la table `bwh_bans`
--

DROP TABLE IF EXISTS `bwh_bans`;
CREATE TABLE IF NOT EXISTS `bwh_bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver` text NOT NULL,
  `sender` varchar(60) NOT NULL,
  `length` datetime NOT NULL,
  `reason` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bwh_warnings`
--

DROP TABLE IF EXISTS `bwh_warnings`;
CREATE TABLE IF NOT EXISTS `bwh_warnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver` text NOT NULL,
  `sender` varchar(60) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cardealer_vehicles`
--

DROP TABLE IF EXISTS `cardealer_vehicles`;
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

DROP TABLE IF EXISTS `datastore`;
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('organisation_green', 'Green', 1),
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_bahama_mamas', 'Bahama Mamas', 1),
('society_biker', 'Biker', 1),
('society_burgershot', 'Burgershot', 1),
('society_cartel', 'Cartel', 1),
('society_fbi', 'FBI', 1),
('society_foodtruck', 'Foodtruck', 1),
('society_mafia', 'Mafia', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_vagos', 'Vagos', 1),
('society_vigne', 'Vigneron', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

DROP TABLE IF EXISTS `datastore_data`;
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_datastore_owner_name` (`owner`,`name`),
  KEY `index_datastore_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'organisation_green', NULL, '{}'),
(2, 'society_ambulance', NULL, '{}'),
(3, 'society_bahama_mamas', NULL, '{}'),
(4, 'society_biker', NULL, '{}'),
(5, 'society_burgershot', NULL, '{}'),
(6, 'society_cartel', NULL, '{}'),
(7, 'society_fbi', NULL, '{}'),
(8, 'society_foodtruck', NULL, '{}'),
(9, 'society_mafia', NULL, '{}'),
(10, 'society_mechanic', NULL, '{}'),
(11, 'society_police', NULL, '{}'),
(12, 'society_tabac', NULL, '{}'),
(13, 'society_taxi', NULL, '{}'),
(14, 'society_vagos', NULL, '{}'),
(15, 'society_vigne', NULL, '{}'),
(16, 'user_mask', 'steam:110000134eb9286', '{}'),
(17, 'user_glasses', 'steam:110000134eb9286', '{}'),
(18, 'user_helmet', 'steam:110000134eb9286', '{}'),
(19, 'property', 'steam:110000134eb9286', '{}'),
(20, 'user_ears', 'steam:110000134eb9286', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `fine_types`
--

DROP TABLE IF EXISTS `fine_types`;
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 30, 0),
(2, 'Franchir une ligne continue', 40, 0),
(3, 'Circulation à contresens', 250, 0),
(4, 'Demi-tour non autorisé', 250, 0),
(5, 'Circulation hors-route', 170, 0),
(6, 'Non-respect des distances de sécurité', 30, 0),
(7, 'Arrêt dangereux / interdit', 150, 0),
(8, 'Stationnement gênant / interdit', 70, 0),
(9, 'Non respect  de la priorité à droite', 70, 0),
(10, 'Non-respect à un véhicule prioritaire', 90, 0),
(11, 'Non-respect d\'un stop', 105, 0),
(12, 'Non-respect d\'un feu rouge', 150, 0),
(13, 'Dépassement dangereux', 100, 0),
(14, 'Véhicule non en état', 100, 0),
(15, 'Conduite sans permis', 1500, 0),
(16, 'Délit de fuite', 975, 0),
(17, 'Excès de vitesse < 5 kmh', 90, 0),
(18, 'Excès de vitesse 5-15 kmh', 120, 0),
(19, 'Excès de vitesse 15-30 kmh', 180, 0),
(20, 'Excès de vitesse > 30 kmh', 300, 0),
(21, 'Entrave de la circulation', 110, 1),
(22, 'Dégradation de la voie publique', 90, 1),
(23, 'Trouble à l\'ordre publique', 90, 1),
(24, 'Entrave opération de police', 130, 1),
(25, 'Insulte envers / entre civils', 75, 1),
(26, 'Outrage à agent de police', 110, 1),
(27, 'Menace verbale ou intimidation envers civil', 90, 1),
(28, 'Menace verbale ou intimidation envers policier', 150, 1),
(29, 'Manifestation illégale', 250, 1),
(30, 'Tentative de corruption', 1500, 1),
(31, 'Arme blanche sortie en ville', 120, 2),
(32, 'Arme léthale sortie en ville', 500, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 600, 2),
(34, 'Port d\'arme illégal', 2500, 2),
(35, 'Pris en flag lockpick', 300, 2),
(36, 'Vol de voiture', 1850, 2),
(37, 'Vente de drogue', 1500, 2),
(38, 'Fabriquation de drogue', 1500, 2),
(39, 'Possession de drogue', 650, 2),
(40, 'Prise d\'ôtage civil', 1500, 2),
(41, 'Prise d\'ôtage agent de l\'état', 2500, 2),
(42, 'Braquage particulier', 650, 2),
(43, 'Braquage magasin', 650, 2),
(44, 'Braquage de banque', 1500, 2),
(45, 'Tir sur civil', 3500, 3),
(46, 'Tir sur agent de l\'état', 4500, 3),
(47, 'Tentative de meurtre sur civil', 5000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 7500, 3),
(49, 'Meurtre sur civil', 10000, 3),
(50, 'Meurte sur agent de l\'état', 30000, 3),
(51, 'Meurtre involontaire', 6500, 3),
(52, 'Escroquerie à l\'entreprise', 3500, 2);

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('acetone', 'Acetone', 50, 0, 1),
('alive_chicken', 'Poulet vivant', 20, 0, 1),
('banana', 'Banane', -1, 0, 1),
('bandage', 'Bandage', 2, 0, 1),
('billet', 'Papier', 50, 0, 1),
('billet_pooch', 'Faux Billet', 10, 0, 1),
('ble', 'Blé', -1, 0, 1),
('blowpipe', 'Chalumeaux', 10, 0, 1),
('bolcacahuetes', 'Bol de cacahuètes', 5, 0, 1),
('bolchips', 'Bol de chips', 5, 0, 1),
('bolnoixcajou', 'Bol de noix de cajou', 5, 0, 1),
('bolpistache', 'Bol de pistaches', 5, 0, 1),
('bread', 'Pain', 100, 0, 1),
('burger', 'Hamburger', 5, 0, 1),
('carokit', 'Kit carosserie', 3, 0, 1),
('carotool', 'outils carosserie', 4, 0, 1),
('cheese', 'Fromage', 5, 0, 1),
('cigarette', 'cigarette', 10, 0, 1),
('clip', 'Chargeur', -1, 0, 1),
('clothe', 'Vêtement', 40, 0, 1),
('coke', 'Coke', 50, 0, 1),
('coke_pooch', 'Pochon de coke', 10, 0, 1),
('copper', 'Cuivre', 56, 0, 1),
('crack', 'Crack', 50, 0, 1),
('crack_pooch', 'Pochon de Crack', 10, 0, 1),
('croquettes', 'Croquettes', -1, 0, 1),
('cutted_wood', 'Bois coupé', 20, 0, 1),
('cutting_pliers', 'Pince coupante', -1, 0, 1),
('diamond', 'Diamant', 50, 0, 1),
('drpepper', 'Dr. Pepper', 5, 0, 1),
('ecstasy', 'Ecstasy', 50, 0, 1),
('ecstasy_pooch', 'Pochon decstasy', 10, 0, 1),
('energy', 'Energy Drink', 5, 0, 1),
('essence', 'Essence', 24, 0, 1),
('fabric', 'Tissu', 80, 0, 1),
('farine', 'Farine', -1, 0, 1),
('fish', 'Poisson', 100, 0, 1),
('fixkit', 'Kit réparation', 5, 0, 1),
('fixtool', 'outils réparation', 6, 0, 1),
('flashlight', 'Lampe', -1, 0, 1),
('gazbottle', 'bouteille de gaz', 11, 0, 1),
('gitanes', 'Gitanes', -1, 0, 1),
('gold', 'Or', 21, 0, 1),
('golem', 'Golem', 5, 0, 1),
('gps', 'GPS', -1, 0, 1),
('grand_cru', 'Grand cru', -1, 0, 1),
('grapperaisin', 'Grappe de raisin', 5, 0, 1),
('grip', 'Poignée', -1, 0, 1),
('handcuff', 'Serflex', -1, 0, 1),
('ice', 'Glaçon', 5, 0, 1),
('icetea', 'Ice Tea', 5, 0, 1),
('iron', 'Fer', 42, 0, 1),
('jager', 'Jägermeister', 5, 0, 1),
('jagerbomb', 'Jägerbomb', 5, 0, 1),
('jagercerbere', 'Jäger Cerbère', 3, 0, 1),
('jusfruit', 'Jus de fruits', 5, 0, 1),
('jus_raisin', 'Jus de raisin', -1, 0, 1),
('ketamine', 'Ketamine', 50, 0, 1),
('ketamine_pooch', 'Pochon de ketamine', 10, 0, 1),
('licambulance', 'Formulaire cession ambulance', 1, 0, 1),
('liccardealer', 'Formulaire cession concessionnaire', 1, 0, 1),
('lictaxi', 'Formulaire cession taxi', 1, 0, 1),
('limonade', 'Limonade', 5, 0, 1),
('lithium', 'Lithium', 50, 0, 1),
('lockpick', 'Lockpick', 3, 0, 1),
('lsd', 'Lsd', -1, 0, 1),
('lsd_pooch', 'Pochon de LSD', -1, 0, 1),
('malbora', 'Malbora', -1, 0, 1),
('martini', 'Martini blanc', 5, 0, 1),
('medikit', 'Medikit', 2, 0, 1),
('menthe', 'Feuille de menthe', 10, 0, 1),
('meth', 'meth', 50, 0, 1),
('methlab', 'Methilamine', 50, 0, 1),
('meth_pooch', 'Pochon de meth', 10, 0, 1),
('metreshooter', 'Mètre de shooter', 3, 0, 1),
('mixapero', 'Mix Apéritif', 3, 0, 1),
('mojito', 'Mojito', 5, 0, 1),
('morf', 'Heroine', 50, 0, 1),
('morf_pooch', 'Pochon d\'heroine', 10, 0, 1),
('opium', 'Opium', 50, 0, 1),
('opium_pooch', 'Pochon de opium', 10, 0, 1),
('opona', 'Pneu', 5, 0, 1),
('packaged_chicken', 'Poulet en barquette', 100, 0, 1),
('packaged_plank', 'Paquet de planches', 100, 0, 1),
('petrol', 'Pétrole', 24, 0, 1),
('petrol_raffin', 'Pétrole Raffiné', 24, 0, 1),
('phone', 'Smarthphone', 1, 0, 1),
('piluleoubli', 'Pilule de l\'oubli', 5, 0, 1),
('raisin', 'Raisin', -1, 0, 1),
('rhum', 'Rhum', 5, 0, 1),
('rhumcoca', 'Rhum-coca', 5, 0, 1),
('rhumfruit', 'Rhum-jus de fruits', 5, 0, 1),
('saucisson', 'Saucisson', 5, 0, 1),
('silencieux', 'Silencieux', -1, 0, 1),
('sim', 'Carte Sim', -1, 0, 1),
('slaughtered_chicken', 'Poulet abattu', 20, 0, 1),
('soda', 'Soda', 5, 0, 1),
('steak', 'Steak', 5, 0, 1),
('stone', 'Pierre', 7, 0, 1),
('tabacblond', 'Tabac Blond', -1, 0, 1),
('tabacblondsec', 'Tabac Blond Séché', -1, 0, 1),
('tabacbrun', 'Tabac Brun', -1, 0, 1),
('tabacbrunsec', 'Tabac Brun Séché', -1, 0, 1),
('teqpaf', 'Teq\'paf', 5, 0, 1),
('tequila', 'Tequila', 5, 0, 1),
('vine', 'Vin', -1, 0, 1),
('vodka', 'Vodka', 5, 0, 1),
('vodkaenergy', 'Vodka-energy', 5, 0, 1),
('vodkafruit', 'Vodka-jus de fruits', 5, 0, 1),
('washed_stone', 'Pierre Lavée', 7, 0, 1),
('water', 'Eau', 100, 0, 1),
('weed', 'Weed', 50, 0, 1),
('weed_pooch', 'Pochon de weed', 10, 0, 1),
('whisky', 'Whisky', 5, 0, 1),
('whiskycoca', 'Whisky-coca', 5, 0, 1),
('wood', 'Bois', 20, 0, 1),
('wool', 'Laine', 40, 0, 1),
('yusuf', 'Skin de luxe', -1, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `job2_grades`
--

DROP TABLE IF EXISTS `job2_grades`;
CREATE TABLE IF NOT EXISTS `job2_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job2_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `job2_grades`
--

INSERT INTO `job2_grades` (`id`, `job2_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed2', 0, 'unemployed2', 'R.S.A', 75, 'null', 'null'),
(2, 'lumberjack', 0, 'employee', 'Intérimaire', 250, 'null', 'null'),
(3, 'fisherman', 0, 'employee', 'Intérimaire', 250, 'null', 'null'),
(4, 'fueler', 0, 'employee', 'Intérimaire', 250, 'null', 'null'),
(5, 'reporter', 0, 'employee', 'Intérimaire', 250, 'null', 'null'),
(6, 'tailor', 0, 'employee', 'Intérimaire', 250, 'null', 'null'),
(7, 'miner', 0, 'employee', 'Intérimaire', 250, 'null', 'null'),
(8, 'slaughterer', 0, 'employee', 'Intérimaire', 250, 'null', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `job3_grades`
--

DROP TABLE IF EXISTS `job3_grades`;
CREATE TABLE IF NOT EXISTS `job3_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job3_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `job3_grades`
--

INSERT INTO `job3_grades` (`id`, `job3_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed3', 0, 'unemployed3', 'Organisation', 25, 'null', 'null'),
(2, 'vagos', 0, 'soldato', 'Dealer', 500, 'null', 'null'),
(3, 'vagos', 1, 'capo', 'Braqueur', 750, 'null', 'null'),
(4, 'vagos', 2, 'consigliere', 'Bandit', 900, 'null', 'null'),
(5, 'vagos', 3, 'boss', 'Chef du Gang', 1150, 'null', 'null'),
(6, 'mafia', 0, 'soldato', 'Ptite-Frappe', 1300, 'null', 'null'),
(7, 'mafia', 1, 'capo', 'Capo', 1600, 'null', 'null'),
(8, 'mafia', 2, 'consigliere', 'Consigliere', 1900, 'null', 'null'),
(9, 'mafia', 3, 'boss', 'Parain', 2500, 'null', 'null'),
(10, 'cartel', 0, 'soldato', 'Dealer', 950, 'null', 'null'),
(11, 'cartel', 1, 'capo', 'Braqueur', 1150, 'null', 'null'),
(12, 'cartel', 2, 'consigliere', 'Mafieux', 1350, 'null', 'null'),
(13, 'cartel', 3, 'boss', 'Parrain', 1700, 'null', 'null'),
(14, 'biker', 0, 'soldato', 'Dealer', 750, 'null', 'null'),
(15, 'biker', 1, 'capo', 'Motard', 950, 'null', 'null'),
(16, 'biker', 2, 'consigliere', 'Bandit', 1150, 'null', 'null'),
(17, 'biker', 3, 'boss', 'Chef du Gang', 1350, 'null', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'Ambulance', 1),
('bahama_mamas', 'Bahama Mamas', 1),
('biker', 'Biker', 1),
('burgershot', 'Burgershot', 1),
('bus', 'busdriver', 0),
('cardealer', 'Concessionnaire', 0),
('cartel', 'Cartel', 1),
('fbi', 'FBI', 1),
('fermier', 'Fermier', 0),
('fisherman', 'Pêcheur', 0),
('foodtruck', 'Foodtruck', 1),
('fueler', 'Raffineur', 0),
('gouv', 'Gouvernement', 1),
('lumberjack', 'Bûcheron', 0),
('mafia', 'Mafia', 1),
('mecano', 'Mécano', 0),
('mechanic', 'Mécano', 1),
('miner', 'Mineur', 0),
('police', 'LSPD', 0),
('realestateagent', 'Agent immobilier', 0),
('reporter', 'Journaliste', 1),
('slaughterer', 'Abatteur', 0),
('tabac', 'Tabac', 1),
('tailor', 'Couturier', 0),
('taxi', 'Taxi', 1),
('unemployed', 'Job', 0),
('unemployed2', 'Job.2', 0),
('unemployed3', 'Job.3', 0),
('vagos', 'Vagos', 1),
('vigne', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs2`
--

DROP TABLE IF EXISTS `jobs2`;
CREATE TABLE IF NOT EXISTS `jobs2` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `jobs2`
--

INSERT INTO `jobs2` (`name`, `label`, `whitelisted`) VALUES
('fisherman', 'Pêcheur', 0),
('fueler', 'Raffineur', 0),
('lumberjack', 'Bûcheron', 0),
('miner', 'Mineur', 0),
('reporter', 'Journaliste', 0),
('slaughterer', 'Abatteur', 0),
('tailor', 'Couturier', 0),
('unemployed2', 'R.S.A', 0);

-- --------------------------------------------------------

--
-- Structure de la table `jobs3`
--

DROP TABLE IF EXISTS `jobs3`;
CREATE TABLE IF NOT EXISTS `jobs3` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `jobs3`
--

INSERT INTO `jobs3` (`name`, `label`, `whitelisted`) VALUES
('biker', 'Biker', 1),
('cartel', 'Cartel', 1),
('mafia', 'Mafia', 1),
('unemployed3', 'Organisation', 0),
('vagos', 'Vagos', 1);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

DROP TABLE IF EXISTS `job_grades`;
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Chomeur', 150, 'null', 'null'),
(2, 'vagos', 0, 'soldato', 'Dealer', 0, 'null', 'null'),
(3, 'vagos', 1, 'capo', 'Braqueur', 0, 'null', 'null'),
(4, 'vagos', 2, 'consigliere', 'Bandit', 0, 'null', 'null'),
(5, 'vagos', 3, 'boss', 'Chef du Gang', 0, 'null', 'null'),
(6, 'mafia', 0, 'soldato', 'Ptite-Frappe', 0, 'null', 'null'),
(7, 'mafia', 1, 'capo', 'Capo', 0, 'null', 'null'),
(8, 'mafia', 2, 'consigliere', 'Consigliere', 0, 'null', 'null'),
(9, 'mafia', 3, 'boss', 'Parain', 0, 'null', 'null'),
(10, 'cartel', 0, 'soldato', 'Dealer', 0, 'null', 'null'),
(11, 'cartel', 1, 'capo', 'Braqueur', 0, 'null', 'null'),
(12, 'cartel', 2, 'consigliere', 'Mafieux', 0, 'null', 'null'),
(13, 'cartel', 3, 'boss', 'Parrain', 0, 'null', 'null'),
(14, 'biker', 0, 'soldato', 'Dealer', 0, 'null', 'null'),
(15, 'biker', 1, 'capo', 'Motard', 0, 'null', 'null'),
(16, 'biker', 2, 'consigliere', 'Bandit', 0, 'null', 'null'),
(17, 'biker', 3, 'boss', 'Chef du Gang', 0, 'null', 'null'),
(18, 'unemployed2', 0, 'unemployed2', 'R.S.A', 75, 'null', 'null'),
(19, 'unemployed3', 0, 'unemployed3', 'Organisation', 25, 'null', 'null'),
(20, 'lumberjack', 0, 'employee', 'Intérimaire', 250, 'null', 'null'),
(21, 'fisherman', 0, 'employee', 'Intérimaire', 250, 'null', 'null'),
(22, 'fueler', 0, 'employee', 'Intérimaire', 250, 'null', 'null'),
(23, 'reporter', 0, 'employee', 'Intérimaire', 250, 'null', 'null'),
(24, 'tailor', 0, 'employee', 'Intérimaire', 250, 'null', 'null'),
(25, 'miner', 0, 'employee', 'Intérimaire', 250, 'null', 'null'),
(26, 'slaughterer', 0, 'employee', 'Intérimaire', 250, 'null', 'null'),
(32, 'taxi', 0, 'recrue', 'Recrue', 550, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(33, 'taxi', 1, 'novice', 'Novice', 750, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(34, 'taxi', 2, 'experimente', 'Experimente', 950, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(35, 'taxi', 3, 'uber', 'Uber', 1150, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(36, 'taxi', 4, 'boss', 'Patron', 1350, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(37, 'fbi', 0, 'recruit', 'Recrue', 850, '{}', '{}'),
(38, 'fbi', 1, 'officer', 'Officier', 1050, '{}', '{}'),
(39, 'fbi', 2, 'sergeant', 'Colonel', 1350, '{}', '{}'),
(40, 'fbi', 3, 'lieutenant', 'Capitaine', 1550, '{}', '{}'),
(41, 'fbi', 4, 'boss', 'Commandant', 1750, '{}', '{}'),
(42, 'ambulance', 0, 'ambulance', 'Ambulancier', 1000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(43, 'ambulance', 1, 'doctor', 'Medecin', 2000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(44, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 3000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(45, 'ambulance', 3, 'boss', 'Chirurgien', 4000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(46, 'bahama_mamas', 0, 'barman', 'Barman', 950, '{}', '{}'),
(47, 'bahama_mamas', 1, 'dancer', 'Danseur', 1050, '{}', '{}'),
(48, 'bahama_mamas', 2, 'viceboss', 'Co-gérant', 1150, '{}', '{}'),
(49, 'bahama_mamas', 3, 'boss', 'Gérant', 1250, '{}', '{}'),
(50, 'burgershot', 0, 'recruit', 'Recrue', 1000, '{}', '{}'),
(51, 'burgershot', 1, 'employer', 'Employé(e)', 1100, '{}', '{}'),
(52, 'burgershot', 2, 'viceboss', 'Co-gérant', 1200, '{}', '{}'),
(53, 'burgershot', 3, 'boss', 'Gérant', 1300, '{}', '{}'),
(54, 'bus', 0, 'employee', 'Interimaire', 250, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(55, 'foodtruck', 0, 'interim', 'Interimaire', 350, '{\"watches_2\":0,\"beard_4\":0,\"eyebrows_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"sun_1\":0,\"age_1\":0,\"eyebrows_3\":0,\"lipstick_4\":0,\"shoes_2\":0,\"mask_2\":0,\"bodyb_1\":0,\"lipstick_1\":0,\"blush_2\":0,\"decals_1\":0,\"pants_2\":5,\"glasses_2\":0,\"hair_color_1\":0,\"hair_1\":0,\"eyebrows_4\":0,\"blemishes_2\":0,\"sex\":0,\"lipstick_3\":0,\"arms_2\":0,\"bags_2\":0,\"decals_2\":0,\"age_2\":0,\"skin\":0,\"blush_3\":0,\"beard_3\":0,\"beard_2\":0,\"helmet_2\":0,\"beard_1\":0,\"tshirt_2\":0,\"arms\":81,\"chest_1\":0,\"torso_1\":120,\"bracelets_1\":0,\"mask_1\":0,\"pants_1\":24,\"bags_1\":0,\"moles_2\":0,\"blush_1\":0,\"bproof_1\":0,\"watches_1\":3,\"ears_1\":-1,\"complexion_1\":0,\"eyebrows_1\":0,\"eye_color\":0,\"torso_2\":1,\"chain_1\":0,\"sun_2\":0,\"moles_1\":0,\"chest_3\":0,\"helmet_1\":7,\"makeup_3\":0,\"hair_color_2\":0,\"blemishes_1\":0,\"chain_2\":0,\"glasses_1\":0,\"face\":0,\"chest_2\":0,\"complexion_2\":0,\"shoes_1\":10,\"tshirt_1\":6,\"bproof_2\":0,\"shoes\":35,\"makeup_1\":0,\"ears_2\":0,\"bracelets_2\":0,\"makeup_2\":0,\"bodyb_2\":0,\"makeup_4\":0}', '{\"watches_2\":0,\"blemishes_1\":0,\"eyebrows_2\":10,\"hair_2\":0,\"lipstick_2\":0,\"sun_1\":0,\"age_1\":0,\"hair_color_2\":0,\"lipstick_4\":0,\"shoes_2\":3,\"mask_2\":0,\"bodyb_1\":0,\"lipstick_1\":0,\"blush_2\":0,\"decals_1\":0,\"pants_2\":0,\"glasses_2\":0,\"hair_color_1\":0,\"hair_1\":14,\"ears_1\":-1,\"blemishes_2\":0,\"sex\":1,\"makeup_1\":0,\"arms_2\":0,\"bags_2\":0,\"decals_2\":0,\"age_2\":0,\"skin\":9,\"blush_3\":0,\"beard_3\":0,\"beard_2\":10,\"chest_2\":0,\"complexion_2\":0,\"tshirt_2\":0,\"arms\":86,\"bproof_2\":0,\"tshirt_1\":68,\"bracelets_1\":-1,\"mask_1\":0,\"pants_1\":23,\"bags_1\":0,\"moles_2\":0,\"blush_1\":0,\"eyebrows_3\":0,\"bproof_1\":0,\"chest_3\":0,\"helmet_2\":0,\"complexion_1\":0,\"sun_2\":0,\"eye_color\":0,\"ears_2\":0,\"chain_1\":0,\"watches_1\":-1,\"moles_1\":0,\"face\":0,\"makeup_4\":0,\"makeup_3\":0,\"shoes\":26,\"glasses\":0,\"beard_4\":0,\"glasses_1\":15,\"makeup_2\":0,\"beard_1\":1,\"chain_2\":0,\"shoes_1\":22,\"torso_2\":4,\"chest_1\":0,\"torso_1\":83,\"eyebrows_1\":0,\"helmet_1\":-1,\"bracelets_2\":0,\"eyebrows_4\":0,\"lipstick_3\":0,\"bodyb_2\":0}'),
(56, 'foodtruck', 1, 'cuisinier', 'Cuisinier', 875, '{\"watches_2\":0,\"beard_4\":0,\"eyebrows_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"sun_1\":0,\"age_1\":0,\"eyebrows_3\":0,\"lipstick_4\":0,\"shoes_2\":0,\"mask_2\":0,\"bodyb_1\":0,\"lipstick_1\":0,\"blush_2\":0,\"decals_1\":0,\"pants_2\":5,\"glasses_2\":0,\"hair_color_1\":0,\"hair_1\":0,\"eyebrows_4\":0,\"blemishes_2\":0,\"sex\":0,\"lipstick_3\":0,\"arms_2\":0,\"bags_2\":0,\"decals_2\":0,\"age_2\":0,\"skin\":0,\"blush_3\":0,\"beard_3\":0,\"beard_2\":0,\"helmet_2\":0,\"beard_1\":0,\"tshirt_2\":0,\"arms\":81,\"chest_1\":0,\"torso_1\":120,\"bracelets_1\":0,\"mask_1\":0,\"pants_1\":24,\"bags_1\":0,\"moles_2\":0,\"blush_1\":0,\"bproof_1\":0,\"watches_1\":3,\"ears_1\":-1,\"complexion_1\":0,\"eyebrows_1\":0,\"eye_color\":0,\"torso_2\":1,\"chain_1\":0,\"sun_2\":0,\"moles_1\":0,\"chest_3\":0,\"helmet_1\":7,\"makeup_3\":0,\"hair_color_2\":0,\"blemishes_1\":0,\"chain_2\":0,\"glasses_1\":0,\"face\":0,\"chest_2\":0,\"complexion_2\":0,\"shoes_1\":10,\"tshirt_1\":6,\"bproof_2\":0,\"shoes\":35,\"makeup_1\":0,\"ears_2\":0,\"bracelets_2\":0,\"makeup_2\":0,\"bodyb_2\":0,\"makeup_4\":0}', '{\"watches_2\":0,\"blemishes_1\":0,\"eyebrows_2\":10,\"hair_2\":0,\"lipstick_2\":0,\"sun_1\":0,\"age_1\":0,\"hair_color_2\":0,\"lipstick_4\":0,\"shoes_2\":3,\"mask_2\":0,\"bodyb_1\":0,\"lipstick_1\":0,\"blush_2\":0,\"decals_1\":0,\"pants_2\":0,\"glasses_2\":0,\"hair_color_1\":0,\"hair_1\":14,\"ears_1\":-1,\"blemishes_2\":0,\"sex\":1,\"makeup_1\":0,\"arms_2\":0,\"bags_2\":0,\"decals_2\":0,\"age_2\":0,\"skin\":9,\"blush_3\":0,\"beard_3\":0,\"beard_2\":10,\"chest_2\":0,\"complexion_2\":0,\"tshirt_2\":0,\"arms\":86,\"bproof_2\":0,\"tshirt_1\":68,\"bracelets_1\":-1,\"mask_1\":0,\"pants_1\":23,\"bags_1\":0,\"moles_2\":0,\"blush_1\":0,\"eyebrows_3\":0,\"bproof_1\":0,\"chest_3\":0,\"helmet_2\":0,\"complexion_1\":0,\"sun_2\":0,\"eye_color\":0,\"ears_2\":0,\"chain_1\":0,\"watches_1\":-1,\"moles_1\":0,\"face\":0,\"makeup_4\":0,\"makeup_3\":0,\"shoes\":26,\"glasses\":0,\"beard_4\":0,\"glasses_1\":15,\"makeup_2\":0,\"beard_1\":1,\"chain_2\":0,\"shoes_1\":22,\"torso_2\":4,\"chest_1\":0,\"torso_1\":83,\"eyebrows_1\":0,\"helmet_1\":-1,\"bracelets_2\":0,\"eyebrows_4\":0,\"lipstick_3\":0,\"bodyb_2\":0}'),
(57, 'foodtruck', 2, 'pdg', 'Dirécteur', 925, '{\"watches_2\":0,\"beard_4\":0,\"eyebrows_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"sun_1\":0,\"age_1\":0,\"eyebrows_3\":0,\"lipstick_4\":0,\"shoes_2\":0,\"mask_2\":0,\"bodyb_1\":0,\"lipstick_1\":0,\"blush_2\":0,\"decals_1\":0,\"pants_2\":5,\"glasses_2\":0,\"hair_color_1\":0,\"hair_1\":0,\"eyebrows_4\":0,\"blemishes_2\":0,\"sex\":0,\"lipstick_3\":0,\"arms_2\":0,\"bags_2\":0,\"decals_2\":0,\"age_2\":0,\"skin\":0,\"blush_3\":0,\"beard_3\":0,\"beard_2\":0,\"helmet_2\":0,\"beard_1\":0,\"tshirt_2\":0,\"arms\":81,\"chest_1\":0,\"torso_1\":120,\"bracelets_1\":0,\"mask_1\":0,\"pants_1\":24,\"bags_1\":0,\"moles_2\":0,\"blush_1\":0,\"bproof_1\":0,\"watches_1\":3,\"ears_1\":-1,\"complexion_1\":0,\"eyebrows_1\":0,\"eye_color\":0,\"torso_2\":1,\"chain_1\":0,\"sun_2\":0,\"moles_1\":0,\"chest_3\":0,\"helmet_1\":7,\"makeup_3\":0,\"hair_color_2\":0,\"blemishes_1\":0,\"chain_2\":0,\"glasses_1\":0,\"face\":0,\"chest_2\":0,\"complexion_2\":0,\"shoes_1\":10,\"tshirt_1\":6,\"bproof_2\":0,\"shoes\":35,\"makeup_1\":0,\"ears_2\":0,\"bracelets_2\":0,\"makeup_2\":0,\"bodyb_2\":0,\"makeup_4\":0}', '{\"watches_2\":0,\"blemishes_1\":0,\"eyebrows_2\":10,\"hair_2\":0,\"lipstick_2\":0,\"sun_1\":0,\"age_1\":0,\"hair_color_2\":0,\"lipstick_4\":0,\"shoes_2\":3,\"mask_2\":0,\"bodyb_1\":0,\"lipstick_1\":0,\"blush_2\":0,\"decals_1\":0,\"pants_2\":0,\"glasses_2\":0,\"hair_color_1\":0,\"hair_1\":14,\"ears_1\":-1,\"blemishes_2\":0,\"sex\":1,\"makeup_1\":0,\"arms_2\":0,\"bags_2\":0,\"decals_2\":0,\"age_2\":0,\"skin\":9,\"blush_3\":0,\"beard_3\":0,\"beard_2\":10,\"chest_2\":0,\"complexion_2\":0,\"tshirt_2\":0,\"arms\":86,\"bproof_2\":0,\"tshirt_1\":68,\"bracelets_1\":-1,\"mask_1\":0,\"pants_1\":23,\"bags_1\":0,\"moles_2\":0,\"blush_1\":0,\"eyebrows_3\":0,\"bproof_1\":0,\"chest_3\":0,\"helmet_2\":0,\"complexion_1\":0,\"sun_2\":0,\"eye_color\":0,\"ears_2\":0,\"chain_1\":0,\"watches_1\":-1,\"moles_1\":0,\"face\":0,\"makeup_4\":0,\"makeup_3\":0,\"shoes\":26,\"glasses\":0,\"beard_4\":0,\"glasses_1\":15,\"makeup_2\":0,\"beard_1\":1,\"chain_2\":0,\"shoes_1\":22,\"torso_2\":4,\"chest_1\":0,\"torso_1\":83,\"eyebrows_1\":0,\"helmet_1\":-1,\"bracelets_2\":0,\"eyebrows_4\":0,\"lipstick_3\":0,\"bodyb_2\":0}'),
(58, 'foodtruck', 3, 'boss', 'Patron', 1050, '{\"watches_2\":0,\"beard_4\":0,\"eyebrows_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"sun_1\":0,\"age_1\":0,\"eyebrows_3\":0,\"lipstick_4\":0,\"shoes_2\":0,\"mask_2\":0,\"bodyb_1\":0,\"lipstick_1\":0,\"blush_2\":0,\"decals_1\":0,\"pants_2\":5,\"glasses_2\":0,\"hair_color_1\":0,\"hair_1\":0,\"eyebrows_4\":0,\"blemishes_2\":0,\"sex\":0,\"lipstick_3\":0,\"arms_2\":0,\"bags_2\":0,\"decals_2\":0,\"age_2\":0,\"skin\":0,\"blush_3\":0,\"beard_3\":0,\"beard_2\":0,\"helmet_2\":0,\"beard_1\":0,\"tshirt_2\":0,\"arms\":81,\"chest_1\":0,\"torso_1\":120,\"bracelets_1\":0,\"mask_1\":0,\"pants_1\":24,\"bags_1\":0,\"moles_2\":0,\"blush_1\":0,\"bproof_1\":0,\"watches_1\":3,\"ears_1\":-1,\"complexion_1\":0,\"eyebrows_1\":0,\"eye_color\":0,\"torso_2\":1,\"chain_1\":0,\"sun_2\":0,\"moles_1\":0,\"chest_3\":0,\"helmet_1\":7,\"makeup_3\":0,\"hair_color_2\":0,\"blemishes_1\":0,\"chain_2\":0,\"glasses_1\":0,\"face\":0,\"chest_2\":0,\"complexion_2\":0,\"shoes_1\":10,\"tshirt_1\":6,\"bproof_2\":0,\"shoes\":35,\"makeup_1\":0,\"ears_2\":0,\"bracelets_2\":0,\"makeup_2\":0,\"bodyb_2\":0,\"makeup_4\":0}', '{\"watches_2\":0,\"blemishes_1\":0,\"eyebrows_2\":10,\"hair_2\":0,\"lipstick_2\":0,\"sun_1\":0,\"age_1\":0,\"hair_color_2\":0,\"lipstick_4\":0,\"shoes_2\":3,\"mask_2\":0,\"bodyb_1\":0,\"lipstick_1\":0,\"blush_2\":0,\"decals_1\":0,\"pants_2\":0,\"glasses_2\":0,\"hair_color_1\":0,\"hair_1\":14,\"ears_1\":-1,\"blemishes_2\":0,\"sex\":1,\"makeup_1\":0,\"arms_2\":0,\"bags_2\":0,\"decals_2\":0,\"age_2\":0,\"skin\":9,\"blush_3\":0,\"beard_3\":0,\"beard_2\":10,\"chest_2\":0,\"complexion_2\":0,\"tshirt_2\":0,\"arms\":86,\"bproof_2\":0,\"tshirt_1\":68,\"bracelets_1\":-1,\"mask_1\":0,\"pants_1\":23,\"bags_1\":0,\"moles_2\":0,\"blush_1\":0,\"eyebrows_3\":0,\"bproof_1\":0,\"chest_3\":0,\"helmet_2\":0,\"complexion_1\":0,\"sun_2\":0,\"eye_color\":0,\"ears_2\":0,\"chain_1\":0,\"watches_1\":-1,\"moles_1\":0,\"face\":0,\"makeup_4\":0,\"makeup_3\":0,\"shoes\":26,\"glasses\":0,\"beard_4\":0,\"glasses_1\":15,\"makeup_2\":0,\"beard_1\":1,\"chain_2\":0,\"shoes_1\":22,\"torso_2\":4,\"chest_1\":0,\"torso_1\":83,\"eyebrows_1\":0,\"helmet_1\":-1,\"bracelets_2\":0,\"eyebrows_4\":0,\"lipstick_3\":0,\"bodyb_2\":0}'),
(61, 'vigne', 0, 'recrue', 'Intérimaire', 2000, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(62, 'vigne', 1, 'novice', 'Vigneron', 2500, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(63, 'vigne', 2, 'cdisenior', 'Chef de chai', 3000, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(64, 'vigne', 3, 'boss', 'Patron', 3500, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(174, 'gouv', 0, 'ministre', 'Ministre', 4000, '{}', '{}'),
(175, 'gouv', 1, 'president', 'Président', 6000, '{}', '{}'),
(176, 'mecano', 0, 'recrue', 'Recrue', 1500, '{}', '{}'),
(177, 'mecano', 1, 'novice', 'Novice', 2000, '{}', '{}'),
(178, 'mecano', 2, 'experimente', 'Experimente', 2500, '{}', '{}'),
(179, 'mecano', 3, 'chief', 'Chef d\'équipe', 3000, '{}', '{}'),
(180, 'mecano', 4, 'boss', 'Patron', 3500, '{}', '{}'),
(181, 'police', 0, 'recruit', 'Recrue', 1000, '{}', '{}'),
(182, 'police', 1, 'officer', 'Officier', 1300, '{}', '{}'),
(183, 'police', 2, 'sergeant', 'Sergent', 1600, '{}', '{}'),
(184, 'police', 3, 'lieutenant', 'Lieutenant', 1900, '{}', '{}'),
(185, 'police', 4, 'boss', 'Commandant', 2200, '{}', '{}'),
(186, 'realestateagent', 0, 'location', 'Location', 3500, '{}', '{}'),
(187, 'realestateagent', 1, 'vendeur', 'Vendeur', 4000, '{}', '{}'),
(188, 'realestateagent', 2, 'gestion', 'Gestion', 4500, '{}', '{}'),
(189, 'realestateagent', 3, 'boss', 'Patron', 5000, '{}', '{}'),
(190, 'tabac', 0, 'recrue', 'Tabagiste', 750, '{}', '{}'),
(191, 'tabac', 1, 'gerant', 'Gérant', 950, '{}', '{}'),
(192, 'tabac', 2, 'boss', 'Patron', 1150, '{}', '{}'),
(193, 'cardealer', 0, 'recruit', 'Interimaire', 2500, '{}', '{}'),
(194, 'cardealer', 1, 'novice', 'Employer', 2700, '{}', '{}'),
(195, 'cardealer', 2, 'experienced', 'Vendeur', 2900, '{}', '{}'),
(196, 'cardealer', 3, 'boss', 'Patron', 3100, '{}', '{}'),
(197, 'fermier', 0, 'interim', 'Intérimaire', 300, '{}', '{}'),
(198, 'mechanic', 0, 'recrue', 'Recrue', 12, '{\"shoes\":26,\"eyebrows_1\":0,\"blush_1\":0,\"decals_1\":0,\"watches_1\":-1,\"shoes_1\":50,\"eye_color\":0,\"shoes_2\":0,\"torso_1\":11,\"torso_2\":0,\"bags_2\":0,\"skin\":0,\"blush_3\":0,\"face\":0,\"decals_2\":0,\"helmet_2\":2,\"watches_2\":0,\"hair_1\":0,\"sex\":0,\"sun_2\":0,\"tshirt_2\":0,\"bracelets_1\":-1,\"ears_1\":-1,\"hair_color_2\":0,\"moles_2\":0,\"lipstick_2\":0,\"eyebrows_3\":0,\"makeup_1\":0,\"chain_2\":0,\"beard_3\":0,\"complexion_1\":0,\"age_1\":0,\"chest_2\":0,\"bracelets_2\":0,\"complexion_2\":0,\"moles_1\":0,\"lipstick_3\":0,\"makeup_2\":0,\"arms_2\":0,\"makeup_3\":0,\"chest_3\":0,\"arms\":93,\"ears_2\":0,\"beard_2\":0,\"bags_1\":0,\"bodyb_1\":0,\"glasses_2\":0,\"tshirt_1\":22,\"chain_1\":0,\"makeup_4\":0,\"lipstick_4\":0,\"bproof_2\":0,\"sun_1\":0,\"helmet_1\":58,\"bproof_1\":0,\"beard_1\":0,\"pants_2\":6,\"blush_2\":0,\"blemishes_1\":0,\"mask_1\":0,\"beard_4\":0,\"blemishes_2\":0,\"glasses\":0,\"mask_2\":0,\"hair_color_1\":0,\"pants_1\":59,\"chest_1\":0,\"age_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"glasses_1\":0,\"lipstick_1\":0,\"bodyb_2\":0,\"hair_2\":0}', '{\"shoes\":26,\"eyebrows_1\":0,\"blush_1\":0,\"decals_1\":0,\"watches_1\":-1,\"shoes_1\":51,\"eye_color\":0,\"shoes_2\":0,\"torso_1\":171,\"torso_2\":3,\"glasses\":0,\"skin\":0,\"blush_3\":0,\"face\":0,\"decals_2\":0,\"helmet_2\":6,\"watches_2\":0,\"hair_1\":0,\"sex\":1,\"sun_2\":0,\"tshirt_2\":0,\"bracelets_1\":-1,\"ears_1\":-1,\"hair_color_2\":0,\"moles_2\":0,\"lipstick_2\":0,\"eyebrows_3\":0,\"makeup_1\":0,\"chain_2\":0,\"beard_3\":0,\"complexion_1\":0,\"age_1\":0,\"chest_2\":0,\"bracelets_2\":0,\"complexion_2\":0,\"moles_1\":0,\"blush_2\":0,\"makeup_2\":0,\"glasses_1\":0,\"lipstick_3\":0,\"beard_2\":0,\"arms\":110,\"ears_2\":0,\"chain_1\":0,\"bags_1\":0,\"bodyb_1\":0,\"glasses_2\":0,\"tshirt_1\":6,\"lipstick_1\":0,\"makeup_4\":0,\"chest_3\":0,\"bproof_2\":0,\"sun_1\":0,\"helmet_1\":60,\"bproof_1\":0,\"beard_1\":0,\"pants_2\":8,\"arms_2\":0,\"beard_4\":0,\"mask_1\":0,\"eyebrows_2\":0,\"makeup_3\":0,\"bags_2\":0,\"mask_2\":0,\"hair_color_1\":0,\"blemishes_2\":0,\"lipstick_4\":0,\"age_2\":0,\"eyebrows_4\":0,\"chest_1\":0,\"blemishes_1\":0,\"bodyb_2\":0,\"pants_1\":84,\"hair_2\":0}'),
(199, 'mechanic', 1, 'novice', 'Novice', 24, '{\"shoes\":26,\"eyebrows_1\":0,\"blush_1\":0,\"decals_1\":0,\"watches_1\":-1,\"shoes_1\":50,\"eye_color\":0,\"shoes_2\":0,\"torso_1\":11,\"torso_2\":0,\"bags_2\":0,\"skin\":0,\"blush_3\":0,\"face\":0,\"decals_2\":0,\"helmet_2\":2,\"watches_2\":0,\"hair_1\":0,\"sex\":0,\"sun_2\":0,\"tshirt_2\":0,\"bracelets_1\":-1,\"ears_1\":-1,\"hair_color_2\":0,\"moles_2\":0,\"lipstick_2\":0,\"eyebrows_3\":0,\"makeup_1\":0,\"chain_2\":0,\"beard_3\":0,\"complexion_1\":0,\"age_1\":0,\"chest_2\":0,\"bracelets_2\":0,\"complexion_2\":0,\"moles_1\":0,\"lipstick_3\":0,\"makeup_2\":0,\"arms_2\":0,\"makeup_3\":0,\"chest_3\":0,\"arms\":93,\"ears_2\":0,\"beard_2\":0,\"bags_1\":0,\"bodyb_1\":0,\"glasses_2\":0,\"tshirt_1\":22,\"chain_1\":0,\"makeup_4\":0,\"lipstick_4\":0,\"bproof_2\":0,\"sun_1\":0,\"helmet_1\":58,\"bproof_1\":0,\"beard_1\":0,\"pants_2\":6,\"blush_2\":0,\"blemishes_1\":0,\"mask_1\":0,\"beard_4\":0,\"blemishes_2\":0,\"glasses\":0,\"mask_2\":0,\"hair_color_1\":0,\"pants_1\":59,\"chest_1\":0,\"age_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"glasses_1\":0,\"lipstick_1\":0,\"bodyb_2\":0,\"hair_2\":0}', '{\"shoes\":26,\"eyebrows_1\":0,\"blush_1\":0,\"decals_1\":0,\"watches_1\":-1,\"shoes_1\":51,\"eye_color\":0,\"shoes_2\":0,\"torso_1\":171,\"torso_2\":3,\"glasses\":0,\"skin\":0,\"blush_3\":0,\"face\":0,\"decals_2\":0,\"helmet_2\":6,\"watches_2\":0,\"hair_1\":0,\"sex\":1,\"sun_2\":0,\"tshirt_2\":0,\"bracelets_1\":-1,\"ears_1\":-1,\"hair_color_2\":0,\"moles_2\":0,\"lipstick_2\":0,\"eyebrows_3\":0,\"makeup_1\":0,\"chain_2\":0,\"beard_3\":0,\"complexion_1\":0,\"age_1\":0,\"chest_2\":0,\"bracelets_2\":0,\"complexion_2\":0,\"moles_1\":0,\"blush_2\":0,\"makeup_2\":0,\"glasses_1\":0,\"lipstick_3\":0,\"beard_2\":0,\"arms\":110,\"ears_2\":0,\"chain_1\":0,\"bags_1\":0,\"bodyb_1\":0,\"glasses_2\":0,\"tshirt_1\":6,\"lipstick_1\":0,\"makeup_4\":0,\"chest_3\":0,\"bproof_2\":0,\"sun_1\":0,\"helmet_1\":60,\"bproof_1\":0,\"beard_1\":0,\"pants_2\":8,\"arms_2\":0,\"beard_4\":0,\"mask_1\":0,\"eyebrows_2\":0,\"makeup_3\":0,\"bags_2\":0,\"mask_2\":0,\"hair_color_1\":0,\"blemishes_2\":0,\"lipstick_4\":0,\"age_2\":0,\"eyebrows_4\":0,\"chest_1\":0,\"blemishes_1\":0,\"bodyb_2\":0,\"pants_1\":84,\"hair_2\":0}'),
(200, 'mechanic', 2, 'experimente', 'Experimente', 36, '{\"shoes\":26,\"eyebrows_1\":0,\"blush_1\":0,\"decals_1\":0,\"watches_1\":-1,\"shoes_1\":50,\"eye_color\":0,\"shoes_2\":0,\"torso_1\":11,\"torso_2\":0,\"bags_2\":0,\"skin\":0,\"blush_3\":0,\"face\":0,\"decals_2\":0,\"helmet_2\":2,\"watches_2\":0,\"hair_1\":0,\"sex\":0,\"sun_2\":0,\"tshirt_2\":0,\"bracelets_1\":-1,\"ears_1\":-1,\"hair_color_2\":0,\"moles_2\":0,\"lipstick_2\":0,\"eyebrows_3\":0,\"makeup_1\":0,\"chain_2\":0,\"beard_3\":0,\"complexion_1\":0,\"age_1\":0,\"chest_2\":0,\"bracelets_2\":0,\"complexion_2\":0,\"moles_1\":0,\"lipstick_3\":0,\"makeup_2\":0,\"arms_2\":0,\"makeup_3\":0,\"chest_3\":0,\"arms\":93,\"ears_2\":0,\"beard_2\":0,\"bags_1\":0,\"bodyb_1\":0,\"glasses_2\":0,\"tshirt_1\":22,\"chain_1\":0,\"makeup_4\":0,\"lipstick_4\":0,\"bproof_2\":0,\"sun_1\":0,\"helmet_1\":58,\"bproof_1\":0,\"beard_1\":0,\"pants_2\":6,\"blush_2\":0,\"blemishes_1\":0,\"mask_1\":0,\"beard_4\":0,\"blemishes_2\":0,\"glasses\":0,\"mask_2\":0,\"hair_color_1\":0,\"pants_1\":59,\"chest_1\":0,\"age_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"glasses_1\":0,\"lipstick_1\":0,\"bodyb_2\":0,\"hair_2\":0}', '{\"shoes\":26,\"eyebrows_1\":0,\"blush_1\":0,\"decals_1\":0,\"watches_1\":-1,\"shoes_1\":51,\"eye_color\":0,\"shoes_2\":0,\"torso_1\":171,\"torso_2\":3,\"glasses\":0,\"skin\":0,\"blush_3\":0,\"face\":0,\"decals_2\":0,\"helmet_2\":6,\"watches_2\":0,\"hair_1\":0,\"sex\":1,\"sun_2\":0,\"tshirt_2\":0,\"bracelets_1\":-1,\"ears_1\":-1,\"hair_color_2\":0,\"moles_2\":0,\"lipstick_2\":0,\"eyebrows_3\":0,\"makeup_1\":0,\"chain_2\":0,\"beard_3\":0,\"complexion_1\":0,\"age_1\":0,\"chest_2\":0,\"bracelets_2\":0,\"complexion_2\":0,\"moles_1\":0,\"blush_2\":0,\"makeup_2\":0,\"glasses_1\":0,\"lipstick_3\":0,\"beard_2\":0,\"arms\":110,\"ears_2\":0,\"chain_1\":0,\"bags_1\":0,\"bodyb_1\":0,\"glasses_2\":0,\"tshirt_1\":6,\"lipstick_1\":0,\"makeup_4\":0,\"chest_3\":0,\"bproof_2\":0,\"sun_1\":0,\"helmet_1\":60,\"bproof_1\":0,\"beard_1\":0,\"pants_2\":8,\"arms_2\":0,\"beard_4\":0,\"mask_1\":0,\"eyebrows_2\":0,\"makeup_3\":0,\"bags_2\":0,\"mask_2\":0,\"hair_color_1\":0,\"blemishes_2\":0,\"lipstick_4\":0,\"age_2\":0,\"eyebrows_4\":0,\"chest_1\":0,\"blemishes_1\":0,\"bodyb_2\":0,\"pants_1\":84,\"hair_2\":0}'),
(201, 'mechanic', 3, 'chief', 'Chef d\'équipe', 48, '{\"shoes\":26,\"eyebrows_1\":0,\"blush_1\":0,\"decals_1\":0,\"watches_1\":-1,\"shoes_1\":50,\"eye_color\":0,\"shoes_2\":0,\"torso_1\":11,\"torso_2\":0,\"bags_2\":0,\"skin\":0,\"blush_3\":0,\"face\":0,\"decals_2\":0,\"helmet_2\":2,\"watches_2\":0,\"hair_1\":0,\"sex\":0,\"sun_2\":0,\"tshirt_2\":0,\"bracelets_1\":-1,\"ears_1\":-1,\"hair_color_2\":0,\"moles_2\":0,\"lipstick_2\":0,\"eyebrows_3\":0,\"makeup_1\":0,\"chain_2\":0,\"beard_3\":0,\"complexion_1\":0,\"age_1\":0,\"chest_2\":0,\"bracelets_2\":0,\"complexion_2\":0,\"moles_1\":0,\"lipstick_3\":0,\"makeup_2\":0,\"arms_2\":0,\"makeup_3\":0,\"chest_3\":0,\"arms\":93,\"ears_2\":0,\"beard_2\":0,\"bags_1\":0,\"bodyb_1\":0,\"glasses_2\":0,\"tshirt_1\":22,\"chain_1\":0,\"makeup_4\":0,\"lipstick_4\":0,\"bproof_2\":0,\"sun_1\":0,\"helmet_1\":58,\"bproof_1\":0,\"beard_1\":0,\"pants_2\":6,\"blush_2\":0,\"blemishes_1\":0,\"mask_1\":0,\"beard_4\":0,\"blemishes_2\":0,\"glasses\":0,\"mask_2\":0,\"hair_color_1\":0,\"pants_1\":59,\"chest_1\":0,\"age_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"glasses_1\":0,\"lipstick_1\":0,\"bodyb_2\":0,\"hair_2\":0}', '{\"shoes\":26,\"eyebrows_1\":0,\"blush_1\":0,\"decals_1\":0,\"watches_1\":-1,\"shoes_1\":51,\"eye_color\":0,\"shoes_2\":0,\"torso_1\":171,\"torso_2\":3,\"glasses\":0,\"skin\":0,\"blush_3\":0,\"face\":0,\"decals_2\":0,\"helmet_2\":6,\"watches_2\":0,\"hair_1\":0,\"sex\":1,\"sun_2\":0,\"tshirt_2\":0,\"bracelets_1\":-1,\"ears_1\":-1,\"hair_color_2\":0,\"moles_2\":0,\"lipstick_2\":0,\"eyebrows_3\":0,\"makeup_1\":0,\"chain_2\":0,\"beard_3\":0,\"complexion_1\":0,\"age_1\":0,\"chest_2\":0,\"bracelets_2\":0,\"complexion_2\":0,\"moles_1\":0,\"blush_2\":0,\"makeup_2\":0,\"glasses_1\":0,\"lipstick_3\":0,\"beard_2\":0,\"arms\":110,\"ears_2\":0,\"chain_1\":0,\"bags_1\":0,\"bodyb_1\":0,\"glasses_2\":0,\"tshirt_1\":6,\"lipstick_1\":0,\"makeup_4\":0,\"chest_3\":0,\"bproof_2\":0,\"sun_1\":0,\"helmet_1\":60,\"bproof_1\":0,\"beard_1\":0,\"pants_2\":8,\"arms_2\":0,\"beard_4\":0,\"mask_1\":0,\"eyebrows_2\":0,\"makeup_3\":0,\"bags_2\":0,\"mask_2\":0,\"hair_color_1\":0,\"blemishes_2\":0,\"lipstick_4\":0,\"age_2\":0,\"eyebrows_4\":0,\"chest_1\":0,\"blemishes_1\":0,\"bodyb_2\":0,\"pants_1\":84,\"hair_2\":0}'),
(202, 'mechanic', 4, 'boss', 'Patron', 0, '{\"shoes\":26,\"eyebrows_1\":0,\"blush_1\":0,\"decals_1\":0,\"watches_1\":-1,\"shoes_1\":50,\"eye_color\":0,\"shoes_2\":0,\"torso_1\":11,\"torso_2\":0,\"bags_2\":0,\"skin\":0,\"blush_3\":0,\"face\":0,\"decals_2\":0,\"helmet_2\":2,\"watches_2\":0,\"hair_1\":0,\"sex\":0,\"sun_2\":0,\"tshirt_2\":0,\"bracelets_1\":-1,\"ears_1\":-1,\"hair_color_2\":0,\"moles_2\":0,\"lipstick_2\":0,\"eyebrows_3\":0,\"makeup_1\":0,\"chain_2\":0,\"beard_3\":0,\"complexion_1\":0,\"age_1\":0,\"chest_2\":0,\"bracelets_2\":0,\"complexion_2\":0,\"moles_1\":0,\"lipstick_3\":0,\"makeup_2\":0,\"arms_2\":0,\"makeup_3\":0,\"chest_3\":0,\"arms\":93,\"ears_2\":0,\"beard_2\":0,\"bags_1\":0,\"bodyb_1\":0,\"glasses_2\":0,\"tshirt_1\":22,\"chain_1\":0,\"makeup_4\":0,\"lipstick_4\":0,\"bproof_2\":0,\"sun_1\":0,\"helmet_1\":58,\"bproof_1\":0,\"beard_1\":0,\"pants_2\":6,\"blush_2\":0,\"blemishes_1\":0,\"mask_1\":0,\"beard_4\":0,\"blemishes_2\":0,\"glasses\":0,\"mask_2\":0,\"hair_color_1\":0,\"pants_1\":59,\"chest_1\":0,\"age_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"glasses_1\":0,\"lipstick_1\":0,\"bodyb_2\":0,\"hair_2\":0}', '{\"shoes\":26,\"eyebrows_1\":0,\"blush_1\":0,\"decals_1\":0,\"watches_1\":-1,\"shoes_1\":51,\"eye_color\":0,\"shoes_2\":0,\"torso_1\":171,\"torso_2\":3,\"glasses\":0,\"skin\":0,\"blush_3\":0,\"face\":0,\"decals_2\":0,\"helmet_2\":6,\"watches_2\":0,\"hair_1\":0,\"sex\":1,\"sun_2\":0,\"tshirt_2\":0,\"bracelets_1\":-1,\"ears_1\":-1,\"hair_color_2\":0,\"moles_2\":0,\"lipstick_2\":0,\"eyebrows_3\":0,\"makeup_1\":0,\"chain_2\":0,\"beard_3\":0,\"complexion_1\":0,\"age_1\":0,\"chest_2\":0,\"bracelets_2\":0,\"complexion_2\":0,\"moles_1\":0,\"blush_2\":0,\"makeup_2\":0,\"glasses_1\":0,\"lipstick_3\":0,\"beard_2\":0,\"arms\":110,\"ears_2\":0,\"chain_1\":0,\"bags_1\":0,\"bodyb_1\":0,\"glasses_2\":0,\"tshirt_1\":6,\"lipstick_1\":0,\"makeup_4\":0,\"chest_3\":0,\"bproof_2\":0,\"sun_1\":0,\"helmet_1\":60,\"bproof_1\":0,\"beard_1\":0,\"pants_2\":8,\"arms_2\":0,\"beard_4\":0,\"mask_1\":0,\"eyebrows_2\":0,\"makeup_3\":0,\"bags_2\":0,\"mask_2\":0,\"hair_color_1\":0,\"blemishes_2\":0,\"lipstick_4\":0,\"age_2\":0,\"eyebrows_4\":0,\"chest_1\":0,\"blemishes_1\":0,\"bodyb_2\":0,\"pants_1\":84,\"hair_2\":0}');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

DROP TABLE IF EXISTS `licenses`;
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_truck', 'Permis camion'),
('weapon', 'Permis de port d\'arme');

-- --------------------------------------------------------

--
-- Structure de la table `open_car`
--

DROP TABLE IF EXISTS `open_car`;
CREATE TABLE IF NOT EXISTS `open_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `got` varchar(50) DEFAULT NULL,
  `NB` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `owned_properties`
--

DROP TABLE IF EXISTS `owned_properties`;
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

DROP TABLE IF EXISTS `owned_vehicles`;
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`plate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `phone_app_chat`
--

DROP TABLE IF EXISTS `phone_app_chat`;
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_calls`
--

DROP TABLE IF EXISTS `phone_calls`;
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone_calls`
--

INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
(122, 'Insert Sim', 'ambulance', 1, '2020-07-03 18:45:26', 0),
(123, 'Insert Sim', 'police', 1, '2020-07-03 18:45:29', 0),
(124, 'Insert Sim', 'zerf', 1, '2020-07-03 18:52:08', 0),
(125, 'Insert Sim', 'police', 1, '2020-07-04 13:52:30', 0),
(126, 'Insert Sim', 'ambulance', 1, '2020-07-04 14:57:13', 0),
(127, 'Insert Sim', 'police', 1, '2020-07-04 14:57:18', 0);

-- --------------------------------------------------------

--
-- Structure de la table `phone_messages`
--

DROP TABLE IF EXISTS `phone_messages`;
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone_messages`
--

INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(106, 'taxi', 'Insert Sim', 'De #Insert Sim : salut -119.92964172363, -1765.3522949219', '2020-07-04 14:58:19', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `phone_users_contacts`
--

DROP TABLE IF EXISTS `phone_users_contacts`;
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `playerstattoos`
--

DROP TABLE IF EXISTS `playerstattoos`;
CREATE TABLE IF NOT EXISTS `playerstattoos` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tattoos` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `properties`
--

DROP TABLE IF EXISTS `properties`;
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000),
(43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(53, 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', NULL, NULL, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(63, 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', NULL, NULL, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);

-- --------------------------------------------------------

--
-- Structure de la table `racket_organisation`
--

DROP TABLE IF EXISTS `racket_organisation`;
CREATE TABLE IF NOT EXISTS `racket_organisation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `racket_organisation`
--

INSERT INTO `racket_organisation` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles`
--

DROP TABLE IF EXISTS `rented_vehicles`;
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `shopmarket`
--

DROP TABLE IF EXISTS `shopmarket`;
CREATE TABLE IF NOT EXISTS `shopmarket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `shopmarket`
--

INSERT INTO `shopmarket` (`id`, `store`, `item`, `price`) VALUES
(1, 'Market', 'cola', 7),
(2, 'Market', 'vegetables', 5),
(3, 'Market', 'meat', 15),
(4, 'Market', 'redbull', 8),
(5, 'Market', 'tequila', 13),
(6, 'Market', 'jusfruit', 6),
(7, 'Market', 'poulet', 16),
(8, 'Market', 'saucisson', 9),
(9, 'Market', 'bread', 4),
(10, 'Market', 'Coffee', 2),
(11, 'Market', 'pommeterre', 3),
(12, 'Market', 'huile', 11),
(13, 'Market', 'sel', 1),
(14, 'Market', 'water', 2),
(15, 'Market', 'pen', 2),
(16, 'Market', 'paper', 3);

-- --------------------------------------------------------

--
-- Structure de la table `shops`
--

DROP TABLE IF EXISTS `shops`;
CREATE TABLE IF NOT EXISTS `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 5),
(2, 'TwentyFourSeven', 'water', 3),
(3, 'RobsLiquor', 'bread', 5),
(4, 'RobsLiquor', 'water', 3),
(5, 'LTDgasoline', 'bread', 5),
(6, 'LTDgasoline', 'water', 3),
(7, 'TwentyFourSeven', 'sim', 45),
(8, 'RobsLiquor', 'sim', 45),
(9, 'LTDgasoline', 'sim', 45),
(10, 'TwentyFourSeven', 'gps', 75),
(11, 'RobsLiquor', 'gps', 75),
(12, 'LTDgasoline', 'gps', 75),
(13, 'TwentyFourSeven', 'phone', 1000),
(14, 'RobsLiquor', 'phone', 1000),
(15, 'LTDgasoline', 'phone', 1000),
(16, 'LTDgasoline', 'croquettes', 50),
(17, 'TwentyFourSeven', 'cigarette', 15),
(19, 'RobsLiquor', 'cigarette', 15),
(21, 'LTDgasoline', 'cigarette', 15),
(23, 'TwentyFourSeven', 'lockpick', 2500),
(24, 'LTDgasoline', 'lockpick', 2500),
(25, 'RobsLiquor', 'lockpick', 2500),
(26, 'TwentyFourSeven', 'croquettes', 50),
(27, 'RobsLiquor', 'croquettes', 50);

-- --------------------------------------------------------

--
-- Structure de la table `shops2`
--

DROP TABLE IF EXISTS `shops2`;
CREATE TABLE IF NOT EXISTS `shops2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `shops2`
--

INSERT INTO `shops2` (`id`, `store`, `item`, `price`) VALUES
(1, 'narekshop', 'yusuf', 75),
(2, 'narekshop', 'grip', 50),
(3, 'narekshop', 'flashlight', 150),
(4, 'narekshop', 'silencieux', 500),
(5, 'narekshop', 'clip', 100),
(6, 'narekshop', 'lockpick', 2500),
(7, 'narekshop', 'cagoule', 350);

-- --------------------------------------------------------

--
-- Structure de la table `shops3`
--

DROP TABLE IF EXISTS `shops3`;
CREATE TABLE IF NOT EXISTS `shops3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `shops3`
--

INSERT INTO `shops3` (`id`, `store`, `item`, `price`) VALUES
(1, 'narekshop', 'clip', 80),
(2, 'narekshop', 'clip', 80);

-- --------------------------------------------------------

--
-- Structure de la table `shops_illegal`
--

DROP TABLE IF EXISTS `shops_illegal`;
CREATE TABLE IF NOT EXISTS `shops_illegal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `shops_illegal`
--

INSERT INTO `shops_illegal` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'handcuff', 500),
(2, 'TwentyFourSeven', 'cutting_pliers', 250),
(3, 'TwentyFourSeven', 'cagoule', 350);

-- --------------------------------------------------------

--
-- Structure de la table `sim_card`
--

DROP TABLE IF EXISTS `sim_card`;
CREATE TABLE IF NOT EXISTS `sim_card` (
  `owner` varchar(255) CHARACTER SET utf8 NOT NULL,
  `phone_number` varchar(10) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sim_card`
--

INSERT INTO `sim_card` (`owner`, `phone_number`) VALUES
('steam:110000134eb9286', '140-8279');

-- --------------------------------------------------------

--
-- Structure de la table `truck_inventory`
--

DROP TABLE IF EXISTS `truck_inventory`;
CREATE TABLE IF NOT EXISTS `truck_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owned` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`item`,`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_accounts`
--

DROP TABLE IF EXISTS `twitter_accounts`;
CREATE TABLE IF NOT EXISTS `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_likes`
--

DROP TABLE IF EXISTS `twitter_likes`;
CREATE TABLE IF NOT EXISTS `twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  KEY `FK_twitter_likes_twitter_tweets` (`tweetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_tweets`
--

DROP TABLE IF EXISTS `twitter_tweets`;
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job3` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed3',
  `job3_grade` int(11) DEFAULT 0,
  `job2` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed2',
  `job2_grade` int(11) DEFAULT 0,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT 'Insert Sim',
  `lastpos` varchar(255) COLLATE utf8mb4_bin DEFAULT '{-1038.42, -2739.54,  20.16}',
  `animal` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job3`, `job3_grade`, `job2`, `job2_grade`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `phone_number`, `lastpos`, `animal`, `is_dead`, `last_property`) VALUES
('steam:110000134eb9286', 'license:8f3747a54e19f621aebb391449a773aa4d9a197c', 98880, 'Neil O\'Bryan', '{\"chest_3\":0,\"pants_1\":0,\"eye_color\":0,\"tshirt_1\":0,\"bracelets_1\":-1,\"chest_1\":0,\"lipstick_1\":0,\"eyebrows_3\":0,\"bracelets_2\":0,\"torso_2\":0,\"makeup_4\":0,\"bodyb_2\":0,\"arms_2\":0,\"mask_1\":0,\"blush_3\":0,\"moles_2\":0,\"beard_1\":0,\"bproof_1\":0,\"tshirt_2\":0,\"eyebrows_4\":0,\"sun_2\":0,\"watches_2\":0,\"mask_2\":0,\"blemishes_1\":0,\"chain_1\":0,\"glasses_1\":0,\"moles_1\":0,\"hair_2\":0,\"blush_1\":0,\"hair_1\":0,\"makeup_1\":0,\"ears_2\":0,\"beard_3\":0,\"complexion_2\":0,\"beard_4\":0,\"lipstick_2\":0,\"eyebrows_2\":0,\"hair_color_1\":0,\"shoes_2\":0,\"shoes_1\":0,\"hair_color_2\":0,\"sex\":0,\"blemishes_2\":0,\"chest_2\":0,\"arms\":0,\"decals_2\":0,\"bproof_2\":0,\"helmet_1\":-1,\"beard_2\":0,\"torso_1\":0,\"pants_2\":0,\"age_1\":0,\"glasses_2\":0,\"sun_1\":0,\"ears_1\":-1,\"lipstick_3\":0,\"watches_1\":-1,\"complexion_1\":0,\"makeup_3\":0,\"face\":0,\"bodyb_1\":0,\"bags_2\":0,\"decals_1\":0,\"eyebrows_1\":0,\"makeup_2\":0,\"lipstick_4\":0,\"bags_1\":0,\"age_2\":0,\"chain_2\":0,\"skin\":0,\"helmet_2\":0,\"blush_2\":0}', 'unemployed3', 0, 'unemployed2', 0, 'taxi', 2, '[]', '{\"x\":-31.9,\"y\":-1812.9,\"z\":26.2}', 0, 4, 'superadmin', 'Adonis', 'Creed', '15/02/2003', 'm', '185', '[{\"name\":\"hunger\",\"percent\":89.08,\"val\":890800},{\"name\":\"thirst\",\"percent\":91.81,\"val\":918100},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', 'Insert Sim', '{387.54721069336, -585.97198486328,  22.370676040649, 240.18849182129}', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_accounts`
--

DROP TABLE IF EXISTS `user_accounts`;
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(11, 'steam:110000134eb9286', 'black_money', 465000);

-- --------------------------------------------------------

--
-- Structure de la table `user_inventory`
--

DROP TABLE IF EXISTS `user_inventory`;
CREATE TABLE IF NOT EXISTS `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=656 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Déchargement des données de la table `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(501, 'steam:110000134eb9286', 'cigarette', 0),
(502, 'steam:110000134eb9286', 'lockpick', 0),
(503, 'steam:110000134eb9286', 'carokit', 0),
(504, 'steam:110000134eb9286', 'medikit', 0),
(505, 'steam:110000134eb9286', 'tabacblond', 0),
(506, 'steam:110000134eb9286', 'bolcacahuetes', 0),
(507, 'steam:110000134eb9286', 'ecstasy_pooch', 0),
(508, 'steam:110000134eb9286', 'billet_pooch', 0),
(509, 'steam:110000134eb9286', 'fixtool', 0),
(510, 'steam:110000134eb9286', 'jagerbomb', 0),
(511, 'steam:110000134eb9286', 'acetone', 0),
(512, 'steam:110000134eb9286', 'bolchips', 0),
(513, 'steam:110000134eb9286', 'menthe', 0),
(514, 'steam:110000134eb9286', 'clothe', 0),
(515, 'steam:110000134eb9286', 'clip', 0),
(516, 'steam:110000134eb9286', 'golem', 0),
(517, 'steam:110000134eb9286', 'yusuf', 0),
(518, 'steam:110000134eb9286', 'fixkit', 0),
(519, 'steam:110000134eb9286', 'farine', 0),
(520, 'steam:110000134eb9286', 'diamond', 0),
(521, 'steam:110000134eb9286', 'gold', 0),
(522, 'steam:110000134eb9286', 'meth', 0),
(523, 'steam:110000134eb9286', 'opona', 0),
(524, 'steam:110000134eb9286', 'wood', 0),
(525, 'steam:110000134eb9286', 'wool', 0),
(526, 'steam:110000134eb9286', 'whisky', 0),
(527, 'steam:110000134eb9286', 'opium', 0),
(528, 'steam:110000134eb9286', 'ble', 0),
(529, 'steam:110000134eb9286', 'tabacbrunsec', 0),
(530, 'steam:110000134eb9286', 'crack', 0),
(531, 'steam:110000134eb9286', 'alive_chicken', 0),
(532, 'steam:110000134eb9286', 'gazbottle', 0),
(533, 'steam:110000134eb9286', 'vodkafruit', 0),
(534, 'steam:110000134eb9286', 'saucisson', 0),
(535, 'steam:110000134eb9286', 'steak', 0),
(536, 'steam:110000134eb9286', 'vodkaenergy', 0),
(537, 'steam:110000134eb9286', 'vodka', 0),
(538, 'steam:110000134eb9286', 'vine', 0),
(539, 'steam:110000134eb9286', 'crack_pooch', 0),
(540, 'steam:110000134eb9286', 'tequila', 0),
(541, 'steam:110000134eb9286', 'fabric', 0),
(542, 'steam:110000134eb9286', 'croquettes', 0),
(543, 'steam:110000134eb9286', 'billet', 0),
(544, 'steam:110000134eb9286', 'icetea', 0),
(545, 'steam:110000134eb9286', 'rhumfruit', 0),
(546, 'steam:110000134eb9286', 'packaged_plank', 0),
(547, 'steam:110000134eb9286', 'bandage', 0),
(548, 'steam:110000134eb9286', 'coke', 0),
(549, 'steam:110000134eb9286', 'copper', 0),
(550, 'steam:110000134eb9286', 'morf_pooch', 0),
(551, 'steam:110000134eb9286', 'tabacbrun', 0),
(552, 'steam:110000134eb9286', 'liccardealer', 0),
(553, 'steam:110000134eb9286', 'fish', 0),
(554, 'steam:110000134eb9286', 'mixapero', 0),
(555, 'steam:110000134eb9286', 'gitanes', 0),
(556, 'steam:110000134eb9286', 'essence', 0),
(557, 'steam:110000134eb9286', 'cutted_wood', 0),
(558, 'steam:110000134eb9286', 'iron', 0),
(559, 'steam:110000134eb9286', 'soda', 0),
(560, 'steam:110000134eb9286', 'carotool', 0),
(561, 'steam:110000134eb9286', 'water', 0),
(562, 'steam:110000134eb9286', 'meth_pooch', 0),
(563, 'steam:110000134eb9286', 'silencieux', 0),
(564, 'steam:110000134eb9286', 'rhumcoca', 0),
(565, 'steam:110000134eb9286', 'petrol', 0),
(566, 'steam:110000134eb9286', 'teqpaf', 0),
(567, 'steam:110000134eb9286', 'jusfruit', 0),
(568, 'steam:110000134eb9286', 'rhum', 0),
(569, 'steam:110000134eb9286', 'lsd_pooch', 0),
(570, 'steam:110000134eb9286', 'morf', 0),
(571, 'steam:110000134eb9286', 'raisin', 0),
(572, 'steam:110000134eb9286', 'grapperaisin', 0),
(573, 'steam:110000134eb9286', 'blowpipe', 0),
(574, 'steam:110000134eb9286', 'lsd', 0),
(575, 'steam:110000134eb9286', 'drpepper', 0),
(576, 'steam:110000134eb9286', 'martini', 0),
(577, 'steam:110000134eb9286', 'flashlight', 0),
(578, 'steam:110000134eb9286', 'packaged_chicken', 0),
(579, 'steam:110000134eb9286', 'jager', 0),
(580, 'steam:110000134eb9286', 'opium_pooch', 0),
(581, 'steam:110000134eb9286', 'petrol_raffin', 0),
(582, 'steam:110000134eb9286', 'mojito', 0),
(583, 'steam:110000134eb9286', 'jus_raisin', 0),
(584, 'steam:110000134eb9286', 'whiskycoca', 0),
(585, 'steam:110000134eb9286', 'lictaxi', 0),
(586, 'steam:110000134eb9286', 'washed_stone', 0),
(587, 'steam:110000134eb9286', 'jus_raisin', 0),
(588, 'steam:110000134eb9286', 'washed_stone', 0),
(589, 'steam:110000134eb9286', 'whiskycoca', 0),
(590, 'steam:110000134eb9286', 'lictaxi', 0),
(591, 'steam:110000134eb9286', 'mojito', 0),
(592, 'steam:110000134eb9286', 'piluleoubli', 0),
(593, 'steam:110000134eb9286', 'metreshooter', 0),
(594, 'steam:110000134eb9286', 'stone', 0),
(595, 'steam:110000134eb9286', 'bread', 0),
(596, 'steam:110000134eb9286', 'licambulance', 0),
(597, 'steam:110000134eb9286', 'stone', 0),
(598, 'steam:110000134eb9286', 'licambulance', 0),
(599, 'steam:110000134eb9286', 'metreshooter', 0),
(600, 'steam:110000134eb9286', 'bread', 0),
(601, 'steam:110000134eb9286', 'piluleoubli', 0),
(602, 'steam:110000134eb9286', 'ecstasy', 0),
(603, 'steam:110000134eb9286', 'methlab', 0),
(604, 'steam:110000134eb9286', 'malbora', 0),
(605, 'steam:110000134eb9286', 'limonade', 0),
(606, 'steam:110000134eb9286', 'phone', 1),
(607, 'steam:110000134eb9286', 'ecstasy', 0),
(608, 'steam:110000134eb9286', 'limonade', 0),
(609, 'steam:110000134eb9286', 'methlab', 0),
(610, 'steam:110000134eb9286', 'malbora', 0),
(611, 'steam:110000134eb9286', 'phone', 1),
(612, 'steam:110000134eb9286', 'bolpistache', 0),
(613, 'steam:110000134eb9286', 'grand_cru', 0),
(614, 'steam:110000134eb9286', 'lithium', 0),
(615, 'steam:110000134eb9286', 'sim', 0),
(616, 'steam:110000134eb9286', 'sim', 0),
(617, 'steam:110000134eb9286', 'tabacblondsec', 0),
(618, 'steam:110000134eb9286', 'grand_cru', 0),
(619, 'steam:110000134eb9286', 'lithium', 0),
(620, 'steam:110000134eb9286', 'tabacblondsec', 0),
(621, 'steam:110000134eb9286', 'bolpistache', 0),
(622, 'steam:110000134eb9286', 'cutting_pliers', 0),
(623, 'steam:110000134eb9286', 'bolnoixcajou', 0),
(624, 'steam:110000134eb9286', 'burger', 0),
(625, 'steam:110000134eb9286', 'burger', 0),
(626, 'steam:110000134eb9286', 'cutting_pliers', 0),
(627, 'steam:110000134eb9286', 'ketamine_pooch', 0),
(628, 'steam:110000134eb9286', 'ice', 0),
(629, 'steam:110000134eb9286', 'bolnoixcajou', 0),
(630, 'steam:110000134eb9286', 'ketamine_pooch', 0),
(631, 'steam:110000134eb9286', 'ice', 0),
(632, 'steam:110000134eb9286', 'grip', 0),
(633, 'steam:110000134eb9286', 'ketamine', 0),
(634, 'steam:110000134eb9286', 'banana', 0),
(635, 'steam:110000134eb9286', 'cheese', 0),
(636, 'steam:110000134eb9286', 'weed_pooch', 0),
(637, 'steam:110000134eb9286', 'banana', 0),
(638, 'steam:110000134eb9286', 'ketamine', 0),
(639, 'steam:110000134eb9286', 'cheese', 0),
(640, 'steam:110000134eb9286', 'grip', 0),
(641, 'steam:110000134eb9286', 'weed_pooch', 0),
(642, 'steam:110000134eb9286', 'slaughtered_chicken', 0),
(643, 'steam:110000134eb9286', 'jagercerbere', 0),
(644, 'steam:110000134eb9286', 'weed', 0),
(645, 'steam:110000134eb9286', 'handcuff', 0),
(646, 'steam:110000134eb9286', 'gps', 0),
(647, 'steam:110000134eb9286', 'weed', 0),
(648, 'steam:110000134eb9286', 'gps', 0),
(649, 'steam:110000134eb9286', 'handcuff', 0),
(650, 'steam:110000134eb9286', 'jagercerbere', 0),
(651, 'steam:110000134eb9286', 'slaughtered_chicken', 0),
(652, 'steam:110000134eb9286', 'coke_pooch', 0),
(653, 'steam:110000134eb9286', 'energy', 0),
(654, 'steam:110000134eb9286', 'coke_pooch', 0),
(655, 'steam:110000134eb9286', 'energy', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

DROP TABLE IF EXISTS `user_licenses`;
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Blade', 'blade', 15000, 'muscle'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Dominator', 'dominator', 35000, 'muscle'),
('Dukes', 'dukes', 28000, 'muscle'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Tampa', 'tampa', 16000, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Vigero', 'vigero', 12500, 'muscle'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Blista', 'blista', 8000, 'compacts'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Issi', 'issi2', 10000, 'compacts'),
('Panto', 'panto', 10000, 'compacts'),
('Prairie', 'prairie', 12000, 'compacts'),
('Bison', 'bison', 45000, 'vans'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Burrito', 'burrito3', 19000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Journey', 'journey', 6500, 'vans'),
('Minivan', 'minivan', 13000, 'vans'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Paradise', 'paradise', 19000, 'vans'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Surfer', 'surfer', 12000, 'vans'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Asea', 'asea', 5500, 'sedans'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Emperor', 'emperor', 8500, 'sedans'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Intruder', 'intruder', 7500, 'sedans'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('Regina', 'regina', 5000, 'sedans'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Stretch', 'stretch', 90000, 'sedans'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Contender', 'contender', 70000, 'suvs'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Patriot', 'patriot', 55000, 'suvs'),
('Radius', 'radi', 29000, 'suvs'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Seminole', 'seminole', 25000, 'suvs'),
('XLS', 'xls', 32000, 'suvs'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Z-Type', 'ztype', 220000, 'sportsclassics'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('Brawler', 'brawler', 45000, 'offroad'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Guardian', 'guardian', 45000, 'offroad'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Sandking', 'sandking', 55000, 'offroad'),
('The Liberator', 'monster', 210000, 'offroad'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Jackal', 'jackal', 38000, 'coupes'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Alpha', 'alpha', 60000, 'sports'),
('Banshee', 'banshee', 70000, 'sports'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Comet', 'comet2', 65000, 'sports'),
('Coquette', 'coquette', 65000, 'sports'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Elegy', 'elegy2', 38500, 'sports'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Surano', 'surano', 50000, 'sports'),
('Tropos', 'tropos', 40000, 'sports'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Adder', 'adder', 900000, 'super'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bullet', 'bullet', 90000, 'super'),
('Cheetah', 'cheetah', 375000, 'super'),
('Entity XF', 'entityxf', 425000, 'super'),
('ETR1', 'sheava', 220000, 'super'),
('FMJ', 'fmj', 185000, 'super'),
('Infernus', 'infernus', 180000, 'super'),
('Osiris', 'osiris', 160000, 'super'),
('Pfister', 'pfister811', 85000, 'super'),
('RE-7B', 'le7b', 325000, 'super'),
('Reaper', 'reaper', 150000, 'super'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('T20', 't20', 300000, 'super'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('BF400', 'bf400', 6500, 'motorcycles'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Double T', 'double', 28000, 'motorcycles'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Vader', 'vader', 7200, 'motorcycles'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Visione', 'visione', 2250000, 'super'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('raiden', 'raiden', 1375000, 'sports'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Pariah', 'pariah', 1420000, 'sports'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('SC 1', 'sc1', 1603000, 'super'),
('riata', 'riata', 380000, 'offroad'),
('Hermes', 'hermes', 535000, 'muscle'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Autarch', 'autarch', 1955000, 'super'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Neon', 'neon', 1500000, 'sports'),
('Revolter', 'revolter', 1610000, 'sports'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Hustler', 'hustler', 625000, 'muscle');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

DROP TABLE IF EXISTS `vehicle_categories`;
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('suvs', 'SUVs'),
('vans', 'Vans'),
('motorcycles', 'Motos');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_sold`
--

DROP TABLE IF EXISTS `vehicle_sold`;
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `weashops`
--

DROP TABLE IF EXISTS `weashops`;
CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `weashops`
--

INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 15000),
(3, 'GunShop', 'WEAPON_FLASHLIGHT', 1500),
(6, 'BlackWeashop', 'WEAPON_MACHETE', 2000),
(7, 'GunShop', 'WEAPON_NIGHTSTICK', 750),
(9, 'GunShop', 'WEAPON_BAT', 500),
(11, 'GunShop', 'WEAPON_STUNGUN', 250),
(14, 'BlackWeashop', 'WEAPON_MICROSMG', 35000),
(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 25000),
(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 45000),
(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 85000),
(22, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 55000),
(24, 'BlackWeashop', 'WEAPON_FIREWORK', 20000),
(26, 'BlackWeashop', 'WEAPON_GRENADE', 5000),
(28, 'BlackWeashop', 'WEAPON_BZGAS', 2500),
(29, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 350),
(31, 'GunShop', 'WEAPON_BALL', 50),
(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 1500),
(35, 'BlackWeashop', 'WEAPON_APPISTOL', 10000),
(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 50000),
(37, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 90000),
(39, 'BlackWeashop', 'WEAPON_RAILGUN', 60000),
(40, 'BlackWeashop', 'WEAPON_STICKYBOMB', 20000);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
