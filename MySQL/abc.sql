-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: campus
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `batch_students`
--

DROP TABLE IF EXISTS `batch_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_students` (
  `ID` int NOT NULL,
  `batchID` int DEFAULT NULL,
  `studentID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `batchID` (`batchID`),
  KEY `studentID` (`studentID`),
  CONSTRAINT `batch_students_ibfk_1` FOREIGN KEY (`batchID`) REFERENCES `course_batches` (`ID`),
  CONSTRAINT `batch_students_ibfk_2` FOREIGN KEY (`studentID`) REFERENCES `student` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_students`
--

LOCK TABLES `batch_students` WRITE;
/*!40000 ALTER TABLE `batch_students` DISABLE KEYS */;
INSERT INTO `batch_students` VALUES (1,1,1),(2,7,5),(3,3,4),(4,6,3),(5,10,6),(6,17,8),(7,20,12),(8,1,7),(9,2,12),(10,4,15),(11,5,20),(12,6,5),(13,7,3),(14,1,20),(15,2,10),(16,3,5),(17,4,6),(18,5,3),(19,6,1),(20,12,10),(21,15,17),(22,15,18),(23,16,18),(24,17,12),(25,3,20),(26,4,17);
/*!40000 ALTER TABLE `batch_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `bookID` int NOT NULL,
  `bookName` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `Cost` int DEFAULT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'C','PDF File',1200),(2,'C++','Word File',1000),(3,'DS','Hardcover',950),(4,'MySQL','Paperback',1400),(5,'OSC','Paperback',1225),(6,'HTML','PDF File',650),(7,'JavaScript','Paperback',700),(8,'ASDM','PDF File',500),(9,'.NET','Hardcover',2500),(10,'Core Java','PDF File',1500),(11,'Adv. Java','Hardcover',1800);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `ID` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `duration` int DEFAULT NULL,
  `summery` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'PG-DAC',6,'This course is designed by CDAC'),(2,'DBDA',6,'This course is designed by CDAC'),(3,'Pre-DAC',2,'This course is designed by CDAC'),(4,'JAVA',3,'This course is designed by Infoway'),(5,'.NET',3,'This course is designed by Infoway'),(6,'DMC',6,'This course is designed by CDAC'),(7,'DSSD',6,'This course is designed by CDAC');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_batches`
--

DROP TABLE IF EXISTS `course_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_batches` (
  `ID` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `courseID` int DEFAULT NULL,
  `starton` date DEFAULT NULL,
  `endson` date DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `courseID` (`courseID`),
  CONSTRAINT `course_batches_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `course` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_batches`
--

LOCK TABLES `course_batches` WRITE;
/*!40000 ALTER TABLE `course_batches` DISABLE KEYS */;
INSERT INTO `course_batches` VALUES (1,'Batch1',1,'2016-02-01','2016-08-31',80),(2,'Batch2',2,'2016-02-01','2016-08-31',30),(3,'Batch3',3,'2016-02-01','2016-03-31',35),(4,'Batch4',4,'2016-07-01','2016-09-30',25),(5,'Batch5',5,'2016-07-01','2016-09-30',25),(6,'Batch6',1,'2015-02-01','2015-08-31',80),(7,'Batch7',2,'2015-02-01','2015-08-31',30),(8,'Batch8',3,'2017-04-01','2017-05-31',30),(9,'Batch9',4,'2018-07-01','2018-09-30',25),(10,'Batch10',5,'2018-09-01','2018-11-30',25),(11,'Batch11',1,'2017-08-01','2018-02-28',80),(12,'Batch12',2,'2017-08-01','2018-02-28',30),(13,'Batch13',3,'2017-07-01','2017-08-31',30),(14,'Batch14',4,'2018-05-01','2018-07-31',25),(15,'Batch15',5,'2018-06-01','2018-08-30',25),(16,'Batch16',1,'2014-08-01','2015-02-28',80),(17,'Batch17',2,'2014-08-01','2015-02-28',30),(18,'Batch18',3,'2018-03-01','2018-04-30',35),(19,'Batch19',4,'2019-01-01','2019-03-30',25),(20,'Batch20',5,'2018-12-01','2019-02-28',25),(21,'Batch21',1,'2015-08-01','2016-02-28',80),(22,'Batch22',2,'2015-08-01','2016-02-28',30),(23,'Batch23',3,'2019-03-01','2019-04-30',40),(24,'Batch24',4,'2019-01-01','2019-03-30',30),(25,'Batch25',6,'2019-01-01','2019-03-30',30);
/*!40000 ALTER TABLE `course_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_modules`
--

DROP TABLE IF EXISTS `course_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_modules` (
  `ID` int NOT NULL,
  `courseID` int DEFAULT NULL,
  `moduleID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `courseID` (`courseID`),
  KEY `moduleID` (`moduleID`),
  CONSTRAINT `course_modules_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `course` (`ID`),
  CONSTRAINT `course_modules_ibfk_2` FOREIGN KEY (`moduleID`) REFERENCES `modules` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_modules`
--

LOCK TABLES `course_modules` WRITE;
/*!40000 ALTER TABLE `course_modules` DISABLE KEYS */;
INSERT INTO `course_modules` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,2),(12,2,3),(13,2,11),(14,2,12),(15,2,9),(16,3,13),(17,3,5),(18,3,6),(19,4,1),(20,4,7),(21,4,8),(22,5,1),(23,5,7),(24,5,8),(25,6,14),(26,6,15),(27,6,16),(28,6,17);
/*!40000 ALTER TABLE `course_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `ID` int NOT NULL,
  `namefirst` varchar(45) DEFAULT NULL,
  `namelast` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `emailID` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'prachi','gupta','1974-06-12','prachi.gupta@gmail.com'),(2,'ketan','shukla','1972-10-25','ketan.shukla@gmail.com'),(3,'kiran','dev','1971-10-25','kiran.dev@gmail.com'),(4,'parag','patil','1972-10-31','parag.patil@gmail.com');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_address`
--

DROP TABLE IF EXISTS `faculty_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_address` (
  `ID` int NOT NULL,
  `facultyID` int NOT NULL,
  `address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `facultyID` (`facultyID`),
  CONSTRAINT `faculty_address_ibfk_1` FOREIGN KEY (`facultyID`) REFERENCES `faculty` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_address`
--

LOCK TABLES `faculty_address` WRITE;
/*!40000 ALTER TABLE `faculty_address` DISABLE KEYS */;
INSERT INTO `faculty_address` VALUES (1,1,'165 Village Dr., P.O. Box 3700, Oakland, TN, Oakland, 38060'),(2,2,'Po Box 83, Faith, NC, New Jersey, 28041'),(3,3,'3402 Buccaneer Rose Ave, Bakersfield, CA, Boston, 93313'),(4,4,'Po Box 77, Linking Road, UK');
/*!40000 ALTER TABLE `faculty_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_phone`
--

DROP TABLE IF EXISTS `faculty_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_phone` (
  `ID` int NOT NULL,
  `facultyID` int DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `facultyID` (`facultyID`),
  CONSTRAINT `faculty_phone_ibfk_1` FOREIGN KEY (`facultyID`) REFERENCES `faculty` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_phone`
--

LOCK TABLES `faculty_phone` WRITE;
/*!40000 ALTER TABLE `faculty_phone` DISABLE KEYS */;
INSERT INTO `faculty_phone` VALUES (1,1,'7032300034'),(2,2,'7032300039'),(3,3,'7032300050'),(4,4,'7032300027'),(5,1,'7032301201'),(6,2,'7032303479'),(7,3,'7032306781'),(8,4,'7032390234'),(9,3,'7134567123');
/*!40000 ALTER TABLE `faculty_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_qualifications`
--

DROP TABLE IF EXISTS `faculty_qualifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_qualifications` (
  `ID` int NOT NULL,
  `facultyID` int DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `college` varchar(128) DEFAULT NULL,
  `university` varchar(128) DEFAULT NULL,
  `marks` varchar(45) DEFAULT NULL,
  `year` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `facultyID` (`facultyID`),
  CONSTRAINT `faculty_qualifications_ibfk_1` FOREIGN KEY (`facultyID`) REFERENCES `faculty` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_qualifications`
--

LOCK TABLES `faculty_qualifications` WRITE;
/*!40000 ALTER TABLE `faculty_qualifications` DISABLE KEYS */;
INSERT INTO `faculty_qualifications` VALUES (1,1,'10','Alabama','Stanford University','67',2012),(2,1,'12','Alaska','Harvard University','74',2014),(3,1,'BE','Arizona','Harvard University','68',2018),(4,2,'10','Alaska','University of Chicago','68',2013),(5,2,'12','New York','Yale University','56',2015),(6,2,'BE','Arkansas','Yale University','64',2019),(7,3,'10','Arizona','Yale University','75',2011),(8,3,'12','California','California University','86',2013),(9,3,'BE','Florida','University of Florida','67',2017),(10,4,'10','Idaho','Pennsylvania University','58',2010),(11,4,'12','New Hampshire','Yale University','97',2012),(12,4,'BE','Montana','Columbia University','77',2016);
/*!40000 ALTER TABLE `faculty_qualifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modules` (
  `ID` int NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'Oracle',1),(2,'PHP',1),(3,'MySQL',1),(4,'Node',1),(5,'C++',1),(6,'C',1),(7,'JAVA1',2),(8,'JAVA2',2),(9,'MongoDB',1),(10,'NET',2),(11,'Hive',1),(12,'Python',1),(13,'Aptitude',1),(14,'OOPs with C++ Programming',6),(15,'Data Structures',6),(16,'OS Concepts',6),(17,'iOS Programming',6);
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newbooks`
--

DROP TABLE IF EXISTS `newbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newbooks` (
  `bookID` int NOT NULL,
  `bookName` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `Cost` int DEFAULT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newbooks`
--

LOCK TABLES `newbooks` WRITE;
/*!40000 ALTER TABLE `newbooks` DISABLE KEYS */;
INSERT INTO `newbooks` VALUES (1,'Oracle','PDF File',1200),(2,'hBase','Word File',1000),(3,'Node','Hardcover',950),(4,'Pig','Paperback',1400),(5,'Python','Paperback',1225),(6,'Hadoop','PDF File',650),(7,'JavaScript','Paperback',700),(8,'ASDM','PDF File',500),(9,'.NET','Hardcover',2500),(10,'Core Java','PDF File',1500),(11,'Adv. Java','Hardcover',1800);
/*!40000 ALTER TABLE `newbooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `ID` int NOT NULL,
  `namefirst` varchar(45) DEFAULT NULL,
  `namelast` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `emailID` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'saleel','bagde','1984-06-12','saleel.bagde@gmail.com'),(2,'omkar','rokde','1969-10-25','omkar.rakde@gmail.com'),(3,'ulka','joshi','1970-10-25','ulka.joshi@gmail.com'),(4,'rahul','patil','1982-10-31','rahul.patil@gmail.com'),(5,'ruhan','bagde','1984-01-12','ruhan.bagde@gmail.com'),(6,'lala','prasad','1980-12-01','lala.prasad@gmail.com'),(7,'sharmin','bagde','1986-12-14','sharmin.bagde@gmail.com'),(8,'vrushali','bagde','1984-12-29','vrushali.bagde@gmail.com'),(9,'vasant','khande','1992-10-26','vasant.khande@gmail.com'),(10,'nitish','patil','1990-10-26','nitish.patil@gmail.com'),(11,'neel','save','1975-10-30','neel.save@gmail.com'),(12,'deep','save','1986-11-30','deep.save@gmail.com'),(13,'nrupali','save','1981-12-01','nrupali.save@gmail.com'),(14,'supriya','karnik','1983-12-15','supriya.karnik@gmail.com'),(15,'bandish','karnik','1987-12-30','bandish.karnik@gmail.com'),(16,'sangita','karnik','1990-12-01','sangita.karnik@gmail.com'),(17,'sangita','menon','1989-10-26','sangita.menon@gmail.com'),(18,'rahul','shah','1982-06-12','rahul.shah@gmail.com'),(19,'bhavin','patel','1983-11-13','bhavin.patel@gmail.com'),(20,'kaushal','patil','1982-07-30','kaushal.patil@gmail.com'),(21,'pankaj','gandhi','1982-07-30','pankaj.gandhi@gmail.com'),(22,'rajan','patel','1982-07-30','rajan.patel@gmail.com'),(23,'bhavin','patel','1982-07-30','bhavin.patel@gmail.com'),(24,'mukesh','bhavsar','1982-07-30','mukesh.bhavsar@gmail.com'),(25,'dilu','khande','1982-07-30','dilu.khande@gmail.com'),(26,'sonam','khan','1972-05-13','sonam.khan@gmail.com'),(27,'rohit','patil','1976-12-31','rohit.patil@gmail.com'),(28,'raj','bubber','1982-02-28','raj.bubber@gmail.com');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_address`
--

DROP TABLE IF EXISTS `student_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_address` (
  `ID` int NOT NULL,
  `studentID` int NOT NULL,
  `address` varchar(128) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `studentID` (`studentID`),
  UNIQUE KEY `address` (`address`),
  CONSTRAINT `student_address_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_address`
--

LOCK TABLES `student_address` WRITE;
/*!40000 ALTER TABLE `student_address` DISABLE KEYS */;
INSERT INTO `student_address` VALUES (1,1,'13758 Dogwood, St, Trona, CA, Los Angeles, 93562'),(2,2,'2263 Ga 17 Hwy N, Millen, GA, Atlanta, 30442'),(3,3,'409 Berry St, Louisa, KY, San Jose, 41230'),(4,4,'7720 Covington Rd, Pink Stand, TN, San Francisco, 37188'),(5,5,'15 Hempstead, St, Saugus, MA, Las Vega, 1906'),(6,6,'165 Village Dr., P.O. Box 3700, Oakland, TN, Oakland, 38060'),(7,7,'Po Box 83, Faith, NC, New Jersey, 28041'),(8,8,'3402 Buccaneer Rose Ave, Bakersfield, CA, Boston, 93313'),(9,9,'Po Box 77, Linking Road, UK'),(10,10,'7710 Covington Rd , New State Road, New York, 37188'),(11,11,'15 Hempstead St, Saugus, MA, Boston, 1906'),(12,12,'165 Ken city, P.O. Box 942873, 50 Higuera Street, Oakland, 38060'),(13,13,'Po Box 83, Faith, NC, null, New York, 28041'),(14,14,'808 Rocky Hill Rd, Plymouth 1993 Cross lane, Boston, 32360'),(15,15,'118 Lippitt Ave Warwick, 100 S. Main Street, Los Angeles, 12889'),(16,16,'5973 Moon Shadow Dr. Herriman, null, Atlanta, 2345'),(17,17,'13758 Dogwood St, Trona, null, San Jose, 93562'),(18,18,'2263 Ga 17 Hwy N, Millen, null, Las Vega, 30442'),(19,19,'321/vimal park, karve road, pune, 411038'),(20,20,'Prashant Society, Kothrud, pune, 411038'),(21,21,'8 vaibhav, Ishadan soc, paud road, Pune'),(22,22,'9 vaibhav, Ishadan soc, paud road, Pune'),(23,23,'10  vaibhav, Ishadan soc, paud road, Pune'),(24,24,'4 vaibhav, Ishadan soc, paud road, Pune'),(25,25,'7 vaibhav, Ishadan soc, paud road, Pune'),(26,26,'19 Hempstead St, go streat, MG, Boston, 19077'),(27,27,'1699 Ken city, P.O. Box 942873, 50 Higuera Street, Oakland, 38060'),(28,28,'Po Box 87, Faith, NC, New York, 28045');
/*!40000 ALTER TABLE `student_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_cards`
--

DROP TABLE IF EXISTS `student_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_cards` (
  `ID` int NOT NULL,
  `studentID` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `studentID` (`studentID`),
  CONSTRAINT `student_cards_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_cards`
--

LOCK TABLES `student_cards` WRITE;
/*!40000 ALTER TABLE `student_cards` DISABLE KEYS */;
INSERT INTO `student_cards` VALUES (1,1,'Aadhaar',1),(2,1,'Driving Licence',1),(3,1,'PAN',1),(4,1,'Voter ID',1),(5,1,'Passport',1),(6,1,'Debit',1),(7,1,'Credit',1),(8,2,'Aadhaar',1),(9,2,'Driving Licence',1),(10,2,'PAN',1),(11,2,'Voter ID',1),(12,2,'Debit',1),(13,3,'Aadhaar',1),(14,3,'Driving Licence',1),(15,3,'PAN',1),(16,3,'Passport',1),(17,3,'Debit',1),(18,4,'Aadhaar',1),(19,4,'Driving Licence',1),(20,4,'PAN',1),(21,4,'Passport',1),(22,4,'Debit',1),(23,4,'Credit',1),(24,5,'Aadhaar',1),(25,5,'Driving Licence',1),(26,5,'PAN',1),(27,5,'Voter ID',1),(28,5,'Passport',1),(29,5,'Debit',1),(30,5,'Credit',1),(31,6,'PAN',1),(32,6,'Driving Licence',1),(33,7,'Aadhaar',1),(34,7,'Driving Licence',1),(35,8,'Aadhaar',1),(36,8,'Driving Licence',1),(37,8,'PAN',1),(38,8,'Voter ID',1),(39,9,'Driving Licence',1),(40,9,'PAN',1),(41,9,'Debit',1),(42,9,'Credit',1),(43,10,'Aadhaar',1),(44,10,'PAN',1),(45,10,'Passport',1),(46,10,'Voter ID',1),(47,11,'Aadhaar',1),(48,12,'Aadhaar',1),(49,12,'Driving Licence',1),(50,12,'PAN',1),(51,13,'Aadhaar',1),(52,13,'Driving Licence',1),(53,13,'PAN',1),(54,13,'Voter ID',1),(55,17,'Aadhaar',1),(56,17,'Driving Licence',1),(57,17,'PAN',1),(58,17,'Voter ID',1),(59,17,'Passport',1),(60,17,'Debit',1),(61,17,'Credit',1),(62,18,'Aadhaar',1),(63,18,'PAN',1),(64,19,'Aadhaar',1),(65,19,'PAN',1),(66,19,'Passport',1),(67,20,'Aadhaar',1),(68,20,'PAN',1),(69,20,'Passport',1),(70,23,'Driving Licence',1),(71,23,'PAN',1),(72,23,'Credit',1),(73,24,'Aadhaar',1),(74,24,'Driving Licence',1),(75,24,'PAN',1),(76,24,'Voter ID',1),(77,24,'Passport',1),(78,24,'Credit',1),(79,25,'Aadhaar',1),(80,14,'Driving Licence',1),(81,15,'PAN',1),(82,16,'Voter ID',1),(83,25,'Driving Licence',1),(84,25,'PAN',1),(85,25,'Voter ID',1);
/*!40000 ALTER TABLE `student_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_order`
--

DROP TABLE IF EXISTS `student_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_order` (
  `ID` int NOT NULL,
  `studentID` int DEFAULT NULL,
  `orderdate` date DEFAULT NULL,
  `amount` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `studentID` (`studentID`),
  CONSTRAINT `student_order_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_order`
--

LOCK TABLES `student_order` WRITE;
/*!40000 ALTER TABLE `student_order` DISABLE KEYS */;
INSERT INTO `student_order` VALUES (1,4,'2019-01-12',2000),(2,1,'2019-01-12',2500),(3,6,'2019-08-17',150),(4,2,'2019-05-02',340),(5,12,'2019-05-03',655),(6,12,'2019-05-04',1000),(7,6,'2019-11-11',4000),(8,1,'2019-07-19',1270),(9,5,'2019-04-07',2000),(10,7,'2019-10-10',2500),(11,10,'2019-11-11',150),(12,14,'2019-07-21',340),(13,13,'2019-11-02',655),(14,4,'2019-01-12',1000),(15,NULL,'2019-04-07',4000),(16,NULL,'2019-10-10',1270),(17,NULL,'2019-11-11',4588),(18,NULL,'2019-07-21',1200),(19,NULL,'2019-11-02',125),(20,NULL,'2019-01-12',350),(21,8,'2019-01-12',4500),(22,10,'2019-11-02',650),(23,4,'2019-10-19',700),(24,4,'2019-08-08',1400),(25,1,'2019-06-15',1999),(26,6,'2019-02-02',280),(27,2,'2019-08-21',175),(28,12,'2019-02-02',45),(29,12,'2019-01-12',190),(30,6,'2019-07-10',750),(31,1,'2019-11-12',575),(32,5,'2019-03-03',635),(33,7,'2019-06-23',945),(34,10,'2019-01-19',225),(35,14,'2019-10-10',325),(36,13,'2019-01-12',180),(37,4,'2019-06-23',500),(38,2,'2019-01-19',400),(39,5,'2019-10-10',320),(40,8,'2019-01-12',650);
/*!40000 ALTER TABLE `student_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_phone`
--

DROP TABLE IF EXISTS `student_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_phone` (
  `ID` int NOT NULL,
  `studentID` int DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `studentID` (`studentID`),
  CONSTRAINT `student_phone_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_phone`
--

LOCK TABLES `student_phone` WRITE;
/*!40000 ALTER TABLE `student_phone` DISABLE KEYS */;
INSERT INTO `student_phone` VALUES (1,1,'7032300034',1),(2,2,'7032300039',1),(3,3,'7032300050',1),(4,4,'7032300027',1),(5,5,'7032300001',1),(6,6,'7032300079',1),(7,7,'7032300081',1),(8,8,'7032300054',1),(9,9,'7032300059',1),(10,10,'7032300086',1),(11,11,'7032300082',1),(12,12,'7032300042',1),(13,13,'7032300055',1),(14,14,'7032300013',1),(15,15,'7032300099',1),(16,16,'7032300023',1),(17,17,'7032300084',1),(18,18,'7032300011',1),(19,19,'7032300066',1),(20,20,'7032300096',1),(21,1,'7132300034',1),(22,2,'7132300039',1),(23,3,'7132300050',1),(24,4,'7132300027',1),(25,5,'7032300001',1),(26,6,'7132300079',1),(27,7,'7132300081',0),(28,8,'7132300054',0),(29,9,'7132300059',0),(30,10,'7132300086',0),(31,11,'7132300082',0),(32,12,'7132300042',0),(33,13,'7132300055',0),(34,13,'7132300055',0),(35,13,'7132300055',1),(36,6,'7134567123',0),(37,21,'7156567123',1),(38,22,'7156567134',1),(39,23,'7156563423',0),(40,24,'7156567183',0),(41,25,'7146566412',1);
/*!40000 ALTER TABLE `student_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_qualifications`
--

DROP TABLE IF EXISTS `student_qualifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_qualifications` (
  `ID` int NOT NULL,
  `studentID` int DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `college` varchar(128) DEFAULT NULL,
  `university` varchar(128) DEFAULT NULL,
  `marks` varchar(45) DEFAULT NULL,
  `year` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `studentID` (`studentID`),
  CONSTRAINT `student_qualifications_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_qualifications`
--

LOCK TABLES `student_qualifications` WRITE;
/*!40000 ALTER TABLE `student_qualifications` DISABLE KEYS */;
INSERT INTO `student_qualifications` VALUES (1,1,'10','Alabama','Stanford University','67',2012),(2,1,'12','Alaska','Harvard University','74',2014),(3,1,'BE','Arizona','Harvard University','68',2018),(4,2,'10','Alaska','University of Chicago','68',2013),(5,2,'12','New York','Yale University','56',2015),(6,2,'B.Com','Arkansas','Yale University','64',2019),(7,3,'10','Arizona','Yale University','75',2011),(8,3,'12','California','California University','86',2013),(9,3,'BE','Florida','University of Florida','67',2017),(10,4,'10','Idaho','Pennsylvania University','58',2010),(11,4,'12','New Hampshire','Yale University','97',2012),(12,4,'M.Com.','Montana','Columbia University','77',2016),(13,5,'10','Alabama','Yale University','56',2008),(14,5,'12','Michigan','University of Michigan','57',2010),(15,5,'M.Com.','Oklahoma','Stanford University','86',2014),(16,6,'10','Mississippi','Harvard University','56',2009),(17,6,'12','Alabama','Harvard University','76',2011),(18,6,'BE','Indiana','University of Chicago','87',2015),(19,7,'10','Ohio','University of Ohio','87',2011),(20,7,'12','Iowa','Stanford University','78',2013),(21,7,'BE','Kentucky','Harvard University','97',2017),(22,8,'10','Maryland','University Maryland','56',2010),(23,8,'12','Alabama','California University','60',2012),(24,8,'M.Com.','Virginia','University of Florida','87',2016),(25,9,'10','Maine','Pennsylvania University','98',2012),(26,9,'12','Vermont','Yale University','67',2014),(27,9,'BE','Kansas','Columbia University','87',2018),(28,10,'10','Texas','Yale University','65',2012),(29,10,'12','Oregon','University of Michigan','76',2014),(30,10,'M.Com.','New Mexico','California University','61',2018),(31,11,'10','Nevada','University of Florida','62',2011),(32,11,'12','Indiana','Pennsylvania University','63',2013),(33,11,'M.Com.','Ohio','University of Ohio','56',2017),(34,12,'10','New Hampshire','Yale University','75',2010),(35,12,'12','Montana','Stanford University','45',2012),(36,12,'B.Com.','West Virginia','Harvard University','50',2016),(37,13,'10','Virginia','Harvard University','67',2012),(38,13,'12','Maine','University of Chicago','78',2014),(39,13,'BE','Texas','University of Florida','68',2018),(40,14,'10','Oregon','University of Florida','67',2013),(41,14,'12','Florida','University of Florida','87',2015),(42,14,'BE','Idaho','Yale University','57',2019),(43,15,'10','New Hampshire','California University','96',2011),(44,15,'12','Montana','University of Florida','56',2013),(45,15,'BE','Alabama','Pennsylvania University','65',2017),(46,16,'10','Michigan','University of Michigan','76',2012),(47,16,'12','Oklahoma','Columbia University','56',2014),(48,16,'BE','Mississippi','University of Michigan','76',2018),(49,17,'10','Alabama','University of Michigan','88',2013),(50,17,'12','Indiana','University of Michigan','76',2015),(51,17,'BE','Ohio','University of Ohio','68',2019),(52,18,'10','Iowa','Stanford University','86',2011),(53,18,'12','Kentucky','Harvard University','57',2013),(54,18,'BE','Maryland','Harvard University','75',2017),(55,19,'10','Alabama','University of Chicago','69',2013),(56,19,'12','Virginia','California University','60',2015),(57,19,'BE','Maine','University of Florida','61',2019),(58,20,'10','Vermont','Pennsylvania University','72',2013),(59,20,'12','Iowa','Yale University','83',2015),(60,20,'BE','Maryland','Columbia University','72',2019),(61,21,'10','Alabama','Stanford University','67',2012),(62,21,'12','Alaska','Harvard University','74',2014),(63,21,'BE','Arizona','Harvard University','68',2018),(64,22,'10','Alabama','Stanford University','67',2012),(65,22,'12','Alaska','Harvard University','74',2014),(66,22,'BE','Arizona','Harvard University','68',2018),(67,23,'10','Alabama','Stanford University','67',2012),(68,23,'12','Alaska','Harvard University','74',2014),(69,23,'BE','Arizona','Harvard University','68',2018),(70,24,'10','Ohio','University of Ohio','87',2011),(71,24,'12','Iowa','Stanford University','78',2013),(72,24,'BE','Kentucky','Harvard University','97',2017),(73,25,'10','Ohio','University of Ohio','87',2011),(74,25,'12','Iowa','Stanford University','78',2013),(75,25,'BE','Kentucky','Harvard University','97',2017),(76,26,'10','Iowa','Stanford University','56',1994),(77,26,'DIP','Kentucky','Harvard University','67',1996),(78,26,'BE','Maryland','Harvard University','68',2000),(79,27,'10','Alabama','University of Chicago','50',1997),(80,27,'12','Virginia','California University','55',1999),(81,27,'DIP','Maine','University of Florida','60',2003),(82,27,'BE','Vermont','Pennsylvania University','62',2006),(83,28,'10','Iowa','Yale University','65',2004),(84,28,'12','Maryland','Columbia University','68',2006),(85,28,'MCA','Alaska','Harvard University','64',2009);
/*!40000 ALTER TABLE `student_qualifications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-15  9:50:43
