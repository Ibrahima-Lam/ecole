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
INSERT INTO `classe_matiere` VALUES ('AR5D','5D','AR',3,3,'2024-10-01'),('EN5D','5D','EN',2,2,'2024-10-01'),('EPS5D','5D','EPS',2,1,'2024-10-01'),('FR5D','5D','FR',3,3,'2024-10-01'),('HG5D','5D','HG',2,2,'2024-10-01'),('IC5D','5D','IC',1,1,'2024-10-01'),('IR5D','5D','IR',2,2,'2024-10-01'),('MATH1AS','1AS','MATH',6,5,'2024-10-01'),('MATH2AS','2AS','MATH',6,5,'2024-10-01'),('MATH3AS','3AS','MATH',6,5,'2024-10-01'),('MATH4AS','4AS','MATH',6,5,'2024-10-01'),('MATH5C','5C','MATH',6,6,'2024-10-01'),('MATH5D','5D','MATH',4,4,'2024-10-01'),('MATH5LM','5LM','MATH',3,2,'2024-10-01'),('MATH5LO','5LO','MATH',2,2,'2024-10-01'),('MATH6C','6C','MATH',7,7,'2024-10-01'),('MATH6D','6D','MATH',5,4,'2024-10-01'),('MATH6LM','6LM','MATH',2,2,'2024-10-01'),('MATH6LO','6LO','MATH',2,2,'2024-10-01'),('MATH7C','7C','MATH',8,8,'2024-10-01'),('MATH7D','7D','MATH',5,6,'2024-10-01'),('MATH7LM','7LM','MATH',2,2,'2024-10-01'),('MATH7LO','7LO','MATH',2,2,'2024-10-01'),('PC5D','5D','PC',5,4,'2024-10-01'),('PHILO5D','5D','PHILO',2,2,'2024-10-01'),('SN5D','5D','SN',5,6,'2024-10-01');
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
  `statutEleve` enum('actif','inactif','exclu','abandonne') DEFAULT 'actif',
  PRIMARY KEY (`matricule`),
  UNIQUE KEY `eleve_nni_unique` (`nni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eleve`
--

LOCK TABLES `eleve` WRITE;
/*!40000 ALTER TABLE `eleve` DISABLE KEYS */;
INSERT INTO `eleve` VALUES ('5d1001','Adja Papa Amadou Diaw','اجا بابا امدو جاو','M','2010-12-31','Boghe','00000001','','actif'),('5d1002','Hadjirata Saidou Ndongo','هاجرة صيدو آ ندوكو','M','2010-12-31','Boghe','00000002','','actif'),('5d1003','Fatimata Ousmane Sall','فاتمتا أوسمان صال','M','2010-12-31','Boghe','00000003','','actif'),('5d1004','Hamadi Mamadou Niang','همادي مامادو انياق','M','2010-12-31','Boghe','00000004','','actif'),('5d1005','Aissata Amadou Niang','عيستا أمد انياق','M','2010-12-31','Boghe','00000005','','actif'),('5d1006','Aminata Amadou Sow','آمناتا أمادو صو','M','2010-12-31','Boghe','00000006','','actif'),('5d1007','Fatimata Ifra Sow','فاتمتا إفر صو','M','2010-12-31','Boghe','00000007','','actif'),('5d1008','Aboubekrine Mocktar Anne','أبوبكر مختار آن','M','2010-12-31','Boghe','00000008','','actif'),('5d1009','Khadijetou Amadou Tijaani','كاديجتا أمد تجان','M','2010-12-31','Boghe','00000009','','actif'),('5d1010','Fatimata Mamadou Sow','فاتمتا محمد صو','M','2010-12-31','Boghe','00000010','','actif'),('5d1011','Ousmane Siley N\'gaidé','عثمان سلي أنكيدي','M','2010-12-31','Boghe','00000011','','actif'),('5d1012','Ali Ibrahima Fall','علي ابراهيم افال','M','2010-12-31','Boghe','00000012','','actif'),('5d1013','Oumou Alassane Dia','آوم الحسين جا','M','2010-12-31','Boghe','00000013','','actif'),('5d1014','Salamata Ibrahima M\'bodj','سلمتا ابراهيم امبوجي','M','2010-12-31','Boghe','00000014','','actif'),('5d1015','Athia Mamadou Diaw','اتشا ممدو جاو','M','2010-12-31','Boghe','00000015','','actif'),('5d1016','Mamadou Syleymani Ba','ممدو سليمان با','M','2010-12-31','Boghe','00000016','','actif'),('5d1017','Mariata Alhousseini N\'diaye','ماريتا الحسين أنحاي','M','2010-12-31','Boghe','00000017','','actif'),('5d1018','Djelia Ousmane Djigo','جيلييا عثمان جيكو','M','2010-12-31','Boghe','00000018','','actif'),('5d1019','Oumar Hamidou Sokho','عمر حميدو سوخو','M','2010-12-31','Boghe','00000019','','actif'),('5d1020','Amadou Bechir Lam','أمدو باشر لم','M','2010-12-31','Boghe','00000020','','actif'),('5d1021','Binta Cheikh Kamara','بينتا الشيخ اقمير','M','2010-12-31','Boghe','00000021','','actif'),('5d1022','Hapsatou Hamadi Dia','حبصة همادي جا','M','2010-12-31','Boghe','00000022','','actif'),('5d1023','Aissata Aboubekerine Ba','عيستاتا أبوبكر با','M','2010-12-31','Boghe','00000023','','actif'),('5d1024','Fatimata Aboubekerine N\'diaye','أفتيماتا أبوبكر انجاي','M','2010-12-31','Boghe','00000024','','actif'),('5d1025','Mariata Oumar Ba','ماريتا عمر با','M','2010-12-31','Boghe','00000025','','actif'),('5d1026','Moussa Ibrahima Dem','موسي ابراهيم دام','M','2010-12-31','Boghe','00000026','','actif'),('5d1027','Oumiyata Mamadou Ly','امينتا ممدو لي','M','2010-12-31','Boghe','00000027','','actif'),('5d1028','Mariam Mamadou Ly','مريم ممدو لي','M','2010-12-31','Boghe','00000028','','actif'),('5d1029','Ramata Mamadou Tall','رمتا ممدو تال','M','2010-12-31','Boghe','00000029','','actif'),('5d1030','Diallo Alpha Mamadou','جاو ألف ممدو','M','2010-12-31','Boghe','00000030','','actif'),('5d1031','Mohamed Moustapha Mamadou Dia','محمد مصطف ممدو جا','M','2010-12-31','Boghe','00000031','','actif'),('5d1032','Mamadou Ibrahima Diallo','ممدو ابراهيم جاو','M','2010-12-31','Boghe','00000032','','actif'),('5d1033','Yacine Alhousseine N\'diaye','ياسين الحسين انجاي','M','2010-12-31','Boghe','00000033','','actif'),('5d1034','Mourtala Mocktar Diop','مورتالا المختار جوب','M','2010-12-31','Boghe','00000034','','actif'),('5d1035','Bane Dia','باني أندونكل جا','M','2010-12-31','Boghe','00000035','','actif'),('5d1036','Mody Ibrahima Thiam','مدإ ابراهيم تسام','M','2010-12-31','Boghe','00000036','','actif'),('5d1037','Djeinaba Mamadou Dia','جينبا ممدو جا','M','2010-12-31','Boghe','00000037','','actif'),('5d1038','Fatimata Cheikh Tijani Thiam','فاتمتا الشيخ تجان تسام','M','2010-12-31','Boghe','00000038','','actif'),('5d1039','Hawa Ibrahima Diba','حوأ ابراهيم دبا','M','2010-12-31','Boghe','00000039','','actif'),('5d1040','Penda Amadou Lô','بندا أمادو لو','M','2010-12-31','Boghe','00000040','','actif'),('5d1041','Cheikhou Cheikna Sylla','الشيخ الشيخن سإل','M','2010-12-31','Boghe','00000041','','actif'),('5d1042','Amadou Abdel Karim N\'diaye','أمد عبد الكريم انجاي','M','2010-12-31','Boghe','00000042','','actif'),('5d1043','Kadiata Yahya Ba','كاديجتا يحيا با','M','2010-12-31','Boghe','00000043','','actif'),('5d1044','Amianta Moussa Diallo','ءمنتا موسي جاو','M','2010-12-31','Boghe','00000044','','actif'),('5d1045','Maly Hamath N\'deye','مالي حمتا داي','M','2010-12-31','Boghe','00000045','','actif'),('5d1046','Mariam Oumar M\'boye','مريم ءمار بوي','M','2010-12-31','Boghe','00000046','','actif'),('5d1047','Fatimata Baydi Thiam','فاتمتا بياد تسام','M','2010-12-31','Boghe','00000047','','actif'),('5d1048','Fatimata Oumar N\'diaye','فاتمتا ءمار انجاي','M','2010-12-31','Boghe','00000048','','actif'),('5d1049','Hawoly Mamadou Ly','هولي ممدو لي','M','2010-12-31','Boghe','00000049','','actif'),('5d1050','Sidi Chamakh Lemkhair','ساد الشمك لمكر','M','2010-12-31','Boghe','00000050','','actif'),('5d1051','Abdoulaye Cheikh Dah','ءبدالله الشيخ الدا','M','2010-12-31','Boghe','00000051','','actif'),('5d1052','Mouhaadji Abdrahmani Diallo','مجايج ءبد رحمن جلو','M','2010-12-31','Boghe','00000052','','actif'),('5d1053','Adam Mamadou Lam','أدم ممدو لام','M','2010-12-31','Boghe','00000053','','actif'),('5d1054','Aissata Abou Dia','ءيستا أبو جا','M','2010-12-31','Boghe','00000054','','actif'),('5d1055','Aissata Amadou Sow','ءيستا أمد صو','M','2010-12-31','Boghe','00000055','','actif'),('5d1056','Ali Adama Komé','ءلي ادم كم','M','2010-12-31','Boghe','00000056','','actif'),('5d1057','Mamoudou Salif Ba','محمد سلف با','M','2010-12-31','Boghe','00000057','','actif'),('5d1058','Aminata Amadou Sow','ءمنتا أمد صو','M','2010-12-31','Boghe','00000058','','actif'),('5d1059','Abou Bekri Dem','أبو بكر دام','M','2010-12-31','Boghe','00000059','','actif'),('5d1060','Fatimata Aliou Kebé','فاتمتا ألو كب','M','2010-12-31','Boghe','00000060','','actif'),('5d1061','Fatimata Saidou Wagne','فاتمتا صيدو واني','M','2010-12-31','Boghe','00000061','','actif'),('5d1062','Aminata Ibrahima Dia','ءمنتا ابراهيم جا','M','2010-12-31','Boghe','00000062','','actif'),('5d1063','Saidou Amadou Sy','صيد أمد سي','M','2010-12-31','Boghe','00000063','','actif'),('5d201','Fatimata Amadou Sy','فاتمتا أمادو سي','F','0000-00-00','','00000101','','actif'),('5d202','Penda Moussa Diou','بندا موس جو','M','2007-12-12','Boghe','00000102','','actif'),('5d203','Mohamed Yahya Ba','محمد يحي با','M','0000-00-00','','00000103','','actif'),('5d204','Mariata Mamadou Dia','ماريانا ممدو جا','M','0000-00-00','','00000104','','actif'),('5d205','Hawoli Hamdou Djigo','هولي حمدو جيكو','M','0000-00-00','','00000105','','actif'),('5d206','Maimouna Amadou Awe','ميمون أمد أو','M','0000-00-00','','00000106','','actif'),('5d207','Houria Harouna Sow','هوري هارونا صو','M','0000-00-00','','00000107','','actif'),('5d208','Mariam Abdoulaye Lam','مريم عبدالله لام','M','0000-00-00','','00000108','','actif'),('5d209','Alssane Alhousseine Sy','ألصن الحسن سي','M','0000-00-00','','00000109','','actif'),('5d210','Mariam Oumar Diallo','مريم عمر جلو','M','0000-00-00','','00000110','','actif'),('5d211','Aissata Seidou Sém','عيستا صيد سم','M','0000-00-00','','00000111','','actif'),('5d212','Raki Alhassane Diaw','ركي الحسن جو','M','0000-00-00','','00000112','','actif'),('5d213','Djeinaba Abdoulaye Ba','حينبا عبدالله با','M','0000-00-00','','00000113','','actif'),('5d214','Aissata Mamadou N Dongo','عيستا ممدو اندوكو','M','0000-00-00','','00000114','','actif'),('5d215','Hamath Hamadi Bass','همات حامدو باس','M','0000-00-00','','00000115','','actif'),('5d216','Ibrahima Amadou N Gaide','ابراهيم أمدو انكيدى','M','0000-00-00','','00000116','','actif'),('5d217','Aissata Ibrahima Dem','عيستا ابراهيم دام','M','0000-00-00','','00000117','','actif'),('5d218','Moussa Adi Diallo','موسي عيدي جلو','M','0000-00-00','','00000118','','actif'),('5d219','Ramata Amadou Wagne','رامتا أمدو وني','M','0000-00-00','','00000119','','actif'),('5d220','Fatimata Mamadou Saidou Sow','فاتمتا ممدو صيد صو','M','0000-00-00','','00000120','','actif'),('5d221','Hapsatou Alhassane Ba','حفصة الحسن با','M','0000-00-00','','00000121','','actif'),('5d222','Fatimata Aboubacri Dia','فاتمتا أبو بكر. جا','M','0000-00-00','','00000122','','actif'),('5d223','Sidi Haroune Ndaye','سدإ هارون نجاي','M','0000-00-00','','00000123','','actif'),('5d224','Fatimata Amadou Niang','فاتمتا أمد نياق','M','0000-00-00','','00000124','','actif'),('5d225','Kaba Mohamed Salem Bourouiss','كآبة محمد سالم بورويص','M','0000-00-00','','00000125','','actif'),('5d226','Fatimata Moussa Anne','فاتمتا أبوبكر جا','M','0000-00-00','','00000126','','actif'),('5d227','Habsatou Moussa Fofana','حبصتو موسي فوفانا','M','0000-00-00','','00000127','','actif'),('5d228','Moussa Amadou Kasam','موسي أمد كسما','M','0000-00-00','','00000128','','actif'),('5d229','Abdoulaye Saidou Ba','عبدالله صيد با','M','0000-00-00','','00000129','','actif'),('5d230','Aissata Bolol Ba','عيستا بولول با','M','0000-00-00','','00000130','','actif'),('5d231','Yacine Adam Boubacar','ياسين ادم بوبكر','M','0000-00-00','','00000131','','actif'),('5d232','Aissata Amadou Sow','عيستا عمدو صو','M','0000-00-00','','00000132','','actif'),('5d233','Djeinaba Mamadou Thiam','جينبا ممدو تيام','M','0000-00-00','','00000133','','actif'),('5d234','Salamata Abdoulaye N Gaide','سالمتا عبدالله إندونكو','M','0000-00-00','','00000134','','actif'),('5d235','Maimouna Ibrahima Dem','مبمونا ابراهيم دم','M','0000-00-00','','00000135','','actif'),('5d236','Mohamed Fadal Baye','محمد فطال العيد','M','0000-00-00','','00000136','','actif'),('5d237','Hamza Mattalah Elid','حمزه مطلل العيد','M','0000-00-00','','00000137','','actif'),('5d238','Fatimata Haroune Lom','فاتمتا هارون لوم','M','0000-00-00','','00000138','','actif'),('5d239','Fatimata Alhassane Yark','فاطمة الحسن يرك','M','0000-00-00','','00000139','','actif'),('5d240','Salek Mbareck Soulouk','السالمة امبارك مسلوك','M','0000-00-00','','00000140','','actif'),('5d241','Aissata Damad Jamali','عيشة دمد اجميلي','M','0000-00-00','','00000141','','actif'),('5d242','Zeinabou Lemratt Mohamed Salem','زينب لمرابط محمد سالم','M','0000-00-00','','00000142','','actif'),('5d243','Kardiata Abdoulaye Ba','كرجتا عبدالله با','M','0000-00-00','','00000143','','actif'),('5d244','Hawa Diallel Thiam','حو حيلا تيام','M','0000-00-00','','00000144','','actif'),('5d245','Mohamed Abdourahmane Cheick Sidi Mocktar Mahmoude','محمد عبد رحمن الشيخ سدإ مختار محمد','M','0000-00-00','','00000145','','actif'),('5d246','Mari Mamadou Dia','مر ممد جا','M','0000-00-00','','00000146','','actif'),('5d247','Abdarahmane El Housseinou Silla','عبد رحمن الحسن سلا','M','0000-00-00','','00000147','','actif'),('5d248','Thierno Alassane Sow','تحرن الحسن صو','M','0000-00-00','','00000148','','actif'),('5d249','Moctir Binte Amjana','مختير بنت اميجن','M','0000-00-00','','00000149','','actif'),('5d250','Aminata Mamadou Diop','أمنتا ممدو جوب','M','0000-00-00','','00000150','','actif'),('5d251','Ramata Cheikh Oumar Wagne','رامتا الشيخ عمر واني','M','0000-00-00','','00000151','','actif'),('5d252','Mamadou Daouda Thiam','ممدو دواود تيام','M','0000-00-00','','00000152','','actif'),('5d253','Aliou Alssane Sow','الو الحسن صو','M','0000-00-00','','00000153','','actif'),('5d254','Abdoulaye Mohamed Sy','ءبدالله محمد سي','M','0000-00-00','','00000154','','actif'),('5d255','Djella Boubou Diallo','جيلا بوبو جلو','M','0000-00-00','','00000155','','actif'),('5d256','Sayidi Beibou Boilil','','M','0000-00-00','','00000156','','actif'),('5d257','Aissata Abou Dia','عيستا أبو جا','M','0000-00-00','','00000157','','actif'),('5d258','Zehbi Mohamed Rhaby','زحب محمد راب','M','0000-00-00','','00000158','','actif'),('5d259','Salamata Abdahmani Sy','سلمت عبدالرحمن سي','M','0000-00-00','','00000159','','actif'),('5d260','Mariam N\'fah Ouatara','مريم انفاه وتارا','M','0000-00-00','','00000160','','actif'),('5d261','Aminetou Mohamed Samba','عمنتا محمد صمب','M','0000-00-00','','00000161','','actif'),('5d262','Khadijetou Kaber Sy','كادجتا كبير سي','M','0000-00-00','','00000162','','actif'),('5d263','Abou Adam Anne','أبو ادم أن','M','0000-00-00','','00000163','','actif'),('5d301','Halima Mamadou Dia','حليمة ممدو جا','M','0000-00-00','','00000301','','actif'),('5d302','Maimouna Mouhamadou Yall','ميمون محماد يال','M','0000-00-00','','00000302','','actif'),('5d303','Aissata Moussa Ly','عيستا موسى لي','M','0000-00-00','','00000303','','actif'),('5d304','Mamadou Amadou Sow','ممدو أمد صو','M','0000-00-00','','00000304','','actif'),('5d305','Mariam Kalidou Sow','مريم خاليدو جلو','M','0000-00-00','','00000305','','actif'),('5d306','Aissata Moussa Djigo','ءيستا موس جيكو','M','0000-00-00','','00000306','','actif'),('5d307','Amadou Aboubecrine Diallo','أمدو أبوبكر جلو','M','0000-00-00','','00000307','','actif'),('5d308','Amadou Alhoucein Dem','أمدو الحسين دم','M','0000-00-00','','00000308','','actif'),('5d309','Fatimata Ousmane Ba','فاتمتا عثمان با','M','0000-00-00','','00000309','','actif'),('5d310','Deffa Mamadou Ly','دافا ممدو لي','M','0000-00-00','','00000310','','actif'),('5d311','Aissata Ibrahima Sow','ءيستا إبراهيم صو','M','0000-00-00','','00000311','','actif'),('5d312','Djeinaba Mamadou Wagne','جينبا ممدو وآني','M','0000-00-00','','00000312','','actif'),('5d313','Fatimata Amadou Lo','فاتمتا أمدو لو','M','0000-00-00','','00000313','','actif'),('5d314','Hawa Abdoulaye Dia','حوأ عبدالله جا','M','0000-00-00','','00000314','','actif'),('5d315','Fatimata Idrissa Sy','فاتمتا إدريس سي','M','0000-00-00','','00000315','','actif'),('5d316','Mariam Mamadou Dia','مريم ممدو جا','M','0000-00-00','','00000316','','actif'),('5d317','Fatimata Samba Diop','فاتمتا صمب جوب','M','0000-00-00','','00000317','','actif'),('5d318','Aissata Mamadou Sow','ءيستا ممدو صو','M','0000-00-00','','00000318','','actif'),('5d319','Fatimata Abdrahmani Dia','فاتمتا عبد الرحمن جا','M','0000-00-00','','00000319','','actif'),('5d320','Aissata Moussa Sy','ءيستا موسى سي','M','0000-00-00','','00000320','','actif'),('5d321','Fatimata Abou Diop','فاتمتا أبو جوب','M','0000-00-00','','00000321','','actif'),('5d322','Hawa Adam Diaw','حو أدام جو','M','0000-00-00','','00000322','','actif'),('5d323','Fatimata Sayide','فاتمتا سيدي انياك','M','0000-00-00','','00000323','','actif'),('5d324','Awo Oumar Sow','آوا عمر صو','M','0000-00-00','','00000324','','actif'),('5d325','Ramata Abou Thiam','رامتا أبو تيام','M','0000-00-00','','00000325','','actif'),('5d326','Aissata Mouhamadou Dia','عيستا ممدو جا','M','0000-00-00','','00000326','','actif'),('5d327','Aminata Hourane Ba','آمناتا هارون با','M','0000-00-00','','00000327','','actif'),('5d328','Oumou Mamadou N\'gaide','أموي مامادو انكيدي','M','0000-00-00','','00000328','','actif'),('5d329','Amadou Maka Ba','أمد ميكا با','M','0000-00-00','','00000329','','actif'),('5d330','Fatimata Mamadou N\'dongo','فاتمتا ممدو ندوكو','M','0000-00-00','','00000330','','actif'),('5d331','Bocar Amadou Niang','بوكار آمادو انياق','M','0000-00-00','','00000331','','actif'),('5d332','Kardiata Mamadou Ba','كاديجتا ممدو با','M','0000-00-00','','00000332','','actif'),('5d333','Salamata Alssane Diallo','سلمت الصن جلو','M','0000-00-00','','00000333','','actif'),('5d334','Tako Mamadou Gacko','تاكو ممدو كاكو','M','0000-00-00','','00000334','','actif'),('5d335','Mahamed Lamine Amadou Kamara','محمد لمين أمد كامرى','M','0000-00-00','','00000335','','actif'),('5d336','Alssane Siley Lam','آلصن سيلى لام','M','0000-00-00','','00000336','','actif'),('5d337','Oumou Abdoulaye Dia','آموي عبدالله جا','M','0000-00-00','','00000337','','actif'),('5d338','Mamadou Djibril Sy','ممدو حبريل سي','M','0000-00-00','','00000338','','actif'),('5d339','Oumar Djibril Sy','عمر حبريل سي','M','0000-00-00','','00000339','','actif'),('5d340','Ramatoulaye Amadou Dia','رمتا أمد جا','M','0000-00-00','','00000340','','actif'),('5d341','Saif Oumar Baba N\'gaide','سلفي عمر باب ندنكدي','M','0000-00-00','','00000341','','actif'),('5d342','Abou Samba Diallo','أبو صمب جلو','M','0000-00-00','','00000342','','actif'),('5d343','Oumar Hadji Saidou Thiam','عمر الحاج صيدو اتيام','M','0000-00-00','','00000343','','actif'),('5d344','Alhousseine Mohamed Diop','الحسن محمد جوب','M','0000-00-00','','00000344','','actif'),('5d345','Aissata Harouna Kamara','عيستا هارون كامرى','M','0000-00-00','','00000345','','actif'),('5d346','Aminata Ibrahima Thiam','أمنتا إبراهيم اتيام','M','0000-00-00','','00000346','','actif'),('5d347','Maimouna Abou Lom','ميمون أبو لوم','M','0000-00-00','','00000347','','actif'),('5d348','Raki Mohamed Ba','ركي محمد با','M','0000-00-00','','00000348','','actif'),('5d349','Aminata Adama Sow','آمناتا ادم صو','M','0000-00-00','','00000349','','actif'),('5d350','Maimouna Biram Sy','ميمون برم سي','M','0000-00-00','','00000350','','actif'),('5d351','Halima Mamadou Dia','حليمة ممدو جا','M','0000-00-00','','00000351','','actif'),('5d352','Hawa Amadou Dia','حوأ أمدو جا','M','0000-00-00','','00000352','','actif'),('5d353','Mamadou Amadou Barry','ممدو أمدو برإ','M','0000-00-00','','00000353','','actif'),('5d354','Fatimata Kalidou N\'ongo','فاتمتا كلدو ندوكو','M','0000-00-00','','00000354','','actif'),('5d355','Fatimata Moussa Thiam','فاتمتا موسي اتيام','M','0000-00-00','','00000355','','actif'),('5d356','Aisse Amadou N\'gaide','عيستا عمدو انكيدي','M','0000-00-00','','00000356','','actif'),('5d357','Djeinaba Oumar Ba','جينبا عمر با','M','0000-00-00','','00000357','','actif'),('5d358','Aminata Oumar Ba','امينتا عمر با','M','0000-00-00','','00000358','','actif'),('5d359','Djeinaba Tijani N\'gaide','جينبا تجان انكيدي','M','0000-00-00','','00000359','','actif'),('5d360','Ibrahima Oumar Wade','إبراهيم عمر واد','M','0000-00-00','','00000360','','actif'),('5d361','Hawa Mamadou Ba','حوأ ممدو با','M','2025-03-27','','00000361','','actif');
/*!40000 ALTER TABLE `eleve` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER eleve_matricule_trigger
AFTER UPDATE ON eleve
FOR EACH ROW
BEGIN
    if (NEW.matricule != OLD.matricule) then
        UPDATE inscrit 
        SET matricule = NEW.matricule 
        WHERE matricule = OLD.matricule;
        update note 
        set matricule = NEW.matricule 
        where matricule = OLD.matricule;
    end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
INSERT INTO `evaluation` VALUES ('C1','1er composition',1,1,'composition'),('C2','2eme composition',2,2,'composition'),('C3','3eme composition',3,3,'composition'),('D1','1er devoir',1,1,'devoir'),('D2','2eme devoir',2,1,'devoir'),('D3','3eme devoir',3,1,'devoir');
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
INSERT INTO `examen` VALUES ('A24255D1AR5DC2','AR5D','A24255D1','C2','0000-00-00','00:00:00','00:00:00','1'),('A24255D1EN5DC2','EN5D','A24255D1','C2','0000-00-00','00:00:00','00:00:00','1'),('A24255D1EPS5DC2','EPS5D','A24255D1','C2','0000-00-00','00:00:00','00:00:00','1'),('A24255D1FR5DC2','FR5D','A24255D1','C2','0000-00-00','00:00:00','00:00:00','1'),('A24255D1HG5DC2','HG5D','A24255D1','C2','0000-00-00','00:00:00','00:00:00','1'),('A24255D1IC5DC2','IC5D','A24255D1','C2','0000-00-00','00:00:00','00:00:00','1'),('A24255D1IR5DC2','IR5D','A24255D1','C2','0000-00-00','00:00:00','00:00:00','1'),('A24255D1MATH5DC2','MATH5D','A24255D1','C2','0000-00-00','00:00:00','00:00:00','1'),('A24255D1PC5DC1','PC5D','A24255D1','C1','2024-12-26','08:00:00','10:00:00','1'),('A24255D1PC5DC2','PC5D','A24255D1','C2','0000-00-00','00:00:00','00:00:00','1'),('A24255D1PC5DD1','PC5D','A24255D1','D1','2025-01-28','08:00:00','10:00:00','1'),('A24255D1PHILO5DC2','PHILO5D','A24255D1','C2','0000-00-00','00:00:00','00:00:00','1'),('A24255D1SN5DC2','SN5D','A24255D1','C2','0000-00-00','00:00:00','00:00:00','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscrit`
--

LOCK TABLES `inscrit` WRITE;
/*!40000 ALTER TABLE `inscrit` DISABLE KEYS */;
INSERT INTO `inscrit` VALUES (1,'5d1001','A24255D1',1,'passant','2024-10-01'),(2,'5d1002','A24255D1',2,'passant','2024-10-01'),(3,'5d1003','A24255D1',3,'passant','2024-10-01'),(4,'5d1004','A24255D1',4,'passant','2024-10-01'),(5,'5d1005','A24255D1',5,'passant','2024-10-01'),(6,'5d1006','A24255D1',6,'passant','2024-10-01'),(7,'5d1007','A24255D1',7,'passant','2024-10-01'),(8,'5d1008','A24255D1',8,'passant','2024-10-01'),(9,'5d1009','A24255D1',9,'passant','2024-10-01'),(10,'5d1010','A24255D1',10,'passant','2024-10-01'),(11,'5d1011','A24255D1',11,'passant','2024-10-01'),(12,'5d1012','A24255D1',12,'passant','2024-10-01'),(13,'5d1013','A24255D1',13,'passant','2024-10-01'),(14,'5d1014','A24255D1',14,'passant','2024-10-01'),(15,'5d1015','A24255D1',15,'passant','2024-10-01'),(16,'5d1016','A24255D1',16,'passant','2024-10-01'),(17,'5d1017','A24255D1',17,'passant','2024-10-01'),(18,'5d1018','A24255D1',18,'passant','2024-10-01'),(19,'5d1019','A24255D1',19,'passant','2024-10-01'),(20,'5d1020','A24255D1',20,'passant','2024-10-01'),(21,'5d1021','A24255D1',21,'passant','2024-10-01'),(22,'5d1022','A24255D1',22,'passant','2024-10-01'),(23,'5d1023','A24255D1',23,'passant','2024-10-01'),(24,'5d1024','A24255D1',24,'passant','2024-10-01'),(25,'5d1025','A24255D1',25,'passant','2024-10-01'),(26,'5d1026','A24255D1',26,'passant','2024-10-01'),(27,'5d1027','A24255D1',27,'passant','2024-10-01'),(28,'5d1028','A24255D1',28,'passant','2024-10-01'),(29,'5d1029','A24255D1',29,'passant','2024-10-01'),(30,'5d1030','A24255D1',30,'passant','2024-10-01'),(31,'5d1031','A24255D1',31,'passant','2024-10-01'),(32,'5d1032','A24255D1',32,'passant','2024-10-01'),(33,'5d1033','A24255D1',33,'passant','2024-10-01'),(34,'5d1034','A24255D1',34,'passant','2024-10-01'),(35,'5d1035','A24255D1',35,'passant','2024-10-01'),(36,'5d1036','A24255D1',36,'passant','2024-10-01'),(37,'5d1037','A24255D1',37,'passant','2024-10-01'),(38,'5d1038','A24255D1',38,'passant','2024-10-01'),(39,'5d1039','A24255D1',39,'passant','2024-10-01'),(40,'5d1040','A24255D1',40,'passant','2024-10-01'),(41,'5d1041','A24255D1',41,'passant','2024-10-01'),(42,'5d1042','A24255D1',42,'passant','2024-10-01'),(43,'5d1043','A24255D1',43,'passant','2024-10-01'),(44,'5d1044','A24255D1',44,'passant','2024-10-01'),(45,'5d1045','A24255D1',45,'passant','2024-10-01'),(46,'5d1046','A24255D1',46,'passant','2024-10-01'),(47,'5d1047','A24255D1',47,'passant','2024-10-01'),(48,'5d1048','A24255D1',48,'passant','2024-10-01'),(49,'5d1049','A24255D1',49,'passant','2024-10-01'),(50,'5d1050','A24255D1',50,'passant','2024-10-01'),(51,'5d1051','A24255D1',51,'passant','2024-10-01'),(52,'5d1052','A24255D1',52,'passant','2024-10-01'),(53,'5d1053','A24255D1',53,'passant','2024-10-01'),(54,'5d1054','A24255D1',54,'passant','2024-10-01'),(55,'5d1055','A24255D1',55,'passant','2024-10-01'),(56,'5d1056','A24255D1',56,'passant','2024-10-01'),(57,'5d1057','A24255D1',57,'passant','2024-10-01'),(58,'5d1058','A24255D1',58,'passant','2024-10-01'),(59,'5d1059','A24255D1',59,'passant','2024-10-01'),(60,'5d1060','A24255D1',60,'passant','2024-10-01'),(61,'5d1061','A24255D1',61,'passant','2024-10-01'),(62,'5d1062','A24255D1',62,'passant','2024-10-01'),(63,'5d1063','A24255D1',63,'passant','2024-10-01'),(64,'5d201','A24255D2',1,'passant','2024-10-01'),(65,'5d202','A24255D2',2,'passant','2024-10-01'),(66,'5d203','A24255D2',3,'passant','2024-10-01'),(67,'5d204','A24255D2',4,'passant','2024-10-01'),(68,'5d205','A24255D2',5,'passant','2024-10-01'),(69,'5d206','A24255D2',6,'passant','2024-10-01'),(70,'5d207','A24255D2',7,'passant','2024-10-01'),(71,'5d208','A24255D2',8,'passant','2024-10-01'),(72,'5d209','A24255D2',9,'passant','2024-10-01'),(73,'5d210','A24255D2',10,'passant','2024-10-01'),(74,'5d211','A24255D2',11,'passant','2024-10-01'),(75,'5d212','A24255D2',12,'passant','2024-10-01'),(76,'5d213','A24255D2',13,'passant','2024-10-01'),(77,'5d214','A24255D2',14,'passant','2024-10-01'),(78,'5d215','A24255D2',15,'passant','2024-10-01'),(79,'5d216','A24255D2',16,'passant','2024-10-01'),(80,'5d217','A24255D2',17,'passant','2024-10-01'),(81,'5d218','A24255D2',18,'passant','2024-10-01'),(82,'5d219','A24255D2',19,'passant','2024-10-01'),(83,'5d220','A24255D2',20,'passant','2024-10-01'),(84,'5d221','A24255D2',21,'passant','2024-10-01'),(85,'5d222','A24255D2',22,'passant','2024-10-01'),(86,'5d223','A24255D2',23,'passant','2024-10-01'),(87,'5d224','A24255D2',24,'passant','2024-10-01'),(88,'5d225','A24255D2',25,'passant','2024-10-01'),(89,'5d226','A24255D2',26,'passant','2024-10-01'),(90,'5d227','A24255D2',27,'passant','2024-10-01'),(91,'5d228','A24255D2',28,'passant','2024-10-01'),(92,'5d229','A24255D2',29,'passant','2024-10-01'),(93,'5d230','A24255D2',30,'passant','2024-10-01'),(94,'5d231','A24255D2',31,'passant','2024-10-01'),(95,'5d232','A24255D2',32,'passant','2024-10-01'),(96,'5d233','A24255D2',33,'passant','2024-10-01'),(97,'5d234','A24255D2',34,'passant','2024-10-01'),(98,'5d235','A24255D2',35,'passant','2024-10-01'),(99,'5d236','A24255D2',36,'passant','2024-10-01'),(100,'5d237','A24255D2',37,'passant','2024-10-01'),(101,'5d238','A24255D2',38,'passant','2024-10-01'),(102,'5d239','A24255D2',39,'passant','2024-10-01'),(103,'5d240','A24255D2',40,'passant','2024-10-01'),(104,'5d241','A24255D2',41,'passant','2024-10-01'),(105,'5d242','A24255D2',42,'passant','2024-10-01'),(106,'5d243','A24255D2',43,'passant','2024-10-01'),(107,'5d244','A24255D2',44,'passant','2024-10-01'),(108,'5d245','A24255D2',45,'passant','2024-10-01'),(109,'5d246','A24255D2',46,'passant','2024-10-01'),(110,'5d247','A24255D2',47,'passant','2024-10-01'),(111,'5d248','A24255D2',48,'passant','2024-10-01'),(112,'5d249','A24255D2',49,'passant','2024-10-01'),(113,'5d250','A24255D2',50,'passant','2024-10-01'),(114,'5d251','A24255D2',51,'passant','2024-10-01'),(115,'5d252','A24255D2',52,'passant','2024-10-01'),(116,'5d253','A24255D2',53,'passant','2024-10-01'),(117,'5d254','A24255D2',54,'passant','2024-10-01'),(118,'5d255','A24255D2',55,'passant','2024-10-01'),(119,'5d256','A24255D2',56,'passant','2024-10-01'),(120,'5d257','A24255D2',57,'passant','2024-10-01'),(121,'5d258','A24255D2',58,'passant','2024-10-01'),(122,'5d259','A24255D2',59,'passant','2024-10-01'),(123,'5d260','A24255D2',60,'passant','2024-10-01'),(124,'5d261','A24255D2',61,'passant','2024-10-01'),(125,'5d262','A24255D2',62,'passant','2024-10-01'),(126,'5d263','A24255D2',63,'passant','2024-10-01'),(127,'5d301','A24255D3',1,'passant','2024-10-01'),(128,'5d302','A24255D3',2,'passant','2024-10-01'),(129,'5d303','A24255D3',3,'passant','2024-10-01'),(130,'5d304','A24255D3',4,'passant','2024-10-01'),(131,'5d305','A24255D3',5,'passant','2024-10-01'),(132,'5d306','A24255D3',6,'passant','2024-10-01'),(133,'5d307','A24255D3',7,'passant','2024-10-01'),(134,'5d308','A24255D3',8,'passant','2024-10-01'),(135,'5d309','A24255D3',9,'passant','2024-10-01'),(136,'5d310','A24255D3',10,'passant','2024-10-01'),(137,'5d311','A24255D3',11,'passant','2024-10-01'),(138,'5d312','A24255D3',12,'passant','2024-10-01'),(139,'5d313','A24255D3',13,'passant','2024-10-01'),(140,'5d314','A24255D3',14,'passant','2024-10-01'),(141,'5d315','A24255D3',15,'passant','2024-10-01'),(142,'5d316','A24255D3',16,'passant','2024-10-01'),(143,'5d317','A24255D3',17,'passant','2024-10-01'),(144,'5d318','A24255D3',18,'passant','2024-10-01'),(145,'5d319','A24255D3',19,'passant','2024-10-01'),(146,'5d320','A24255D3',20,'passant','2024-10-01'),(147,'5d321','A24255D3',21,'passant','2024-10-01'),(148,'5d322','A24255D3',22,'passant','2024-10-01'),(149,'5d323','A24255D3',23,'passant','2024-10-01'),(150,'5d324','A24255D3',24,'passant','2024-10-01'),(151,'5d325','A24255D3',25,'passant','2024-10-01'),(152,'5d326','A24255D3',26,'passant','2024-10-01'),(153,'5d327','A24255D3',27,'passant','2024-10-01'),(154,'5d328','A24255D3',28,'passant','2024-10-01'),(155,'5d329','A24255D3',29,'passant','2024-10-01'),(156,'5d330','A24255D3',30,'passant','2024-10-01'),(157,'5d331','A24255D3',31,'passant','2024-10-01'),(158,'5d332','A24255D3',32,'passant','2024-10-01'),(159,'5d333','A24255D3',33,'passant','2024-10-01'),(160,'5d334','A24255D3',34,'passant','2024-10-01'),(161,'5d335','A24255D3',35,'passant','2024-10-01'),(162,'5d336','A24255D3',36,'passant','2024-10-01'),(163,'5d337','A24255D3',37,'passant','2024-10-01'),(164,'5d338','A24255D3',38,'passant','2024-10-01'),(165,'5d339','A24255D3',39,'passant','2024-10-01'),(166,'5d340','A24255D3',40,'passant','2024-10-01'),(167,'5d341','A24255D3',41,'passant','2024-10-01'),(168,'5d342','A24255D3',42,'passant','2024-10-01'),(169,'5d343','A24255D3',43,'passant','2024-10-01'),(170,'5d344','A24255D3',44,'passant','2024-10-01'),(171,'5d345','A24255D3',45,'passant','2024-10-01'),(172,'5d346','A24255D3',46,'passant','2024-10-01'),(173,'5d347','A24255D3',47,'passant','2024-10-01'),(174,'5d348','A24255D3',48,'passant','2024-10-01'),(175,'5d349','A24255D3',49,'passant','2024-10-01'),(176,'5d350','A24255D3',50,'passant','2024-10-01'),(177,'5d351','A24255D3',51,'passant','2024-10-01'),(178,'5d352','A24255D3',52,'passant','2024-10-01'),(179,'5d353','A24255D3',53,'passant','2024-10-01'),(180,'5d354','A24255D3',54,'passant','2024-10-01'),(181,'5d355','A24255D3',55,'passant','2024-10-01'),(182,'5d356','A24255D3',56,'passant','2024-10-01'),(183,'5d357','A24255D3',57,'passant','2024-10-01'),(184,'5d358','A24255D3',58,'passant','2024-10-01'),(185,'5d359','A24255D3',59,'passant','2024-10-01'),(186,'5d360','A24255D3',60,'passant','2024-10-01'),(187,'5d361','A24255D3',61,'passant','2024-10-01');
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
INSERT INTO `matiere` VALUES ('AR','Arabe','اللغة العربية','AR'),('EN','Anglais','الانجليزية','EN'),('EPS','Education Physique et Sportive','الفيزياء و الرياضيات','FR'),('FR','Français','الفراسية','FR'),('HG','Histoire et Geographie','التاريخ و الجغرافية','AR'),('IC','Education civique','التربية المدينة','AR'),('INFO','Technologie et Informatique','التكنولوجيا','FR'),('IR','Education Islamique','التربية الإسلامية','AR'),('LEG','Législation','القانون','AR'),('MATH','Mathématiques','الرياضيات','FR'),('PC','Physique Chimie','الفيزياء و الكيمياء','FR'),('PHILO','Philosophie','الفلسفة','AR'),('SN','Science Naturelle','العلوم الطبية','FR');
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (1,'5d1001','A24255D1PC5DC1',6.50,'2025-04-09 10:36:11','2025-04-11 15:24:48'),(64,'5d1002','A24255D1PC5DC1',9.75,'2025-04-09 15:45:24','2025-04-10 23:17:01'),(65,'5d1003','A24255D1PC5DC1',10.75,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(66,'5d1004','A24255D1PC5DC1',14.75,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(67,'5d1005','A24255D1PC5DC1',8.00,'2025-04-10 23:08:07','2025-04-11 00:32:15'),(68,'5d1006','A24255D1PC5DC1',6.75,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(69,'5d1007','A24255D1PC5DC1',6.00,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(70,'5d1008','A24255D1PC5DC1',12.25,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(71,'5d1009','A24255D1PC5DC1',4.25,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(72,'5d1010','A24255D1PC5DC1',7.00,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(73,'5d1011','A24255D1PC5DC1',12.25,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(74,'5d1012','A24255D1PC5DC1',12.25,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(75,'5d1013','A24255D1PC5DC1',7.00,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(76,'5d1014','A24255D1PC5DC1',8.25,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(77,'5d1015','A24255D1PC5DC1',8.00,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(78,'5d1016','A24255D1PC5DC1',6.00,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(79,'5d1017','A24255D1PC5DC1',10.50,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(80,'5d1018','A24255D1PC5DC1',6.50,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(81,'5d1019','A24255D1PC5DC1',14.50,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(82,'5d1020','A24255D1PC5DC1',15.00,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(83,'5d1021','A24255D1PC5DC1',7.75,'2025-04-10 23:08:07','2025-04-10 23:08:07'),(84,'5d1022','A24255D1PC5DC1',9.75,'2025-04-10 23:08:08','2025-04-10 23:08:08'),(85,'5d1023','A24255D1PC5DC1',7.50,'2025-04-10 23:08:08','2025-04-10 23:08:08'),(86,'5d1024','A24255D1PC5DC1',8.75,'2025-04-10 23:08:08','2025-04-10 23:08:08'),(87,'5d1025','A24255D1PC5DC1',8.50,'2025-04-10 23:08:08','2025-04-10 23:08:08'),(88,'5d1026','A24255D1PC5DC1',12.50,'2025-04-10 23:08:08','2025-04-10 23:08:08'),(89,'5d1027','A24255D1PC5DC1',12.50,'2025-04-10 23:08:08','2025-04-10 23:08:08'),(90,'5d1028','A24255D1PC5DC1',11.25,'2025-04-10 23:08:08','2025-04-10 23:08:08'),(91,'5d1029','A24255D1PC5DC1',6.25,'2025-04-10 23:08:08','2025-04-10 23:08:08'),(92,'5d1030','A24255D1PC5DC1',14.75,'2025-04-10 23:08:09','2025-04-10 23:08:09'),(93,'5d1031','A24255D1PC5DC1',12.50,'2025-04-10 23:08:09','2025-04-10 23:08:09'),(94,'5d1032','A24255D1PC5DC1',10.00,'2025-04-10 23:08:09','2025-04-10 23:08:09'),(95,'5d1033','A24255D1PC5DC1',9.50,'2025-04-10 23:08:09','2025-04-10 23:08:09'),(96,'5d1034','A24255D1PC5DC1',8.00,'2025-04-10 23:08:09','2025-04-10 23:08:09'),(97,'5d1035','A24255D1PC5DC1',5.50,'2025-04-10 23:08:10','2025-04-10 23:08:10'),(98,'5d1036','A24255D1PC5DC1',14.75,'2025-04-10 23:08:10','2025-04-10 23:08:10'),(99,'5d1037','A24255D1PC5DC1',15.75,'2025-04-10 23:08:10','2025-04-10 23:08:10'),(100,'5d1038','A24255D1PC5DC1',10.25,'2025-04-10 23:08:10','2025-04-10 23:08:10'),(101,'5d1039','A24255D1PC5DC1',6.50,'2025-04-10 23:08:10','2025-04-10 23:08:10'),(102,'5d1040','A24255D1PC5DC1',5.00,'2025-04-10 23:08:10','2025-04-10 23:08:10'),(103,'5d1041','A24255D1PC5DC1',15.75,'2025-04-10 23:08:11','2025-04-10 23:08:11'),(104,'5d1042','A24255D1PC5DC1',15.00,'2025-04-10 23:08:11','2025-04-10 23:08:11'),(105,'5d1043','A24255D1PC5DC1',6.00,'2025-04-10 23:08:11','2025-04-10 23:08:11'),(106,'5d1044','A24255D1PC5DC1',8.00,'2025-04-10 23:08:11','2025-04-10 23:08:11'),(107,'5d1045','A24255D1PC5DC1',6.00,'2025-04-10 23:08:11','2025-04-10 23:08:11'),(108,'5d1046','A24255D1PC5DC1',7.25,'2025-04-10 23:08:12','2025-04-10 23:08:12'),(109,'5d1047','A24255D1PC5DC1',8.50,'2025-04-10 23:08:12','2025-04-10 23:08:12'),(110,'5d1048','A24255D1PC5DC1',7.75,'2025-04-10 23:08:12','2025-04-10 23:08:12'),(111,'5d1049','A24255D1PC5DC1',8.75,'2025-04-10 23:08:12','2025-04-10 23:08:12'),(112,'5d1050','A24255D1PC5DC1',4.50,'2025-04-10 23:08:12','2025-04-10 23:08:12'),(113,'5d1051','A24255D1PC5DC1',5.00,'2025-04-10 23:08:13','2025-04-10 23:08:13'),(114,'5d1052','A24255D1PC5DC1',19.00,'2025-04-10 23:08:13','2025-04-10 23:08:13'),(115,'5d1053','A24255D1PC5DC1',4.25,'2025-04-10 23:08:14','2025-04-10 23:08:14'),(116,'5d1054','A24255D1PC5DC1',5.50,'2025-04-10 23:08:14','2025-04-10 23:08:14'),(117,'5d1055','A24255D1PC5DC1',7.00,'2025-04-10 23:08:15','2025-04-10 23:08:15'),(118,'5d1056','A24255D1PC5DC1',14.25,'2025-04-10 23:08:15','2025-04-10 23:08:15'),(119,'5d1057','A24255D1PC5DC1',14.00,'2025-04-10 23:08:15','2025-04-10 23:08:15'),(120,'5d1058','A24255D1PC5DC1',8.00,'2025-04-10 23:08:16','2025-04-10 23:08:16'),(121,'5d1059','A24255D1PC5DC1',6.75,'2025-04-10 23:08:16','2025-04-10 23:08:16'),(122,'5d1060','A24255D1PC5DC1',8.00,'2025-04-10 23:08:16','2025-04-10 23:08:16'),(123,'5d1061','A24255D1PC5DC1',6.75,'2025-04-10 23:08:17','2025-04-10 23:08:17'),(124,'5d1062','A24255D1PC5DC1',6.00,'2025-04-10 23:08:17','2025-04-10 23:08:17'),(125,'5d1063','A24255D1PC5DC1',3.00,'2025-04-10 23:08:17','2025-04-10 23:08:17'),(128,'5d1052','A24255D1PC5DC2',18.00,'2025-04-14 09:55:38','2025-04-14 09:55:38'),(129,'5d1052','A24255D1AR5DC2',10.50,'2025-04-14 20:03:51','2025-04-14 20:03:51');
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
  1 AS `nomAnnee`,
  1 AS `numeroInscrit` */;
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
/*!50001 VIEW `note_view` AS select `n`.`idNote` AS `idNote`,`n`.`matricule` AS `matricule`,`n`.`note` AS `note`,`n`.`createdAt` AS `createdAt`,`n`.`updatedAt` AS `updatedAt`,`e`.`nom` AS `nom`,`e`.`isme` AS `isme`,`e`.`nni` AS `nni`,`e`.`adresse` AS `adresse`,`e`.`dateNaissance` AS `dateNaissance`,`e`.`sexe` AS `sexe`,`cm`.`codeClasse` AS `codeClasse`,`cm`.`codeMatiere` AS `codeMatiere`,`cm`.`horaireClasseMatiere` AS `horaireClasseMatiere`,`cm`.`coefficientClasseMatiere` AS `coefficientClasseMatiere`,`ex`.`codeExamen` AS `codeExamen`,`ex`.`codeClasseMatiere` AS `codeClasseMatiere`,`ex`.`dateExamen` AS `dateExamen`,`ex`.`heureDebutExamen` AS `heureDebutExamen`,`ex`.`heureFinExamen` AS `heureFinExamen`,`ex`.`codeSalleClasse` AS `codeSalleClasse`,`ex`.`statutExamen` AS `statutExamen`,`ev`.`codeEvaluation` AS `codeEvaluation`,`ev`.`nomEvaluation` AS `nomEvaluation`,`ev`.`indiceEvaluation` AS `indiceEvaluation`,`ev`.`coefficientEvaluation` AS `coefficientEvaluation`,`ev`.`typeEvaluation` AS `typeEvaluation`,`a`.`codeAnnee` AS `codeAnnee`,`a`.`nomAnnee` AS `nomAnnee`,`i`.`numeroInscrit` AS `numeroInscrit` from (((((((`note` `n` join `eleve` `e` on(`e`.`matricule` = `n`.`matricule`)) join `inscrit` `i` on(`i`.`matricule` = `e`.`matricule`)) join `examen` `ex` on(`ex`.`codeExamen` = `n`.`codeExamen`)) join `classe_matiere` `cm` on(`cm`.`codeClasseMatiere` = `ex`.`codeClasseMatiere`)) join `salle_classe` `sc` on(`sc`.`codeSalleClasse` = `ex`.`codeSalleClasse`)) join `anneescolaire` `a` on(`a`.`codeAnnee` = `sc`.`codeAnnee`)) join `evaluation` `ev` on(`ev`.`codeEvaluation` = `ex`.`codeEvaluation`)) */;
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

-- Dump completed on 2025-04-14 23:21:12
