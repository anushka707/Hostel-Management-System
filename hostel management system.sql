-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: Hostel_Management_System
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaint` (
  `Roll_No` int NOT NULL,
  `Room_id` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Fine` float DEFAULT NULL,
  `Description` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Roll_No`),
  KEY `Room_id` (`Room_id`),
  CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`Roll_No`) REFERENCES `student` (`Roll_No`),
  CONSTRAINT `complaint_ibfk_2` FOREIGN KEY (`Room_id`) REFERENCES `rooms` (`Room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

LOCK TABLES `complaint` WRITE;
/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
INSERT INTO `complaint` VALUES (1,101,'2024-01-15',50,'Leaking pipe'),(2,102,'2024-01-20',30,'Broken chair'),(3,103,'2024-02-05',0,'No hot water'),(4,104,'2024-02-15',20,'Electricity issue'),(5,105,'2024-03-10',10,'WiFi not working'),(6,106,'2024-03-20',40,'Damaged bed'),(7,107,'2024-04-10',25,'Heating problem');
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hostel` (
  `Hostel_id` int NOT NULL,
  `Hostel_Name` varchar(20) DEFAULT NULL,
  `Boys_or_Girls` varchar(5) DEFAULT NULL,
  `Num_15_Rooms` int DEFAULT NULL,
  `Num_25_Rooms` int DEFAULT NULL,
  `Caretaker` varchar(20) DEFAULT NULL,
  `Warden` varchar(20) DEFAULT NULL,
  `Contact` varchar(30) DEFAULT NULL,
  `Email_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Hostel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel`
--

LOCK TABLES `hostel` WRITE;
/*!40000 ALTER TABLE `hostel` DISABLE KEYS */;
INSERT INTO `hostel` VALUES (1,'Sunrise Hostel','Boys',10,15,'John Doe','Alice Smith','1234567890','sunrise@hostel.com'),(2,'Moonlight Hostel','Girls',8,12,'Emily Davis','David Brown','2345678901','moonlight@hostel.com'),(3,'Galaxy Hostel','Boys',5,10,'Sarah Johnson','Michael Clark','3456789012','galaxy@hostel.com'),(4,'Starry Nights','Girls',7,13,'Chris Evans','Natalie Adams','4567890123','starry@hostel.com'),(5,'Lakeside Hostel','Boys',6,9,'Emma Wilson','William Taylor','5678901234','lakeside@hostel.com'),(6,'Hilltop Hostel','Girls',4,8,'Sophia Martin','Ethan Walker','6789012345','hilltop@hostel.com'),(7,'Urban Stay','Boys',11,14,'Olivia White','Liam Moore','7890123456','urban@hostel.com');
/*!40000 ALTER TABLE `hostel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `Username` int NOT NULL,
  `Password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Username`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `student` (`Roll_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'password123'),(2,'secure456'),(3,'qwerty789'),(4,'admin2024'),(5,'letmein2024'),(6,'strongpass'),(7,'hostel123');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `Roll_No` int NOT NULL,
  `Mess_fees` float DEFAULT NULL,
  `Allotment_fees` float DEFAULT NULL,
  `Fine` float DEFAULT NULL,
  `Amount_paid` float DEFAULT NULL,
  `Transaction_date` date DEFAULT NULL,
  `Dues` float DEFAULT NULL,
  PRIMARY KEY (`Roll_No`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Roll_No`) REFERENCES `student` (`Roll_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,5000,2000,50,7050,'2024-01-15',0),(2,5500,2200,30,7730,'2024-02-15',0),(3,4800,1900,0,6700,'2024-03-01',0),(4,6000,2500,20,8520,'2024-03-10',0),(5,5200,2100,10,7310,'2024-04-05',0),(6,4900,2000,40,6940,'2024-04-15',0),(7,5300,2200,25,7525,'2024-05-01',0);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `Room_id` int NOT NULL,
  `Room_type` varchar(20) DEFAULT NULL,
  `Occupancy` tinyint(1) DEFAULT NULL,
  `Occupied_By` int DEFAULT NULL,
  `Allocated_date` date DEFAULT NULL,
  `Rental_period` int DEFAULT NULL,
  PRIMARY KEY (`Room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (101,'Single',1,1,'2024-01-01',12),(102,'Double',2,2,'2024-01-05',12),(103,'Single',1,3,'2024-02-01',6),(104,'Double',2,4,'2024-02-10',6),(105,'Single',1,5,'2024-03-01',12),(106,'Double',2,6,'2024-03-15',12),(107,'Single',1,7,'2024-04-01',6);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `Name` varchar(20) DEFAULT NULL,
  `Designation` varchar(20) DEFAULT NULL,
  `Hostel_id` int DEFAULT NULL,
  `Shift` varchar(20) DEFAULT NULL,
  `Phone_No` bigint DEFAULT NULL,
  `Email_id` varchar(20) NOT NULL,
  `Salary` float DEFAULT NULL,
  PRIMARY KEY (`Email_id`),
  KEY `Hostel_id` (`Hostel_id`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('Ella Bennett','Cleaner',5,'Evening',5432109876,'ella@hostel.com',25000),('Emily Fisher','Caretaker',7,'Morning',3210987654,'emily@hostel.com',37000),('Henry Carter','Manager',3,'Morning',7654321098,'henry@hostel.com',45000),('James Hall','Security',6,'Night',4321098765,'james@hostel.com',28000),('Laura Scott','Warden',2,'Night',8765432109,'laura@hostel.com',40000),('Mark Lewis','Caretaker',1,'Morning',9876543210,'mark@hostel.com',35000),('Sophia Brooks','Accountant',4,'Day',6543210987,'sophia@hostel.com',30000);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `Roll_No` int NOT NULL,
  `First_Name` varchar(20) DEFAULT NULL,
  `Last_Name` varchar(20) DEFAULT NULL,
  `Phone_No` bigint DEFAULT NULL,
  `Email_id` varchar(200) DEFAULT NULL,
  `Course` varchar(20) DEFAULT NULL,
  `Year` int DEFAULT NULL,
  `City` varchar(25) DEFAULT NULL,
  `Hostel_id` int DEFAULT NULL,
  PRIMARY KEY (`Roll_No`),
  KEY `Hostel_id` (`Hostel_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'John','Doe',9876543210,'john@student.com','B.Tech',1,'New York',1),(2,'Jane','Smith',8765432109,'jane@student.com','M.Tech',2,'Los Angeles',2),(3,'Sam','Taylor',7654321098,'sam@student.com','BBA',1,'Chicago',3),(4,'Emma','Wilson',6543210987,'emma@student.com','MBA',2,'Houston',4),(5,'Michael','Brown',5432109876,'michael@student.com','B.Sc',3,'Phoenix',5),(6,'Emily','Davis',4321098765,'emily@student.com','M.Sc',4,'Philadelphia',6),(7,'Chris','Evans',3210987654,'chris@student.com','BCA',1,'San Diego',7);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-19 22:23:17
