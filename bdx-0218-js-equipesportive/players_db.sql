-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 13 Avril 2018 à 02:00
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Rapaces_de_gap`
--

-- --------------------------------------------------------

--
-- Structure de la table `joueurs`
--

CREATE TABLE `joueurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `poste` varchar(50) NOT NULL,
  `shoot` varchar(50) NOT NULL,
  `naissance` date DEFAULT NULL,
  `age` int(3) NOT NULL,
  `nationnalité` varchar(50) NOT NULL,
  `poids` varchar(50) NOT NULL,
  `taille` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `media` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `joueurs`
--

INSERT INTO `joueurs` (`id`, `nom`, `prenom`, `poste`, `shoot`, `naissance`, `age`, `nationnalité`, `poids`, `taille`, `photo`, `media`) VALUES
(1, 'Lerg', 'Jeff', 'Gardien', 'Gaucher', '1986-04-09', 32, 'images/flags/usa.png', '74 KG', '168 CM', 'images/joueurs/jeff_lerg.png', 'images/medias/01-lerg.mp4'),
(2, 'Ritz', 'Maxime', 'Défenseur', 'Droitier', '1998-03-03', 20, 'images/flags/france.png', '73 KG', '172 CM', 'images/joueurs/maxime_ritz.png', 'images/medias/25-ritz.mp4'),
(3, 'Crinon', 'Pierre', 'Défenseur', 'Gaucher', '1995-08-02', 23, 'images/flags/france.png', '100 KG', '195 CM', 'images/joueurs/pierre_crinon.png', 'images/medias/07-crinon.mp4'),
(4, 'Di Dio Balsamo', 'Cédric ', 'Attaquant', 'Gaucher', '1994-03-27', 24, 'images/flags/france.png', '75 KG', '179 CM', 'images/joueurs/cedric_didiobalsamo.png', 'images/medias/27-di-dio-balsamo.mp4'),
(5, 'McDonald', 'Chad', 'Attaquant', 'Droitier', '1993-02-25', 25, 'images/flags/usa.png', '78 KG', '178 CM', 'images/joueurs/chad_mcdonald.png', 'images/medias/09-macdonald.mp4'),
(6, 'Rama', 'Joris', 'Attaquant', 'Gaucher', '1999-02-17', 19, 'images/flags/usa.png', '70 KG', '179 CM', 'images/joueurs/joris_rama.png', 'images/medias/24-rama.mp4'),
(7, 'Gautero', 'Théo', 'Gardien', 'Gaucher', '1998-03-04', 20, 'images/flags/france.png', '74 KG', '174 CM', 'images/joueurs/theo_gautero.png', 'images/medias/30-gauthero.mp4'),
(8, 'Bertrand', 'Aurélien', 'Gardien', 'Gaucher', '1987-02-07', 31, 'images/flags/france.png', '90 KG', '187 CM', 'images/joueurs/aurelien_bertrand.png', 'images/medias/39-bertrand.mp4'),
(9, 'Ross', 'Maxwell', 'Défenseur', 'Gaucher', '1991-07-02', 28, 'images/flags/canada.png', '100 KG', '186 CM', 'images/joueurs/max_ross.png', 'images/medias/04-ross.mp4'),
(10, 'Faure ', 'Arnaud', 'Défenseur', 'Gaucher', '1995-12-15', 23, 'images/flags/france.png', '90 KG', '183 CM', 'images/joueurs/arnaud_faure.png', 'images/medias/06-faure.mp4'),
(11, 'McCormac', 'Graeme', 'Défenseur', 'Droitier', '1991-04-22', 27, 'images/flags/canada.png', '93 KG', '185 CM', 'images/joueurs/graeme_mccormack.png', 'images/medias/12-mccormack.mp4'),
(12, 'Lacheny', 'Yoanne', 'Défenseur', 'Droitier', '1991-06-05', 26, 'images/flags/france.png', '85 KG', '184 CM', 'images/joueurs/yoanne_lacheny.png', 'images/medias/21-lacheny.mp4'),
(13, 'Raux', 'Damien', 'Défenseur', 'Gaucher', '1984-11-03', 34, 'images/flags/france.png', '85 KG', '178 CM', 'images/joueurs/damien_raux.png', 'images/medias/28-raux.mp4'),
(14, 'Campbell', 'Tim', 'Défenseur', 'Droitier', '1991-02-15', 27, 'images/flags/canada.png', '86 KG', '185 CM', 'images/joueurs/tim_campbell.png', 'images/medias/51-campbell.mp4'),
(15, 'Faure', 'Raphaël', 'Défenseur', 'Gaucher', '1993-04-01', 25, 'images/flags/france.png', '88 KG', '181 CM', 'images/joueurs/raphael_faure.png', 'images/medias/59-faure.mp4');

-- --------------------------------------------------------

--
-- Structure de la table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `poste` varchar(50) NOT NULL,
  `nationnalité` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `staff`
--

INSERT INTO `staff` (`id`, `nom`, `poste`, `nationnalité`, `photo`) VALUES
(1, 'Aurore Grandvoinet', 'Préparatrice Physique ', 'images/flags/france.png', 'images/Staff/grandvoinet_aurore.png'),
(2, 'Eric Blais', 'Assistant Coach', 'images/flags/france.png', 'images/Staff/blais_assistant.png'),
(3, 'Luciano Basile', 'Head Coach', 'images/flags/canada.png', 'images/Staff/basile_coach.png'),
(4, 'Jerôme Escallier', 'Président', 'images/flags/france.png', 'images/Staff/escallier_president.png'),
(5, 'Sébastien Oprandi', 'Manager', 'images/flags/france.png', 'images/Staff/oprandu_manager.png');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `joueurs`
--
ALTER TABLE `joueurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `joueurs`
--
ALTER TABLE `joueurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
