-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 13 oct. 2021 à 16:43
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gpmn`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `content` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `postId`, `userId`, `content`, `createdAt`, `updatedAt`) VALUES
(1, 9, 1, 'Ahah ça m\'étonne pas de toi, c\'est vrai qu\'il faut pas trop te parler le matin !', '2021-10-13 14:37:26', '2021-10-13 14:37:26'),
(2, 9, 2, 'Et bah c\'est toi qui dis ça, beeeeen voyoooons ahaha', '2021-10-13 14:37:59', '2021-10-13 14:37:59');

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `postId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `likes`
--

INSERT INTO `likes` (`id`, `postId`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 9, 1, '2021-10-13 14:37:12', '2021-10-13 14:37:12');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `desc` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `topic` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `userId`, `desc`, `image`, `topic`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Vous avez lu quoi comme livre récemment ?', '', 'Autres', '2021-10-13 14:25:08', '2021-10-13 14:25:08'),
(2, 1, 'C\'est lequel votre Zelda préféré ?', 'https://cdn.pocket-lint.com/r/s/970x/assets/images/157664-games-review-the-legend-of-zelda-skyward-sword-hd-review-screens-image21-bl84fqqfmo.jpg', 'Jeux', '2021-10-13 14:27:00', '2021-10-13 14:27:00'),
(3, 1, 'Super content d\'avoir pu reprendre le tennis !', 'https://images.pexels.com/photos/5730288/pexels-photo-5730288.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'Sport', '2021-10-13 14:27:45', '2021-10-13 14:27:45'),
(4, 1, 'Vous êtes allés voir le nouveau Dune au cinéma ? Moi pas encore alors pas de spoils !', 'https://images.pexels.com/photos/847402/pexels-photo-847402.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'Cinéma', '2021-10-13 14:28:27', '2021-10-13 14:28:27'),
(5, 1, 'Vivement de pouvoir refaire un gros concert avec le covid ça commence à faire un bail !', 'https://images.pexels.com/photos/1105666/pexels-photo-1105666.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'Musique', '2021-10-13 14:29:04', '2021-10-13 14:29:04'),
(6, 2, 'C\'est cher mais quand même c\'est beau les mini cooper !', 'https://images.pexels.com/photos/3226806/pexels-photo-3226806.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'Voitures', '2021-10-13 14:30:06', '2021-10-13 14:30:06'),
(7, 2, 'Non mais regardez moi la tête de ce petit chat !', 'https://images.pexels.com/photos/236606/pexels-photo-236606.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'Animaux', '2021-10-13 14:30:43', '2021-10-13 14:30:43'),
(8, 2, 'Et vous alors vous allez faire la mise à jour ou pas ?', 'https://img-9gag-fun.9cache.com/photo/aQow8Q8_700bwp.webp', 'Meme', '2021-10-13 14:32:12', '2021-10-13 14:32:12'),
(9, 2, 'Ahah complètement d\'accord', 'https://images.pexels.com/photos/4466241/pexels-photo-4466241.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'Humour', '2021-10-13 14:33:20', '2021-10-13 14:33:20');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'https://picsum.photos/150/150',
  `cover` varchar(255) NOT NULL DEFAULT 'https://picsum.photos/750/320',
  `city` varchar(255) DEFAULT NULL,
  `fromCity` varchar(255) DEFAULT NULL,
  `relationship` varchar(255) DEFAULT NULL,
  `scholarship` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `avatar`, `cover`, `city`, `fromCity`, `relationship`, `scholarship`, `job`, `isAdmin`, `createdAt`, `updatedAt`) VALUES
(1, 'Thibaut', 'Orcel', 'thibaut@gmania.fr', '$2b$10$MZztz8dL4M.u/DR028GGC.z/S5TyydFUvq/T3KWJ1kaSkHtpb.XDa', '21/04/1996', 'https://images.pexels.com/photos/848611/pexels-photo-848611.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'https://images.pexels.com/photos/167699/pexels-photo-167699.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'St Valéry', 'Montpellier', 'En Couple', 'OpenClassrooms', 'Développeur Web', 0, '2021-10-13 13:33:44', '2021-10-13 14:23:59'),
(2, 'Julia', 'Fauvel', 'julia@gmania.fr', '$2b$10$KCdRs3FdqHlDQ8kqkd/VAuFbC0YagBOa9L5C/TtfHZ5hSOsqRZz8u', '11/01/1996', 'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'https://images.pexels.com/photos/2775196/pexels-photo-2775196.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'St Valéry', 'Le Havre', 'En Couple', 'ULiège', 'Kinésithérapeute', 0, '2021-10-13 14:05:16', '2021-10-13 14:22:36'),
(3, 'Admin', 'Istrator', 'admin@gmania.fr', '$2b$10$3AnRF.yj7vn5FtqnFThGJ.lvBckHwlREs25PnepbibXk4BmGslgM2', NULL, 'https://images.pexels.com/photos/6172608/pexels-photo-6172608.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'https://images.pexels.com/photos/6064906/pexels-photo-6064906.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', NULL, NULL, NULL, NULL, NULL, 1, '2021-10-13 14:19:14', '2021-10-13 14:21:38');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
