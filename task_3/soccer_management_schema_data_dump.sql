-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: lab-assignment.cdu2cr1jtwll.us-east-1.rds.amazonaws.com    Database: soccer_management
-- ------------------------------------------------------
-- Server version	8.0.34

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club` (
  `club_id` int NOT NULL,
  `club_name` varchar(255) DEFAULT NULL,
  `club_total_value` decimal(19,2) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`club_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
INSERT INTO `club` VALUES (1,'Gutierrez Group',92963270.10,'Norfolk Island','Wilkinsontown','95307'),(2,'Davis PLC',42128223.03,'Congo','Burnsborough','30497'),(3,'Brown PLC',28107858.37,'Ireland','East Christine','38838'),(4,'Chandler, Gonzales and Marshall',14375292.57,'Namibia','Port Shawnmouth','82002'),(5,'George, Flynn and Gates',28700353.18,'Marshall Islands','East Roseland','77427');
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `league`
--

DROP TABLE IF EXISTS `league`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `league` (
  `league_id` int NOT NULL,
  `league_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `world_wide_rank` int DEFAULT NULL,
  `local_rank` int DEFAULT NULL,
  PRIMARY KEY (`league_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `league`
--

LOCK TABLES `league` WRITE;
/*!40000 ALTER TABLE `league` DISABLE KEYS */;
INSERT INTO `league` VALUES (1,'League Away','Sierra Leone',18,61),(2,'League Certainly','Dominica',314,57),(3,'League Result','Honduras',274,90),(4,'League While','Montserrat',282,30),(5,'League Raise','Equatorial Guinea',252,86),(6,'League Impact','Solomon Islands',165,79),(7,'League Which','Cameroon',401,46),(8,'League Stay','India',382,60),(9,'League Will','Sri Lanka',288,33),(10,'League Age','United States Virgin Islands',26,15);
/*!40000 ALTER TABLE `league` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `manager_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'Veronica Hurley','1974-12-19','Tokelau'),(2,'Kara Mayo','1957-12-18','Malawi'),(3,'Nathan Frye','1969-12-12','India'),(4,'Ronald Key','1955-11-12','Philippines'),(5,'Michelle Anderson','1959-10-29','Reunion'),(6,'Dr. Kathleen Norris','1971-09-26','Pakistan'),(7,'Thomas Smith','1974-02-02','Solomon Islands'),(8,'Lisa Walls','1954-03-04','Timor-Leste'),(9,'Julian Johnson','1973-11-19','Paraguay'),(10,'Taylor Mejia MD','1979-02-24','Malawi'),(11,'Sean Floyd','1952-03-01','Korea'),(12,'David Watts','1981-07-08','Armenia'),(13,'Kelly Garcia','1951-05-08','Grenada'),(14,'David Torres','1951-06-04','Kazakhstan'),(15,'Bryan Garcia','1951-03-31','Luxembourg'),(16,'Mr. Glenn Strickland Jr.','1974-07-05','Nepal'),(17,'Alexander Mccall','1949-10-19','Israel'),(18,'Robert Williams','1979-07-16','Egypt'),(19,'Lawrence Jones','1958-10-31','Mayotte'),(20,'Alyssa Patel','1983-01-17','French Polynesia'),(21,'Christina Gonzalez','1961-08-11','British Indian Ocean Territory (Chagos Archipelago)'),(22,'Tracy King','1976-12-07','Iraq'),(23,'Timothy Robles','1962-04-26','Spain'),(24,'Angela Aguilar','1979-11-06','China'),(25,'William Bradley','1973-09-06','Panama'),(26,'Shannon Rocha','1956-04-19','Marshall Islands'),(27,'Andrew Watkins','1971-06-12','Congo'),(28,'Kevin Wright','1950-04-27','Central African Republic'),(29,'Amber Terry','1965-03-08','Tokelau'),(30,'Yolanda Peters','1974-09-26','Malta'),(31,'Jessica Jackson','1953-12-07','Spain'),(32,'Brian Floyd','1981-08-27','Nauru'),(33,'Patrick Wilson','1982-12-20','Algeria'),(34,'Harry Hawkins','1976-04-01','Liberia'),(35,'Rebecca Bonilla','1975-10-01','Luxembourg'),(36,'Mrs. Kimberly Gibson','1952-07-22','Chad'),(37,'Sara Martinez','1971-02-09','Burkina Faso'),(38,'Jared Arellano','1950-11-14','Romania'),(39,'Bryan Bush','1947-11-12','Spain');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `player_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `shirt_num` int DEFAULT NULL,
  `performance` int DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'Peter Dodson','Falkland Islands (Malvinas)','1985-01-25','Engineer, production',64,44),(2,'Michelle Reed','Bolivia','1996-12-23','Records manager',41,63),(3,'Joseph Price','Thailand','1987-09-13','Hospital pharmacist',63,48),(4,'Michael Yates','Canada','1986-06-12','Producer, radio',81,33),(5,'Sheri Chapman','Saint Vincent and the Grenadines','1986-01-31','Translator',88,28),(6,'Claudia Wilson','Cayman Islands','1998-02-13','Physiological scientist',61,67),(7,'William Greer','Bhutan','1986-09-01','Diplomatic Services operational officer',32,65),(8,'Ashley Ward','Mexico','2003-04-10','Games developer',20,36),(9,'Melissa Collins','Chile','1987-09-27','Exercise physiologist',30,37),(10,'Daniel Taylor','Indonesia','1990-07-01','Careers adviser',6,80),(11,'Patrick Dixon','Albania','2001-08-30','Heritage manager',6,17),(12,'Barbara Jacobs','Oman','1994-08-30','Field trials officer',73,43),(13,'Derek Armstrong','Sao Tome and Principe','1991-05-15','Early years teacher',36,68),(14,'Eric Riddle','San Marino','1987-12-26','Geologist, wellsite',69,87),(15,'Tony Wright','Svalbard & Jan Mayen Islands','1985-02-01','Facilities manager',23,7),(16,'Victor Green','Palestinian Territory','1987-09-15','Surveyor, commercial/residential',47,63),(17,'Gina Wright','Holy See (Vatican City State)','1998-04-22','Surveyor, mining',45,76),(18,'Daniel Payne','Niue','2003-02-28','Copywriter, advertising',74,64),(19,'Tiffany Harris','Kazakhstan','1986-05-23','Engineer, technical sales',88,83),(20,'Stephanie Daugherty','Singapore','2003-03-13','Purchasing manager',73,65),(21,'James Smith','Tanzania','2002-05-13','IT sales professional',68,2),(22,'Bill Green','New Zealand','1987-01-24','Health visitor',37,98),(23,'Emily Cardenas','Montserrat','2005-05-05','Insurance underwriter',1,41),(24,'Bryan Edwards','Ethiopia','1984-06-27','Early years teacher',73,99),(25,'Joseph Shah','Timor-Leste','2004-04-14','Economist',2,69),(26,'Angelica Lewis','Kazakhstan','1992-11-23','Economist',38,6),(27,'Katie Ross','Bhutan','1985-07-21','Production assistant, television',50,85),(28,'Michael Mason','Gambia','1993-05-14','Engineer, manufacturing',46,41),(29,'Jack Martin','United States Minor Outlying Islands','1995-12-25','Therapist, sports',44,10),(30,'Colin Rodriguez','Armenia','1992-08-09','Minerals surveyor',70,17),(31,'David Meyer','Holy See (Vatican City State)','1995-03-02','Nurse, children\'s',87,99),(32,'Dwayne Pennington','Saint Helena','1998-11-04','Police officer',85,67),(33,'Alexandra Pope','China','2003-12-21','Statistician',38,39),(34,'James Liu','Congo','1993-09-24','Emergency planning/management officer',46,78),(35,'Angela Clark','Hungary','1985-08-06','Counsellor',33,96),(36,'Julie Anderson','American Samoa','1984-11-07','Production assistant, television',49,91),(37,'David Khan','Lesotho','1993-03-08','Social worker',28,13),(38,'Vanessa Lynn','Nigeria','2002-05-02','Community education officer',95,22),(39,'Mark Crane','Cambodia','2004-11-27','Administrator, arts',92,35),(40,'Mark Burns','Kenya','1997-07-27','Paediatric nurse',23,18),(41,'Aaron Garcia','Georgia','1995-06-05','Surveyor, minerals',1,71),(42,'Todd Ellison','Pitcairn Islands','1989-05-25','Clothing/textile technologist',75,98),(43,'Christopher Dorsey','Norway','2001-03-31','Water quality scientist',76,44),(44,'Paul Glenn','Hong Kong','1995-05-07','Photographer',76,17),(45,'Melissa Wilson','Sweden','1992-02-01','Chief Strategy Officer',82,11),(46,'Julian Farrell','Netherlands','2000-04-23','Dancer',62,2),(47,'Christopher Nichols','Argentina','2000-12-03','Food technologist',18,76),(48,'Jacqueline Garcia','Mauritius','2004-05-26','Adult guidance worker',1,81),(49,'David Hale','Taiwan','1985-07-09','Professor Emeritus',45,23),(50,'Danielle Parker','Antarctica (the territory South of 60 deg S)','1987-09-29','Holiday representative',98,95),(51,'Timothy Espinoza','Lebanon','1984-08-02','Chartered loss adjuster',86,58),(52,'Deanna Diaz','Paraguay','1998-05-07','Conservator, museum/gallery',62,93),(53,'Douglas Davis','Netherlands','1998-07-02','Network engineer',36,92),(54,'Joseph Lee','Senegal','2001-05-15','Administrator, sports',70,24),(55,'Billy Alvarez','South Georgia and the South Sandwich Islands','2002-11-17','Psychologist, educational',79,42),(56,'Samantha Barrera','Libyan Arab Jamahiriya','1997-10-01','Advertising account executive',13,46),(57,'Dr. Lauren Steele','United Kingdom','2002-01-17','Learning mentor',96,9),(58,'Nicholas Fischer','Antigua and Barbuda','1994-06-13','Exhibition designer',81,18),(59,'Charles Garcia','Estonia','2001-07-18','Radiation protection practitioner',18,92),(60,'Allison Vance','Panama','1992-12-25','Insurance account manager',69,93),(61,'Jesse Smith','Sri Lanka','2001-08-05','Chartered management accountant',44,29),(62,'Brooke Anderson','Christmas Island','1998-12-25','Leisure centre manager',48,30),(63,'Jason Love','Philippines','2005-04-20','Television/film/video producer',86,8),(64,'Ariel Schwartz','Moldova','1997-08-13','Surveyor, land/geomatics',66,50),(65,'Nancy Snyder','Botswana','1986-10-20','Associate Professor',3,84),(66,'Joseph Frazier','Wallis and Futuna','2003-01-17','Futures trader',17,54),(67,'Michael Nelson','Cayman Islands','1994-07-14','Tourism officer',92,53),(68,'Candice Vaughn','Swaziland','1995-03-29','Teacher, primary school',93,38),(69,'Heather Rodriguez','Saint Pierre and Miquelon','2005-02-20','Newspaper journalist',98,10),(70,'Timothy Thomas','Tuvalu','2000-01-27','Therapist, drama',5,14),(71,'Larry Ayala','Svalbard & Jan Mayen Islands','1983-11-24','Homeopath',83,17),(72,'Kristen Jacobs','Romania','1991-05-18','Analytical chemist',6,50),(73,'Jennifer Decker','Cayman Islands','1983-06-20','Producer, radio',63,62),(74,'Jessica Collier','Zambia','1993-07-17','Geologist, wellsite',57,10),(75,'Kathryn Schneider','Nauru','1987-11-17','Insurance risk surveyor',91,72),(76,'Chase Wilkerson','Cambodia','2003-04-02','Statistician',90,31),(77,'Gina Clarke DVM','Nauru','1993-03-31','Fast food restaurant manager',70,54),(78,'Tara Jones','Saint Lucia','1986-03-08','Programmer, systems',49,90),(79,'Jason Bryant','Ireland','1988-05-23','Race relations officer',74,45),(80,'Michael Taylor','Haiti','1986-04-15','Therapist, occupational',60,69),(81,'Natalie Goodman','Tokelau','1992-05-25','Lawyer',40,71),(82,'Rebecca Hughes','Norfolk Island','1992-11-04','Osteopath',30,83),(83,'James Welch','Guyana','1989-12-19','Hotel manager',86,12),(84,'Douglas Johnson','Vanuatu','2005-07-16','Legal secretary',36,61),(85,'Russell Haas','Palestinian Territory','1993-03-18','Accommodation manager',43,25),(86,'Ryan Johnson','Thailand','1992-02-07','Museum/gallery conservator',77,99),(87,'Whitney Fox','Hong Kong','1993-02-27','Medical secretary',94,49),(88,'Robert Lee','Madagascar','1987-07-19','Meteorologist',31,18),(89,'Ann King','Romania','1996-12-02','Television production assistant',52,12),(90,'Kimberly Lawrence','Dominican Republic','1986-05-09','Investment banker, corporate',84,11),(91,'Robert Velasquez','Bolivia','1986-02-12','Restaurant manager, fast food',17,51),(92,'Karen Hill','Isle of Man','2004-09-15','Engineer, electrical',26,95),(93,'Keith Dunn MD','Saint Lucia','2005-05-20','Biochemist, clinical',24,97),(94,'Jaclyn Baird','Armenia','1989-12-31','Water quality scientist',26,67),(95,'Joseph Flores','Korea','1984-05-18','Immunologist',23,53),(96,'Amanda Oneal','Lithuania','1986-06-29','Network engineer',48,70),(97,'Carolyn Bailey','New Caledonia','1983-06-20','Ranger/warden',96,27),(98,'Melanie Graham','Saint Lucia','1998-02-14','IT consultant',46,50),(99,'April Craig','American Samoa','2003-04-10','Personnel officer',86,13),(100,'Jacqueline Dixon','Belize','1983-02-15','Hospital pharmacist',40,44),(101,'Craig Peterson','Antarctica (the territory South of 60 deg S)','1985-05-21','English as a second language teacher',54,28),(102,'Dawn Pittman','Gabon','2003-07-13','Prison officer',56,89),(103,'Shannon Crawford','Tunisia','1997-11-03','Technical author',42,1),(104,'Stephanie Wilson','Dominica','1983-12-14','Lawyer',84,60),(105,'Cody Spencer','Martinique','1993-12-01','Mental health nurse',59,56),(106,'Meghan Hanson','French Guiana','1990-11-13','Electronics engineer',66,65),(107,'Justin Garcia','France','1998-03-06','Geologist, engineering',11,19),(108,'Courtney Allen','Svalbard & Jan Mayen Islands','1984-11-29','Medical laboratory scientific officer',54,30),(109,'Debbie Gilbert','Solomon Islands','2000-12-03','Tour manager',25,44),(110,'Elizabeth Johnson MD','Congo','1982-11-23','Armed forces logistics/support/administrative officer',89,58),(111,'Alexis Nash','Switzerland','2003-01-10','Engineer, drilling',37,40),(112,'Jessica Holland','Central African Republic','1997-05-30','Buyer, industrial',75,11),(113,'Jose Simpson','Comoros','1989-04-25','Loss adjuster, chartered',35,34),(114,'Joseph Jackson','Turkmenistan','1984-11-03','Brewing technologist',48,98),(115,'Michael Lara','Solomon Islands','1999-10-05','Therapist, horticultural',24,29),(116,'Monica Ballard','French Polynesia','2003-05-05','Scientist, clinical (histocompatibility and immunogenetics)',94,10),(117,'Edward Sanders','Reunion','1994-12-07','Personal assistant',50,88),(118,'Andrew Hayes','Belarus','1994-12-10','Ambulance person',88,70),(119,'Christopher Pineda','Holy See (Vatican City State)','2001-05-18','Copy',17,17),(120,'Crystal White','Canada','1994-11-22','Comptroller',62,51),(121,'Sarah Smith','Botswana','1983-12-29','Quantity surveyor',38,27),(122,'James Huffman','French Southern Territories','1985-09-17','Designer, television/film set',98,84),(123,'Mrs. Rebecca Browning','Oman','1984-09-18','Prison officer',3,1),(124,'Kathleen Jones','Vanuatu','2005-09-16','Surveyor, minerals',74,57),(125,'Ray Murray','Niue','1987-04-03','Geoscientist',19,34),(126,'Jeremy Turner','Switzerland','1995-09-20','Neurosurgeon',74,26),(127,'Elizabeth Anderson','Comoros','1987-09-18','Advertising account planner',60,44),(128,'Christopher Davis','Gibraltar','1985-04-07','Comptroller',12,22),(129,'Tina Carter','Cook Islands','1991-06-05','Insurance risk surveyor',56,79),(130,'Antonio Stephens','Turks and Caicos Islands','2005-06-18','Artist',6,76),(131,'Mary Wolf','Niue','1994-12-15','Diagnostic radiographer',51,25),(132,'Stephen Tate','Mauritius','1994-10-16','Psychotherapist, child',54,55),(133,'David Peterson','Guam','1986-10-15','Retail merchandiser',70,13),(134,'Robin Williams','Romania','2002-01-02','Media buyer',11,19),(135,'Emma Ortiz','Tajikistan','1991-03-07','Systems developer',14,9),(136,'Michelle Johnson','Senegal','1998-05-07','Therapist, art',87,83),(137,'Elizabeth Williams','Macedonia','2004-02-17','Product/process development scientist',88,99),(138,'Thomas West','Saint Kitts and Nevis','2004-08-10','Community pharmacist',69,12),(139,'Andres Russell','United States Virgin Islands','1983-06-27','Editor, film/video',65,55),(140,'Whitney Ingram','Belize','2002-09-05','Administrator, arts',84,22),(141,'Michael Smith','Thailand','1998-04-20','Plant breeder/geneticist',18,78),(142,'Lindsey Huffman','United States Minor Outlying Islands','1994-06-02','Medical physicist',12,29),(143,'Nicholas Yates','Somalia','2000-08-17','Contracting civil engineer',25,53),(144,'Julia Butler','Uganda','1990-03-17','Scientist, biomedical',93,42),(145,'Cynthia Flores','Lithuania','2000-07-29','Community education officer',90,13),(146,'Rebecca Hammond','Burkina Faso','1998-11-20','Chartered certified accountant',96,66),(147,'Larry Hurst','Norfolk Island','1998-08-13','Architectural technologist',52,19),(148,'Sandra Cole','Niue','1998-07-07','Accountant, chartered',46,47),(149,'Antonio Pitts','Congo','1984-06-19','Jewellery designer',59,5),(150,'Gregory Burch','Malawi','1997-11-09','Investment analyst',57,82),(151,'Anthony Hartman','Slovenia','2002-12-06','Seismic interpreter',47,56),(152,'Megan Brown','Guinea','2005-09-06','Armed forces technical officer',47,12),(153,'Ashley Meza','Lebanon','2002-03-16','Analytical chemist',49,94),(154,'Bryce Molina','Marshall Islands','1998-11-13','Politician\'s assistant',78,38),(155,'Laura Holt','Honduras','1985-04-04','Engineer, aeronautical',87,79),(156,'Ronald Walker','Lebanon','1991-02-20','Patent examiner',59,93),(157,'Amanda Mcdaniel','Niger','2001-01-25','Patent attorney',3,74),(158,'Renee Murphy MD','Austria','1985-12-15','Theatre manager',81,3),(159,'Claudia Johnson','Saint Vincent and the Grenadines','2004-08-31','Theme park manager',17,86),(160,'Tina Alvarez','Japan','1995-05-10','Pilot, airline',26,31),(161,'Jacqueline Alvarez','Anguilla','1996-03-26','Merchant navy officer',52,71),(162,'David Haynes','Liberia','2000-08-10','Engineer, electrical',46,95),(163,'Christine Hartman','El Salvador','2002-01-03','Education officer, environmental',14,1),(164,'Tamara Singleton','Kuwait','1986-09-08','Professor Emeritus',18,77),(165,'Christian Davidson','Uganda','1995-06-18','Insurance claims handler',77,10),(166,'Patricia Guerra','Guam','1996-05-10','Risk manager',13,61),(167,'Tara Silva','Costa Rica','2005-01-08','Financial manager',42,66),(168,'Scott Cook','Tuvalu','1983-08-24','Psychiatric nurse',70,35),(169,'Valerie Moreno','Tajikistan','1999-03-27','Geographical information systems officer',65,82),(170,'Madeline Contreras','Colombia','1991-03-13','Geologist, engineering',37,48),(171,'Bruce Thomas','Ethiopia','1997-12-28','Librarian, academic',18,49),(172,'Anna Gonzalez','Namibia','1989-04-14','Development worker, international aid',9,89),(173,'Shane Hernandez','Central African Republic','1994-12-25','Technical sales engineer',28,69),(174,'Theresa Hendricks','Martinique','1993-08-14','Engineering geologist',85,69),(175,'Tammy Hoover','French Guiana','1994-07-11','Equities trader',44,70),(176,'Kimberly Daniels','Norfolk Island','2002-08-06','Diplomatic Services operational officer',18,80),(177,'Candace Murray','Namibia','1993-07-12','IT consultant',89,32),(178,'Anthony Morse','Sweden','1989-09-05','Event organiser',72,63),(179,'Isaiah Valentine','Cyprus','1988-01-26','Chief Strategy Officer',32,82),(180,'Joe Lozano','American Samoa','2004-09-24','Research officer, political party',18,1),(181,'Jacob Jones','Cambodia','1983-03-25','Accountant, chartered public finance',46,97),(182,'Brandy Morris','Germany','2004-10-30','Designer, interior/spatial',51,39),(183,'Stephanie Mason','Cyprus','1986-08-20','Surveyor, planning and development',72,37),(184,'Steven Jones','Jordan','1997-03-24','Chemist, analytical',20,32),(185,'Patrick Morse','Falkland Islands (Malvinas)','1991-12-18','Psychotherapist',84,17),(186,'Mary Jones','Antarctica (the territory South of 60 deg S)','1987-04-24','Engineer, aeronautical',34,67),(187,'Aaron Mclean','Kazakhstan','2002-02-24','Copy',48,35),(188,'Ricardo Jones','Swaziland','1984-12-10','Tourist information centre manager',93,80),(189,'Bernard Rojas','Guam','1998-04-07','Building control surveyor',52,93),(190,'Joseph Mcfarland','Tokelau','1988-06-16','Therapeutic radiographer',80,18),(191,'Bradley Webb','Romania','1992-07-07','Clothing/textile technologist',16,52),(192,'Barbara Gonzalez','Gambia','1998-01-30','Buyer, industrial',62,69),(193,'Marie Zimmerman','Guinea-Bissau','1991-12-31','Occupational psychologist',32,79),(194,'Michael Mccall','United States Minor Outlying Islands','2004-02-09','Photographer',91,63),(195,'Jessica Clark','Tonga','2004-07-05','Chief Operating Officer',4,51),(196,'Nicole Marshall','Trinidad and Tobago','2003-01-03','Games developer',82,18),(197,'Robert Pennington','Uzbekistan','2001-11-18','Technical brewer',35,23),(198,'Kathleen Cook','Gibraltar','1988-12-16','Agricultural consultant',28,13),(199,'Victoria Hess','Bahrain','2005-04-28','Engineer, electronics',83,48),(200,'Steven Day','Northern Mariana Islands','1983-07-09','Corporate investment banker',19,55),(201,'Margaret Young','Kenya','1990-01-26','Engineer, civil (contracting)',38,37),(202,'James Williams','Turkey','1985-11-24','Oncologist',23,41),(203,'Rachel Carpenter','Bouvet Island (Bouvetoya)','1990-03-09','Accountant, chartered public finance',64,27),(204,'Tabitha Williams','Puerto Rico','1986-05-30','Financial risk analyst',10,83),(205,'Stephen Duncan','Costa Rica','1990-04-09','Garment/textile technologist',67,99),(206,'Charles Butler','Moldova','1986-11-24','Information officer',96,73),(207,'Derrick Ellis','Congo','1997-07-15','Estate manager/land agent',98,20),(208,'Deborah Scott','Bahamas','1996-03-19','Travel agency manager',69,85),(209,'Lawrence Gutierrez','United Arab Emirates','1985-07-12','Manufacturing systems engineer',53,34),(210,'Sean Hayes','South Georgia and the South Sandwich Islands','1998-01-17','Medical technical officer',35,7),(211,'David Chavez','Austria','1985-10-28','Psychologist, clinical',89,81),(212,'Frederick Johnson','Burkina Faso','2000-08-12','Forensic scientist',1,98),(213,'Cynthia Hall','Serbia','1992-12-29','Water quality scientist',13,14),(214,'Maxwell Ellis','Slovenia','1994-05-05','Horticulturist, commercial',77,48),(215,'Heather Montgomery','Micronesia','1990-01-10','Insurance broker',88,50),(216,'Richard Short','Brazil','1985-01-13','Market researcher',10,23),(217,'Monique Kim','Niger','1987-03-10','Public affairs consultant',91,77),(218,'Jose Lin','Rwanda','2000-04-06','Surveyor, insurance',85,88),(219,'Barbara Mercado','Qatar','1994-02-07','Retail buyer',80,94),(220,'Travis Bishop','Vanuatu','1984-03-30','Volunteer coordinator',75,6),(221,'Rodney Green','Faroe Islands','2004-12-09','Ophthalmologist',91,75),(222,'Toni Cox','Greece','1993-12-12','Transport planner',49,76),(223,'Bethany Fisher','Guinea-Bissau','2003-04-02','Production assistant, radio',48,69),(224,'Alyssa Clark','Algeria','1992-11-21','Chemical engineer',39,28),(225,'Michael Bernard','Malawi','2004-08-09','Print production planner',81,8),(226,'Mary Marquez','French Guiana','1984-05-24','Ceramics designer',63,71),(227,'Chelsea Hill','Czech Republic','1983-11-09','Training and development officer',40,32),(228,'Kelsey Mullins','Aruba','1983-05-23','Research scientist (medical)',31,87),(229,'Kelly Moore','Moldova','2003-06-13','Air cabin crew',9,90),(230,'Christine Contreras','Palestinian Territory','1992-12-24','Cabin crew',75,6),(231,'Michael Cole','Congo','1988-02-16','Therapist, horticultural',10,66),(232,'Michael Estes','Moldova','1994-06-03','Production assistant, television',97,40),(233,'Joseph Rodriguez','Grenada','2005-03-26','Horticultural therapist',12,91),(234,'Ryan Cruz','Burundi','1999-11-25','Geoscientist',25,35),(235,'Carlos Wright','Madagascar','2000-03-03','Publishing rights manager',79,99),(236,'Kevin Reyes','Panama','1999-01-14','Teacher, primary school',20,7),(237,'Courtney Smith','Nauru','1983-09-02','Paramedic',93,3),(238,'Jeffrey Graham','Bahamas','1987-09-18','General practice doctor',30,42),(239,'Austin Hansen','Angola','1990-04-27','Armed forces technical officer',78,69),(240,'Melissa James','Suriname','2005-05-21','Horticulturist, amenity',18,24),(241,'Joseph Ingram','Panama','1986-08-12','Logistics and distribution manager',30,22),(242,'Charles Rodriguez','Poland','1998-04-06','Operations geologist',62,69),(243,'Jose Smith','Morocco','1985-10-23','Museum/gallery exhibitions officer',61,92),(244,'Meredith Miller','Guadeloupe','1997-04-09','Teacher, primary school',60,58),(245,'Kimberly Peterson','Kyrgyz Republic','1986-04-22','Applications developer',81,54),(246,'Mark Velazquez','Lesotho','1995-10-21','Medical physicist',94,83),(247,'Michael Bowers','United States of America','1993-05-14','Tree surgeon',78,14),(248,'Janet Moore','Burundi','2000-04-17','Production assistant, radio',49,93),(249,'Sean Scott','Chile','1999-02-19','Volunteer coordinator',69,71),(250,'Lori Elliott','Tajikistan','2001-11-27','Materials engineer',47,28),(251,'Justin Schwartz','Namibia','1989-05-20','Theatre director',38,11),(252,'Rebecca Hays','Marshall Islands','2002-09-28','Scientist, research (life sciences)',53,68),(253,'Harold Ward','British Indian Ocean Territory (Chagos Archipelago)','2000-05-06','Therapist, nutritional',90,54),(254,'Kenneth Lopez MD','Philippines','2000-06-10','Surveyor, commercial/residential',74,58),(255,'Robert Harris','Hungary','1986-01-31','Programmer, multimedia',7,19),(256,'Jason Miller','Korea','1985-04-24','Engineer, energy',35,26),(257,'Jeffrey Rodriguez','Austria','2001-11-20','Media buyer',39,73),(258,'Nathan Roth','Marshall Islands','2004-08-10','Scientist, research (maths)',14,79),(259,'Thomas Thomas','Algeria','1987-07-15','Statistician',70,82),(260,'Rebecca Oneal','Mozambique','1990-09-07','Advice worker',51,69),(261,'Chelsea Heath','Kenya','1986-01-07','Television/film/video producer',46,26),(262,'Jennifer Moore','Grenada','2005-03-18','Teaching laboratory technician',41,60),(263,'Dominique Roberts','Ghana','2004-10-03','Retail manager',25,54),(264,'Jesse Chase','Malaysia','1990-04-05','Insurance claims handler',12,22),(265,'Angela Fletcher','Honduras','1986-10-15','Metallurgist',27,55),(266,'Patrick Norton','Haiti','1987-08-29','Police officer',76,43),(267,'Douglas Davis Jr.','Chad','2005-05-07','Make',92,45),(268,'Austin Rogers','Albania','1987-05-31','Quarry manager',19,8),(269,'David Lopez','Anguilla','1996-04-03','Podiatrist',3,91),(270,'Stephanie Cunningham','Reunion','1988-10-04','Engineer, manufacturing',76,73),(271,'Benjamin Mendez','Sri Lanka','1993-10-09','Field seismologist',76,49),(272,'Gabriel Williams','French Southern Territories','1996-03-28','Chief of Staff',74,7),(273,'Tamara Vega','Ghana','2003-09-20','Clinical embryologist',24,74),(274,'Karen Cruz','Hong Kong','1985-08-27','Homeopath',40,31),(275,'Cassandra Bruce','Togo','1982-11-14','Engineering geologist',74,77),(276,'Ashley Garcia','Azerbaijan','2001-06-23','Human resources officer',71,98),(277,'Cynthia Hernandez','Kuwait','1993-03-01','Printmaker',31,46),(278,'Scott Davis','Heard Island and McDonald Islands','1993-06-17','Airline pilot',11,27),(279,'Mckenzie Wheeler','Mongolia','1994-12-09','Psychotherapist, dance movement',48,97),(280,'Paula Fox','Spain','1990-04-24','Information systems manager',10,76),(281,'Judy Daniels','Syrian Arab Republic','1983-01-12','Engineer, civil (contracting)',20,64),(282,'Amy Campbell','Antigua and Barbuda','1989-11-04','Teacher, special educational needs',12,69),(283,'James Rodriguez','Cameroon','1985-08-30','Osteopath',26,71),(284,'Johnny Baker MD','Ghana','1999-07-30','Barrister\'s clerk',51,40),(285,'Steven Jackson','Norfolk Island','1989-01-03','Architect',11,62),(286,'Sharon Baldwin','Norfolk Island','1985-12-14','Phytotherapist',97,11),(287,'Luis Rivera','Central African Republic','2001-02-02','Automotive engineer',73,9),(288,'Veronica Meyer','Saint Pierre and Miquelon','1999-10-24','Radiographer, diagnostic',88,77),(289,'Jamie Miller','Serbia','1989-11-29','Barrister\'s clerk',39,84),(290,'Elizabeth Morales','Swaziland','1987-10-09','Environmental manager',95,70),(291,'Jesse Rubio','Bangladesh','1994-04-04','Petroleum engineer',67,5),(292,'Mary Pacheco','Taiwan','1988-10-02','Restaurant manager',27,54),(293,'Annette Hanson','Saint Vincent and the Grenadines','1994-01-10','Engineer, materials',65,97),(294,'Sarah West','Saudi Arabia','1998-02-08','Trade mark attorney',49,50),(295,'Keith Cox','Tonga','1999-06-08','Barista',91,92),(296,'Stephanie Johnson','Paraguay','1985-02-07','Film/video editor',40,13),(297,'Franklin Parker','Taiwan','1998-06-03','Financial manager',62,73),(298,'Courtney Martin','Gambia','1997-03-09','Environmental consultant',46,22),(299,'Michael Chang','Brazil','1985-12-19','Therapist, speech and language',49,53),(300,'Kevin Orozco','Korea','1999-06-19','Systems analyst',68,97),(301,'Tanya Li','Northern Mariana Islands','1994-05-04','Financial risk analyst',31,39),(302,'Tina James','Benin','1995-04-25','Engineering geologist',4,15),(303,'James Miller','Cote d\'Ivoire','1983-10-18','Airline pilot',41,39),(304,'Brittany Case','Belarus','1990-02-05','Public affairs consultant',76,81),(305,'Norma Wilson','Saint Vincent and the Grenadines','2004-01-25','Health physicist',49,23),(306,'Christina Boyer','Andorra','2005-09-09','Biochemist, clinical',35,92),(307,'Brooke Singh','Poland','1984-04-17','Printmaker',20,88),(308,'Jeffrey Fernandez','Pitcairn Islands','1994-10-03','Meteorologist',39,61),(309,'Eric Burnett','Japan','1987-06-12','Research scientist (maths)',41,31),(310,'Krystal Hayes','Japan','1997-01-20','Arts administrator',40,73),(311,'Oscar Keller','Malta','1984-02-13','Psychologist, counselling',28,31),(312,'William Knox DVM','Timor-Leste','1985-05-05','Engineer, chemical',78,6),(313,'Jordan Hogan','Iraq','2000-08-09','Ship broker',66,24),(314,'Heather Luna','Barbados','1999-07-03','Psychologist, clinical',39,88),(315,'Anna French','Canada','1998-06-11','Psychotherapist',41,7),(316,'Lauren Francis','Micronesia','2001-02-14','Local government officer',66,42),(317,'Eric Massey','Micronesia','1987-07-13','Editorial assistant',46,16),(318,'Diana Martin','Malaysia','1999-06-22','Museum education officer',47,87),(319,'Sharon Payne','United States of America','1998-04-01','Estate agent',96,14),(320,'Sally Baxter','Tunisia','1995-09-25','Chief Marketing Officer',89,81),(321,'Daniel Suarez','Netherlands','1993-05-07','Furniture designer',60,42),(322,'Julie Murphy','Congo','1987-04-16','Civil engineer, contracting',63,54),(323,'Wayne Payne Jr.','Nicaragua','1990-09-07','Surveyor, hydrographic',14,46),(324,'Bonnie Davis','Qatar','1984-03-08','Associate Professor',77,67),(325,'Pamela Ford','Albania','1986-12-24','Private music teacher',68,41),(326,'Anna Perry','Martinique','1986-01-08','Associate Professor',31,68),(327,'Luis Wilson','Congo','1993-04-27','Artist',34,71),(328,'Latoya Rodriguez','Belgium','1991-08-22','Speech and language therapist',48,29),(329,'Megan Mckinney','Jersey','1988-06-03','Runner, broadcasting/film/video',18,18),(330,'Eric Cain','Bouvet Island (Bouvetoya)','2001-05-20','Music therapist',60,80),(331,'Vickie Armstrong','Nicaragua','1997-06-28','Editor, film/video',72,97),(332,'Catherine Thomas','India','1984-05-18','Restaurant manager, fast food',80,87),(333,'Jessica Gould','Togo','1986-12-20','Estate manager/land agent',59,74),(334,'Amber Brewer','Cambodia','2004-11-07','Lexicographer',52,14),(335,'Brett Torres','Central African Republic','1998-07-21','Geophysical data processor',72,16),(336,'Ian Miller','Equatorial Guinea','1996-09-26','Scientist, audiological',24,1),(337,'Margaret Morgan','Singapore','2003-10-12','Geographical information systems officer',91,49),(338,'Karen Butler','Saint Martin','1995-08-20','Theme park manager',41,61),(339,'Shane Ross','Tonga','2005-01-31','Forest/woodland manager',21,3),(340,'Thomas Harrington','Cameroon','1992-02-05','Actuary',40,63),(341,'Stephanie Walker','British Indian Ocean Territory (Chagos Archipelago)','2003-12-28','Equities trader',20,59),(342,'Renee Obrien','Netherlands Antilles','1990-04-24','Haematologist',11,7),(343,'Barry Russell','Swaziland','1989-11-11','Arts development officer',16,60),(344,'Eric Hudson','Jersey','1995-08-25','Haematologist',96,63),(345,'Krista Burton','Bahrain','1993-01-05','Museum/gallery curator',18,35),(346,'Elizabeth Hayes','Macedonia','1989-11-17','Chemist, analytical',20,33),(347,'Gloria Mason','Cuba','1997-06-17','Insurance risk surveyor',59,90),(348,'Colleen Hickman','Gibraltar','2004-11-27','Hydrographic surveyor',74,3),(349,'Kimberly Deleon','Belgium','2002-03-06','Museum education officer',8,9),(350,'Kristin Mitchell','Costa Rica','2003-11-05','Marketing executive',3,58),(351,'Tyler Lopez','Hungary','1987-01-28','Operational investment banker',35,37),(352,'Haley Perez','Belarus','1989-02-13','Occupational hygienist',94,69),(353,'Kevin Bennett','Korea','1987-10-28','Pension scheme manager',91,31),(354,'Noah Raymond','Gabon','1991-09-09','Journalist, broadcasting',58,40),(355,'Lauren Gardner','Greece','1992-11-29','Medical physicist',30,4),(356,'Yolanda Ellis','Brunei Darussalam','1993-01-16','Diplomatic Services operational officer',4,49),(357,'Bobby Moran','Micronesia','1997-11-13','Financial risk analyst',74,26),(358,'Victoria Boone','Belgium','1993-03-20','Counselling psychologist',9,85),(359,'Austin Park','Solomon Islands','1986-01-12','Town planner',40,42),(360,'Michelle Hernandez','Australia','1993-08-20','Retail buyer',29,56),(361,'Melanie Gardner DDS','Mozambique','1985-01-17','Theatre manager',85,13),(362,'Joanne Powell','United Kingdom','1986-03-05','Clinical biochemist',84,98),(363,'Andrew Davidson','Switzerland','1991-10-20','Heritage manager',92,97),(364,'Cynthia Smith','Puerto Rico','2002-03-12','Fisheries officer',36,63),(365,'Kathleen Turner','Djibouti','1998-07-26','Exercise physiologist',14,24),(366,'Emily Hatfield','Kenya','1996-03-07','Insurance broker',54,87),(367,'Christopher Smith','Taiwan','2005-05-17','Operational investment banker',81,4),(368,'Matthew Newman','Sierra Leone','1989-08-13','Programme researcher, broadcasting/film/video',61,5),(369,'Richard Jenkins','Colombia','2000-06-22','Therapist, art',35,14),(370,'Christian Haas','Liberia','1983-10-07','Therapist, drama',60,66),(371,'Mark Ortega','Slovakia (Slovak Republic)','1989-10-26','Logistics and distribution manager',8,19),(372,'Alexis Smith','Antigua and Barbuda','1989-01-09','Logistics and distribution manager',29,69),(373,'Misty Rocha','Swaziland','2003-03-03','Programme researcher, broadcasting/film/video',89,50),(374,'Peggy Thomas','Finland','1986-09-11','Multimedia specialist',16,10),(375,'Brian Morales','Philippines','1991-04-21','Education officer, museum',24,38),(376,'Sharon Williams','Bahrain','1991-12-06','Charity officer',19,93),(377,'Mrs. Lisa Luna DDS','Vietnam','2005-02-01','Dramatherapist',76,94),(378,'Thomas Lambert','Ukraine','1997-11-19','Event organiser',55,45),(379,'Steven Herrera','Montserrat','1988-07-29','Records manager',66,86),(380,'Howard Ellis','Saint Vincent and the Grenadines','1996-08-18','Geologist, engineering',50,56),(381,'Cassandra Mccall','Ukraine','1988-10-30','Journalist, newspaper',17,67),(382,'Casey Costa','Pitcairn Islands','2005-08-08','Surveyor, rural practice',60,3),(383,'Annette Melton','Puerto Rico','1990-07-11','Audiological scientist',4,71),(384,'Brian Young','Romania','1997-02-10','Scientist, forensic',27,31),(385,'Travis Clark','Nepal','1988-04-24','Special effects artist',29,80),(386,'Kevin Jackson','Belize','2000-03-09','Artist',58,39),(387,'Susan Moore','Belize','2002-01-09','Doctor, general practice',39,31),(388,'Alexander Hester','Syrian Arab Republic','1993-12-20','Museum/gallery curator',17,59),(389,'Eugene Sheppard','Namibia','2005-05-05','Catering manager',48,28),(390,'Brianna Carrillo','Peru','2004-04-30','Ranger/warden',14,90),(391,'Ryan Newman','Saint Helena','2004-08-23','Technical brewer',16,30),(392,'Zachary Hardin','Svalbard & Jan Mayen Islands','1990-08-18','Oceanographer',75,77),(393,'Angel Cruz','Lebanon','1989-09-13','Corporate investment banker',8,39),(394,'Dr. Michael Bennett MD','Saint Pierre and Miquelon','1993-08-15','Scientific laboratory technician',64,29),(395,'Todd Lopez','Japan','1993-09-02','Surveyor, commercial/residential',60,54),(396,'Christopher Martin','Guernsey','1991-08-29','Air cabin crew',90,7),(397,'Jon Franklin','El Salvador','1983-04-17','Geophysicist/field seismologist',10,19),(398,'Maureen Stanley','Sierra Leone','1993-11-27','Research officer, government',8,19),(399,'Kevin Johnson','Trinidad and Tobago','1987-08-29','Aid worker',86,96),(400,'Wayne Lester','Korea','1983-06-04','Clinical scientist, histocompatibility and immunogenetics',53,3),(401,'Catherine Riley','Greenland','1995-05-11','Engineer, civil (consulting)',15,72),(402,'James Brady','French Polynesia','1989-05-06','Contracting civil engineer',8,70),(403,'Evan Hawkins','Nepal','1989-07-23','Air broker',65,71),(404,'Kathy Cole','Guinea-Bissau','1995-06-15','Minerals surveyor',93,33),(405,'Ian Macias','Suriname','1987-03-12','Careers adviser',98,45),(406,'Michele Miller','Greenland','2001-12-12','Product manager',96,32),(407,'Pamela Foster','Algeria','1986-10-06','Teacher, early years/pre',60,17),(408,'Jill Caldwell','Cape Verde','1983-02-09','Nurse, learning disability',32,17),(409,'Tamara Bennett','Bolivia','1999-05-31','Sports development officer',52,99),(410,'Danny Murphy','Faroe Islands','1989-06-15','Early years teacher',4,87),(411,'Zachary Crawford','Micronesia','1999-04-17','Production manager',5,92),(412,'Christopher Salazar','Costa Rica','2001-05-01','Dance movement psychotherapist',11,80),(413,'Suzanne Smith','Haiti','1984-08-20','Social research officer, government',79,96),(414,'Michael Gonzalez','Heard Island and McDonald Islands','1997-12-28','Freight forwarder',51,70),(415,'Adrian Conway','Equatorial Guinea','1991-07-08','Field trials officer',44,72),(416,'John Murray','Nicaragua','1997-10-08','Armed forces logistics/support/administrative officer',83,41),(417,'Christopher Cordova','Martinique','1988-11-10','Medical sales representative',26,72),(418,'Sarah Fitzpatrick','Anguilla','1998-08-31','Learning disability nurse',31,72),(419,'Patricia Gonzales','Aruba','1987-06-18','Engineer, production',47,32),(420,'Carla Ward','Burundi','1990-06-23','Designer, multimedia',51,5),(421,'Kevin Morgan','Norfolk Island','1986-04-26','Amenity horticulturist',5,39),(422,'Dr. Denise Chavez','Hong Kong','1998-02-11','Environmental health practitioner',5,2),(423,'John Manning','Cocos (Keeling) Islands','1990-02-23','Secondary school teacher',33,39),(424,'Bailey Hickman','Ireland','2001-12-01','Toxicologist',50,92),(425,'Katelyn Williams','Dominica','1994-04-03','Broadcast engineer',35,78),(426,'Kevin Ramirez','Bahamas','1984-12-24','Scientist, biomedical',15,27),(427,'Erin Lane','Bouvet Island (Bouvetoya)','2002-07-06','Product manager',20,50),(428,'William Chaney','Peru','2003-08-01','Hospital pharmacist',22,66),(429,'William Mullen','Norway','1989-09-23','Tourism officer',91,65),(430,'Christopher Sheppard','Mexico','1990-09-23','Insurance broker',46,38),(431,'Jacqueline Williams','Macedonia','1986-02-19','Warden/ranger',27,4),(432,'Amy Wilson','Sudan','1998-11-02','Architectural technologist',13,31),(433,'Karen Miles','Seychelles','1986-04-16','Microbiologist',28,5),(434,'Bianca Clark','Saint Lucia','1996-01-12','Mechanical engineer',21,25),(435,'Suzanne Howard','Luxembourg','1984-10-10','Runner, broadcasting/film/video',75,56),(436,'John Reynolds','Japan','1992-02-25','Animator',18,80),(437,'Laura Martin','Hong Kong','1999-05-03','Product manager',84,48),(438,'Matthew Montgomery','Czech Republic','1985-03-13','Production manager',92,31),(439,'Karina Burnett','Honduras','1988-10-09','Telecommunications researcher',85,39),(440,'Susan Vargas','Bouvet Island (Bouvetoya)','1994-07-17','Programmer, multimedia',62,69),(441,'Timothy Hutchinson','Lithuania','2005-04-23','Health and safety adviser',94,18),(442,'Kathryn Garcia','Gabon','2002-03-09','Mechanical engineer',56,55),(443,'William Maxwell','Serbia','1989-08-17','Insurance risk surveyor',90,32),(444,'Alexis Lowery','Ghana','2002-08-01','Ergonomist',82,32),(445,'Shannon Lewis','Holy See (Vatican City State)','1983-05-02','Accountant, chartered certified',4,15),(446,'Holly Lopez','Antigua and Barbuda','2005-02-15','Presenter, broadcasting',28,81),(447,'Martin Carroll','Mexico','1992-07-28','Engineer, broadcasting (operations)',83,78),(448,'Nicholas Jones','Comoros','1983-09-18','Housing manager/officer',87,67),(449,'Alexandra Wyatt','Malta','1987-05-30','Tour manager',32,2),(450,'Jasmin Miller','Tanzania','1998-02-16','Therapist, occupational',49,20),(451,'Mark Odonnell','Equatorial Guinea','1998-04-04','Geographical information systems officer',14,80),(452,'Lisa Ball','Cape Verde','1986-01-27','Retail banker',83,49),(453,'Christopher Bowman','Netherlands','1992-12-15','Astronomer',10,3),(454,'Anna Davis','San Marino','1993-09-15','Oncologist',76,46),(455,'Jamie Mcbride','Taiwan','1995-09-12','Analytical chemist',62,17),(456,'Jeremy Strickland','French Polynesia','2002-09-11','Child psychotherapist',65,41),(457,'Kenneth Richardson','Jamaica','1993-09-10','Veterinary surgeon',51,45),(458,'Robert Walker','Christmas Island','1992-08-28','IT technical support officer',77,52),(459,'Jose Carpenter','Uruguay','1999-05-27','Sales professional, IT',61,17),(460,'Clinton Abbott','Algeria','2005-05-26','Planning and development surveyor',43,70),(461,'John Robinson','Djibouti','1993-11-02','Librarian, public',94,7),(462,'Marilyn Johnson','Indonesia','1996-03-23','Engineer, structural',39,77),(463,'Samantha Cunningham','New Zealand','1984-02-11','Press photographer',31,81),(464,'Colin Davis','Indonesia','1995-03-17','Chartered loss adjuster',66,57),(465,'Philip Shaffer','Costa Rica','1990-01-02','Radiographer, diagnostic',46,97),(466,'Daniel Jones','Cape Verde','1987-07-13','Structural engineer',47,35),(467,'Mary Ho','Norfolk Island','2002-01-12','Engineer, drilling',57,92),(468,'Jessica Rose','Norway','1986-05-24','Production engineer',20,16),(469,'Tanya Meza','Kuwait','2004-03-23','Pharmacist, hospital',94,15),(470,'Shawn Smith','Eritrea','1998-01-11','Sport and exercise psychologist',33,39),(471,'Jessica Lee','Malta','2004-12-22','Chiropodist',70,43),(472,'Jennifer Grant','Botswana','1994-07-07','International aid/development worker',30,78),(473,'Deborah Hughes','South Georgia and the South Sandwich Islands','1999-01-05','Trading standards officer',98,38),(474,'Michael Walsh','Costa Rica','1986-10-25','Haematologist',47,54),(475,'Brandon Walker','Svalbard & Jan Mayen Islands','1994-03-22','Broadcast presenter',94,23),(476,'Reginald Lyons','Mexico','1982-12-01','Environmental manager',97,16),(477,'Wendy Hall','Macao','1994-11-27','Teacher, special educational needs',34,34),(478,'Luke Hall','Belarus','1988-09-26','Agricultural consultant',38,93),(479,'Brian Hartman','India','1999-05-14','Structural engineer',9,50),(480,'Denise Nash MD','Romania','1989-11-17','Community education officer',67,42),(481,'Marcia Werner','Ethiopia','1994-10-05','Arts development officer',58,24),(482,'Joseph Rice','Seychelles','1992-02-01','Civil engineer, consulting',14,12),(483,'Catherine Moss','Jamaica','1985-03-19','Event organiser',38,22),(484,'Valerie Hartman','Gibraltar','1991-07-25','Engineer, structural',76,59),(485,'Lindsey Barrett','Kuwait','2002-03-09','Architectural technologist',50,34),(486,'Ms. Brenda Cameron','Indonesia','2000-03-30','Toxicologist',97,10),(487,'Brandon Scott','Moldova','2003-03-17','Clinical molecular geneticist',55,23),(488,'Mrs. Carolyn Williams','Niger','1997-05-28','Manufacturing systems engineer',59,29),(489,'Autumn Love','Greece','2004-09-29','Psychologist, sport and exercise',23,15),(490,'Brittany Lewis','Brunei Darussalam','1995-04-12','Translator',12,33),(491,'Sylvia Montgomery','Costa Rica','1988-05-27','Video editor',55,62),(492,'Timothy Erickson','Finland','1990-07-17','Administrator',62,24),(493,'Matthew Nunez','Bahamas','1999-10-24','IT technical support officer',64,88),(494,'Joe Peters','Marshall Islands','1993-11-01','Lawyer',29,1),(495,'Jesse Adams','Sweden','1989-08-09','Therapist, nutritional',28,59),(496,'Justin Lam','Kenya','2002-04-20','Conservation officer, nature',21,18),(497,'Larry Mcintyre','Spain','2000-09-26','Therapist, occupational',61,48),(498,'Debra Andrews','Macedonia','2003-08-11','Commercial art gallery manager',47,55),(499,'Erin Ortiz','Montenegro','1993-05-31','Audiological scientist',68,47),(500,'Steven Powers','Palestinian Territory','1983-10-08','Marine scientist',95,40);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_status`
--

DROP TABLE IF EXISTS `player_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_status` (
  `player_id` int NOT NULL,
  `league_id` int NOT NULL,
  `goals_scored` int DEFAULT NULL,
  PRIMARY KEY (`player_id`,`league_id`),
  KEY `league_id` (`league_id`),
  CONSTRAINT `player_status_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `player_status_ibfk_2` FOREIGN KEY (`league_id`) REFERENCES `league` (`league_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_status`
--

LOCK TABLES `player_status` WRITE;
/*!40000 ALTER TABLE `player_status` DISABLE KEYS */;
INSERT INTO `player_status` VALUES (150,3,1),(150,4,2),(150,5,21),(150,6,12),(150,9,0),(151,4,16),(151,5,19),(151,9,12),(151,10,19),(152,5,15),(152,6,2),(152,7,1),(153,1,13),(153,6,5),(153,7,6),(153,8,4),(153,9,6),(154,1,16),(154,2,26),(154,3,13),(154,8,6),(154,9,21),(155,1,24),(155,3,0),(155,4,7),(155,5,21),(155,6,4),(155,7,3),(155,9,16),(155,10,5),(156,3,0),(156,4,13),(156,6,8),(156,8,17),(156,9,23),(156,10,13),(157,1,1),(157,2,7),(157,3,2),(157,4,11),(157,6,25),(157,8,6),(157,10,8),(158,2,8),(158,3,23),(158,4,7),(158,5,1),(158,7,0),(158,8,19),(159,1,1),(159,2,2),(159,3,19),(159,4,5),(159,6,8),(159,9,13),(159,10,6),(160,2,16),(160,5,10),(160,6,9),(160,9,24),(161,1,13),(161,3,5),(161,4,9),(161,6,20),(161,8,0),(161,10,10),(162,2,14),(162,5,1),(162,8,19),(162,9,6),(162,10,9),(163,1,26),(163,3,13),(163,4,26),(163,6,10),(163,9,21),(164,1,4),(164,3,0),(164,7,1),(164,8,25),(165,3,11),(165,4,21),(165,5,1),(165,9,12),(165,10,13),(166,2,10),(166,5,24),(166,7,23),(166,8,25),(167,1,1),(167,5,23),(167,8,26),(167,9,20),(167,10,23),(168,1,14),(168,2,1),(168,4,20),(168,5,4),(168,6,24),(168,10,8),(169,2,17),(169,4,25),(169,7,1),(169,8,18),(169,9,6),(170,3,11),(170,4,0),(170,6,6),(170,7,5),(170,8,18),(171,2,15),(171,5,18),(171,7,10),(171,9,5),(171,10,21),(172,1,19),(172,2,24),(172,5,5),(172,6,9),(172,7,22),(172,8,7),(172,9,3),(172,10,12),(173,1,1),(173,5,25),(173,6,22),(173,8,0),(173,10,12),(174,1,23),(174,2,5),(174,3,16),(174,4,5),(174,5,15),(174,7,5),(174,9,6),(175,1,7),(175,2,17),(175,4,5),(175,6,4),(175,7,17),(175,8,15),(175,9,9),(175,10,16),(176,4,13),(176,5,11),(176,7,24),(176,8,0),(177,2,6),(177,3,1),(177,4,15),(177,5,7),(177,8,19),(177,9,6),(177,10,15),(178,1,9),(178,4,18),(178,5,23),(178,6,11),(178,10,3),(179,2,10),(179,5,12),(179,7,2),(179,8,0),(179,10,25),(180,2,23),(180,4,21),(180,6,13),(180,7,18),(180,8,26),(180,9,17),(180,10,12),(181,1,17),(181,2,21),(181,3,8),(181,4,10),(181,6,1),(181,10,23),(182,2,20),(182,3,10),(182,7,9),(182,8,17),(182,9,13),(182,10,0),(183,4,17),(183,5,4),(183,6,10),(183,7,24),(183,10,12),(184,1,9),(184,2,10),(184,3,15),(184,7,14),(184,8,23),(185,5,13),(185,6,24),(185,8,9),(185,9,4),(185,10,22),(186,1,20),(186,2,0),(186,4,21),(186,5,22),(186,6,26),(186,7,25),(186,8,16),(186,9,5),(186,10,22),(187,4,3),(187,5,21),(187,8,24),(187,9,3),(188,5,26),(188,6,21),(188,7,15),(188,8,11),(188,10,20),(189,3,11),(189,5,16),(189,6,21),(189,7,26),(190,4,18),(190,6,24),(190,8,8),(190,9,12),(190,10,7),(191,2,26),(191,4,11),(191,7,15),(192,2,17),(192,3,23),(192,4,8),(192,5,20),(192,6,10),(192,7,17),(192,8,8),(192,10,2),(193,1,10),(193,3,17),(193,6,19),(193,9,8),(194,1,25),(194,2,3),(194,5,9),(194,7,14),(194,8,7),(194,10,11),(195,5,21),(195,7,16),(195,8,3),(195,9,9),(196,2,23),(196,4,22),(196,7,13),(197,2,25),(197,3,9),(197,4,11),(197,8,6),(197,10,5),(198,1,1),(198,3,18),(198,4,6),(198,5,22),(198,6,19),(198,9,9),(199,1,18),(199,2,5),(199,3,19),(199,4,25),(199,5,24),(199,6,0),(199,7,26),(199,8,23),(199,9,22),(200,2,26),(200,3,25),(200,5,14),(200,6,10),(200,8,5),(200,9,16),(200,10,20);
/*!40000 ALTER TABLE `player_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `president`
--

DROP TABLE IF EXISTS `president`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `president` (
  `president_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`president_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `president`
--

LOCK TABLES `president` WRITE;
/*!40000 ALTER TABLE `president` DISABLE KEYS */;
INSERT INTO `president` VALUES (1,'Brad Nguyen','1969-07-12','Saudi Arabia'),(2,'Dustin Hubbard','1976-05-02','India'),(3,'Victoria Woods DVM','1977-12-28','Japan'),(4,'Jesus Klein','1967-04-26','Portugal'),(5,'Catherine Vasquez','1953-08-10','Qatar'),(6,'Pamela Hensley','1957-01-10','Christmas Island'),(7,'Amanda Werner','1954-04-11','Tonga'),(8,'Jared Collins','1983-03-24','Niue'),(9,'Miss Whitney Poole','1955-09-10','Iceland'),(10,'Andrew Klein','1949-02-08','Sweden');
/*!40000 ALTER TABLE `president` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `president_club`
--

DROP TABLE IF EXISTS `president_club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `president_club` (
  `president_id` int NOT NULL,
  `club_id` int NOT NULL,
  PRIMARY KEY (`president_id`,`club_id`),
  KEY `club_id` (`club_id`),
  CONSTRAINT `president_club_ibfk_1` FOREIGN KEY (`president_id`) REFERENCES `president` (`president_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `president_club_ibfk_2` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `president_club`
--

LOCK TABLES `president_club` WRITE;
/*!40000 ALTER TABLE `president_club` DISABLE KEYS */;
INSERT INTO `president_club` VALUES (3,1),(5,2),(1,3),(2,4),(5,5);
/*!40000 ALTER TABLE `president_club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referee`
--

DROP TABLE IF EXISTS `referee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referee` (
  `referee_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  PRIMARY KEY (`referee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referee`
--

LOCK TABLES `referee` WRITE;
/*!40000 ALTER TABLE `referee` DISABLE KEYS */;
INSERT INTO `referee` VALUES (1,'Angela Sherman','Ireland','1984-09-19'),(2,'Shane Hill','Taiwan','1978-10-16'),(3,'Heather Bradley','Thailand','1992-06-21'),(4,'Nicholas Lawrence','Netherlands Antilles','1973-05-07'),(5,'Tracey Best','Lebanon','1986-12-02'),(6,'Mia George','Macao','1996-01-01'),(7,'Maureen Olsen','Guernsey','1976-01-23'),(8,'David Williams','Chad','1979-11-14'),(9,'Emily Prince','United Kingdom','1972-05-18'),(10,'Kevin Watson','Cameroon','1982-08-19'),(11,'Christine Garcia','Grenada','1988-06-27'),(12,'Dana Myers','Marshall Islands','1997-09-11'),(13,'Emma York','Central African Republic','1983-07-16'),(14,'Kimberly Watts PhD','Jamaica','1983-09-10'),(15,'Amy Brown','Cuba','1981-09-08'),(16,'Ana Johnson','Estonia','1970-12-02'),(17,'Jonathan Brooks','Hungary','1986-06-05'),(18,'Devin Smith','Bulgaria','1986-07-24'),(19,'Michael Ayala','Algeria','1968-12-15'),(20,'Edward Washington','Korea','1971-07-26'),(21,'Brian Sexton','Mauritania','1984-09-15'),(22,'Bruce Salazar','Puerto Rico','1992-02-26'),(23,'Sylvia Murphy','Montserrat','1998-01-18'),(24,'Cynthia Nichols','Mauritania','1986-08-13'),(25,'Tanya Lee','Slovakia (Slovak Republic)','1998-07-16'),(26,'Natalie Perez','Djibouti','1991-03-23'),(27,'Danielle Bush','Canada','1996-04-24'),(28,'Jacob Stewart','United Kingdom','1971-07-07'),(29,'Donna Hughes','Isle of Man','1983-09-06'),(30,'Renee Lawson','Luxembourg','1980-09-05'),(31,'Andres Anderson','Sudan','1974-08-08'),(32,'Nicole Schmitt','Iceland','1978-10-09'),(33,'Martha Myers','Falkland Islands (Malvinas)','1982-08-11'),(34,'Robert Johnson','Syrian Arab Republic','1977-10-27'),(35,'Tracie Williamson','Canada','1968-04-19'),(36,'Grace Cervantes','Latvia','1969-07-13'),(37,'Jennifer Jenkins','Thailand','1992-04-28'),(38,'Justin Ferguson','United Kingdom','1976-12-21'),(39,'Heather Sanders','Morocco','1994-02-21'),(40,'Douglas Morgan','Kazakhstan','1975-02-17');
/*!40000 ALTER TABLE `referee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stadium`
--

DROP TABLE IF EXISTS `stadium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stadium` (
  `stadium_id` int NOT NULL,
  `stadium_name` varchar(255) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `club_id` int DEFAULT NULL,
  PRIMARY KEY (`stadium_id`),
  KEY `club_id` (`club_id`),
  CONSTRAINT `stadium_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadium`
--

LOCK TABLES `stadium` WRITE;
/*!40000 ALTER TABLE `stadium` DISABLE KEYS */;
INSERT INTO `stadium` VALUES (1,'Pierce Pass Stadium',99990,'Iran','South Johnshire','59276',1),(2,'Morris Fords Stadium',32743,'Libyan Arab Jamahiriya','Port Alexandermouth','32964',1),(3,'Cindy Villages Stadium',25651,'Norfolk Island','East Todd','57072',2),(4,'Thompson Mills Stadium',90626,'Slovakia (Slovak Republic)','West Victoria','72824',2),(5,'Joseph Village Stadium',87210,'Singapore','Gonzalezton','98225',3),(6,'Burnett Oval Stadium',86181,'Tokelau','West Samanthabury','84669',3),(7,'Strickland Tunnel Stadium',32259,'Iraq','Bruceland','68253',4),(8,'Colon Center Stadium',39631,'Portugal','Jessicaport','15249',4),(9,'Brittany River Stadium',62775,'United States Virgin Islands','West Leonardville','57538',5),(10,'Crystal Harbor Stadium',42724,'Vietnam','Francisport','30942',5);
/*!40000 ALTER TABLE `stadium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standing`
--

DROP TABLE IF EXISTS `standing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `standing` (
  `standing_id` int NOT NULL,
  `club_id` int NOT NULL,
  `team_id` int NOT NULL,
  `matches_played` int DEFAULT NULL,
  `draws` int DEFAULT NULL,
  `wins` int DEFAULT NULL,
  `looses` int DEFAULT NULL,
  `points` int DEFAULT NULL,
  `league_id` int DEFAULT NULL,
  PRIMARY KEY (`club_id`,`team_id`,`standing_id`),
  KEY `league_id` (`league_id`),
  CONSTRAINT `standing_ibfk_1` FOREIGN KEY (`club_id`, `team_id`) REFERENCES `team` (`club_id`, `team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `standing_ibfk_2` FOREIGN KEY (`league_id`) REFERENCES `league` (`league_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standing`
--

LOCK TABLES `standing` WRITE;
/*!40000 ALTER TABLE `standing` DISABLE KEYS */;
INSERT INTO `standing` VALUES (1,1,1,18,21,28,2,56,1),(21,1,1,17,9,14,3,79,5),(41,1,1,21,5,17,17,45,9),(2,1,2,3,4,26,9,31,2),(22,1,2,25,20,9,11,79,6),(42,1,2,15,19,27,27,8,10),(3,1,3,12,17,21,3,8,3),(23,1,3,18,24,23,19,49,7),(4,1,4,7,24,2,12,7,4),(24,1,4,10,22,27,19,74,8),(5,2,5,3,26,25,4,57,1),(25,2,5,2,12,1,4,29,5),(43,2,5,6,27,17,27,33,9),(6,2,6,2,27,16,6,86,2),(26,2,6,21,11,10,14,48,6),(44,2,6,18,25,8,7,52,10),(7,2,7,6,6,13,0,87,3),(27,2,7,27,23,21,28,40,7),(8,2,8,13,8,1,5,69,4),(28,2,8,0,24,21,7,26,8),(9,3,9,3,22,0,16,50,1),(29,3,9,25,19,6,0,68,5),(45,3,9,4,3,3,3,59,9),(10,3,10,1,7,13,1,81,2),(30,3,10,16,25,16,21,22,6),(45,3,10,6,13,2,1,74,10),(11,3,11,21,28,8,10,29,3),(31,3,11,24,27,24,14,74,7),(12,3,12,3,1,15,1,42,4),(32,3,12,28,11,22,2,88,8),(13,4,13,25,20,11,10,0,1),(33,4,13,17,15,20,0,24,5),(47,4,13,10,2,22,8,56,9),(14,4,14,16,16,15,14,34,2),(34,4,14,15,18,4,22,86,6),(48,4,14,8,6,27,15,0,10),(15,4,15,22,16,2,4,71,3),(35,4,15,27,29,9,16,11,7),(16,4,16,20,16,29,24,60,4),(36,4,16,2,11,1,21,10,8),(17,5,17,8,8,15,25,29,1),(37,5,17,8,4,1,9,66,5),(49,5,17,23,13,7,18,49,9),(18,5,18,11,8,17,18,4,2),(38,5,18,15,16,5,12,7,6),(50,5,18,5,7,7,3,11,10),(19,5,19,24,19,0,5,88,3),(39,5,19,11,15,14,17,59,7),(20,5,20,16,25,0,25,88,4),(40,5,20,13,11,24,22,36,8);
/*!40000 ALTER TABLE `standing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `team_id` int NOT NULL,
  `club_id` int NOT NULL,
  `team_name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`team_id`,`club_id`),
  KEY `club_id` (`club_id`),
  CONSTRAINT `team_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,1,'The Lightning Bolts','DarkGoldenRod','https://placeimg.com/991/968/any'),(2,1,'The Blazing Arrows','FireBrick','https://www.lorempixel.com/894/128'),(3,1,'The Mighty Gladiators','Thistle','https://placeimg.com/553/104/any'),(4,1,'The Soaring Eagles','LightGoldenRodYellow','https://placekitten.com/928/660'),(5,2,'The Unstoppable Force','RoyalBlue','https://placeimg.com/289/428/any'),(6,2,'The Fierce Dragons','MediumTurquoise','https://placekitten.com/1021/903'),(7,2,'The Unwavering Sentinels','Orchid','https://www.lorempixel.com/681/473'),(8,2,'The Daring Daredevils','DarkSeaGreen','https://dummyimage.com/53x217'),(9,3,'The Roaring Lions','AliceBlue','https://dummyimage.com/18x328'),(10,3,'The Unbreakable Wall','Navy','https://placekitten.com/133/1005'),(11,3,'The Savage Sharks','YellowGreen','https://www.lorempixel.com/302/450'),(12,3,'The Stealthy Panthers','SeaShell','https://www.lorempixel.com/255/916'),(13,4,'The Towering Giants','Wheat','https://www.lorempixel.com/972/458'),(14,4,'The Swift Cheetahs','ForestGreen','https://dummyimage.com/144x521'),(15,4,'The Unpredictable Wizards','Gold','https://placekitten.com/54/898'),(16,4,'The Unstoppable Juggernaut','DeepSkyBlue','https://placeimg.com/94/400/any'),(17,5,'The Fearless Warriors','DarkRed','https://placekitten.com/739/724'),(18,5,'The Stalwart Defenders','SteelBlue','https://placekitten.com/640/381'),(19,5,'The Relentless Renegades','Chartreuse','https://www.lorempixel.com/661/543'),(20,5,'The Unbreakable Spirit','Chartreuse','https://dummyimage.com/800x14');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_manager`
--

DROP TABLE IF EXISTS `team_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_manager` (
  `club_id` int NOT NULL,
  `team_id` int NOT NULL,
  `manager_id` int NOT NULL,
  PRIMARY KEY (`club_id`,`team_id`,`manager_id`),
  KEY `manager_id` (`manager_id`),
  CONSTRAINT `team_manager_ibfk_1` FOREIGN KEY (`club_id`, `team_id`) REFERENCES `team` (`club_id`, `team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `team_manager_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_manager`
--

LOCK TABLES `team_manager` WRITE;
/*!40000 ALTER TABLE `team_manager` DISABLE KEYS */;
INSERT INTO `team_manager` VALUES (1,1,16),(1,2,17),(1,3,18),(1,4,19),(2,5,20),(2,6,21),(2,7,22),(2,8,23),(3,9,24),(3,10,25),(3,11,26),(3,12,27),(4,13,28),(4,14,29),(4,15,30),(4,16,31),(5,17,32),(5,18,33),(5,19,34),(5,20,35);
/*!40000 ALTER TABLE `team_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_player`
--

DROP TABLE IF EXISTS `team_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_player` (
  `team_id` int NOT NULL,
  `player_id` int NOT NULL,
  `club_id` int NOT NULL,
  PRIMARY KEY (`team_id`,`player_id`,`club_id`),
  KEY `club_id` (`club_id`,`team_id`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `team_player_ibfk_1` FOREIGN KEY (`club_id`, `team_id`) REFERENCES `team` (`club_id`, `team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `team_player_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_player`
--

LOCK TABLES `team_player` WRITE;
/*!40000 ALTER TABLE `team_player` DISABLE KEYS */;
INSERT INTO `team_player` VALUES (2,4,1),(6,4,2),(10,5,3),(14,5,4),(19,9,5),(1,11,1),(9,12,3),(3,13,1),(14,13,4),(20,13,5),(7,14,2),(16,15,4),(19,15,5),(14,16,4),(2,17,1),(6,17,2),(3,18,1),(13,18,4),(1,20,1),(2,21,1),(4,21,1),(11,21,3),(15,21,4),(13,22,4),(20,23,5),(15,25,4),(3,26,1),(11,27,3),(2,28,1),(13,30,4),(2,31,1),(13,31,4),(17,33,5),(7,34,2),(12,35,3),(17,35,5),(8,36,2),(17,37,5),(4,38,1),(9,38,3),(3,39,1),(6,39,2),(9,41,3),(10,41,3),(19,43,5),(12,44,3),(10,46,3),(1,48,1),(1,49,1),(11,49,3),(8,51,2),(2,53,1),(7,53,2),(10,55,3),(15,57,4),(10,58,3),(18,63,5),(3,64,1),(7,64,2),(11,65,3),(19,66,5),(16,67,4),(13,69,4),(1,72,1),(9,73,3),(5,75,2),(6,76,2),(9,77,3),(10,77,3),(5,78,2),(7,78,2),(19,78,5),(14,80,4),(3,82,1),(4,85,1),(2,86,1),(12,86,3),(3,87,1),(4,89,1),(19,89,5),(16,90,4),(16,91,4),(8,93,2),(1,94,1),(15,94,4),(17,94,5),(18,94,5),(16,95,4),(18,95,5),(1,96,1),(6,96,2),(3,97,1),(14,97,4),(5,100,2),(6,100,2),(19,100,5),(12,101,3),(2,103,1),(8,103,2),(10,104,3),(15,104,4),(14,105,4),(20,107,5),(6,109,2),(9,109,3),(11,111,3),(2,112,1),(6,113,2),(11,118,3),(10,119,3),(20,119,5),(12,121,3),(14,121,4),(2,122,1),(7,122,2),(15,122,4),(20,122,5),(1,123,1),(10,123,3),(13,127,4),(10,128,3),(5,130,2),(1,134,1),(18,135,5),(4,136,1),(7,137,2),(8,137,2),(4,140,1),(9,140,3),(9,141,3),(16,141,4),(18,142,5),(11,145,3),(16,146,4),(19,146,5),(1,147,1),(7,147,2),(14,147,4),(19,147,5),(17,148,5),(16,152,4),(5,154,2),(13,154,4),(13,155,4),(14,156,4),(9,157,3),(3,158,1),(5,158,2),(11,158,3),(19,158,5),(2,159,1),(12,159,3),(11,161,3),(17,161,5),(9,162,3),(5,164,2),(6,164,2),(10,164,3),(20,164,5),(8,165,2),(15,165,4),(9,168,3),(17,171,5),(5,172,2),(8,172,2),(14,172,4),(17,174,5),(11,177,3),(20,177,5),(11,178,3),(18,178,5),(2,179,1),(5,179,2),(5,180,2),(8,180,2),(7,182,2),(8,182,2),(10,182,3),(12,183,3),(14,183,4),(2,186,1),(9,186,3),(19,187,5),(15,188,4),(18,188,5),(13,193,4),(8,195,2),(15,195,4),(3,196,1),(6,196,2),(13,196,4),(20,197,5),(18,198,5),(16,199,4),(6,201,2),(14,201,4),(15,201,4),(19,203,5),(8,204,2),(8,205,2),(7,207,2),(9,207,3),(7,208,2),(14,210,4),(15,210,4),(8,211,2),(9,212,3),(10,213,3),(3,214,1),(20,214,5),(11,217,3),(13,217,4),(15,219,4),(17,219,5),(6,221,2),(11,222,3),(16,223,4),(12,224,3),(19,224,5),(3,226,1),(5,226,2),(19,228,5),(4,231,1),(20,231,5),(6,232,2),(12,234,3),(8,235,2),(17,235,5),(4,238,1),(5,239,2),(19,239,5),(18,240,5),(20,241,5),(12,242,3),(18,244,5),(9,246,3),(11,246,3),(16,246,4),(2,247,1),(20,247,5),(4,250,1),(8,250,2),(12,250,3),(19,250,5),(2,256,1),(11,256,3),(8,257,2),(2,258,1),(4,259,1),(12,259,3),(3,261,1),(15,262,4),(1,263,1),(9,263,3),(12,264,3),(12,265,3),(9,266,3),(13,267,4),(5,268,2),(7,268,2),(7,269,2),(18,270,5),(20,270,5),(11,271,3),(17,271,5),(1,272,1),(5,272,2),(10,273,3),(16,274,4),(3,277,1),(11,277,3),(15,278,4),(20,278,5),(13,279,4),(15,280,4),(16,280,4),(9,281,3),(13,281,4),(14,281,4),(18,281,5),(8,282,2),(20,282,5),(6,285,2),(8,285,2),(13,285,4),(10,286,3),(17,286,5),(19,287,5),(18,288,5),(15,289,4),(16,289,4),(10,290,3),(10,291,3),(15,293,4),(14,296,4),(16,298,4),(17,299,5),(16,301,4),(18,302,5),(1,303,1),(11,303,3),(12,304,3),(4,305,1),(7,305,2),(20,305,5),(5,306,2),(17,307,5),(13,309,4),(14,312,4),(17,312,5),(1,313,1),(11,314,3),(6,315,2),(20,315,5),(11,319,3),(8,320,2),(13,320,4),(8,323,2),(17,323,5),(20,323,5),(2,325,1),(18,325,5),(20,325,5),(13,326,4),(17,326,5),(3,329,1),(9,329,3),(3,331,1),(7,336,2),(9,336,3),(15,336,4),(1,337,1),(12,337,3),(18,340,5),(20,340,5),(3,342,1),(12,342,3),(16,342,4),(17,342,5),(16,343,4),(3,344,1),(7,345,2),(7,346,2),(3,347,1),(11,347,3),(19,347,5),(6,349,2),(7,349,2),(11,355,3),(17,355,5),(6,358,2),(2,359,1),(6,359,2),(19,359,5),(3,360,1),(16,362,4),(19,362,5),(18,363,5),(4,364,1),(9,365,3),(16,365,4),(6,366,2),(10,367,3),(3,370,1),(4,370,1),(3,374,1),(17,374,5),(1,375,1),(15,378,4),(7,379,2),(16,379,4),(5,381,2),(12,381,3),(2,382,1),(17,382,5),(18,382,5),(1,384,1),(18,384,5),(5,386,2),(12,386,3),(16,386,4),(16,388,4),(18,388,5),(10,389,3),(4,391,1),(11,391,3),(10,392,3),(13,393,4),(20,393,5),(13,394,4),(15,397,4),(5,398,2),(8,398,2),(12,398,3),(20,398,5),(14,400,4),(7,401,2),(18,402,5),(10,403,3),(8,404,2),(2,405,1),(14,405,4),(5,406,2),(6,406,2),(14,406,4),(9,407,3),(7,414,2),(13,417,4),(20,417,5),(2,418,1),(10,418,3),(1,419,1),(4,419,1),(5,419,2),(11,419,3),(15,420,4),(14,421,4),(19,421,5),(19,423,5),(2,424,1),(12,426,3),(13,426,4),(2,427,1),(13,429,4),(13,430,4),(1,431,1),(5,432,2),(16,432,4),(9,437,3),(12,437,3),(15,444,4),(3,446,1),(8,446,2),(20,446,5),(18,447,5),(4,448,1),(1,449,1),(4,449,1),(18,449,5),(4,450,1),(4,451,1),(14,453,4),(19,453,5),(8,454,2),(8,456,2),(4,458,1),(14,458,4),(7,459,2),(17,460,5),(2,462,1),(5,462,2),(15,463,4),(1,464,1),(1,467,1),(14,467,4),(10,469,3),(18,469,5),(17,470,5),(16,471,4),(7,472,2),(5,474,2),(6,474,2),(10,475,3),(1,476,1),(12,476,3),(14,476,4),(11,477,3),(14,478,4),(15,478,4),(4,480,1),(6,481,2),(4,483,1),(9,483,3),(7,484,2),(1,485,1),(12,485,3),(2,486,1),(4,486,1),(3,487,1),(6,487,2),(19,487,5),(5,489,2),(3,492,1),(20,492,5),(18,493,5),(5,494,2),(4,497,1),(12,498,3),(10,499,3),(6,500,2),(13,500,4);
/*!40000 ALTER TABLE `team_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_tmatch`
--

DROP TABLE IF EXISTS `team_tmatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_tmatch` (
  `club_id` int NOT NULL,
  `team_id` int NOT NULL,
  `league_id` int NOT NULL,
  `tmatch_id` int NOT NULL,
  `goals_scored` int DEFAULT NULL,
  PRIMARY KEY (`club_id`,`team_id`,`league_id`,`tmatch_id`),
  KEY `league_id` (`league_id`,`tmatch_id`),
  CONSTRAINT `team_tmatch_ibfk_1` FOREIGN KEY (`club_id`, `team_id`) REFERENCES `team` (`club_id`, `team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `team_tmatch_ibfk_2` FOREIGN KEY (`league_id`, `tmatch_id`) REFERENCES `tmatch` (`league_id`, `tmatch_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_tmatch`
--

LOCK TABLES `team_tmatch` WRITE;
/*!40000 ALTER TABLE `team_tmatch` DISABLE KEYS */;
INSERT INTO `team_tmatch` VALUES (1,1,1,31,2),(1,1,1,111,5),(1,1,1,171,5),(1,1,3,3,0),(1,1,3,13,3),(1,1,3,63,0),(1,1,3,83,4),(1,1,3,123,0),(1,1,3,143,4),(1,1,3,163,3),(1,1,3,173,4),(1,1,3,183,0),(1,1,3,193,3),(1,1,6,16,2),(1,1,6,46,2),(1,1,6,56,1),(1,1,6,66,5),(1,1,6,76,2),(1,1,6,86,1),(1,1,6,116,1),(1,1,6,206,1),(1,1,6,246,5),(1,1,8,48,0),(1,1,8,58,3),(1,1,8,78,0),(1,1,8,108,0),(1,1,8,148,3),(1,1,8,168,0),(1,1,8,248,4),(1,2,1,21,5),(1,2,1,61,2),(1,2,1,151,2),(1,2,1,191,1),(1,2,1,221,1),(1,2,3,23,4),(1,2,3,43,3),(1,2,3,103,3),(1,2,3,203,4),(1,2,3,243,0),(1,2,6,156,5),(1,2,6,166,2),(1,2,6,176,1),(1,2,6,216,5),(1,2,6,236,1),(1,2,8,18,0),(1,2,8,28,3),(1,2,8,38,4),(1,2,8,68,4),(1,2,8,118,3),(1,2,8,128,4),(1,2,8,198,0),(1,2,8,208,3),(1,3,1,1,3),(1,3,1,11,1),(1,3,1,71,1),(1,3,1,101,1),(1,3,1,121,2),(1,3,1,161,1),(1,3,1,181,2),(1,3,1,201,5),(1,3,1,211,2),(1,3,1,241,2),(1,3,3,33,0),(1,3,3,53,4),(1,3,3,73,3),(1,3,3,213,0),(1,3,3,233,4),(1,3,6,36,5),(1,3,6,96,5),(1,3,6,106,2),(1,3,6,136,2),(1,3,6,186,5),(1,3,6,196,2),(1,3,8,88,3),(1,3,8,218,4),(1,3,8,228,0),(1,3,8,238,3),(1,4,1,41,1),(1,4,1,51,5),(1,4,1,81,5),(1,4,1,91,2),(1,4,1,131,1),(1,4,1,141,5),(1,4,1,231,5),(1,4,3,93,0),(1,4,3,113,4),(1,4,3,133,3),(1,4,3,153,0),(1,4,3,223,3),(1,4,6,6,0),(1,4,6,26,1),(1,4,6,126,5),(1,4,6,146,1),(1,4,6,226,2),(1,4,8,8,4),(1,4,8,98,4),(1,4,8,138,0),(1,4,8,158,4),(1,4,8,178,3),(1,4,8,188,4),(2,5,1,1,2),(2,5,1,31,3),(2,5,1,41,4),(2,5,1,51,0),(2,5,1,141,0),(2,5,1,201,0),(2,5,4,64,2),(2,5,4,114,5),(2,5,4,204,5),(2,5,6,6,4),(2,5,6,146,4),(2,5,6,156,0),(2,5,6,166,3),(2,5,6,196,3),(2,5,6,226,3),(2,5,6,246,0),(2,5,9,19,2),(2,5,9,39,5),(2,5,9,69,5),(2,5,9,119,1),(2,5,9,129,5),(2,5,9,209,1),(2,5,9,219,5),(2,5,9,229,2),(2,5,9,249,5),(2,6,1,21,0),(2,6,1,101,4),(2,6,1,111,0),(2,6,1,161,4),(2,6,1,171,0),(2,6,1,241,3),(2,6,4,24,5),(2,6,4,74,1),(2,6,4,194,1),(2,6,4,234,5),(2,6,4,244,2),(2,6,6,26,4),(2,6,6,36,0),(2,6,6,46,3),(2,6,6,86,4),(2,6,6,96,0),(2,6,9,9,5),(2,6,9,29,1),(2,6,9,59,1),(2,6,9,89,1),(2,6,9,109,2),(2,6,9,139,2),(2,6,9,159,5),(2,6,9,179,1),(2,6,9,199,2),(2,7,1,71,4),(2,7,1,121,3),(2,7,1,131,4),(2,7,1,181,3),(2,7,1,191,4),(2,7,4,14,1),(2,7,4,124,2),(2,7,4,144,5),(2,7,4,164,1),(2,7,4,174,5),(2,7,4,224,1),(2,7,6,56,4),(2,7,6,76,3),(2,7,6,106,3),(2,7,6,116,4),(2,7,6,206,4),(2,7,6,216,0),(2,7,6,236,4),(2,7,9,79,2),(2,7,9,99,5),(2,7,9,149,1),(2,7,9,239,1),(2,8,1,11,4),(2,8,1,61,3),(2,8,1,81,0),(2,8,1,91,3),(2,8,1,151,3),(2,8,1,211,3),(2,8,1,221,4),(2,8,1,231,0),(2,8,4,4,2),(2,8,4,34,2),(2,8,4,44,1),(2,8,4,54,5),(2,8,4,84,5),(2,8,4,94,2),(2,8,4,104,1),(2,8,4,134,1),(2,8,4,154,2),(2,8,4,184,2),(2,8,4,214,2),(2,8,6,16,3),(2,8,6,66,0),(2,8,6,126,0),(2,8,6,136,3),(2,8,6,176,4),(2,8,6,186,0),(2,8,9,49,2),(2,8,9,169,2),(2,8,9,189,5),(3,9,2,2,5),(3,9,2,52,2),(3,9,2,62,1),(3,9,2,82,2),(3,9,2,112,2),(3,9,2,162,5),(3,9,4,4,3),(3,9,4,24,0),(3,9,4,74,4),(3,9,4,104,4),(3,9,4,114,0),(3,9,4,134,4),(3,9,4,144,0),(3,9,4,214,3),(3,9,4,224,4),(3,9,7,7,2),(3,9,7,27,0),(3,9,7,57,5),(3,9,7,67,2),(3,9,7,97,2),(3,9,7,137,1),(3,9,7,147,5),(3,9,7,247,2),(3,9,9,19,3),(3,9,9,49,3),(3,9,9,139,3),(3,9,9,169,3),(3,9,9,189,0),(3,9,9,229,3),(3,10,2,12,0),(3,10,2,42,5),(3,10,2,72,5),(3,10,2,92,1),(3,10,2,152,1),(3,10,2,192,5),(3,10,2,242,1),(3,10,4,14,4),(3,10,4,54,0),(3,10,4,154,3),(3,10,4,234,0),(3,10,7,157,2),(3,10,7,177,5),(3,10,7,197,1),(3,10,7,207,5),(3,10,9,29,4),(3,10,9,59,4),(3,10,9,79,3),(3,10,9,89,4),(3,10,9,99,0),(3,10,9,109,3),(3,10,9,219,0),(3,10,9,239,4),(3,11,2,22,2),(3,11,2,32,1),(3,11,2,102,5),(3,11,2,122,1),(3,11,2,132,5),(3,11,2,142,2),(3,11,2,212,1),(3,11,2,222,5),(3,11,2,232,2),(3,11,4,44,4),(3,11,4,84,0),(3,11,4,94,3),(3,11,4,184,3),(3,11,4,194,4),(3,11,4,204,0),(3,11,4,244,3),(3,11,7,37,2),(3,11,7,47,1),(3,11,7,107,1),(3,11,7,167,1),(3,11,7,227,1),(3,11,9,9,0),(3,11,9,39,0),(3,11,9,69,0),(3,11,9,119,4),(3,11,9,129,0),(3,11,9,159,0),(3,11,9,179,4),(3,11,9,199,3),(3,11,9,209,4),(3,11,9,249,0),(3,12,2,172,2),(3,12,2,182,1),(3,12,2,202,2),(3,12,4,34,3),(3,12,4,64,3),(3,12,4,124,3),(3,12,4,164,4),(3,12,4,174,0),(3,12,7,17,1),(3,12,7,77,1),(3,12,7,87,5),(3,12,7,117,5),(3,12,7,127,2),(3,12,7,187,2),(3,12,7,217,2),(3,12,7,237,5),(3,12,9,149,4),(4,13,2,12,5),(4,13,2,52,3),(4,13,2,82,3),(4,13,2,92,4),(4,13,2,102,0),(4,13,2,112,3),(4,13,2,132,0),(4,13,2,142,3),(4,13,2,162,0),(4,13,2,182,4),(4,13,2,222,0),(4,13,5,5,1),(4,13,5,25,2),(4,13,5,65,1),(4,13,5,85,2),(4,13,5,145,2),(4,13,5,225,5),(4,13,5,245,1),(4,13,7,47,4),(4,13,7,87,0),(4,13,7,137,4),(4,13,7,167,4),(4,13,7,227,4),(4,13,10,30,5),(4,13,10,40,2),(4,13,10,80,1),(4,13,10,120,5),(4,13,10,150,5),(4,13,10,160,2),(4,13,10,190,2),(4,13,10,210,5),(4,13,10,240,5),(4,14,2,2,1),(4,14,2,22,3),(4,14,2,242,4),(4,14,5,55,2),(4,14,5,75,5),(4,14,5,105,5),(4,14,5,155,1),(4,14,5,165,5),(4,14,5,175,2),(4,14,5,185,1),(4,14,5,215,1),(4,14,7,27,5),(4,14,7,57,0),(4,14,7,147,0),(4,14,7,187,3),(4,14,7,247,3),(4,14,10,90,5),(4,14,10,170,1),(4,15,2,32,4),(4,15,2,62,4),(4,15,2,72,0),(4,15,2,122,4),(4,15,2,192,0),(4,15,2,202,3),(4,15,2,212,4),(4,15,2,232,3),(4,15,5,35,1),(4,15,5,45,5),(4,15,5,95,1),(4,15,5,195,5),(4,15,5,235,2),(4,15,7,7,3),(4,15,7,17,4),(4,15,7,67,3),(4,15,7,97,3),(4,15,7,107,4),(4,15,7,127,3),(4,15,7,177,0),(4,15,7,197,4),(4,15,7,237,0),(4,15,10,60,5),(4,15,10,100,2),(4,15,10,110,1),(4,15,10,130,2),(4,15,10,140,1),(4,15,10,200,1),(4,15,10,230,1),(4,15,10,250,2),(4,16,2,42,0),(4,16,2,152,4),(4,16,2,172,3),(4,16,5,15,5),(4,16,5,115,2),(4,16,5,125,1),(4,16,5,135,5),(4,16,5,205,2),(4,16,7,37,3),(4,16,7,77,4),(4,16,7,117,0),(4,16,7,157,3),(4,16,7,207,0),(4,16,7,217,3),(4,16,10,10,2),(4,16,10,20,1),(4,16,10,50,1),(4,16,10,70,2),(4,16,10,180,5),(4,16,10,220,2),(5,17,3,93,5),(5,17,3,153,5),(5,17,3,243,5),(5,17,5,65,4),(5,17,5,85,3),(5,17,5,95,4),(5,17,5,115,3),(5,17,5,165,0),(5,17,5,195,0),(5,17,8,78,5),(5,17,8,88,2),(5,17,8,98,1),(5,17,8,168,5),(5,17,8,248,1),(5,17,10,70,3),(5,17,10,80,4),(5,17,10,150,0),(5,17,10,190,3),(5,17,10,240,0),(5,18,3,33,5),(5,18,3,53,1),(5,18,3,73,2),(5,18,3,133,2),(5,18,3,163,2),(5,18,3,203,1),(5,18,5,5,5),(5,18,5,25,3),(5,18,5,45,0),(5,18,5,105,0),(5,18,5,185,4),(5,18,5,215,4),(5,18,5,225,0),(5,18,5,245,4),(5,18,8,18,5),(5,18,8,38,1),(5,18,8,128,1),(5,18,8,228,5),(5,18,10,120,0),(5,18,10,130,3),(5,18,10,200,4),(5,19,3,3,4),(5,19,3,13,2),(5,19,3,43,2),(5,19,3,63,5),(5,19,3,123,5),(5,19,3,143,1),(5,19,3,173,1),(5,19,3,233,1),(5,19,5,15,0),(5,19,5,75,0),(5,19,5,135,0),(5,19,5,145,3),(5,19,5,155,4),(5,19,8,48,5),(5,19,8,58,2),(5,19,8,138,5),(5,19,8,148,2),(5,19,8,158,1),(5,19,8,188,1),(5,19,8,198,5),(5,19,8,208,2),(5,19,8,218,1),(5,19,10,20,4),(5,19,10,50,4),(5,19,10,90,0),(5,19,10,100,3),(5,19,10,140,4),(5,19,10,170,4),(5,19,10,180,0),(5,19,10,210,0),(5,19,10,220,3),(5,19,10,250,3),(5,20,3,23,1),(5,20,3,83,1),(5,20,3,103,2),(5,20,3,113,1),(5,20,3,183,5),(5,20,3,193,2),(5,20,3,213,5),(5,20,3,223,2),(5,20,5,35,4),(5,20,5,55,3),(5,20,5,125,4),(5,20,5,175,3),(5,20,5,205,3),(5,20,5,235,3),(5,20,8,8,1),(5,20,8,28,2),(5,20,8,68,1),(5,20,8,108,5),(5,20,8,118,2),(5,20,8,178,2),(5,20,8,238,2),(5,20,10,10,3),(5,20,10,30,0),(5,20,10,40,3),(5,20,10,60,0),(5,20,10,110,4),(5,20,10,160,3),(5,20,10,230,4);
/*!40000 ALTER TABLE `team_tmatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmatch`
--

DROP TABLE IF EXISTS `tmatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tmatch` (
  `league_id` int NOT NULL,
  `tmatch_id` int NOT NULL,
  `date_match` date DEFAULT NULL,
  `time_match` time DEFAULT NULL,
  `week_day` varchar(255) DEFAULT NULL,
  `stadium_id` int DEFAULT NULL,
  `referee_id` int DEFAULT NULL,
  PRIMARY KEY (`league_id`,`tmatch_id`),
  KEY `stadium_id` (`stadium_id`),
  KEY `referee_id` (`referee_id`),
  CONSTRAINT `tmatch_ibfk_1` FOREIGN KEY (`league_id`) REFERENCES `league` (`league_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tmatch_ibfk_2` FOREIGN KEY (`stadium_id`) REFERENCES `stadium` (`stadium_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tmatch_ibfk_3` FOREIGN KEY (`referee_id`) REFERENCES `referee` (`referee_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmatch`
--

LOCK TABLES `tmatch` WRITE;
/*!40000 ALTER TABLE `tmatch` DISABLE KEYS */;
INSERT INTO `tmatch` VALUES (1,1,'2023-09-18','18:25:07','Saturday',6,38),(1,11,'2023-09-05','16:47:56','Saturday',3,26),(1,21,'2022-03-03','16:21:44','Sunday',2,19),(1,31,'2023-04-21','20:27:35','Tuesday',1,24),(1,41,'2022-01-19','21:48:00','Friday',6,29),(1,51,'2022-05-23','11:41:39','Saturday',10,35),(1,61,'2023-05-11','12:49:25','Sunday',7,14),(1,71,'2022-07-09','04:02:29','Thursday',9,28),(1,81,'2023-08-10','00:36:35','Tuesday',8,24),(1,91,'2023-09-10','04:59:51','Wednesday',7,30),(1,101,'2023-07-19','18:36:19','Monday',1,6),(1,111,'2022-02-16','11:54:11','Sunday',1,13),(1,121,'2022-09-08','08:25:00','Friday',1,20),(1,131,'2022-03-23','01:27:53','Sunday',1,11),(1,141,'2021-11-22','09:42:00','Sunday',1,25),(1,151,'2023-08-27','09:51:05','Wednesday',1,17),(1,161,'2022-01-06','15:02:57','Thursday',1,13),(1,171,'2023-08-19','12:26:42','Tuesday',1,31),(1,181,'2023-03-13','22:54:26','Friday',1,16),(1,191,'2023-04-18','10:23:59','Saturday',1,18),(1,201,'2023-08-06','20:45:04','Thursday',1,33),(1,211,'2023-09-12','19:05:20','Wednesday',10,6),(1,221,'2023-03-15','18:15:10','Monday',2,2),(1,231,'2023-10-22','12:51:45','Friday',8,10),(1,241,'2023-09-12','15:35:07','Monday',6,6),(2,2,'2022-08-07','11:05:42','Saturday',9,30),(2,12,'2022-08-23','16:28:20','Monday',5,16),(2,22,'2021-11-04','07:15:53','Wednesday',8,29),(2,32,'2023-05-18','23:56:22','Thursday',2,37),(2,42,'2022-11-12','13:12:23','Thursday',2,40),(2,52,'2023-03-17','15:21:52','Saturday',3,32),(2,62,'2021-12-14','10:39:14','Sunday',10,40),(2,72,'2023-02-23','05:51:37','Friday',1,20),(2,82,'2023-01-30','21:22:31','Wednesday',8,1),(2,92,'2022-02-13','18:40:53','Thursday',3,10),(2,102,'2022-11-20','04:32:15','Sunday',2,25),(2,112,'2023-01-17','18:26:15','Tuesday',2,24),(2,122,'2022-06-02','02:21:12','Saturday',2,34),(2,132,'2023-08-31','06:07:00','Saturday',2,38),(2,142,'2022-07-05','20:45:14','Monday',2,14),(2,152,'2022-09-25','20:02:58','Monday',2,37),(2,162,'2022-12-30','00:03:38','Thursday',2,15),(2,172,'2023-05-24','12:35:22','Sunday',2,10),(2,182,'2021-12-27','01:04:41','Sunday',2,20),(2,192,'2022-06-03','02:18:46','Friday',2,17),(2,202,'2023-01-12','03:15:08','Wednesday',2,34),(2,212,'2022-11-25','00:33:09','Sunday',7,9),(2,222,'2022-12-04','01:09:37','Monday',8,5),(2,232,'2022-07-11','01:44:46','Wednesday',9,22),(2,242,'2022-04-14','21:05:59','Friday',7,15),(3,3,'2022-12-19','11:48:30','Friday',10,13),(3,13,'2022-11-29','00:10:45','Tuesday',6,20),(3,23,'2023-02-11','07:36:18','Thursday',1,8),(3,33,'2023-04-16','01:34:31','Sunday',9,7),(3,43,'2022-11-23','08:12:04','Sunday',10,10),(3,53,'2023-04-29','07:29:24','Thursday',1,18),(3,63,'2023-09-30','12:57:38','Saturday',4,6),(3,73,'2022-01-14','00:02:44','Friday',3,8),(3,83,'2022-04-13','08:26:56','Friday',2,27),(3,93,'2022-01-18','19:10:35','Sunday',6,7),(3,103,'2022-09-20','16:31:24','Thursday',3,5),(3,113,'2021-12-26','18:16:35','Monday',3,26),(3,123,'2023-02-20','13:21:11','Sunday',3,20),(3,133,'2023-08-23','11:08:44','Thursday',3,10),(3,143,'2022-01-18','21:16:07','Monday',3,33),(3,153,'2023-06-09','08:44:13','Thursday',3,17),(3,163,'2023-06-18','18:18:03','Thursday',3,10),(3,173,'2021-12-10','14:44:25','Sunday',3,28),(3,183,'2023-08-23','01:09:39','Tuesday',3,4),(3,193,'2022-01-11','06:14:26','Wednesday',3,37),(3,203,'2022-05-27','06:30:12','Friday',3,32),(3,213,'2022-10-26','06:01:28','Wednesday',6,40),(3,223,'2021-11-25','10:48:07','Saturday',6,5),(3,233,'2023-04-06','12:38:20','Sunday',7,11),(3,243,'2023-07-11','21:20:44','Wednesday',10,4),(4,4,'2021-11-06','03:22:49','Tuesday',6,6),(4,14,'2022-07-09','00:20:50','Wednesday',3,36),(4,24,'2022-01-17','09:27:47','Friday',7,5),(4,34,'2022-02-17','16:31:03','Wednesday',9,14),(4,44,'2023-08-30','19:26:51','Thursday',4,24),(4,54,'2023-08-10','01:14:00','Thursday',5,2),(4,64,'2022-08-26','07:27:10','Thursday',8,18),(4,74,'2022-06-03','05:02:51','Saturday',8,29),(4,84,'2023-05-15','02:40:27','Sunday',2,9),(4,94,'2023-10-13','21:31:28','Saturday',8,33),(4,104,'2022-04-17','22:57:19','Sunday',4,30),(4,114,'2023-08-20','22:08:46','Thursday',4,29),(4,124,'2022-07-06','05:24:15','Friday',4,34),(4,134,'2022-03-16','22:45:18','Monday',4,15),(4,144,'2022-01-10','00:18:36','Sunday',4,36),(4,154,'2021-12-25','19:07:33','Saturday',4,6),(4,164,'2023-08-29','01:33:46','Sunday',4,13),(4,174,'2023-02-25','19:03:41','Monday',4,37),(4,184,'2023-03-27','22:26:37','Thursday',4,27),(4,194,'2023-03-02','22:20:46','Wednesday',4,31),(4,204,'2023-05-03','02:55:05','Friday',4,29),(4,214,'2022-08-08','02:24:16','Thursday',5,19),(4,224,'2022-11-21','09:50:21','Monday',9,18),(4,234,'2022-12-21','11:54:03','Saturday',7,10),(4,244,'2022-10-12','18:55:48','Friday',9,36),(5,5,'2022-02-01','06:08:41','Thursday',1,18),(5,15,'2023-01-23','21:09:28','Tuesday',5,3),(5,25,'2022-08-24','07:30:02','Wednesday',10,4),(5,35,'2022-07-02','03:15:05','Tuesday',4,21),(5,45,'2022-08-28','04:18:42','Monday',5,2),(5,55,'2022-09-07','09:53:01','Friday',10,13),(5,65,'2023-05-05','19:23:16','Monday',8,6),(5,75,'2023-07-16','04:46:13','Sunday',8,28),(5,85,'2023-03-02','07:05:08','Thursday',4,39),(5,95,'2022-02-20','00:24:58','Friday',9,37),(5,105,'2023-06-15','03:40:51','Saturday',5,40),(5,115,'2023-05-06','16:00:44','Friday',5,29),(5,125,'2023-01-24','09:33:51','Monday',5,9),(5,135,'2022-05-09','20:55:46','Thursday',5,19),(5,145,'2023-03-13','09:28:38','Friday',5,16),(5,155,'2022-04-29','17:05:35','Monday',5,32),(5,165,'2023-09-18','23:33:46','Tuesday',5,2),(5,175,'2022-05-28','14:00:36','Friday',5,33),(5,185,'2023-07-26','03:38:58','Wednesday',5,37),(5,195,'2022-01-26','17:25:27','Tuesday',5,26),(5,205,'2022-12-19','19:58:56','Sunday',5,27),(5,215,'2022-02-02','10:06:53','Thursday',6,26),(5,225,'2021-12-14','12:01:23','Saturday',3,29),(5,235,'2023-04-16','04:56:21','Friday',6,29),(5,245,'2023-07-02','12:53:00','Thursday',2,7),(6,6,'2023-07-10','01:46:49','Thursday',1,31),(6,16,'2022-08-06','09:05:48','Thursday',3,35),(6,26,'2023-09-04','16:58:00','Friday',10,9),(6,36,'2021-11-13','10:26:06','Friday',10,28),(6,46,'2022-11-06','01:53:34','Thursday',9,7),(6,56,'2022-11-29','03:15:22','Monday',3,33),(6,66,'2023-10-03','12:57:25','Monday',5,17),(6,76,'2023-03-16','04:28:48','Monday',10,16),(6,86,'2022-05-09','09:21:34','Sunday',1,25),(6,96,'2022-02-07','17:05:19','Sunday',5,35),(6,106,'2023-02-18','11:52:04','Saturday',6,4),(6,116,'2022-02-28','15:06:57','Wednesday',6,20),(6,126,'2023-05-28','06:06:07','Thursday',6,6),(6,136,'2022-05-06','21:51:41','Wednesday',6,33),(6,146,'2021-11-03','16:27:21','Friday',6,15),(6,156,'2022-07-11','09:45:52','Wednesday',6,19),(6,166,'2022-03-12','06:53:22','Wednesday',6,30),(6,176,'2022-08-12','05:03:38','Tuesday',6,18),(6,186,'2022-09-20','04:56:51','Sunday',6,3),(6,196,'2022-05-17','19:59:58','Monday',6,5),(6,206,'2022-03-27','01:14:50','Tuesday',6,40),(6,216,'2023-04-11','17:10:54','Friday',6,16),(6,226,'2021-11-03','05:12:06','Monday',1,17),(6,236,'2023-10-10','02:21:55','Sunday',7,1),(6,246,'2023-10-13','03:35:18','Monday',5,29),(7,7,'2023-05-04','07:29:28','Saturday',2,39),(7,17,'2023-05-14','05:01:56','Wednesday',5,10),(7,27,'2022-06-05','17:18:00','Monday',8,12),(7,37,'2022-05-27','00:43:49','Friday',9,27),(7,47,'2022-12-06','08:13:02','Saturday',2,32),(7,57,'2023-05-19','01:27:07','Tuesday',8,1),(7,67,'2022-07-16','13:33:54','Friday',6,13),(7,77,'2023-05-28','09:06:54','Tuesday',8,22),(7,87,'2022-02-12','17:12:06','Thursday',9,15),(7,97,'2022-01-22','01:18:55','Monday',5,15),(7,107,'2023-05-23','11:41:58','Saturday',7,26),(7,117,'2022-09-27','12:39:59','Wednesday',7,20),(7,127,'2023-10-31','04:38:48','Monday',7,1),(7,137,'2022-03-10','02:13:14','Sunday',7,33),(7,147,'2023-09-16','08:17:31','Sunday',7,15),(7,157,'2023-06-14','18:06:02','Friday',7,4),(7,167,'2022-03-17','08:23:50','Monday',7,26),(7,177,'2022-09-24','07:59:52','Monday',7,40),(7,187,'2023-01-21','00:20:25','Tuesday',7,9),(7,197,'2022-04-07','00:09:43','Sunday',7,31),(7,207,'2023-10-19','16:12:18','Wednesday',7,37),(7,217,'2023-05-09','14:49:55','Wednesday',7,19),(7,227,'2022-12-13','21:52:46','Sunday',5,17),(7,237,'2022-11-09','05:28:52','Sunday',6,28),(7,247,'2023-10-16','04:10:45','Thursday',10,37),(8,8,'2022-06-01','21:43:31','Wednesday',8,33),(8,18,'2022-10-01','21:08:36','Tuesday',8,15),(8,28,'2023-07-27','07:23:04','Thursday',7,34),(8,38,'2022-06-15','19:18:54','Saturday',8,22),(8,48,'2022-10-15','04:31:27','Friday',5,17),(8,58,'2023-02-15','21:17:55','Thursday',8,11),(8,68,'2023-04-01','20:44:06','Tuesday',10,24),(8,78,'2023-06-17','18:43:59','Friday',4,10),(8,88,'2023-06-07','03:26:58','Saturday',7,37),(8,98,'2023-04-21','08:52:53','Saturday',8,17),(8,108,'2022-06-04','11:45:08','Tuesday',8,5),(8,118,'2021-12-04','08:18:43','Wednesday',8,27),(8,128,'2023-08-31','16:12:39','Thursday',8,19),(8,138,'2022-12-21','02:59:21','Monday',8,2),(8,148,'2022-09-16','14:42:42','Friday',8,18),(8,158,'2022-01-18','14:30:10','Sunday',8,24),(8,168,'2022-01-16','22:25:55','Wednesday',8,26),(8,178,'2022-05-08','04:16:14','Tuesday',8,34),(8,188,'2021-11-30','12:11:07','Tuesday',8,2),(8,198,'2022-10-20','02:03:16','Thursday',8,2),(8,208,'2022-06-02','02:40:58','Tuesday',8,8),(8,218,'2022-07-12','23:23:43','Sunday',2,15),(8,228,'2021-11-12','21:06:41','Tuesday',5,22),(8,238,'2022-11-14','11:46:47','Wednesday',4,32),(8,248,'2023-02-26','13:05:27','Sunday',8,15),(9,9,'2022-02-25','02:05:17','Thursday',7,17),(9,19,'2022-03-12','08:11:35','Friday',8,1),(9,29,'2022-11-22','12:41:32','Saturday',10,25),(9,39,'2023-06-26','16:02:19','Sunday',4,40),(9,49,'2023-08-29','11:57:43','Sunday',1,17),(9,59,'2022-09-05','00:46:40','Saturday',10,19),(9,69,'2023-02-09','04:28:05','Sunday',4,37),(9,79,'2022-12-19','15:14:53','Friday',1,6),(9,89,'2022-10-05','04:33:01','Monday',5,37),(9,99,'2022-01-27','21:52:09','Monday',8,12),(9,109,'2022-05-07','16:33:39','Tuesday',9,26),(9,119,'2023-04-01','09:29:27','Sunday',9,29),(9,129,'2021-11-11','02:01:39','Sunday',9,29),(9,139,'2021-12-02','06:39:10','Saturday',9,39),(9,149,'2023-03-10','07:16:14','Monday',9,34),(9,159,'2022-03-05','15:58:01','Tuesday',9,2),(9,169,'2023-08-11','07:04:47','Monday',9,40),(9,179,'2022-06-20','16:44:37','Friday',9,8),(9,189,'2022-01-14','23:09:29','Monday',9,40),(9,199,'2023-09-21','03:32:12','Thursday',9,36),(9,209,'2022-11-06','21:08:23','Friday',9,3),(9,219,'2023-08-15','05:39:09','Thursday',5,12),(9,229,'2023-10-27','15:20:04','Wednesday',9,21),(9,239,'2023-08-06','23:17:27','Tuesday',3,19),(9,249,'2022-11-16','15:59:18','Sunday',3,28),(10,10,'2022-02-05','12:21:31','Wednesday',10,11),(10,20,'2021-12-30','05:31:50','Thursday',10,23),(10,30,'2023-08-04','19:44:34','Tuesday',2,2),(10,40,'2023-02-05','02:53:09','Wednesday',7,32),(10,50,'2023-07-08','08:56:25','Thursday',4,19),(10,60,'2023-03-28','04:16:52','Tuesday',9,17),(10,70,'2023-02-09','00:15:26','Tuesday',7,37),(10,80,'2023-09-07','07:06:06','Friday',9,5),(10,90,'2023-08-30','21:45:34','Thursday',6,8),(10,100,'2022-12-14','00:14:21','Wednesday',5,3),(10,110,'2023-08-21','10:29:10','Saturday',10,10),(10,120,'2022-06-11','01:55:56','Saturday',10,23),(10,130,'2023-05-24','01:07:43','Thursday',10,39),(10,140,'2023-02-25','21:50:33','Friday',10,22),(10,150,'2022-01-26','21:09:54','Tuesday',10,13),(10,160,'2023-03-18','05:17:50','Thursday',10,23),(10,170,'2023-05-03','00:07:30','Tuesday',10,1),(10,180,'2022-08-20','20:38:49','Saturday',10,6),(10,190,'2023-08-11','09:50:31','Wednesday',10,37),(10,200,'2023-10-22','07:08:35','Thursday',10,9),(10,210,'2022-03-30','10:06:54','Monday',10,28),(10,220,'2023-09-20','12:31:41','Tuesday',10,1),(10,230,'2023-09-16','09:54:55','Saturday',9,39),(10,240,'2022-06-20','14:26:18','Wednesday',4,17),(10,250,'2022-06-23','23:28:44','Tuesday',4,14);
/*!40000 ALTER TABLE `tmatch` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-01 22:22:20
