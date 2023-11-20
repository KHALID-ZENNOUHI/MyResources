

--
-- Base de données : `my_ressources`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `CategoryNom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`CategoryID`, `CategoryNom`) VALUES
(1, 'Vidieo'),
(2, 'Site Web'),
(3, 'PDF');

-- --------------------------------------------------------

--
-- Structure de la table `projects`
--

CREATE TABLE `projects` (
  `ProjectID` int(11) NOT NULL,
  `ProjectNom` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `DateDebut` date DEFAULT NULL,
  `DateFin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `projects`
--

INSERT INTO `projects` (`ProjectID`, `ProjectNom`, `Description`, `DateDebut`, `DateFin`) VALUES
(1, 'PhotoMaster UI', 'Vous allez migrer un site web existant', '2023-11-17', '2023-11-20'),
(2, 'Amazon_Partie1', 'Créez une maquette et codez en HTML/CSS un site E-commerce Amazon en partant de la page daccueil et en ajoutant trois pages pour améliorer lexpérience utilisateur', '2023-11-20', '2023-11-23'),
(3, 'Amazon_Partie2', 'améliorer la réactivité du site web existant et dajouter de nouvelles fonctionnalités y compris la conception responsive une sidebar pour la gestion des produits et une meilleure réactivité avec lutilisateur', '2023-11-23', '2023-11-27'),
(4, 'Scrum Board', 'En tant que développeur votre mission est de créer une Scrum Board pour la gestion des projets', '2023-11-27', '2023-11-30'),
(5, 'MyResources', 'Vous travaillez en tant que développeur de base de données pour la société SQLI Lentreprise évolue dans le domaine de la gestion de projets et de ressources et elle ressent le besoin crucial dune base de données bien structurée pour optimiser ses opératio', '2023-11-30', '2023-12-03');

-- --------------------------------------------------------

--
-- Structure de la table `resources`
--

CREATE TABLE `resources` (
  `ResourceID` int(11) NOT NULL,
  `SubcategoryID` int(11) DEFAULT NULL,
  `SquadID` int(11) DEFAULT NULL,
  `ProjectID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `resources`
--

INSERT INTO `resources` (`ResourceID`, `SubcategoryID`, `SquadID`, `ProjectID`) VALUES
(1, 1, 1, 1),
(2, 3, 1, 1),
(3, 6, 1, 1),
(4, 2, 2, 2),
(5, 4, 2, 2),
(6, 5, 2, 2),
(7, 2, 3, 3),
(8, 4, 3, 3),
(9, 6, 3, 3),
(10, 2, 4, 4),
(11, 3, 4, 4),
(12, 5, 4, 4),
(13, 2, 5, 5),
(14, 4, 5, 5),
(15, 6, 5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `squad`
--

CREATE TABLE `squad` (
  `SquadID` int(11) NOT NULL,
  `SquadName` varchar(255) DEFAULT NULL,
  `ProjectID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `squad`
--

INSERT INTO `squad` (`SquadID`, `SquadName`, `ProjectID`) VALUES
(1, 'Brogrammers', 1),
(2, 'ProDevs', 2),
(3, 'CODEZILLA', 3),
(4, 'cell13', 4),
(5, 'Alpha', 5);

-- --------------------------------------------------------

--
-- Structure de la table `subcategory`
--

CREATE TABLE `subcategory` (
  `SubcategoryID` int(11) NOT NULL,
  `subcategoryNom` varchar(255) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `subcategory`
--

INSERT INTO `subcategory` (`SubcategoryID`, `subcategoryNom`, `CategoryID`) VALUES
(1, 'Long', 1),
(2, 'Short', 1),
(3, 'Inspiration', 2),
(4, 'Debugin', 2),
(5, 'Acadimic', 3),
(6, 'partager sur internet', 3);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `UsersEmail` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `SquadID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `UsersEmail`, `Role`, `SquadID`) VALUES
(1, 'Abdeljalil El Filaly', 'abdeljalil.el.filaly@gmail.com', 'Member', 5),
(2, 'Abdellah Bardich', 'abdellah.bardich@gmail.com', 'Leader', 4),
(3, 'Aicha Ettabet', 'aicha.ettabet@gmail.com', 'Member', 4),
(4, 'Anass Ait Ouaguerd', 'anass.ait.ouaguerd@gmail.com', 'Member', 3),
(5, 'Anass Drissi', 'anass.drissi@gmail.com', 'Leader', 3),
(6, 'Hamza Ezzhar El Idrissi', 'hamza.ezzhar.el.idrissi@gmail.com', 'Member', 4),
(7, 'Khalid Zennouhi', 'khalid.zennouhi@gmail.com', 'Member', 2),
(8, 'Khalid Haiddou', 'khalid.haiddou@gmail.com', 'Member', 5),
(9, 'Khalid El Mati', 'khalid.el.mati@gmail.com', 'Leader', 1),
(10, 'Latifa Chakir', 'latifa.chakir@gmail.com', 'Member', 3),
(11, 'Mbarek El Aadraoui', 'mbarek.el.aadraoui@gmail.com', 'Member', 1),
(12, 'Mohamed Amine Baih', 'mohamed.amine.baih@gmail.com', 'Member', 3),
(13, 'Mohammed-amine Benmade', 'mohammed.amine.benmade@gmail.com', 'Member', 3),
(14, 'Nabil El Hakimi', 'nabil.el.hakimi@gmail.com', 'Leader', 2),
(15, 'Niama El Hrychy', 'niama.el.hrychy@gmail.com', 'Member', 2),
(16, 'Otman Kharbouch', 'otman.kharbouch@gmail.com', 'Member', 2),
(17, 'Oumaima El Baz', 'oumaima.el.baz@gmail.com', 'Member', 5),
(18, 'Rabia Ait Imghi', 'rabia.ait.imghi@gmail.com', 'Leader', 5),
(19, 'Soumaya Ait Lmqaddam', 'soumaya.ait.lmqaddam@gmail.com', 'Member', 1),
(20, 'Youness Erbai', 'youness.erbai@gmail.com', 'Member', 4),
(21, 'Zouhair Zerzkhane', 'zouhair.zerzkhane@gmail.com', 'Member', 2),
(22, 'Abdeljabar Ait Ayoub', 'abdeljabar.ait.ayoub@gmail.com', 'Member', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Index pour la table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ProjectID`);

--
-- Index pour la table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`ResourceID`),
  ADD KEY `SubcategoryID` (`SubcategoryID`),
  ADD KEY `SquadID` (`SquadID`),
  ADD KEY `ProjectID` (`ProjectID`);

