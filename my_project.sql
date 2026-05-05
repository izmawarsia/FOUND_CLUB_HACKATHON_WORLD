-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: hackathon_model
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hackathon_table`
--

DROP TABLE IF EXISTS `hackathon_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hackathon_table` (
  `hackathon_id` varchar(50) NOT NULL,
  `hackathon_name` varchar(255) NOT NULL,
  `domain` varchar(100) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `prize_pool` decimal(15,2) DEFAULT NULL,
  `admin_id` varchar(50) DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `problem_statement` text,
  `judge_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`hackathon_id`),
  KEY `admin_id` (`admin_id`),
  KEY `status_id` (`status_id`),
  KEY `fk_hackathon_judge` (`judge_id`),
  CONSTRAINT `fk_hackathon_judge` FOREIGN KEY (`judge_id`) REFERENCES `user_master` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `hackathon_table_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `user_master` (`user_id`),
  CONSTRAINT `hackathon_table_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status_master` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hackathon_table`
--

LOCK TABLES `hackathon_table` WRITE;
/*!40000 ALTER TABLE `hackathon_table` DISABLE KEYS */;
INSERT INTO `hackathon_table` VALUES ('H-001','Query Quest','Web development','2026-05-28','2026-06-01','2026-06-03',3000.00,'U-001',1,'Perform deep exploratory data analysis to derive actionable insights and visualize trends from large datasets.','U-026'),('H-002','Malware Mania','Web development','2026-02-22','2026-02-26','2026-02-28',4000.00,'U-003',2,'Create a tool for real-time threat detection, data encryption, or vulnerability assessment in networked systems.','U-026'),('H-003','Ansible Ace','DevOps','2026-06-05','2026-06-09','2026-06-11',5000.00,'U-021',3,'Automate CI/CD pipelines and infrastructure monitoring to enhance deployment speed and system reliability.','U-036'),('H-004','Angular Arena','Web development','2026-05-25','2026-06-01','2026-06-03',4000.00,'U-022',4,'Develop a high-performance, responsive web application using modern frameworks with secure backend integration.','U-026'),('H-005','DeFi Derby','Blockchain','2026-05-20','2026-05-24','2026-05-26',5000.00,'U-024',5,'Build a decentralized application (dApp) focusing on transparency, security, and smart contract automation.','U-038'),('H-006','ChatBot Championship','AI & ML','2026-03-01','2026-03-05','2026-03-07',3000.00,'U-025',6,'Develop a predictive model or generative AI solution to solve complex real-world data challenges.','U-030'),('H-007','Neural Network Ninja','AI & ML','2026-04-10','2026-04-14','2026-04-16',5000.00,'U-002',7,'Develop a predictive model or generative AI solution to solve complex real-world data challenges.','U-029'),('H-008','NFT Knights','Blockchain','2026-04-27','2026-05-01','2026-05-03',4000.00,'U-004',8,'Build a decentralized application (dApp) focusing on transparency, security, and smart contract automation.','U-039'),('H-009','Jenkins Jive','DevOps','2026-04-27','2026-05-01','2026-05-03',4500.00,'U-007',9,'Automate CI/CD pipelines and infrastructure monitoring to enhance deployment speed and system reliability.','U-040'),('H-010','Chain Reaction','Blockchain','2026-04-05','2026-04-09','2026-04-11',6000.00,'U-009',10,'Build a decentralized application (dApp) focusing on transparency, security, and smart contract automation.','U-034'),('H-011','React Race','Web Development','2026-04-27','2026-05-01','2026-05-03',3000.00,'U-010',11,'Develop a high-performance, responsive web application using modern frameworks with secure backend integration.','U-041'),('H-012','Predictive Pros','AI & ML','2026-04-27','2026-05-01','2026-05-03',5500.00,'U-013',12,'Develop a predictive model or generative AI solution to solve complex real-world data challenges.','U-042'),('H-013','Full Stack Fever','Web Development','2026-04-27','2026-05-01','2026-05-03',5000.00,'U-014',13,'Develop a high-performance, responsive web application using modern frameworks with secure backend integration.','U-027'),('H-014','Cloud Castles','Cloud Computing','2026-04-02','2026-04-06','2026-04-08',5000.00,'U-015',14,'Design a scalable, serverless architecture to optimize resource management and high availability.','U-028'),('H-015','Pipeline Pro','DevOps','2026-04-27','2026-05-01','2026-05-03',6500.00,'U-016',15,'Automate CI/CD pipelines and infrastructure monitoring to enhance deployment speed and system reliability.','U-036'),('H-016','Pandas Play','Data Science','2026-04-20','2026-04-24','2026-04-26',4000.00,'U-018',16,'Perform deep exploratory data analysis to derive actionable insights and visualize trends from large datasets.','U-032'),('H-017','Swift Safari','Mobile App Dev','2026-04-22','2026-04-26','2026-04-28',5000.00,'U-019',17,'Create a user-centric mobile application with cross-platform compatibility and seamless offline functionality.','U-034'),('H-018','Shield Sprint','Cybersecurity','2026-04-12','2026-04-16','2026-04-18',5000.00,'U-020',18,'Create a tool for real-time threat detection, data encryption, or vulnerability assessment in networked systems.','U-026'),('H-019','Serverless Summit','Cloud Computing','2026-03-20','2026-03-24','2026-03-26',4500.00,'U-005',19,'Design a scalable, serverless architecture to optimize resource management and high availability.','U-035'),('H-020','Deep Dive Vision','AI & ML','2026-06-15','2026-06-19','2026-06-21',4500.00,'U-006',20,'Develop a predictive model or generative AI solution to solve complex real-world data challenges.','U-037'),('H-021','Git Guide','DevOps','2026-09-18','2026-09-22','2026-09-24',3000.00,'U-008',21,'Automate CI/CD pipelines and infrastructure monitoring to enhance deployment speed and system reliability.','U-038'),('H-022','Solana Sprint','Blockchain','2026-04-10','2026-04-14','2026-04-16',7000.00,'U-011',22,'Build a decentralized application (dApp) focusing on transparency, security, and smart contract automation.','U-043'),('H-023','Pentest Party','Cybersecurity','2026-10-01','2026-10-05','2026-10-07',6500.00,'U-012',23,'Create a tool for real-time threat detection, data encryption, or vulnerability assessment in networked systems.','U-039'),('H-024','Flutter Flow','Mobile App Dev','2026-02-10','2026-02-14','2026-02-16',4500.00,'U-017',24,'Create a user-centric mobile application with cross-platform compatibility and seamless offline functionality.','U-031'),('H-025','NLP Nexus','AI & ML','2026-08-12','2026-08-16','2026-08-18',4000.00,'U-023',25,'Develop a predictive model or generative AI solution to solve complex real-world data challenges.','U-040');
/*!40000 ALTER TABLE `hackathon_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `team_id` varchar(50) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `project_description` text,
  `github_link` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`team_id`,`project_title`),
  CONSTRAINT `project_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('T-001','StatGen','Automated Data Insights','github.com/data-s'),('T-002','ShieldNet','Network Threat Detector','github.com/sec-s'),('T-003','HealthTrack','AI Health Monitoring','github.com/byte-h'),('T-004','CryptoPay','Blockchain Payment App','github.com/chain-p'),('T-005','SwiftOrder','Food Delivery System','github.com/app-a'),('T-006','SiteSwift','Fast Web Rendering','github.com/web-w'),('T-007','SkyStorage','Secure Cloud Vault','github.com/cloud-k'),('T-008','meshing loops ','kuch bhi ',NULL),('T-009','AI Healthcare Bot','AI-powered diagnostic assistant for rural areas.','https://github.com/404found/ai-health'),('T-010','BlockChain Vote','Secure electronic voting system using Ethereum.','https://github.com/404found/block-vote'),('T-011','Cyber Shield','Real-time network intrusion detection system.','https://github.com/404found/cyber-shield'),('T-012','DataViz Pro','Dynamic data visualization dashboard for sales.','https://github.com/404found/dataviz'),('T-013','EcoTrack Mobile','Mobile app for tracking personal carbon footprint.','https://github.com/404found/ecotrack'),('T-014','Smart Grid AI','Optimizing energy distribution using ML.','https://github.com/404found/smartgrid'),('T-015','Crypto Wallet','Secure multi-currency wallet for web3.','https://github.com/404found/wallet'),('T-016','Phish Guard','ML model to detect phishing emails and URLs.','https://github.com/404found/phish-guard'),('T-017','Fleet Manager','Mobile web solution for logistics tracking.','https://github.com/404found/fleet-web'),('T-018','NFT Market','Decentralized marketplace for digital assets.','https://github.com/404found/nft-hub'),('T-019','DeepFake Detect','Identifying deepfake videos using CNN.','https://github.com/404found/deep-detect'),('T-020','Threat Hunter','Cybersecurity tool for vulnerability scanning.','https://github.com/404found/threat-hunt'),('T-021','MediChain','Patient records management on Blockchain.','https://github.com/404found/medichain'),('T-022','Arboretum AI','Satellite image analysis for deforestation.','https://github.com/404found/forest-ai'),('T-023','Zenith Web','E-commerce platform with React and Node.','https://github.com/404found/zenith-shop'),('T-024','Sentinel Mobile','Mobile security app for Android users.','https://github.com/404found/sentinel'),('T-025','SupplySafe','Blockchain supply chain transparency tool.','https://github.com/404found/supplysafe'),('T-026','AutoML Engine','Automated machine learning pipeline for startups.','https://github.com/404found/automl'),('T-027','ZeroTrust Net','Implementation of zero trust architecture.','https://github.com/404found/zerotrust'),('T-028','ViewVanguard','Advanced computer vision for security cameras.','https://github.com/404found/viewvanguard'),('T-029','Aura Blockchain','Privacy-focused transaction protocol.','https://github.com/404found/aura-bc'),('T-030','Pulse Mobile','Health monitoring app with wearable sync.','https://github.com/404found/pulse-app'),('T-031','NexusKnights AI','Collaborative AI for swarm robotics.','https://github.com/404found/nexus-ai'),('T-032','CloudCommandos','Distributed cloud storage with sharding.','https://github.com/404found/cloud-com'),('T-033','SyntaxSquad Web','PWA for real-time code collaboration.','https://github.com/404found/syntax-squad'),('T-034','DevDrafts App','Mobile development playground for students.','https://github.com/404found/devdrafts'),('T-035','PixelPioneers AI','Generative AI for artistic asset creation.','https://github.com/404found/pixel-ai'),('T-036','CodeCrusaders Cyber','Encrypted messaging service for teams.','https://github.com/404found/code-cyber');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scores` (
  `judge_id` varchar(50) NOT NULL,
  `hackathon_id` varchar(50) DEFAULT NULL,
  `team_id` varchar(50) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `technical_score` int DEFAULT NULL,
  `evaluative_score` int DEFAULT NULL,
  `innovative_score` int DEFAULT NULL,
  PRIMARY KEY (`judge_id`,`team_id`,`project_title`),
  KEY `hackathon_id` (`hackathon_id`),
  KEY `team_id` (`team_id`,`project_title`),
  CONSTRAINT `scores_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `user_master` (`user_id`),
  CONSTRAINT `scores_ibfk_2` FOREIGN KEY (`hackathon_id`) REFERENCES `hackathon_table` (`hackathon_id`),
  CONSTRAINT `scores_ibfk_3` FOREIGN KEY (`team_id`, `project_title`) REFERENCES `project` (`team_id`, `project_title`),
  CONSTRAINT `scores_chk_1` CHECK ((`technical_score` <= 10)),
  CONSTRAINT `scores_chk_2` CHECK ((`evaluative_score` <= 10)),
  CONSTRAINT `scores_chk_3` CHECK ((`innovative_score` <= 10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scores`
--

LOCK TABLES `scores` WRITE;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
INSERT INTO `scores` VALUES ('U-026','H-018','T-002','ShieldNet',8,7,10),('U-028','H-014','T-036','CodeCrusaders Cyber',8,7,5),('U-029','H-007','T-033','SyntaxSquad Web',6,10,9),('U-030','H-006','T-003','HealthTrack',6,7,7),('U-031','H-024','T-035','PixelPioneers AI',9,8,9),('U-032','H-016','T-001','StatGen',7,10,8),('U-033','H-002','T-032','CloudCommandos',5,6,7),('U-034','H-010','T-004','CryptoPay',8,10,7),('U-034','H-017','T-005','SwiftOrder',9,10,10),('U-035','H-019','T-007','SkyStorage',9,9,10),('U-039','H-008','T-021','MediChain',7,8,6),('U-039','H-008','T-023','Zenith Web',9,8,9),('U-043','H-022','T-034','DevDrafts App',9,8,8);
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor_hackathon`
--

DROP TABLE IF EXISTS `sponsor_hackathon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsor_hackathon` (
  `sponsor_id` varchar(50) NOT NULL,
  `hackathon_id` varchar(50) NOT NULL,
  `funding_amount` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`sponsor_id`,`hackathon_id`),
  KEY `hackathon_id` (`hackathon_id`),
  CONSTRAINT `sponsor_hackathon_ibfk_1` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsor_table` (`sponsor_id`),
  CONSTRAINT `sponsor_hackathon_ibfk_2` FOREIGN KEY (`hackathon_id`) REFERENCES `hackathon_table` (`hackathon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor_hackathon`
--

LOCK TABLES `sponsor_hackathon` WRITE;
/*!40000 ALTER TABLE `sponsor_hackathon` DISABLE KEYS */;
INSERT INTO `sponsor_hackathon` VALUES ('S-001','H-001',6000.00),('S-001','H-010',8000.00),('S-001','H-024',5500.00),('S-002','H-001',4000.00),('S-002','H-010',8000.00),('S-002','H-016',5000.00),('S-003','H-001',4000.00),('S-003','H-011',4500.00),('S-003','H-016',5000.00),('S-004','H-007',6500.00),('S-004','H-011',4500.00),('S-004','H-016',5000.00),('S-005','H-007',6500.00),('S-005','H-011',4500.00),('S-005','H-017',7000.00),('S-006','H-007',6500.00),('S-006','H-017',7000.00),('S-006','H-022',9000.00),('S-007','H-002',5000.00),('S-007','H-017',7000.00),('S-007','H-022',9000.00),('S-008','H-002',5000.00),('S-008','H-018',7000.00),('S-008','H-022',9000.00),('S-009','H-002',5000.00),('S-009','H-018',7000.00),('S-009','H-023',8000.00),('S-010','H-008',5500.00),('S-010','H-018',7000.00),('S-010','H-023',8000.00),('S-011','H-003',6500.00),('S-011','H-008',5500.00),('S-011','H-023',8000.00),('S-012','H-001',7000.00),('S-012','H-003',6500.00),('S-012','H-008',5500.00),('S-012','H-012',7000.00),('S-012','H-019',5500.00),('S-013','H-004',5000.00),('S-013','H-012',7000.00),('S-013','H-019',5500.00),('S-014','H-004',5000.00),('S-014','H-013',6500.00),('S-014','H-019',5500.00),('S-015','H-004',5000.00),('S-015','H-013',6500.00),('S-015','H-020',5500.00),('S-016','H-013',6500.00),('S-016','H-020',5500.00),('S-016','H-025',5000.00),('S-017','H-014',6500.00),('S-017','H-020',5500.00),('S-017','H-025',5000.00),('S-018','H-009',5500.00),('S-018','H-014',6500.00),('S-018','H-025',5000.00),('S-019','H-005',6000.00),('S-019','H-009',5500.00),('S-019','H-014',6500.00),('S-020','H-005',6000.00),('S-020','H-009',5500.00),('S-020','H-015',8000.00),('S-021','H-005',6000.00),('S-021','H-015',8000.00),('S-021','H-021',4000.00),('S-022','H-006',4000.00),('S-022','H-015',8000.00),('S-022','H-021',4000.00),('S-023','H-006',4000.00),('S-023','H-021',4000.00),('S-023','H-024',5500.00),('S-024','H-006',4000.00),('S-024','H-010',8000.00),('S-024','H-024',5500.00);
/*!40000 ALTER TABLE `sponsor_hackathon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor_table`
--

DROP TABLE IF EXISTS `sponsor_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsor_table` (
  `sponsor_id` varchar(50) NOT NULL,
  `sponsor_name` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `admin_id` varchar(50) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sponsor_id`),
  UNIQUE KEY `email` (`email`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `sponsor_table_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `user_master` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor_table`
--

LOCK TABLES `sponsor_table` WRITE;
/*!40000 ALTER TABLE `sponsor_table` DISABLE KEYS */;
INSERT INTO `sponsor_table` VALUES ('S-001','Apple','Accepted','U-001','https://www.apple.com','contact@apple.com'),('S-002','AWS','Accepted','U-001','https://aws.amazon.com','info@aws.amazon.com'),('S-003','Azure','Accepted','U-001','https://azure.microsoft.com','partner@microsoft.com'),('S-004','Binance','Accepted','U-002','https://www.binance.com','support@binance.com'),('S-005','CircleCI','Accepted','U-002','https://circleci.com','hello@circleci.com'),('S-006','CloudBees','Accepted','U-002','https://www.cloudbees.com','info@cloudbees.com'),('S-007','CrowdStrike','Accepted','U-003','https://www.crowdstrike.com','security@crowdstrike.com'),('S-008','Databricks','Accepted','U-003','https://www.databricks.com','data@databricks.com'),('S-009','Ethereum Foundation','Accepted','U-003','https://ethereum.org','info@ethereum.org'),('S-010','FireEye','Accepted','U-004','https://www.fireeye.com','threats@fireeye.com'),('S-011','GitHub','Accepted','U-004','https://github.com','partnership@github.com'),('S-012','Google','Accepted','U-004','https://www.google.com','ads@google.com'),('S-013','HuggingFace','Accepted','U-005','https://huggingface.co','model@huggingface.co'),('S-014','Meta','Pending','U-005','https://about.meta.com','business@meta.com'),('S-015','NVIDIA','Pending','U-006','https://www.nvidia.com','info@nvidia.com'),('S-016','OpenAI','Pending','U-006','https://openai.com','api@openai.com'),('S-017','OpenSea','Pending','U-006','https://opensea.io','nft@opensea.io'),('S-018','Palo Alto Networks','Accepted','U-007','https://www.paloaltonetworks.com','sales@paloaltonetworks.com'),('S-019','Postman','Accepted','U-007','https://www.postman.com','api@postman.com'),('S-020','RedHat','Accepted','U-007','https://www.redhat.com','support@redhat.com'),('S-021','Snowflake','Pending','U-008','https://www.snowflake.com','cloud@snowflake.com'),('S-022','Solana Labs','Rejected','U-001','https://solana.com','dev@solana.com'),('S-023','Toyota','Accepted','U-001','https://www.toyota.com','corporate@toyota.com'),('S-024','Vercel','Accepted','U-009','https://vercel.com','contact@vercel.com'),('S-025','AWS','Accepted','U-001','Funding for Ansible Ace','REQ_10000.0'),('S-026','IZMA ','Accepted','U-001',' org-bilal12@gmail.com','https://www.herefg.com'),('S-027','AWS','Accepted','U-001','Funding for Query Quest','REQ_6000.0');
/*!40000 ALTER TABLE `sponsor_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_master`
--

DROP TABLE IF EXISTS `status_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_master` (
  `status_id` int NOT NULL,
  `status_name` varchar(50) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_master`
--

LOCK TABLES `status_master` WRITE;
/*!40000 ALTER TABLE `status_master` DISABLE KEYS */;
INSERT INTO `status_master` VALUES (1,'Upcoming'),(2,'Evaluated'),(3,'Upcoming'),(4,'Upcoming'),(5,'Upcoming'),(6,'Evaluated'),(7,'Evaluated'),(8,'Ongoing'),(9,'Ongoing'),(10,'Evaluated'),(11,'Ongoing'),(12,'Ongoing'),(13,'Ongoing'),(14,'Evaluated'),(15,'Ongoing'),(16,'Evaluated'),(17,'Evaluated'),(18,'Evaluated'),(19,'Evaluated'),(20,'Upcoming'),(21,'Upcoming'),(22,'Evaluated'),(23,'Upcoming'),(24,'Evaluated'),(25,'Upcoming');
/*!40000 ALTER TABLE `status_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `team_id` varchar(50) NOT NULL,
  `team_name` varchar(255) NOT NULL,
  `lead_id` varchar(50) DEFAULT NULL,
  `hackathon_id` varchar(50) DEFAULT NULL,
  `registration_status` tinyint(1) DEFAULT '0',
  `admin_approval` varchar(20) DEFAULT 'Pending',
  PRIMARY KEY (`team_id`),
  KEY `lead_id` (`lead_id`),
  KEY `hackathon_id` (`hackathon_id`),
  CONSTRAINT `team_ibfk_1` FOREIGN KEY (`lead_id`) REFERENCES `user_master` (`user_id`),
  CONSTRAINT `team_ibfk_2` FOREIGN KEY (`hackathon_id`) REFERENCES `hackathon_table` (`hackathon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES ('T-001','DataWizards','U-068','H-016',1,'Accepted'),('T-002','SecureSquad','U-069','H-018',1,'Accepted'),('T-003','ByteBusters','U-070','H-006',1,'Accepted'),('T-004','ChainGang','U-073','H-010',1,'Accepted'),('T-005','AppArtisans','U-074','H-017',1,'Accepted'),('T-006','WebWarriors','U-075','H-003',1,'Accepted'),('T-007','CloudKings','U-079','H-019',1,'Accepted'),('T-008','meshing','U-086','H-023',1,'Accepted'),('T-009','NeuralKnights','U-068','H-016',1,'Accepted'),('T-010','VectorVoyagers','U-069','H-016',1,'Accepted'),('T-011','CipherSync','U-070','H-018',1,'Accepted'),('T-012','ZeroTrustZenith','U-071','H-018',1,'Accepted'),('T-013','PromptProphets','U-072','H-006',1,'Accepted'),('T-014','InsightInquisitors','U-073','H-006',1,'Accepted'),('T-015','LogicLoom','U-074','H-006',1,'Accepted'),('T-016','HashHustlers','U-075','H-010',1,'Accepted'),('T-017','BlockBastions','U-076','H-010',1,'Accepted'),('T-018','BinaryBridges','U-077','H-010',1,'Accepted'),('T-019','SwiftSynthetics','U-078','H-017',1,'Accepted'),('T-020','ServerlessSamurais','U-080','H-019',1,'Accepted'),('T-021','DataDrifters','U-082','H-008',1,'Accepted'),('T-022','AlgoAces','U-083','H-009',1,'Accepted'),('T-023','CyberCrusaders','U-084','H-008',1,'Accepted'),('T-024','ShieldShifters','U-085','H-009',1,'Accepted'),('T-025','CloudComets','U-069','H-011',1,'Accepted'),('T-026','InfraIron','U-070','H-011',1,'Accepted'),('T-027','PixelPioneers','U-072','H-012',1,'Accepted'),('T-028','ViewVanguard','U-074','H-013',1,'Accepted'),('T-029','ScriptSages','U-085','H-013',1,'Accepted'),('T-030','NodeKnights','U-068','H-015',1,'Accepted'),('T-031','NexusKnights','U-080','H-013',1,'Accepted'),('T-032','CloudCommandos','U-081','H-002',1,'Accepted'),('T-033','SyntaxSquad','U-082','H-007',1,'Accepted'),('T-034','DevDrafts','U-083','H-022',1,'Accepted'),('T-035','PixelPioneers','U-084','H-024',1,'Accepted'),('T-036','CodeCrusaders','U-085','H-014',1,'Accepted');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_members`
--

DROP TABLE IF EXISTS `team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_members` (
  `team_id` varchar(50) NOT NULL,
  `member_id` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  PRIMARY KEY (`team_id`,`member_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `team_members_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`),
  CONSTRAINT `team_members_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `user_master` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_members`
--

LOCK TABLES `team_members` WRITE;
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
INSERT INTO `team_members` VALUES ('T-001','U-068','Accepted'),('T-001','U-071','Accepted'),('T-001','U-077','Accepted'),('T-002','U-069','Accepted'),('T-002','U-072','Accepted'),('T-002','U-078','Accepted'),('T-003','U-070','Accepted'),('T-003','U-079','Accepted'),('T-003','U-081','Accepted'),('T-004','U-070','Accepted'),('T-004','U-073','Accepted'),('T-004','U-076','Accepted'),('T-005','U-074','Accepted'),('T-005','U-082','Accepted'),('T-005','U-083','Accepted'),('T-006','U-075','Accepted'),('T-006','U-081','Accepted'),('T-006','U-084','Accepted'),('T-007','U-079','Accepted'),('T-007','U-080','Accepted'),('T-007','U-085','Accepted'),('T-008','U-082','Accepted'),('T-008','U-085','Accepted'),('T-008','U-086','Accepted'),('T-009','U-068','Accepted'),('T-009','U-069','Accepted'),('T-010','U-069','Accepted'),('T-010','U-070','Accepted'),('T-010','U-071','Accepted'),('T-011','U-070','Accepted'),('T-011','U-072','Accepted'),('T-011','U-073','Accepted'),('T-012','U-071','Accepted'),('T-012','U-074','Accepted'),('T-012','U-075','Accepted'),('T-013','U-072','Accepted'),('T-013','U-076','Accepted'),('T-013','U-077','Accepted'),('T-014','U-073','Accepted'),('T-014','U-078','Accepted'),('T-014','U-079','Accepted'),('T-015','U-074','Accepted'),('T-015','U-080','Accepted'),('T-015','U-081','Accepted'),('T-016','U-075','Accepted'),('T-016','U-082','Accepted'),('T-016','U-083','Accepted'),('T-017','U-076','Accepted'),('T-017','U-084','Accepted'),('T-017','U-085','Accepted'),('T-018','U-068','Accepted'),('T-018','U-070','Accepted'),('T-018','U-077','Accepted'),('T-019','U-071','Accepted'),('T-019','U-072','Accepted'),('T-019','U-078','Accepted'),('T-020','U-073','Accepted'),('T-020','U-074','Accepted'),('T-020','U-080','Accepted'),('T-021','U-075','Accepted'),('T-021','U-076','Accepted'),('T-021','U-082','Accepted'),('T-022','U-077','Accepted'),('T-022','U-078','Accepted'),('T-022','U-083','Accepted'),('T-023','U-079','Accepted'),('T-023','U-080','Accepted'),('T-023','U-084','Accepted'),('T-024','U-081','Accepted'),('T-024','U-082','Accepted'),('T-024','U-085','Accepted'),('T-025','U-069','Accepted'),('T-025','U-083','Accepted'),('T-025','U-084','Accepted'),('T-026','U-069','Accepted'),('T-026','U-070','Accepted'),('T-026','U-085','Accepted'),('T-027','U-068','Accepted'),('T-027','U-072','Accepted'),('T-028','U-074','Accepted'),('T-028','U-076','Accepted'),('T-029','U-078','Accepted'),('T-029','U-080','Accepted'),('T-029','U-085','Accepted'),('T-030','U-068','Accepted'),('T-030','U-082','Accepted'),('T-030','U-084','Accepted'),('T-031','U-069','Accepted'),('T-031','U-071','Accepted'),('T-031','U-080','Accepted'),('T-032','U-073','Accepted'),('T-032','U-075','Accepted'),('T-032','U-081','Accepted'),('T-033','U-077','Accepted'),('T-033','U-079','Accepted'),('T-033','U-082','Accepted'),('T-034','U-081','Accepted'),('T-034','U-083','Accepted'),('T-035','U-070','Accepted'),('T-035','U-084','Accepted'),('T-035','U-085','Accepted'),('T-036','U-072','Accepted'),('T-036','U-074','Accepted'),('T-036','U-085','Accepted');
/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_master` (
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(225) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT '12345',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_master`
--

LOCK TABLES `user_master` WRITE;
/*!40000 ALTER TABLE `user_master` DISABLE KEYS */;
INSERT INTO `user_master` VALUES ('U-001','Ahad Raza Mir',' org-ahad20@gmail.com','0334-5556667','Admin Staff','admin786'),('U-002','Ahmed Raza',' org-ahmed1@gmail.com','0300-1112223','Admin Staff','admin786'),('U-003','Bilal Saeed',' org-bilal12@gmail.com','0328-2223334','Admin Staff','admin786'),('U-004','Bushra Ansari',' org-bush9@gmail.com','0332-4445556','Admin Staff','admin786'),('U-005','Fahad Mustafa',' org-fahad14@gmail.com','0340-8889990','Admin Staff','admin786'),('U-006','Fatima Sohail',' org-fatima2@gmail.com','0321-4445556','Admin Staff','admin786'),('U-007','Hamza Ali',' org-hamza18@gmail.com','0313-0001112','Admin Staff','admin786'),('U-008','Hania Aamir',' org-hania23@gmail.com','0314-4445556','Admin Staff','admin786'),('U-009','Hassan Ali',' org-hassan6@gmail.com','0305-5556667','Admin Staff','admin786'),('U-010','Imran Abbas',' org-imran16@gmail.com','0329-4445556','Admin Staff','admin786'),('U-011','Iqra Aziz',' org-iqra7@gmail.com','0318-8889990','Admin Staff','admin786'),('U-012','Kubra Khan',' org-kub11@gmail.com','0309-0001112','Admin Staff','admin786'),('U-013','Marium Khan',' org-mari4@gmail.com','0345-0001112','Admin Staff','admin786'),('U-014','Maya Ali',' org-maya21@gmail.com','0342-7778889','Admin Staff','admin786'),('U-015','Mehwish Hayat',' org-meh13@gmail.com','0339-5556667','Admin Staff','admin786'),('U-016','Momina Mustehsan',' org-mom25@gmail.com','0335-0001112','Admin Staff','admin786'),('U-017','Osman Khalid',' org-osman22@gmail.com','0303-1112223','Admin Staff','admin786'),('U-018','Sajal Ali',' org-sajal15@gmail.com','0311-1112223','Admin Staff','admin786'),('U-019','Sanam Baloch',' org-sanam17@gmail.com','0302-7778889','Admin Staff','admin786'),('U-020','Sheheryar Khan',' org-sheh10@gmail.com','0341-7778889','Admin Staff','admin786'),('U-021','Shehzad Roy',' org-roy24@gmail.com','0325-7778889','Admin Staff','admin786'),('U-022','Syra Yousuf',' org-syra19@gmail.com','0323-2223334','Admin Staff','admin786'),('U-023','Usman Tariq',' org-usman5@gmail.com','0312-2223334','Admin Staff','admin786'),('U-024','Waleed Khan',' org-waleed8@gmail.com','0324-1112223','Admin Staff','admin786'),('U-025','Zeeshan Mani',' org-zee3@gmail.com','0333-7778889','Admin Staff','admin786'),('U-026','Adnan Sami',' j-user505@gmail.com','0318-1234567','Judge','judge2026'),('U-027','Ayesha Omer',' j-user404@gmail.com','0340-4445556','Judge','judge2026'),('U-028','Bilal Ashraf',' j-user808@gmail.com','0313-6665554','Judge','judge2026'),('U-029','Dr. Arshad Khan',' j-user786@gmail.com','0300-9988776','Judge','judge2026'),('U-030','Engr. Waqas Ahmed',' j-user454@gmail.com','0345-1122334','Judge','judge2026'),('U-031','Gohar Rasheed',' j-user111@gmail.com','0334-1212121','Judge','judge2026'),('U-032','Junaid Khan',' j-user303@gmail.com','0339-1112223','Judge','judge2026'),('U-033','Kamran Akmal',' j-user707@gmail.com','0332-5556667','Judge','judge2026'),('U-034','Maya Khan',' j-user909@gmail.com','0323-7778889','Judge','judge2026'),('U-035','Misbah-ul-Haq',' j-user101@gmail.com','0309-8889990','Judge','judge2026'),('U-036','Noman Ijaz',' j-user333@gmail.com','0303-5656565','Judge','judge2026'),('U-037','Prof. Samina Ali',' j-user212@gmail.com','0321-5544332','Judge','judge2026'),('U-038','Rameez Raja',' j-user777@gmail.com','0343-4455667','Judge','judge2026'),('U-039','Sarmad Khoosat',' j-user222@gmail.com','0342-3434343','Judge','judge2026'),('U-040','Shoaib Malik',' j-user555@gmail.com','0325-9090909','Judge','judge2026'),('U-041','Wasim Akram',' j-user666@gmail.com','0335-1122334','Judge','judge2026'),('U-042','Younis Khan',' j-user202@gmail.com','0328-7776665','Judge','judge2026'),('U-043','Zubair Siddiqui',' j-user121@gmail.com','0312-3344556','Judge','judge2026'),('U-044','Abida Rahid',' mentor.abida@email.com','0314-3322110','Mentor','mentor123'),('U-045','Ali Sethi',' mentor.ali@email.com','0306-4455661','Mentor','mentor123'),('U-046','Amna Ali',' mentor.amna@email.com','0301-5554443','Mentor','mentor123'),('U-047','Asma Shirazi',' mentor.asma@email.com','0313-7766554','Mentor','mentor123'),('U-048','Atif Siddiqui',' mentor.atif@email.com','0342-9988112','Mentor','mentor123'),('U-049','Babar Ali',' mentor.babar@email.com','0309-2233223','Mentor','mentor123'),('U-050','Dr. Bilal Shah',' mentor.bilal@email.com','0300-9998887','Mentor','mentor123'),('U-051','Fahad Mustafa',' mentor.fahad@email.com','0322-6667778','Mentor','mentor123'),('U-052','Fawad Chaudhry',' mentor.fawad@email.com','0323-1122445','Mentor','mentor123'),('U-053','Hamza Ali',' mentor.hamza@email.com','0336-1122112','Mentor','mentor123'),('U-054','Haris Sohail',' mentor.haris@email.com','0329-3344334','Mentor','mentor123'),('U-055','Hina Mani',' mentor.hina@email.com','0315-9990001','Mentor','mentor123'),('U-056','Mahira Hafeez',' mentor.mahira@email.com','0334-5544667','Mentor','mentor123'),('U-057','Momina Mustehsan',' mentor.momina@email.com','0321-7788221','Mentor','mentor123'),('U-058','Mustafa Qadri',' mentor.mustafa@email.com','0345-0001112','Mentor','mentor123'),('U-059','Naseem Jaffer',' mentor.naseem@email.com','0339-6677667','Mentor','mentor123'),('U-060','Osama Khalid',' mentor.osama@email.com','0305-9988776','Mentor','mentor123'),('U-061','Prof. Rohan',' mentor.rohan@email.com','0333-4443332','Mentor','mentor123'),('U-062','Saira Khan',' mentor.saira@email.com','0321-1112223','Mentor','mentor123'),('U-063','Shadab Lodhi',' mentor.shadab@email.com','0340-9900990','Mentor','mentor123'),('U-064','Shaheen Shah',' mentor.shaheen@email.com','0328-5544332','Mentor','mentor123'),('U-065','Tariq Amin',' mentor.tariq@email.com','0324-6655443','Mentor','mentor123'),('U-066','Yasir Nawaz',' mentor.yasir@email.com','0344-2223334','Mentor','mentor123'),('U-067','Zainab Omar',' mentor.zainab@email.com','0320-9876789','Mentor','mentor123'),('U-068','Amna Sheikh',' user992@email.com','0301-7776665','Participant','12345'),('U-069','Ayesha Khan',' user66@email.com','0347-1212121','Participant','12345'),('U-070','Bilal Shah',' user1@email.com','0300-1234567','Participant','12345'),('U-071','Fahad Khan',' user88@email.com','0322-1112223','Participant','12345'),('U-072','Hamza Ahmed',' user55@email.com','0336-7778889','Participant','12345'),('U-073','Hina Dilpazeer',' user50@email.com','0315-2223334','Participant','12345'),('U-074','Kiran Mazumdar',' user11@email.com','0332-9090909','Participant','12345'),('U-075','Mehak Malik',' user22@email.com','0300-4443332','Participant','12345'),('U-076','Mustafa Kamal',' user12@email.com','0345-8889990','Participant','12345'),('U-077','Nimra Ali',' user77@email.com','0331-4445556','Participant','12345'),('U-078','Osama Bin',' user78@email.com','0305-3434343','Participant','12345'),('U-079','Rohan Sheikh',' user99@email.com','0333-5556667','Participant','12345'),('U-080','Saad Salman',' user33@email.com','0312-5554443','Participant','12345'),('U-081','Saira Bano',' user10@email.com','0321-9876543','Participant','12345'),('U-082','Sana Javed',' user89@email.com','0318-5656565','Participant','12345'),('U-083','Tariq Aziz',' user90@email.com','0324-7878787','Participant','12345'),('U-084','Yasir Hussain',' user994@email.com','0344-9990001','Participant','12345'),('U-085','Zainab Abbas',' user44@email.com','0320-6665554','Participant','12345'),('U-086','Safa Khurram','safa@gmail.com','0326-4231789','Participant','mehello'),('U-087','Izma Warsia','educame@gmail.com','0322-4325671','Participant','155#ok');
/*!40000 ALTER TABLE `user_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workshop_attendees`
--

DROP TABLE IF EXISTS `workshop_attendees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workshop_attendees` (
  `participant_id` varchar(50) NOT NULL,
  `workshop_id` varchar(50) NOT NULL,
  PRIMARY KEY (`participant_id`,`workshop_id`),
  KEY `workshop_id` (`workshop_id`),
  CONSTRAINT `workshop_attendees_ibfk_1` FOREIGN KEY (`participant_id`) REFERENCES `user_master` (`user_id`),
  CONSTRAINT `workshop_attendees_ibfk_2` FOREIGN KEY (`workshop_id`) REFERENCES `workshop_table` (`workshop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workshop_attendees`
--

LOCK TABLES `workshop_attendees` WRITE;
/*!40000 ALTER TABLE `workshop_attendees` DISABLE KEYS */;
INSERT INTO `workshop_attendees` VALUES ('U-068','W-001'),('U-070','W-001'),('U-075','W-001'),('U-078','W-001'),('U-068','W-002'),('U-069','W-002'),('U-084','W-002'),('U-068','W-003'),('U-070','W-003'),('U-072','W-003'),('U-074','W-003'),('U-075','W-003'),('U-082','W-003'),('U-085','W-003'),('U-068','W-004'),('U-073','W-004'),('U-076','W-004'),('U-070','W-005'),('U-080','W-005'),('U-070','W-006'),('U-078','W-007'),('U-083','W-007'),('U-079','W-008'),('U-069','W-010'),('U-070','W-010'),('U-074','W-010'),('U-076','W-010'),('U-078','W-010'),('U-070','W-011'),('U-068','W-012'),('U-078','W-012'),('U-079','W-012'),('U-081','W-012'),('U-078','W-013'),('U-079','W-013'),('U-085','W-013'),('U-070','W-014'),('U-074','W-014'),('U-068','W-015'),('U-074','W-015'),('U-078','W-015'),('U-073','W-017'),('U-074','W-017'),('U-075','W-017'),('U-083','W-017'),('U-079','W-018'),('U-081','W-018'),('U-079','W-019'),('U-082','W-019'),('U-079','W-020'),('U-081','W-020'),('U-081','W-021'),('U-072','W-022'),('U-081','W-022'),('U-083','W-023'),('U-070','W-024'),('U-081','W-024'),('U-085','W-024'),('U-079','W-025'),('U-081','W-025'),('U-085','W-025');
/*!40000 ALTER TABLE `workshop_attendees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workshop_table`
--

DROP TABLE IF EXISTS `workshop_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workshop_table` (
  `workshop_id` varchar(50) NOT NULL,
  `workshop_name` varchar(255) NOT NULL,
  `workshop_url` varchar(500) DEFAULT NULL,
  `workshop_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `admin_id` varchar(50) DEFAULT NULL,
  `mentor_id` varchar(50) DEFAULT NULL,
  `hackathon_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`workshop_id`),
  KEY `admin_id` (`admin_id`),
  KEY `mentor_id` (`mentor_id`),
  KEY `hackathon_id` (`hackathon_id`),
  CONSTRAINT `workshop_table_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `user_master` (`user_id`),
  CONSTRAINT `workshop_table_ibfk_2` FOREIGN KEY (`mentor_id`) REFERENCES `user_master` (`user_id`),
  CONSTRAINT `workshop_table_ibfk_3` FOREIGN KEY (`hackathon_id`) REFERENCES `hackathon_table` (`hackathon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workshop_table`
--

LOCK TABLES `workshop_table` WRITE;
/*!40000 ALTER TABLE `workshop_table` DISABLE KEYS */;
INSERT INTO `workshop_table` VALUES ('W-001','Advanced SQL Queries','https://sql-pro.io/adv','2026-04-28','11:00:00','13:00:00','U-001','U-047','H-013'),('W-002','Intro to Neural Networks','https://learn-ai.io/nn-101','2026-04-11','10:00:00','12:00:00','U-002','U-056','H-007'),('W-003','Malware Analysis','https://mal-detect.com/lab','2026-02-23','15:00:00','18:00:00','U-003','U-045','H-002'),('W-004','NFT Minting Guide','https://nft-school.xyz/mint','2026-04-28','16:00:00','18:00:00','U-004','U-044','H-008'),('W-005','Serverless Functions','https://lambda-labs.xyz/serv','2026-03-21','09:00:00','11:00:00','U-005','U-059','H-019'),('W-006','Computer Vision Basics','https://vision-academy.com/cv','2026-06-16','14:00:00','16:00:00','U-006','U-054','H-020'),('W-007','CI/CD with Jenkins','https://jenkins-guide.io/cicd','2026-04-28','10:00:00','12:00:00','U-007','U-065','H-009'),('W-008','Git & GitHub Mastery','https://git-pro.com/workflow','2026-09-19','14:00:00','16:00:00','U-008','U-050','H-021'),('W-009','Solidity Smart Contracts','https://eth-build.io/solidity','2026-05-21','13:00:00','15:00:00','U-009','U-057','H-005'),('W-010','Modern React.js','https://react-dev.com/hooks','2026-04-28','10:00:00','12:00:00','U-010','U-061','H-011'),('W-011','Building on Solana','https://solana-dev.net/workshop','2026-04-11','14:00:00','17:00:00','U-011','U-062','H-022'),('W-012','Network Pentesting','https://cyber-ops.io/pentest','2026-04-13','14:00:00','17:00:00','U-012','U-051','H-018'),('W-013','PyTorch for Beginners','https://pytorch-labs.edu/intro','2026-04-21','09:00:00','11:00:00','U-013','U-058','H-016'),('W-014','Tailwind CSS','https://style-pro.xyz/tailwind','2026-05-26','09:00:00','11:00:00','U-014','U-051','H-004'),('W-015','AWS Essentials','https://aws-cloud.com/basics','2026-04-03','10:00:00','12:00:00','U-015','U-052','H-014'),('W-016','Site Reliability (SRE)','https://sre-pros.com/basics','2026-04-28','15:00:00','17:00:00','U-016','U-046','H-015'),('W-017','Flutter Framework','https://flutter-dev.io/intro','2026-02-11','10:00:00','13:00:00','U-017','U-055','H-024'),('W-018','Python for Data Science','https://py-data.org/course','2026-05-29','10:00:00','13:00:00','U-018','U-060','H-001'),('W-019','Swift UI for iOS','https://ios-academy.com/swift','2026-04-23','14:00:00','16:00:00','U-019','U-066','H-017'),('W-020','Ethical Hacking 101','https://hack-shield.com/eh','2026-10-02','10:00:00','13:00:00','U-020','U-049','H-023'),('W-021','Ansible Automation','https://ansible-labs.xyz/intro','2026-02-07','11:00:00','13:00:00','U-021','U-063','H-003'),('W-022','Mastering MongoDB','https://db-school.com/mongo','2026-05-29','11:00:00','13:00:00','U-022','U-048','H-001'),('W-023','Ethics in AI','https://ethics-tech.com/workshop','2026-03-02','15:00:00','16:30:00','U-023','U-067','H-006'),('W-024','Hyperledger Fabric','https://blockchain-pro.com/hl','2026-04-06','11:00:00','13:00:00','U-024','U-064','H-010'),('W-025','Natural Language Processing','https://nlp-hub.org/start','2026-08-13','11:00:00','13:00:00','U-025','U-053','H-025');
/*!40000 ALTER TABLE `workshop_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-05 10:44:06
