-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `school`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `school` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `school`;

--
-- Table structure for table `anneescolaire`
--

DROP TABLE IF EXISTS `anneescolaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anneescolaire` (
  `codeAnnee` varchar(10) NOT NULL,
  `nomAnnee` varchar(20) NOT NULL,
  `debutAnneeScolaire` date NOT NULL,
  `finAnneeScolaire` date NOT NULL,
  PRIMARY KEY (`codeAnnee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anneescolaire`
--

LOCK TABLES `anneescolaire` WRITE;
/*!40000 ALTER TABLE `anneescolaire` DISABLE KEYS */;
INSERT INTO `anneescolaire` VALUES ('2223','2022-2023','2022-10-01','2023-07-31'),('2324','2023-2024','2023-10-01','2024-07-31'),('2425','2024-2025','2024-10-01','2025-07-31');
/*!40000 ALTER TABLE `anneescolaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classe`
--

DROP TABLE IF EXISTS `classe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classe` (
  `codeClasse` varchar(10) NOT NULL,
  `nomClasse` varchar(100) NOT NULL,
  `niveau` enum('1','2','3','4','5','6','7') NOT NULL,
  `codeSerie` varchar(10) NOT NULL,
  PRIMARY KEY (`codeClasse`),
  KEY `classe_serie_fkey` (`codeSerie`),
  CONSTRAINT `classe_serie_fkey` FOREIGN KEY (`codeSerie`) REFERENCES `serie` (`codeSerie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classe`
--

LOCK TABLES `classe` WRITE;
/*!40000 ALTER TABLE `classe` DISABLE KEYS */;
INSERT INTO `classe` VALUES ('1AS','1 Année Secondaire','1','belingue'),('2AS','2 Année Secondaire','2','belingue'),('3AS','3 Année Secondaire','3','belingue'),('4AS','4 Année Secondaire','4','belingue'),('5C','5 Année Secondaire Mathematiques','5','C'),('5D','5 Année Secondaire SN','5','D'),('5LM','5 Année Secondaire LM','5','LM'),('5LO','5 Année Secondaire LO','5','LO'),('6C','6 Année Secondaire Mathematiques','6','C'),('6D','6 Année Secondaire SN','6','D'),('6LM','6 Année Secondaire LM','6','LM'),('6LO','6 Année Secondaire LO','6','LO'),('7C','7 Année Secondaire Mathematiques','7','C'),('7D','7 Année Secondaire SN','7','D'),('7LM','7 Année Secondaire LM','7','LM'),('7LO','7 Année Secondaire LO','7','LO');
/*!40000 ALTER TABLE `classe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classe_matiere`
--

DROP TABLE IF EXISTS `classe_matiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classe_matiere` (
  `codeClasseMatiere` varchar(10) NOT NULL,
  `codeClasse` varchar(10) NOT NULL,
  `codeMatiere` varchar(5) NOT NULL,
  `horaireClasseMatiere` int(2) NOT NULL,
  `coefficientClasseMatiere` int(2) NOT NULL,
  `dateClasseMatiere` date NOT NULL,
  PRIMARY KEY (`codeClasseMatiere`),
  UNIQUE KEY `classe_matiere_unique` (`codeClasse`,`codeMatiere`,`dateClasseMatiere`),
  CONSTRAINT `fk_classe_matiere_classe_code` FOREIGN KEY (`codeClasse`) REFERENCES `classe` (`codeClasse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classe_matiere`
--

LOCK TABLES `classe_matiere` WRITE;
/*!40000 ALTER TABLE `classe_matiere` DISABLE KEYS */;
INSERT INTO `classe_matiere` VALUES ('MATH1AS','1AS','MATH',6,5,'2024-10-01'),('MATH2AS','2AS','MATH',6,5,'2024-10-01'),('MATH3AS','3AS','MATH',6,5,'2024-10-01'),('MATH4AS','4AS','MATH',6,5,'2024-10-01'),('MATH5C','5C','MATH',6,6,'2024-10-01'),('MATH5D','5D','MATH',4,4,'2024-10-01'),('MATH5LM','5LM','MATH',3,2,'2024-10-01'),('MATH5LO','5LO','MATH',2,2,'2024-10-01'),('MATH6C','6C','MATH',7,7,'2024-10-01'),('MATH6D','6D','MATH',5,4,'2024-10-01'),('MATH6LM','6LM','MATH',2,2,'2024-10-01'),('MATH6LO','6LO','MATH',2,2,'2024-10-01'),('MATH7C','7C','MATH',8,8,'2024-10-01'),('MATH7D','7D','MATH',5,6,'2024-10-01'),('MATH7LM','7LM','MATH',2,2,'2024-10-01'),('MATH7LO','7LO','MATH',2,2,'2024-10-01');
/*!40000 ALTER TABLE `classe_matiere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `classe_matiere_view`
--

DROP TABLE IF EXISTS `classe_matiere_view`;
/*!50001 DROP VIEW IF EXISTS `classe_matiere_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `classe_matiere_view` AS SELECT
 1 AS `codeClasse`,
  1 AS `codeClasseMatiere`,
  1 AS `horaireClasseMatiere`,
  1 AS `coefficientClasseMatiere`,
  1 AS `dateClasseMatiere`,
  1 AS `codeMatiere`,
  1 AS `nomMatiere`,
  1 AS `langueMatiere`,
  1 AS `ismeMatiere`,
  1 AS `nomClasse`,
  1 AS `niveauClasse`,
  1 AS `codeSerie`,
  1 AS `nomSerie`,
  1 AS `cycle` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `eleve`
--

DROP TABLE IF EXISTS `eleve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eleve` (
  `matricule` varchar(10) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `isme` varchar(100) DEFAULT NULL,
  `sexe` varchar(1) NOT NULL,
  `dateNaissance` date NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `nni` varchar(100) NOT NULL,
  `lieuNaissance` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`matricule`),
  UNIQUE KEY `eleve_nni_unique` (`nni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eleve`
--

LOCK TABLES `eleve` WRITE;
/*!40000 ALTER TABLE `eleve` DISABLE KEYS */;
/*!40000 ALTER TABLE `eleve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluation` (
  `codeEvaluation` varchar(10) NOT NULL,
  `nomEvaluation` varchar(100) NOT NULL,
  `indiceEvaluation` int(2) NOT NULL,
  `coefficientEvaluation` int(2) NOT NULL,
  `typeEvaluation` enum('composition','devoir') NOT NULL,
  PRIMARY KEY (`codeEvaluation`),
  UNIQUE KEY `evaluation_unique` (`nomEvaluation`,`indiceEvaluation`,`coefficientEvaluation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES ('compos1','1er composition',1,1,'composition'),('compos2','2eme composition',2,2,'composition'),('compos3','3eme composition',3,3,'composition'),('devoir1','1er devoir',1,1,'devoir'),('devoir2','2eme devoir',2,1,'devoir'),('devoir3','3eme devoir',3,1,'devoir');
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examen`
--

DROP TABLE IF EXISTS `examen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examen` (
  `codeExamen` varchar(20) NOT NULL,
  `codeClasseMatiere` varchar(10) NOT NULL,
  `codeSalleClasse` varchar(10) NOT NULL,
  `codeEvaluation` varchar(10) NOT NULL,
  `dateExamen` date NOT NULL,
  `heureDebutExamen` time NOT NULL,
  `heureFinExamen` time NOT NULL,
  `statutExamen` enum('0','1') DEFAULT '1',
  PRIMARY KEY (`codeExamen`),
  UNIQUE KEY `salle_classe_examen_unique` (`codeClasseMatiere`,`codeEvaluation`,`dateExamen`,`heureDebutExamen`,`heureFinExamen`),
  KEY `salle_classe_examen_examen_fkey` (`codeEvaluation`),
  CONSTRAINT `salle_classe_examen_classe_fkey` FOREIGN KEY (`codeClasseMatiere`) REFERENCES `classe_matiere` (`codeClasseMatiere`),
  CONSTRAINT `salle_classe_examen_examen_fkey` FOREIGN KEY (`codeEvaluation`) REFERENCES `evaluation` (`codeEvaluation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen`
--

LOCK TABLES `examen` WRITE;
/*!40000 ALTER TABLE `examen` DISABLE KEYS */;
/*!40000 ALTER TABLE `examen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `examen_view`
--

DROP TABLE IF EXISTS `examen_view`;
/*!50001 DROP VIEW IF EXISTS `examen_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `examen_view` AS SELECT
 1 AS `codeExamen`,
  1 AS `codeClasseMatiere`,
  1 AS `codeSalleClasse`,
  1 AS `codeEvaluation`,
  1 AS `dateExamen`,
  1 AS `heureDebutExamen`,
  1 AS `heureFinExamen`,
  1 AS `statutExamen`,
  1 AS `nomEvaluation`,
  1 AS `indiceEvaluation`,
  1 AS `coefficientEvaluation`,
  1 AS `typeEvaluation`,
  1 AS `codeClasse`,
  1 AS `codeMatiere`,
  1 AS `horaireClasseMatiere`,
  1 AS `coefficientClasseMatiere`,
  1 AS `nomMatiere`,
  1 AS `langueMatiere`,
  1 AS `ismeMatiere`,
  1 AS `indiceSalleClasse`,
  1 AS `codeAnnee` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `inscrit`
--

DROP TABLE IF EXISTS `inscrit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inscrit` (
  `idInscrit` int(6) NOT NULL AUTO_INCREMENT,
  `matricule` varchar(10) NOT NULL,
  `codeSalleClasse` varchar(10) NOT NULL,
  `numeroInscrit` int(3) NOT NULL,
  `typeInscrit` enum('passant','redoublant','nouveau-passant','nouveau-redoublant','entrant') NOT NULL,
  `dateInscription` date NOT NULL,
  PRIMARY KEY (`idInscrit`),
  UNIQUE KEY `inscrit_unique` (`matricule`,`codeSalleClasse`),
  KEY `inscrit_classe_fkey` (`codeSalleClasse`),
  CONSTRAINT `inscrit_classe_fkey` FOREIGN KEY (`codeSalleClasse`) REFERENCES `salle_classe` (`codeSalleClasse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscrit`
--

LOCK TABLES `inscrit` WRITE;
/*!40000 ALTER TABLE `inscrit` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscrit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `inscrit_view`
--

DROP TABLE IF EXISTS `inscrit_view`;
/*!50001 DROP VIEW IF EXISTS `inscrit_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `inscrit_view` AS SELECT
 1 AS `idInscrit`,
  1 AS `matricule`,
  1 AS `numeroInscrit`,
  1 AS `typeInscrit`,
  1 AS `dateInscription`,
  1 AS `nom`,
  1 AS `isme`,
  1 AS `nni`,
  1 AS `adresse`,
  1 AS `dateNaissance`,
  1 AS `sexe`,
  1 AS `codeSalleClasse`,
  1 AS `indiceSalleClasse`,
  1 AS `codeSalle`,
  1 AS `nomSalle`,
  1 AS `codeClasse`,
  1 AS `nomClasse`,
  1 AS `codeAnnee`,
  1 AS `nomAnnee`,
  1 AS `codeSerie`,
  1 AS `nomSerie` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `matiere`
--

DROP TABLE IF EXISTS `matiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matiere` (
  `codeMatiere` varchar(5) NOT NULL,
  `nomMatiere` varchar(100) NOT NULL,
  `ismeMatiere` varchar(100) DEFAULT NULL,
  `langueMatiere` enum('AR','FR','EN') DEFAULT NULL,
  PRIMARY KEY (`codeMatiere`),
  UNIQUE KEY `matiere_isme_unique` (`nomMatiere`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matiere`
--

LOCK TABLES `matiere` WRITE;
/*!40000 ALTER TABLE `matiere` DISABLE KEYS */;
INSERT INTO `matiere` VALUES ('ar','Arabe','اللغة العربية','AR'),('en','Anglais','الانجليزية','EN'),('eps','Education Physique et Sportive','الفيزياء و الرياضيات','FR'),('fr','Français','الفراسية','FR'),('hg','Histoire et Geographie','التاريخ و الجغرافية','AR'),('ic','Education civique','التربية المدينة','AR'),('info','Technologie et Informatique','التكنولوجيا','FR'),('ir','Education Islamique','التربية الإسلامية','AR'),('leg','legislation','القانون','AR'),('math','Mathematiques','الرياضيات','FR'),('pc','Physique Chimie','الفيزياء و الكيمياء','FR'),('philo','Philosophie','الفلسفة','AR'),('sn','Science Naturelle','العلوم الطبية','FR');
/*!40000 ALTER TABLE `matiere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `idNote` int(10) NOT NULL AUTO_INCREMENT,
  `matricule` varchar(10) NOT NULL,
  `codeExamen` varchar(20) NOT NULL,
  `note` float(4,2) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idNote`),
  UNIQUE KEY `note_unique` (`matricule`,`codeExamen`),
  KEY `note_examen_fkey` (`codeExamen`),
  CONSTRAINT `note_examen_fkey` FOREIGN KEY (`codeExamen`) REFERENCES `examen` (`codeExamen`),
  CONSTRAINT `note_inscrit_fkey` FOREIGN KEY (`matricule`) REFERENCES `inscrit` (`matricule`),
  CONSTRAINT `note_check` CHECK (`note` >= 0 and `note` <= 20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `note_view`
--

DROP TABLE IF EXISTS `note_view`;
/*!50001 DROP VIEW IF EXISTS `note_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `note_view` AS SELECT
 1 AS `idNote`,
  1 AS `matricule`,
  1 AS `note`,
  1 AS `createdAt`,
  1 AS `updatedAt`,
  1 AS `nom`,
  1 AS `isme`,
  1 AS `nni`,
  1 AS `adresse`,
  1 AS `dateNaissance`,
  1 AS `sexe`,
  1 AS `codeClasse`,
  1 AS `codeMatiere`,
  1 AS `horaireClasseMatiere`,
  1 AS `coefficientClasseMatiere`,
  1 AS `codeExamen`,
  1 AS `codeClasseMatiere`,
  1 AS `dateExamen`,
  1 AS `heureDebutExamen`,
  1 AS `heureFinExamen`,
  1 AS `codeSalleClasse`,
  1 AS `statutExamen`,
  1 AS `codeEvaluation`,
  1 AS `nomEvaluation`,
  1 AS `indiceEvaluation`,
  1 AS `coefficientEvaluation`,
  1 AS `typeEvaluation`,
  1 AS `codeAnnee`,
  1 AS `nomAnnee` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `professeur`
--

DROP TABLE IF EXISTS `professeur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professeur` (
  `matriculeProfesseur` varchar(10) NOT NULL,
  `nomProfesseur` varchar(100) NOT NULL,
  `ismeProfesseur` varchar(100) DEFAULT NULL,
  `sexeProfesseur` varchar(1) DEFAULT NULL,
  `adresseProfesseur` varchar(50) DEFAULT NULL,
  `nniProfesseur` varchar(100) NOT NULL,
  `telProfesseur` varchar(8) DEFAULT NULL,
  `codeSpecialite` varchar(10) NOT NULL,
  PRIMARY KEY (`matriculeProfesseur`),
  UNIQUE KEY `professeur_nni_unique` (`nniProfesseur`),
  KEY `professeur_specialite_fkey` (`codeSpecialite`),
  CONSTRAINT `professeur_specialite_fkey` FOREIGN KEY (`codeSpecialite`) REFERENCES `specialite` (`codeSpecialite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professeur`
--

LOCK TABLES `professeur` WRITE;
/*!40000 ALTER TABLE `professeur` DISABLE KEYS */;
/*!40000 ALTER TABLE `professeur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professeur_matiere`
--

DROP TABLE IF EXISTS `professeur_matiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professeur_matiere` (
  `matriculeProfesseur` varchar(10) NOT NULL,
  `codeMatiere` varchar(10) NOT NULL,
  PRIMARY KEY (`matriculeProfesseur`,`codeMatiere`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professeur_matiere`
--

LOCK TABLES `professeur_matiere` WRITE;
/*!40000 ALTER TABLE `professeur_matiere` DISABLE KEYS */;
/*!40000 ALTER TABLE `professeur_matiere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salle`
--

DROP TABLE IF EXISTS `salle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salle` (
  `codeSalle` varchar(10) NOT NULL,
  `nomSalle` varchar(20) NOT NULL,
  PRIMARY KEY (`codeSalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salle`
--

LOCK TABLES `salle` WRITE;
/*!40000 ALTER TABLE `salle` DISABLE KEYS */;
INSERT INTO `salle` VALUES ('Salle1','Salle 1'),('Salle10','Salle 10'),('Salle11','Salle 11'),('Salle12','Salle 12'),('Salle13','Salle 13'),('Salle14','Salle 14'),('Salle15','Salle 15'),('Salle16','Salle 16'),('Salle17','Salle 17'),('Salle18','Salle 18'),('Salle19','Salle 19'),('Salle2','Salle 2'),('Salle20','Salle 20'),('Salle21','Salle 21'),('Salle22','Salle 22'),('Salle23','Salle 23'),('Salle3','Salle 3'),('Salle4','Salle 4'),('Salle5','Salle 5'),('Salle6','Salle 6'),('Salle7','Salle 7'),('Salle8','Salle 8'),('Salle9','Salle 9');
/*!40000 ALTER TABLE `salle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salle_classe`
--

DROP TABLE IF EXISTS `salle_classe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salle_classe` (
  `codeSalleClasse` varchar(10) NOT NULL,
  `codeSalle` varchar(10) NOT NULL,
  `codeClasse` varchar(10) NOT NULL,
  `codeAnnee` varchar(10) NOT NULL,
  `indiceSalleClasse` int(2) DEFAULT NULL,
  PRIMARY KEY (`codeSalleClasse`),
  UNIQUE KEY `salle_classe_unique` (`codeSalle`,`codeClasse`,`codeAnnee`,`indiceSalleClasse`),
  KEY `salle_classe_classe_fkey` (`codeClasse`),
  KEY `salle_classe_annee_fkey` (`codeAnnee`),
  CONSTRAINT `salle_classe_annee_fkey` FOREIGN KEY (`codeAnnee`) REFERENCES `anneescolaire` (`codeAnnee`),
  CONSTRAINT `salle_classe_classe_fkey` FOREIGN KEY (`codeClasse`) REFERENCES `classe` (`codeClasse`),
  CONSTRAINT `salle_classe_salle_fkey` FOREIGN KEY (`codeSalle`) REFERENCES `salle` (`codeSalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salle_classe`
--

LOCK TABLES `salle_classe` WRITE;
/*!40000 ALTER TABLE `salle_classe` DISABLE KEYS */;
INSERT INTO `salle_classe` VALUES ('A24255D3','Salle10','5D','2425',3),('A24255LM','Salle7','5LM','2425',NULL),('A24255D1','Salle8','5D','2425',1),('A24255D2','Salle9','5D','2425',2);
/*!40000 ALTER TABLE `salle_classe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `salle_classe_view`
--

DROP TABLE IF EXISTS `salle_classe_view`;
/*!50001 DROP VIEW IF EXISTS `salle_classe_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `salle_classe_view` AS SELECT
 1 AS `codeSalleClasse`,
  1 AS `indiceSalleClasse`,
  1 AS `codeSalle`,
  1 AS `nomSalle`,
  1 AS `codeClasse`,
  1 AS `nomClasse`,
  1 AS `codeAnnee`,
  1 AS `nomAnnee`,
  1 AS `codeSerie`,
  1 AS `nomSerie` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `serie`
--

DROP TABLE IF EXISTS `serie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serie` (
  `codeSerie` varchar(10) NOT NULL,
  `nomSerie` varchar(20) NOT NULL,
  `cycle` enum('college','lycee') NOT NULL,
  PRIMARY KEY (`codeSerie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serie`
--

LOCK TABLES `serie` WRITE;
/*!40000 ALTER TABLE `serie` DISABLE KEYS */;
INSERT INTO `serie` VALUES ('belingue','Belingue','college'),('C','Mathematiques','lycee'),('D','Sciences','lycee'),('LM','Lettres Modernes','lycee'),('LO','Religion','lycee');
/*!40000 ALTER TABLE `serie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialite`
--

DROP TABLE IF EXISTS `specialite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialite` (
  `codeSpecialite` varchar(10) NOT NULL,
  `nomSpecialite` varchar(100) NOT NULL,
  `ismeSpecialite` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codeSpecialite`),
  UNIQUE KEY `specialite_unique` (`nomSpecialite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialite`
--

LOCK TABLES `specialite` WRITE;
/*!40000 ALTER TABLE `specialite` DISABLE KEYS */;
/*!40000 ALTER TABLE `specialite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `school`
--

USE `school`;

--
-- Final view structure for view `classe_matiere_view`
--

/*!50001 DROP VIEW IF EXISTS `classe_matiere_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `classe_matiere_view` AS select `cm`.`codeClasse` AS `codeClasse`,`cm`.`codeClasseMatiere` AS `codeClasseMatiere`,`cm`.`horaireClasseMatiere` AS `horaireClasseMatiere`,`cm`.`coefficientClasseMatiere` AS `coefficientClasseMatiere`,`cm`.`dateClasseMatiere` AS `dateClasseMatiere`,`m`.`codeMatiere` AS `codeMatiere`,`m`.`nomMatiere` AS `nomMatiere`,`m`.`langueMatiere` AS `langueMatiere`,`m`.`ismeMatiere` AS `ismeMatiere`,`c`.`nomClasse` AS `nomClasse`,`c`.`niveau` AS `niveauClasse`,`s`.`codeSerie` AS `codeSerie`,`s`.`nomSerie` AS `nomSerie`,`s`.`cycle` AS `cycle` from (((`classe_matiere` `cm` join `matiere` `m` on(`m`.`codeMatiere` = `cm`.`codeMatiere`)) join `classe` `c` on(`c`.`codeClasse` = `cm`.`codeClasse`)) join `serie` `s` on(`s`.`codeSerie` = `c`.`codeSerie`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `examen_view`
--

/*!50001 DROP VIEW IF EXISTS `examen_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `examen_view` AS select `e`.`codeExamen` AS `codeExamen`,`e`.`codeClasseMatiere` AS `codeClasseMatiere`,`e`.`codeSalleClasse` AS `codeSalleClasse`,`e`.`codeEvaluation` AS `codeEvaluation`,`e`.`dateExamen` AS `dateExamen`,`e`.`heureDebutExamen` AS `heureDebutExamen`,`e`.`heureFinExamen` AS `heureFinExamen`,`e`.`statutExamen` AS `statutExamen`,`ev`.`nomEvaluation` AS `nomEvaluation`,`ev`.`indiceEvaluation` AS `indiceEvaluation`,`ev`.`coefficientEvaluation` AS `coefficientEvaluation`,`ev`.`typeEvaluation` AS `typeEvaluation`,`cm`.`codeClasse` AS `codeClasse`,`cm`.`codeMatiere` AS `codeMatiere`,`cm`.`horaireClasseMatiere` AS `horaireClasseMatiere`,`cm`.`coefficientClasseMatiere` AS `coefficientClasseMatiere`,`m`.`nomMatiere` AS `nomMatiere`,`m`.`langueMatiere` AS `langueMatiere`,`m`.`ismeMatiere` AS `ismeMatiere`,`sc`.`indiceSalleClasse` AS `indiceSalleClasse`,`sc`.`codeAnnee` AS `codeAnnee` from (((((`examen` `e` join `evaluation` `ev` on(`e`.`codeEvaluation` = `ev`.`codeEvaluation`)) join `classe_matiere` `cm` on(`cm`.`codeClasseMatiere` = `e`.`codeClasseMatiere`)) join `matiere` `m` on(`m`.`codeMatiere` = `cm`.`codeMatiere`)) join `classe` `c` on(`c`.`codeClasse` = `cm`.`codeClasse`)) join `salle_classe` `sc` on(`sc`.`codeSalleClasse` = `e`.`codeSalleClasse`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inscrit_view`
--

/*!50001 DROP VIEW IF EXISTS `inscrit_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inscrit_view` AS select `i`.`idInscrit` AS `idInscrit`,`i`.`matricule` AS `matricule`,`i`.`numeroInscrit` AS `numeroInscrit`,`i`.`typeInscrit` AS `typeInscrit`,`i`.`dateInscription` AS `dateInscription`,`e`.`nom` AS `nom`,`e`.`isme` AS `isme`,`e`.`nni` AS `nni`,`e`.`adresse` AS `adresse`,`e`.`dateNaissance` AS `dateNaissance`,`e`.`sexe` AS `sexe`,`sc`.`codeSalleClasse` AS `codeSalleClasse`,`sc`.`indiceSalleClasse` AS `indiceSalleClasse`,`s`.`codeSalle` AS `codeSalle`,`s`.`nomSalle` AS `nomSalle`,`c`.`codeClasse` AS `codeClasse`,`c`.`nomClasse` AS `nomClasse`,`a`.`codeAnnee` AS `codeAnnee`,`a`.`nomAnnee` AS `nomAnnee`,`sr`.`codeSerie` AS `codeSerie`,`sr`.`nomSerie` AS `nomSerie` from ((((((`inscrit` `i` join `eleve` `e` on(`e`.`matricule` = `i`.`matricule`)) join `salle_classe` `sc` on(`sc`.`codeSalleClasse` = `i`.`codeSalleClasse`)) join `salle` `s` on(`s`.`codeSalle` = `sc`.`codeSalle`)) join `classe` `c` on(`c`.`codeClasse` = `sc`.`codeClasse`)) join `anneescolaire` `a` on(`a`.`codeAnnee` = `sc`.`codeAnnee`)) join `serie` `sr` on(`sr`.`codeSerie` = `c`.`codeSerie`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `note_view`
--

/*!50001 DROP VIEW IF EXISTS `note_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `note_view` AS select `n`.`idNote` AS `idNote`,`n`.`matricule` AS `matricule`,`n`.`note` AS `note`,`n`.`createdAt` AS `createdAt`,`n`.`updatedAt` AS `updatedAt`,`e`.`nom` AS `nom`,`e`.`isme` AS `isme`,`e`.`nni` AS `nni`,`e`.`adresse` AS `adresse`,`e`.`dateNaissance` AS `dateNaissance`,`e`.`sexe` AS `sexe`,`cm`.`codeClasse` AS `codeClasse`,`cm`.`codeMatiere` AS `codeMatiere`,`cm`.`horaireClasseMatiere` AS `horaireClasseMatiere`,`cm`.`coefficientClasseMatiere` AS `coefficientClasseMatiere`,`ex`.`codeExamen` AS `codeExamen`,`ex`.`codeClasseMatiere` AS `codeClasseMatiere`,`ex`.`dateExamen` AS `dateExamen`,`ex`.`heureDebutExamen` AS `heureDebutExamen`,`ex`.`heureFinExamen` AS `heureFinExamen`,`ex`.`codeSalleClasse` AS `codeSalleClasse`,`ex`.`statutExamen` AS `statutExamen`,`ev`.`codeEvaluation` AS `codeEvaluation`,`ev`.`nomEvaluation` AS `nomEvaluation`,`ev`.`indiceEvaluation` AS `indiceEvaluation`,`ev`.`coefficientEvaluation` AS `coefficientEvaluation`,`ev`.`typeEvaluation` AS `typeEvaluation`,`a`.`codeAnnee` AS `codeAnnee`,`a`.`nomAnnee` AS `nomAnnee` from ((((((`note` `n` join `eleve` `e` on(`e`.`matricule` = `n`.`matricule`)) join `examen` `ex` on(`ex`.`codeExamen` = `n`.`codeExamen`)) join `classe_matiere` `cm` on(`cm`.`codeClasseMatiere` = `ex`.`codeClasseMatiere`)) join `salle_classe` `sc` on(`sc`.`codeSalleClasse` = `ex`.`codeSalleClasse`)) join `anneescolaire` `a` on(`a`.`codeAnnee` = `sc`.`codeAnnee`)) join `evaluation` `ev` on(`ev`.`codeEvaluation` = `ex`.`codeEvaluation`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `salle_classe_view`
--

/*!50001 DROP VIEW IF EXISTS `salle_classe_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salle_classe_view` AS select `sc`.`codeSalleClasse` AS `codeSalleClasse`,`sc`.`indiceSalleClasse` AS `indiceSalleClasse`,`s`.`codeSalle` AS `codeSalle`,`s`.`nomSalle` AS `nomSalle`,`c`.`codeClasse` AS `codeClasse`,`c`.`nomClasse` AS `nomClasse`,`a`.`codeAnnee` AS `codeAnnee`,`a`.`nomAnnee` AS `nomAnnee`,`sr`.`codeSerie` AS `codeSerie`,`sr`.`nomSerie` AS `nomSerie` from ((((`salle_classe` `sc` join `salle` `s` on(`s`.`codeSalle` = `sc`.`codeSalle`)) join `classe` `c` on(`c`.`codeClasse` = `sc`.`codeClasse`)) join `anneescolaire` `a` on(`a`.`codeAnnee` = `sc`.`codeAnnee`)) join `serie` `sr` on(`sr`.`codeSerie` = `c`.`codeSerie`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-07 15:14:13
