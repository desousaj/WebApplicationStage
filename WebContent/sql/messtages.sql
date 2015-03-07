-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 07 Mars 2015 à 16:00
-- Version du serveur :  5.6.21
-- Version de PHP :  5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `messtages`
--

-- --------------------------------------------------------

--
-- Structure de la table `stages`
--

CREATE TABLE IF NOT EXISTS `stages` (
`id` int(11) NOT NULL,
  `libelle` varchar(90) NOT NULL,
  `datedebut` date NOT NULL,
  `datefin` date NOT NULL,
  `nbplaces` int(11) NOT NULL,
  `nbinscrits` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12001 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `stages`
--

INSERT INTO `stages` (`id`, `libelle`, `datedebut`, `datefin`, `nbplaces`, `nbinscrits`) VALUES
(1, 'Stage Véolia', '2012-01-26', '2012-02-26', 2, 1),
(2, 'Stage Air France', '2012-01-01', '2012-02-02', 15, 3),
(3, 'Stage chez Vinci', '2012-02-28', '2012-04-18', 3, 2),
(4, 'Programmation à Sopra Group', '2012-05-05', '2012-06-09', 6, 4),
(5, 'Stage ouvrier Dassault Aviation', '2012-09-09', '2012-12-11', 1, 1),
(42, 'Ecole 42', '0008-07-07', '0010-07-08', 2, 6),
(143, 'jhgirejgierhio', '0009-04-06', '0010-01-05', 12, 2),
(12000, 'Champion du monde', '0006-08-06', '0006-08-07', 4, 3);

-- --------------------------------------------------------

--
-- Structure de la table `stagiaires`
--

CREATE TABLE IF NOT EXISTS `stagiaires` (
`num` int(11) NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `datenaissance` date DEFAULT NULL,
  `adresse` varchar(150) DEFAULT NULL,
  `cpostal` varchar(20) DEFAULT NULL,
  `ville` varchar(150) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `stagiaires`
--

INSERT INTO `stagiaires` (`num`, `nom`, `prenom`, `datenaissance`, `adresse`, `cpostal`, `ville`) VALUES
(1, 'VERSET', 'Stephane', '1986-04-13', '768, route de Chazal', '74370', 'VILLAZ'),
(2, 'DEPRES', ' Adrien', '1990-12-11', ' 23, rue Notre-Dame', ' 69006', ' LYON'),
(3, 'PATRICE', ' Keenan', '1990-03-23', '1, rue Jean-R Lacoste', ' 69780', ' MIONS'),
(4, 'VIAL', 'CHRISTIAN', '0006-07-18', '6 Rue de luniversité', '69100', 'Villeurbanne'),
(5, 'Jourdin', ' CHRISTIAN', '1978-05-12', ' 2 Rue de l''université', ' 69100', ' Villeurbanne'),
(6, 'Dumez', ' CHRISTIAN', '1978-05-12', ' 43 Cours Emile Zola', ' 69100', ' Villeurbanne'),
(7, 'Fayolle', 'Alain', '2014-04-08', '5 Cours Emile Zola', '69100', 'Villeurbanne'),
(8, 'Brun', 'Bernard', '2014-04-13', '5 place du peuple', '42000', 'Saint Etienne'),
(9, 'SEGUIN', 'Lionel', '1990-07-21', '74, rue Bellecombe', '74370', 'VILLAZ');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `stages`
--
ALTER TABLE `stages`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stagiaires`
--
ALTER TABLE `stagiaires`
 ADD PRIMARY KEY (`num`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `stages`
--
ALTER TABLE `stages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12001;
--
-- AUTO_INCREMENT pour la table `stagiaires`
--
ALTER TABLE `stagiaires`
MODIFY `num` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
