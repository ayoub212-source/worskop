-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le : lun. 27 jan. 2025 à 14:58
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `vendigo`
--
CREATE DATABASE IF NOT EXISTS `vendigo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `vendigo`;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_articlecommander`
--

DROP TABLE IF EXISTS `tbl_articlecommander`;
CREATE TABLE IF NOT EXISTS `tbl_articlecommander` (
  `id_article_commande` int NOT NULL AUTO_INCREMENT,
  `id_commande` int NOT NULL,
  `id_produit` int NOT NULL,
  `quantite` int NOT NULL,
  `prix` int NOT NULL,
  `id_vendeur` int NOT NULL,
  PRIMARY KEY (`id_article_commande`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_categproduit`
--

DROP TABLE IF EXISTS `tbl_categproduit`;
CREATE TABLE IF NOT EXISTS `tbl_categproduit` (
  `id_categorie` int NOT NULL AUTO_INCREMENT,
  `nom_categorie` int NOT NULL,
  `cat_actif` int NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_commande`
--

DROP TABLE IF EXISTS `tbl_commande`;
CREATE TABLE IF NOT EXISTS `tbl_commande` (
  `id_commande` int NOT NULL AUTO_INCREMENT,
  `id_acheteur` int NOT NULL,
  `total_commande` int NOT NULL,
  `dateCrea_commande` date NOT NULL,
  `statut_commande` int NOT NULL,
  PRIMARY KEY (`id_commande`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_message`
--

DROP TABLE IF EXISTS `tbl_message`;
CREATE TABLE IF NOT EXISTS `tbl_message` (
  `id_mess` int NOT NULL AUTO_INCREMENT,
  `id_expediteur` int NOT NULL,
  `id_receveur` int NOT NULL,
  `contenu_mess` varchar(600) NOT NULL,
  `lu` int NOT NULL,
  `dateCrea_mess` date NOT NULL,
  PRIMARY KEY (`id_mess`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_panier`
--

DROP TABLE IF EXISTS `tbl_panier`;
CREATE TABLE IF NOT EXISTS `tbl_panier` (
  `id_panier` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `id_produit` int NOT NULL,
  `quantite` int NOT NULL,
  `dateAjt_panier` date NOT NULL,
  PRIMARY KEY (`id_panier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_produit`
--

DROP TABLE IF EXISTS `tbl_produit`;
CREATE TABLE IF NOT EXISTS `tbl_produit` (
  `id_produit` int NOT NULL AUTO_INCREMENT,
  `id_vendeur` int NOT NULL,
  `nom_produit` varchar(200) NOT NULL,
  `desc_produit` varchar(200) NOT NULL,
  `prix_produit` varchar(3) NOT NULL,
  `image_produit` varchar(200) NOT NULL,
  `id_catagorie` int NOT NULL,
  `statut_produit` int NOT NULL,
  `dateCrea_produit` date NOT NULL,
  `dateMAJ_produit` date NOT NULL,
  `produit_Actif` int NOT NULL,
  PRIMARY KEY (`id_produit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nom_user` varchar(200) NOT NULL,
  `prenom_user` varchar(200) NOT NULL,
  `email_user` varchar(200) NOT NULL,
  `telephone_user` int NOT NULL,
  `dateNaiss_user` date NOT NULL,
  `motdepasse_user` varchar(200) NOT NULL,
  `role` varchar(50) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `dateCrea` date NOT NULL,
  `dateModif` date NOT NULL,
  `actif` int NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
