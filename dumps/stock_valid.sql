-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: stock
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NameOrganization` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NameOrganization_UNIQUE` (`NameOrganization`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliveries` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StorekeeperID` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `DateDelivery` datetime(6) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_StorekeeperID_idx` (`StorekeeperID`),
  KEY `FK_SupplierID_idx` (`SupplierID`),
  CONSTRAINT `FK_StorekeeperID` FOREIGN KEY (`StorekeeperID`) REFERENCES `employees` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_SupplierID` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AccountID` int(11) NOT NULL,
  `PositionID` int(11) NOT NULL,
  `DepartmentID` int(11) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `MiddleName` varchar(45) NOT NULL,
  `Birthday` date NOT NULL,
  `Phone` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Phone_UNIQUE` (`Phone`),
  KEY `FK_PositionID_idx` (`PositionID`),
  KEY `FK_DepartmentID_idx` (`DepartmentID`),
  KEY `FK_AccountID_idx` (`AccountID`),
  CONSTRAINT `FK_AccountID` FOREIGN KEY (`AccountID`) REFERENCES `users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_DepartmentID` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PositionID` FOREIGN KEY (`PositionID`) REFERENCES `positions` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measures`
--

DROP TABLE IF EXISTS `measures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measures` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measures`
--

LOCK TABLES `measures` WRITE;
/*!40000 ALTER TABLE `measures` DISABLE KEYS */;
/*!40000 ALTER TABLE `measures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StorekeeperID` int(11) NOT NULL,
  `CustomersID` int(11) NOT NULL,
  `OrderDate` datetime(6) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_StorekeeperID_idx` (`StorekeeperID`),
  KEY `FK_CustomersID_idx` (`CustomersID`),
  CONSTRAINT `FK_CustomersID` FOREIGN KEY (`CustomersID`) REFERENCES `customers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_OrderStorekeeperID` FOREIGN KEY (`StorekeeperID`) REFERENCES `employees` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricelist`
--

DROP TABLE IF EXISTS `pricelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pricelist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PurchasePrice` double NOT NULL,
  `RetailPrice` double NOT NULL,
  `WholesalePrice` double NOT NULL,
  `Discount` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricelist`
--

LOCK TABLES `pricelist` WRITE;
/*!40000 ALTER TABLE `pricelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `pricelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_deliveries`
--

DROP TABLE IF EXISTS `product_deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_deliveries` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DeliverieID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Count` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_DelicerieID_idx` (`DeliverieID`),
  KEY `FK_ProductID_idx` (`ProductID`),
  CONSTRAINT `FK_DelicerieID` FOREIGN KEY (`DeliverieID`) REFERENCES `deliveries` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ProductID` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_deliveries`
--

LOCK TABLES `product_deliveries` WRITE;
/*!40000 ALTER TABLE `product_deliveries` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TypeID` int(11) NOT NULL,
  `MeasureID` int(11) NOT NULL,
  `PriceListID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`),
  KEY `FK_TypesProducts_idx` (`TypeID`),
  KEY `FK_Measures_idx` (`MeasureID`),
  KEY `FK_PriceListID_idx` (`PriceListID`),
  CONSTRAINT `FK_MeasuresID` FOREIGN KEY (`MeasureID`) REFERENCES `measures` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PriceListID` FOREIGN KEY (`PriceListID`) REFERENCES `pricelist` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_TypesProductsID` FOREIGN KEY (`TypeID`) REFERENCES `types_products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_order`
--

DROP TABLE IF EXISTS `products_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_order` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Count` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_OrderID_idx` (`OrderID`),
  KEY `FK_ProductID_idx` (`ProductID`),
  CONSTRAINT `FK_OrderID` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_OrderProductID` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_order`
--

LOCK TABLES `products_order` WRITE;
/*!40000 ALTER TABLE `products_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NameOrganization` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NameOrganization_UNIQUE` (`NameOrganization`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types_products`
--

DROP TABLE IF EXISTS `types_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types_products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types_products`
--

LOCK TABLES `types_products` WRITE;
/*!40000 ALTER TABLE `types_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `types_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL,
  `Login` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Login_UNIQUE` (`Login`),
  KEY `FK_GroupID_idx` (`GroupID`),
  CONSTRAINT `FK_GroupID` FOREIGN KEY (`GroupID`) REFERENCES `users_group` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'admin','21232f297a57a5a743894a0e4a801fc3'),(2,2,'user','ee11cbb19052e40b07aac0ca060c23ee');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_group`
--

DROP TABLE IF EXISTS `users_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_group`
--

LOCK TABLES `users_group` WRITE;
/*!40000 ALTER TABLE `users_group` DISABLE KEYS */;
INSERT INTO `users_group` VALUES (1,'Администраторы'),(2,'Пользователи');
/*!40000 ALTER TABLE `users_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-18 16:46:01