--
-- Index pour la table `squad`
--
ALTER TABLE `squad`
  ADD PRIMARY KEY (`SquadID`),
  ADD KEY `ProjectID` (`ProjectID`);

--
-- Index pour la table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`SubcategoryID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `SquadID` (`SquadID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `projects`
--
ALTER TABLE `projects`
  MODIFY `ProjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `resources`
--
ALTER TABLE `resources`
  MODIFY `ResourceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `squad`
--
ALTER TABLE `squad`
  MODIFY `SquadID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `SubcategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `resources_ibfk_2` FOREIGN KEY (`SubcategoryID`) REFERENCES `subcategory` (`SubcategoryID`),
  ADD CONSTRAINT `resources_ibfk_3` FOREIGN KEY (`SquadID`) REFERENCES `squad` (`SquadID`),
  ADD CONSTRAINT `resources_ibfk_4` FOREIGN KEY (`ProjectID`) REFERENCES `projects` (`ProjectID`);

--
-- Contraintes pour la table `squad`
--
ALTER TABLE `squad`
  ADD CONSTRAINT `squad_ibfk_1` FOREIGN KEY (`ProjectID`) REFERENCES `projects` (`ProjectID`);

--
-- Contraintes pour la table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`SquadID`) REFERENCES `squad` (`SquadID`);
COMMIT;

--
-- Affichage des `users` les noms de squad des `users` et les project assignee uaux `users`
--
SELECT * FROM `users` 
NATURAL JOIN `squad`
NATURAL JOIN `projects`;

--
-- Affichage des `users` les noms de squad des `users` et les project assignee uaux `users`
--
SELECT * FROM `resources`, `projects`, `subcategory`, `squad`
WHERE `resources.ProjectID` =  `resources.ProjectID` 
AND `resources.SubcategoryID` = `subcategory.SubcategoryID` 
AND `resources.SquadID` = `squad.SquadID`;

SELECT * FROM `users`,`squad`
WHERE `users.SquadID` = `squad.SquadID`
AND `squad.SquadID` <> 4;


