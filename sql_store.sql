-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (arm64)
--
-- Host: localhost    Database: sql_store
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `AuthorizedUsers`
--

DROP TABLE IF EXISTS `AuthorizedUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AuthorizedUsers` (
  `username` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `administration` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthorizedUsers`
--

LOCK TABLES `AuthorizedUsers` WRITE;
/*!40000 ALTER TABLE `AuthorizedUsers` DISABLE KEYS */;
INSERT INTO `AuthorizedUsers` VALUES ('rlevin','reuvenpassword','Administrator'),('mGutherc','propassword',NULL),('ykoenig','yaakovpassword','Administrator'),('user','userpassword','User'),('Ploni','Plonipassword','User');
/*!40000 ALTER TABLE `AuthorizedUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` char(2) NOT NULL,
  `points` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Babara','MacCaffrey','1986-03-28','781-932-9754','0 Sage Terrace','Waltham','MA',2273),(2,'Ines','Brushfield','1986-04-13','804-427-9456','14187 Commercial Trail','Hampton','VA',947),(3,'Freddi','Boagey','1985-02-07','719-724-7869','251 Springs Junction','Colorado Springs','CO',2967),(4,'Ambur','Roseburgh','1974-04-14','407-231-8017','30 Arapahoe Terrace','Orlando','FL',457),(5,'Clemmie','Betchley','1973-11-07',NULL,'5 Spohn Circle','Arlington','TX',3675),(6,'Elka','Twiddell','1991-09-04','312-480-8498','7 Manley Drive','Chicago','IL',3073),(7,'Ilene','Dowson','1964-08-30','615-641-4759','50 Lillian Crossing','Nashville','TN',1672),(8,'Thacher','Naseby','1993-07-17','941-527-3977','538 Mosinee Center','Sarasota','FL',205),(9,'Romola','Rumgay','1992-05-23','559-181-3744','3520 Ohio Trail','Visalia','CA',1486),(10,'Levy','Mynett','1969-10-13','404-246-3370','68 Lawn Avenue','Atlanta','GA',796);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Masechta`
--

DROP TABLE IF EXISTS `Masechta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Masechta` (
  `Masechta_ID` int NOT NULL,
  `Masechta_Name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Masechta_Amount` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Masechta`
--

LOCK TABLES `Masechta` WRITE;
/*!40000 ALTER TABLE `Masechta` DISABLE KEYS */;
INSERT INTO `Masechta` VALUES (1,'Berakhot',64),(12,'Shabbat',157),(13,'Eruvin',105),(14,'Pesachim',121),(16,'Yoma',88),(17,'Sukkah',56),(18,'Beitza',40),(19,'Rosh Hashanah',35),(20,'Ta\'anit',31),(21,'Megillah',32),(22,'Mo\'ed Katan',29),(23,'Chagigah',27),(25,'Yevamot',122),(26,'Ketubot',112),(27,'Nedarim',91),(28,'Nazir',66),(29,'Sotah',49),(30,'Gittin',90),(31,'Kiddushin',82),(32,'Bava Kamma',119),(33,'Bava Metzia',119),(35,'Sanhedrin',113),(36,'Makkot',24),(37,'Shevu\'ot',49),(39,'Avodah Zarah',76),(41,'Horayot',14),(42,'Zevahim',120),(43,'Menachot',110),(44,'Chullin',142),(45,'Bekhorot',61),(46,'Arachin',34),(47,'Temurah',34),(48,'Keritot',28),(49,'Me\'ilah',22),(50,'Tamid',10);
/*!40000 ALTER TABLE `Masechta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item_notes`
--

DROP TABLE IF EXISTS `order_item_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item_notes` (
  `note_id` int NOT NULL,
  `order_Id` int NOT NULL,
  `product_id` int NOT NULL,
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item_notes`
--

LOCK TABLES `order_item_notes` WRITE;
/*!40000 ALTER TABLE `order_item_notes` DISABLE KEYS */;
INSERT INTO `order_item_notes` VALUES (1,1,2,'first note'),(2,1,2,'second note');
/*!40000 ALTER TABLE `order_item_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(4,2) NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `fk_order_items_products_idx` (`product_id`),
  CONSTRAINT `fk_order_items_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_order_items_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,4,4,3.74),(2,1,2,9.10),(2,4,4,1.66),(2,6,2,2.94),(3,3,10,9.12),(4,3,7,6.99),(4,10,7,6.40),(5,2,3,9.89),(6,1,4,8.65),(6,2,4,3.28),(6,3,4,7.46),(6,5,1,3.45),(7,3,7,9.17),(8,5,2,6.94),(8,8,2,8.59),(9,6,5,7.28),(10,1,10,6.01),(10,9,9,4.28);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_statuses`
--

DROP TABLE IF EXISTS `order_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_statuses` (
  `order_status_id` tinyint NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`order_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_statuses`
--

LOCK TABLES `order_statuses` WRITE;
/*!40000 ALTER TABLE `order_statuses` DISABLE KEYS */;
INSERT INTO `order_statuses` VALUES (1,'Processed'),(2,'Shipped'),(3,'Delivered');
/*!40000 ALTER TABLE `order_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `order_date` date NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `comments` varchar(2000) DEFAULT NULL,
  `shipped_date` date DEFAULT NULL,
  `shipper_id` smallint DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_orders_customers_idx` (`customer_id`),
  KEY `fk_orders_shippers_idx` (`shipper_id`),
  KEY `fk_orders_order_statuses_idx` (`status`),
  CONSTRAINT `fk_orders_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_order_statuses` FOREIGN KEY (`status`) REFERENCES `order_statuses` (`order_status_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_shippers` FOREIGN KEY (`shipper_id`) REFERENCES `shippers` (`shipper_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,6,'2019-01-30',1,NULL,NULL,NULL),(2,7,'2018-08-02',2,NULL,'2018-08-03',4),(3,8,'2017-12-01',1,NULL,NULL,NULL),(4,2,'2017-01-22',1,NULL,NULL,NULL),(5,5,'2017-08-25',2,'','2017-08-26',3),(6,10,'2018-11-18',1,'Aliquam erat volutpat. In congue.',NULL,NULL),(7,2,'2018-09-22',2,NULL,'2018-09-23',4),(8,5,'2018-06-08',1,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.',NULL,NULL),(9,10,'2017-07-05',2,'Nulla mollis molestie lorem. Quisque ut erat.','2017-07-06',1),(10,6,'2018-04-22',2,NULL,'2018-04-23',2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `quantity_in_stock` int NOT NULL,
  `unit_price` decimal(4,2) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Foam Dinner Plate',70,1.21),(2,'Pork - Bacon,back Peameal',49,4.65),(3,'Lettuce - Romaine, Heart',38,3.35),(4,'Brocolinni - Gaylan, Chinese',90,4.53),(5,'Sauce - Ranch Dressing',94,1.63),(6,'Petit Baguette',14,2.39),(7,'Sweet Pea Sprouts',98,3.29),(8,'Island Oasis - Raspberry',26,0.74),(9,'Longan',67,2.26),(10,'Broom - Push',6,1.09);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReminderTypes`
--

DROP TABLE IF EXISTS `ReminderTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ReminderTypes` (
  `rtypeid` int NOT NULL AUTO_INCREMENT,
  `rtypename` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`rtypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReminderTypes`
--

LOCK TABLES `ReminderTypes` WRITE;
/*!40000 ALTER TABLE `ReminderTypes` DISABLE KEYS */;
INSERT INTO `ReminderTypes` VALUES (1,'Daily'),(2,'Weekly'),(3,'Monthly'),(4,'None');
/*!40000 ALTER TABLE `ReminderTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippers`
--

DROP TABLE IF EXISTS `shippers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippers` (
  `shipper_id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`shipper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippers`
--

LOCK TABLES `shippers` WRITE;
/*!40000 ALTER TABLE `shippers` DISABLE KEYS */;
INSERT INTO `shippers` VALUES (1,'Hettinger LLC'),(2,'Schinner-Predovic'),(3,'Satterfield LLC'),(4,'Mraz, Renner and Nolan'),(5,'Waters, Mayert and Prohaska');
/*!40000 ALTER TABLE `shippers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlearning`
--

DROP TABLE IF EXISTS `userlearning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlearning` (
  `username` varchar(255) NOT NULL,
  `masechta_id` int NOT NULL,
  `startdate` date NOT NULL,
  `remindertype` int NOT NULL,
  `finishdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlearning`
--

LOCK TABLES `userlearning` WRITE;
/*!40000 ALTER TABLE `userlearning` DISABLE KEYS */;
INSERT INTO `userlearning` VALUES ('rlevin',1,'2023-08-15',1,'2023-08-29'),('rlevin',1,'2023-08-23',3,'2023-08-09');
/*!40000 ALTER TABLE `userlearning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `administration` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `learning_style` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'rlevin','Administrator','reuvenpassword','Reuven','Levin','reuven@mysql.com',''),(2,'proGutherc','Administrator','propassword','Professor','Gutherc','professor@mysql.com',''),(4,'ykoenig','Administrator','yaakovpassword','Yaakov','Koenig','yaakov@mysql.com',''),(5,'user','User','userpassword','User','User','user@mysql.com',''),(6,'Ploni','User','Plonipassword','Ploni','User','ploni@mysql.com',''),(7,NULL,'User',NULL,NULL,NULL,NULL,'Bekiyos'),(8,NULL,'User',NULL,NULL,NULL,NULL,'Bekiyos'),(9,NULL,'User',NULL,NULL,NULL,NULL,'Bekiyos'),(10,NULL,'User',NULL,NULL,NULL,NULL,'Bekiyos'),(11,NULL,'Administrator',NULL,NULL,NULL,NULL,'Bekiyos'),(12,NULL,'Administrator',NULL,NULL,NULL,NULL,'Bekiyos'),(13,NULL,'Administrator',NULL,NULL,NULL,NULL,'Iyun'),(14,NULL,'Administrator',NULL,NULL,NULL,NULL,'Chazara'),(15,NULL,'Administrator',NULL,NULL,NULL,NULL,'Bekiyos'),(16,NULL,'Administrator',NULL,NULL,NULL,NULL,'Bekiyos'),(17,NULL,'Administrator',NULL,NULL,NULL,NULL,'Bekiyos'),(18,NULL,'Administrator',NULL,NULL,NULL,NULL,'Iyun'),(19,'rlevin','Administrator','passowrd',NULL,NULL,'r@EMAIL.COM','Bekiyos'),(20,'test','Administrator','testing',NULL,NULL,'test@email.com','Iyun'),(21,'get','Administrator','getting',NULL,NULL,'get@gmail.com','Bekiyos'),(22,'reuv','Administrator','reuvpass',NULL,NULL,'reu@gmail.com','Chazara'),(23,'levin','Administrator','lepass',NULL,NULL,'lev@gmail.com','Iyun'),(24,'ngd','User','fvDS','gfd','b','fbd@gmail.com','Bekiyos'),(25,'rlevin5','User','rrr','Reuven','Levin','reuvenlevin12@gmail.com',NULL),(26,'rlevin','User','jhnk','Reuven','Levin','reuvenlevin12@gmail.com',NULL),(27,'fdv','User','fdse','Reuven','Levin','reuvenlfdsfevin12@gmail.com',NULL),(28,'afvd','User','fdvz','g','bfd','fvd@gmail.com',NULL),(29,'bdf','User','bdfz','vdfbv','bdf','scdc@gmail.com',NULL),(30,' b','User',' nbm','njm',' jbnk','cfg@sr',NULL),(31,'vjb','User',' bn','Reuven','Levin','reuvebjmnlevin12@gmail.com',NULL),(32,'ruvduv','User','rolopo','ruvi','duvi','rolopo@gmail.com',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-21 15:46:24
