-- MySqlBackup.NET 2.0.4
-- Dump Time: 2021-04-13 14:24:58
-- --------------------------------------
-- Server version 8.0.23 MySQL Community Server - GPL


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 
-- Definition of Bike_Model
-- 

DROP TABLE IF EXISTS `Bike_Model`;
CREATE TABLE IF NOT EXISTS `Bike_Model` (
  `idBike_Model` int NOT NULL AUTO_INCREMENT,
  `Color` varchar(45) DEFAULT NULL,
  `Size` varchar(45) DEFAULT NULL,
  `Type_Model` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idBike_Model`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table Bike_Model
-- 

/*!40000 ALTER TABLE `Bike_Model` DISABLE KEYS */;
INSERT INTO `Bike_Model`(`idBike_Model`,`Color`,`Size`,`Type_Model`) VALUES
(1,'Red','26','City'),
(2,'Blue','26','City'),
(3,'Black','26','City'),
(4,'Red','28','City'),
(5,'Blue','28','City'),
(6,'Black','28','City'),
(7,'Red','26','Adventure'),
(8,'Blue','26','Adventure'),
(9,'Black','26','Adventure'),
(10,'Red','28','Adventure'),
(11,'Blue','28','Adventure'),
(12,'Black','28','Adventure'),
(13,'Red','26','Explorer'),
(14,'Blue','26','Explorer'),
(15,'Black','26','Explorer'),
(16,'Red','28','Explorer'),
(17,'Blue','28','Explorer'),
(18,'Black','28','Explorer'),
(41,'Red','26','tandem'),
(42,'Black','26','test');
/*!40000 ALTER TABLE `Bike_Model` ENABLE KEYS */;

-- 
-- Definition of Bike_Parts
-- 

DROP TABLE IF EXISTS `Bike_Parts`;
CREATE TABLE IF NOT EXISTS `Bike_Parts` (
  `Id_Bike_Parts` int NOT NULL AUTO_INCREMENT,
  `Bike_Parts_Name` varchar(45) NOT NULL,
  `Quantity` int NOT NULL,
  `Location` varchar(45) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `Provider` varchar(45) NOT NULL,
  `Time_To_Build` varchar(45) NOT NULL,
  PRIMARY KEY (`Id_Bike_Parts`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table Bike_Parts
-- 

/*!40000 ALTER TABLE `Bike_Parts` DISABLE KEYS */;
INSERT INTO `Bike_Parts`(`Id_Bike_Parts`,`Bike_Parts_Name`,`Quantity`,`Location`,`Price`,`Provider`,`Time_To_Build`) VALUES
(1,'kit de frein',9,'k1',79,'TZUSCRLS','4'),
(2,'kit vitesse',9,'k2',50,'JHDFMJJX','15'),
(3,'cadre_red_26',9,'c3',150,'QNBVSFJS','1'),
(4,'cadre_blue_26',10,'c4',150,'QNBVSFJS','1'),
(5,'cadre_black_26',10,'c5',150,'QNBVSFJS','1'),
(6,'cadre_red_28',10,'c6',150,'QNBVSFJS','1'),
(7,'cadre_blue_28',10,'c7',150,'QNBVSFJS','1'),
(8,'cadre_black_28',10,'c8',150,'QNBVSFJS','1'),
(9,'cadre renforcé_red_26',10,'c9',200,'EPROXATW','6'),
(10,'cadre renforcé_blue_26',10,'c10',200,'EPROXATW','6'),
(11,'cadre renforcé_black_26',10,'c11',200,'EPROXATW','6'),
(12,'cadre renforcé_red_28',10,'c12',200,'EPROXATW','6'),
(13,'cadre renforcé_blue_28',10,'c13',200,'EPROXATW','6'),
(14,'cadre renforcé_black_28',10,'c14',200,'EPROXATW','6'),
(15,'kit pédalier',9,'k5',12,'VAHODPHQ','7'),
(16,'cassette de pignons',9,'z6',38,'XJAHIEVP','14'),
(17,'catadioptre',36,'z7',1,'RZXJEDSF','1'),
(18,'chaîne',9,'z8',20,'WFFXKACX','11'),
(19,'garde-boue_red_26',9,'g9',8,'NFFKDBYZ','5'),
(20,'garde-boue_blue_26',10,'g10',8,'NFFKDBYZ','5'),
(21,'garde-boue_black_26',10,'g11',8,'NFFKDBYZ','5'),
(22,'garde-boue_red_28',10,'g12',8,'NFFKDBYZ','5'),
(23,'garde-boue_blue_28',10,'g13',8,'NFFKDBYZ','5'),
(24,'garde-boue_black_28',10,'g14',8,'NFFKDBYZ','5'),
(25,'garde-boue large_26',10,'g15',13,'ZHWXORAB','8'),
(26,'garde-boue large_28',10,'g16',13,'ZHWXORAB','8'),
(27,'chambre à air',19,'z11',5,'ZTMXWHCP','3'),
(28,'dérailleur',9,'d12',77,'PHDOEEUE','3'),
(29,'disque de frien',18,'d13',60,'AYDCTNBU','9'),
(30,'éclairage',9,'e14',2,'NSIZCRCI','7'),
(31,'fourche_26',9,'f15',76,'YIXYPOIO','5'),
(32,'fourche_28',10,'f16',76,'YIXYPOIO','5'),
(33,'guidon',9,'g17',37,'KZJDTXPB','14'),
(34,'plateau',9,'p17',15,'XMKHRNBQ','11'),
(35,'pneu_26',18,'p18',16,'VOXBZOHF','1'),
(36,'pneu_28',20,'p19',16,'VOXBZOHF','1'),
(37,'pneu large_26',20,'p20',22,'CNNILLQL','3'),
(38,'pneu large_28',20,'p21',22,'CNNILLQL','3'),
(39,'porte-bagage',9,'p22',38,'OBUQWIIF','10'),
(40,'roue_26',18,'r21',40,'QCPVKHRC','14'),
(41,'roue_28',20,'r22',40,'QCPVKHRC','14'),
(42,'selle',9,'s22',29,'VNNWLFYS','10'),
(52,'béquille',9,'b0',10,'TRXYXUYA','9');
/*!40000 ALTER TABLE `Bike_Parts` ENABLE KEYS */;

-- 
-- Definition of Bikes
-- 

DROP TABLE IF EXISTS `Bikes`;
CREATE TABLE IF NOT EXISTS `Bikes` (
  `Bikes_Id` int NOT NULL AUTO_INCREMENT,
  `Bike_Type` varchar(45) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `Bike_total_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Bikes_Id`),
  KEY `Type` (`Bike_Type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table Bikes
-- 

/*!40000 ALTER TABLE `Bikes` DISABLE KEYS */;

/*!40000 ALTER TABLE `Bikes` ENABLE KEYS */;

-- 
-- Definition of Detailed_Schedules
-- 

DROP TABLE IF EXISTS `Detailed_Schedules`;
CREATE TABLE IF NOT EXISTS `Detailed_Schedules` (
  `Week_Name` varchar(50) NOT NULL,
  `Id_Order_Details` int NOT NULL,
  `Assembled_by` varchar(45) DEFAULT NULL,
  `Started` varchar(50) DEFAULT NULL,
  `Finished` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Week_Name`,`Id_Order_Details`),
  KEY `FK_schedules` (`Week_Name`),
  KEY `FK_Details_idx` (`Id_Order_Details`),
  CONSTRAINT `FK_Details` FOREIGN KEY (`Id_Order_Details`) REFERENCES `Order_Details` (`Id_Order_Details`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table Detailed_Schedules
-- 

/*!40000 ALTER TABLE `Detailed_Schedules` DISABLE KEYS */;
INSERT INTO `Detailed_Schedules`(`Week_Name`,`Id_Order_Details`,`Assembled_by`,`Started`,`Finished`) VALUES
('15',2959,'Assembler1','Saturday 18:27','Saturday 18:27'),
('15',2960,'Assembler1','Saturday 18:27','Saturday 18:27'),
('15',2961,'Assembler1','Saturday 18:27','Saturday 18:27'),
('15',2962,'Assembler1','Saturday 18:27','Saturday 18:27'),
('15',2963,'Assembler1','Saturday 18:27','Saturday 18:27'),
('15',2964,'Assembler1','Saturday 18:27','Saturday 18:27'),
('15',2965,'Assembler1','Saturday 18:27','Saturday 18:27'),
('15',2966,'Assembler1','Saturday 18:27','Saturday 18:27'),
('15',2967,'Assembler1','Saturday 18:27','Saturday 18:28'),
('15',2968,'Assembler1','Saturday 18:27','Saturday 18:28'),
('15',2969,'Assembler1','Saturday 18:27','Saturday 18:28'),
('15',2970,'Assembler1','Saturday 18:27','Saturday 18:28'),
('15',2971,'Assembler1','Saturday 18:27','Saturday 18:28'),
('15',2972,'Assembler1','Saturday 18:27','Saturday 18:28'),
('15',2973,'Assembler1','Saturday 18:27','Saturday 18:28'),
('15',2974,'Assembler1','Saturday 18:27','Saturday 18:28'),
('15',2975,'Assembler1','Saturday 18:27','Saturday 18:28'),
('15',2976,'Assembler1','Saturday 18:27','Saturday 18:28'),
('15',2977,'Assembler1','Saturday 21:6','Saturday 21:6');
/*!40000 ALTER TABLE `Detailed_Schedules` ENABLE KEYS */;

-- 
-- Definition of Order_Bikes
-- 

DROP TABLE IF EXISTS `Order_Bikes`;
CREATE TABLE IF NOT EXISTS `Order_Bikes` (
  `Id_Order` int NOT NULL AUTO_INCREMENT,
  `Customer_Name` varchar(45) NOT NULL,
  `Total_Price` decimal(10,0) NOT NULL,
  `Order_Date` varchar(45) NOT NULL,
  `Shipping_Time` varchar(45) NOT NULL,
  PRIMARY KEY (`Id_Order`),
  KEY `Primaire` (`Customer_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table Order_Bikes
-- 

/*!40000 ALTER TABLE `Order_Bikes` DISABLE KEYS */;
INSERT INTO `Order_Bikes`(`Id_Order`,`Customer_Name`,`Total_Price`,`Order_Date`,`Shipping_Time`) VALUES
(337,'Stock',16225,'10/04/2021 18:19:53','17/04/2021 00:00:00'),
(338,'Stock',882,'10/04/2021 21:04:47','17/04/2021 00:00:00'),
(339,'Test',262944,'10/04/2021 21:07:38','05/06/2021 00:00:00');
/*!40000 ALTER TABLE `Order_Bikes` ENABLE KEYS */;

-- 
-- Definition of Order_Detailed_Part
-- 

DROP TABLE IF EXISTS `Order_Detailed_Part`;
CREATE TABLE IF NOT EXISTS `Order_Detailed_Part` (
  `idOrder_Detailed_Part` int NOT NULL AUTO_INCREMENT,
  `Id_Order` int DEFAULT NULL,
  `Id_Bike_Parts` int NOT NULL,
  `Quantity` int DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idOrder_Detailed_Part`,`Id_Bike_Parts`),
  UNIQUE KEY `idOrder_Detailed_Part_UNIQUE` (`idOrder_Detailed_Part`),
  KEY `FK_Bike_Parts_idx` (`Id_Bike_Parts`),
  CONSTRAINT `FK_Bike_Parts` FOREIGN KEY (`Id_Bike_Parts`) REFERENCES `Bike_Parts` (`Id_Bike_Parts`)
) ENGINE=InnoDB AUTO_INCREMENT=574 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table Order_Detailed_Part
-- 

/*!40000 ALTER TABLE `Order_Detailed_Part` DISABLE KEYS */;
INSERT INTO `Order_Detailed_Part`(`idOrder_Detailed_Part`,`Id_Order`,`Id_Bike_Parts`,`Quantity`,`Price`,`State`) VALUES
(531,61,1,28,2212,'Received'),
(532,61,2,28,1400,'Received'),
(533,61,3,12,1800,'Received'),
(534,61,15,28,336,'Received'),
(535,61,16,28,1064,'Received'),
(536,61,17,112,112,'Received'),
(537,61,18,28,560,'Received'),
(538,61,19,11,88,'Received'),
(539,61,27,55,275,'Received'),
(540,61,28,28,2156,'Received'),
(541,61,29,56,3360,'Received'),
(542,61,30,22,44,'Received'),
(543,61,31,19,1444,'Received'),
(544,61,33,28,1036,'Received'),
(545,61,34,28,420,'Received'),
(546,61,35,26,416,'Received'),
(547,61,39,22,836,'Received'),
(548,61,40,38,1520,'Received'),
(549,61,42,28,812,'Received'),
(550,61,52,28,280,'Received'),
(551,61,4,12,1800,'Received'),
(552,61,20,11,88,'Received'),
(553,61,5,12,1800,'Received'),
(554,61,21,11,88,'Received'),
(555,61,6,12,1800,'Received'),
(556,61,22,11,88,'Received'),
(557,61,32,19,1444,'Received'),
(558,61,36,26,416,'Received'),
(559,61,41,38,1520,'Received'),
(560,61,7,12,1800,'Received'),
(561,61,23,11,88,'Received'),
(562,61,8,12,1800,'Received'),
(563,61,24,11,88,'Received'),
(564,61,25,16,208,'Received'),
(565,61,37,32,704,'Received'),
(566,61,26,16,208,'Received'),
(567,61,38,32,704,'Received'),
(568,61,9,11,2200,'Received'),
(569,61,10,11,2200,'Received'),
(570,61,11,11,2200,'Received'),
(571,61,12,11,2200,'Received'),
(572,61,13,11,2200,'Received'),
(573,61,14,11,2200,'Received');
/*!40000 ALTER TABLE `Order_Detailed_Part` ENABLE KEYS */;

-- 
-- Definition of Order_Details
-- 

DROP TABLE IF EXISTS `Order_Details`;
CREATE TABLE IF NOT EXISTS `Order_Details` (
  `Id_Order_Details` int NOT NULL AUTO_INCREMENT,
  `Bike_Type` varchar(45) NOT NULL,
  `Bike_Size` varchar(45) NOT NULL,
  `Bike_Color` varchar(45) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `Bike_Status` varchar(45) NOT NULL,
  `Id_Order` int DEFAULT NULL,
  PRIMARY KEY (`Id_Order_Details`),
  KEY `FK_Order_idx` (`Id_Order`),
  KEY `FK_Type_idx` (`Bike_Type`),
  CONSTRAINT `FK_Order` FOREIGN KEY (`Id_Order`) REFERENCES `Order_Bikes` (`Id_Order`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3275 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table Order_Details
-- 

/*!40000 ALTER TABLE `Order_Details` DISABLE KEYS */;
INSERT INTO `Order_Details`(`Id_Order_Details`,`Bike_Type`,`Bike_Size`,`Bike_Color`,`Price`,`Bike_Status`,`Id_Order`) VALUES
(2959,'City','26','Red',882,'Closed',337),
(2960,'City','26','Blue',887,'Closed',337),
(2961,'City','26','Black',887,'Closed',337),
(2962,'City','28','Red',887,'Closed',337),
(2963,'City','28','Blue',887,'Closed',337),
(2964,'City','28','Black',887,'Closed',337),
(2965,'Adventure','26','Red',904,'Closed',337),
(2966,'Adventure','26','Blue',904,'Closed',337),
(2967,'Adventure','26','Black',904,'Closed',337),
(2968,'Adventure','28','Red',904,'Closed',337),
(2969,'Adventure','28','Blue',904,'Closed',337),
(2970,'Adventure','28','Black',904,'Closed',337),
(2971,'Explorer','26','Red',914,'Closed',337),
(2972,'Explorer','26','Blue',914,'Closed',337),
(2973,'Explorer','26','Black',914,'Closed',337),
(2974,'Explorer','28','Red',914,'Closed',337),
(2975,'Explorer','28','Blue',914,'Closed',337),
(2976,'Explorer','28','Black',914,'Closed',337),
(2977,'City','26','Red',882,'Closed',338),
(2978,'City','26','Red',882,'New',339),
(2979,'City','26','Red',882,'New',339),
(2980,'City','26','Red',882,'New',339),
(2981,'City','26','Red',882,'New',339),
(2982,'City','26','Red',882,'New',339),
(2983,'City','26','Red',882,'New',339),
(2984,'City','26','Red',882,'New',339),
(2985,'City','26','Red',882,'New',339),
(2986,'City','26','Red',882,'New',339),
(2987,'City','26','Red',882,'New',339),
(2988,'City','26','Red',882,'New',339),
(2989,'City','26','Red',882,'New',339),
(2990,'City','26','Red',882,'New',339),
(2991,'City','26','Red',882,'New',339),
(2992,'City','26','Red',882,'New',339),
(2993,'City','26','Red',882,'New',339),
(2994,'City','26','Red',882,'New',339),
(2995,'City','26','Red',882,'New',339),
(2996,'City','26','Red',882,'New',339),
(2997,'City','26','Red',882,'New',339),
(2998,'City','26','Red',882,'New',339),
(2999,'City','26','Red',882,'New',339),
(3000,'City','26','Red',882,'New',339),
(3001,'City','26','Red',882,'New',339),
(3002,'City','26','Red',882,'New',339),
(3003,'City','26','Red',882,'New',339),
(3004,'City','26','Red',882,'New',339),
(3005,'City','26','Red',882,'New',339),
(3006,'City','26','Red',882,'New',339),
(3007,'City','26','Red',882,'New',339),
(3008,'City','26','Red',882,'New',339),
(3009,'City','26','Red',882,'New',339),
(3010,'City','26','Red',882,'New',339),
(3011,'City','26','Red',882,'New',339),
(3012,'City','26','Red',882,'New',339),
(3013,'City','26','Red',882,'New',339),
(3014,'City','26','Red',882,'New',339),
(3015,'City','26','Red',882,'New',339),
(3016,'City','26','Red',882,'New',339),
(3017,'City','26','Red',882,'New',339),
(3018,'City','26','Red',882,'New',339),
(3019,'City','26','Red',882,'New',339),
(3020,'City','26','Red',882,'New',339),
(3021,'City','26','Red',882,'New',339),
(3022,'City','26','Red',882,'New',339),
(3023,'City','26','Red',882,'New',339),
(3024,'City','26','Red',882,'New',339),
(3025,'City','26','Red',882,'New',339),
(3026,'City','26','Red',882,'New',339),
(3027,'City','26','Red',882,'New',339),
(3028,'City','26','Red',882,'New',339),
(3029,'City','26','Red',882,'New',339),
(3030,'City','26','Red',882,'New',339),
(3031,'City','26','Red',882,'New',339),
(3032,'City','26','Red',882,'New',339),
(3033,'City','26','Red',882,'New',339),
(3034,'City','26','Red',882,'New',339),
(3035,'City','26','Red',882,'New',339),
(3036,'City','26','Red',882,'New',339),
(3037,'City','26','Red',882,'New',339),
(3038,'City','26','Red',882,'New',339),
(3039,'City','26','Red',882,'New',339),
(3040,'City','26','Red',882,'New',339),
(3041,'City','26','Red',882,'New',339),
(3042,'City','26','Red',882,'New',339),
(3043,'City','26','Red',882,'New',339),
(3044,'City','26','Red',882,'New',339),
(3045,'City','26','Red',882,'New',339),
(3046,'City','26','Red',882,'New',339),
(3047,'City','26','Red',882,'New',339),
(3048,'City','26','Red',882,'New',339),
(3049,'City','26','Red',882,'New',339),
(3050,'City','26','Red',882,'New',339),
(3051,'City','26','Red',882,'New',339),
(3052,'City','26','Red',882,'New',339),
(3053,'City','26','Red',882,'New',339),
(3054,'City','26','Red',882,'New',339),
(3055,'City','26','Red',882,'New',339),
(3056,'City','26','Red',882,'New',339),
(3057,'City','26','Red',882,'New',339),
(3058,'City','26','Red',882,'New',339),
(3059,'City','26','Red',882,'New',339),
(3060,'City','26','Red',882,'New',339),
(3061,'City','26','Red',882,'New',339),
(3062,'City','26','Red',882,'New',339),
(3063,'City','26','Red',882,'New',339),
(3064,'City','26','Red',882,'New',339),
(3065,'City','26','Red',882,'New',339),
(3066,'City','26','Red',882,'New',339),
(3067,'City','26','Red',882,'New',339),
(3068,'City','26','Red',882,'New',339),
(3069,'City','26','Red',882,'New',339),
(3070,'City','26','Red',882,'New',339),
(3071,'City','26','Red',882,'New',339),
(3072,'City','26','Red',882,'New',339),
(3073,'City','26','Red',882,'New',339),
(3074,'City','26','Red',882,'New',339),
(3075,'City','26','Red',882,'New',339),
(3076,'City','26','Red',882,'New',339),
(3077,'City','26','Blue',887,'New',339),
(3078,'City','26','Blue',887,'New',339),
(3079,'City','26','Blue',887,'New',339),
(3080,'City','26','Blue',887,'New',339),
(3081,'City','26','Blue',887,'New',339),
(3082,'City','26','Blue',887,'New',339),
(3083,'City','26','Blue',887,'New',339),
(3084,'City','26','Blue',887,'New',339),
(3085,'City','26','Blue',887,'New',339),
(3086,'City','26','Blue',887,'New',339),
(3087,'City','26','Blue',887,'New',339),
(3088,'City','26','Blue',887,'New',339),
(3089,'City','26','Blue',887,'New',339),
(3090,'City','26','Blue',887,'New',339),
(3091,'City','26','Blue',887,'New',339),
(3092,'City','26','Blue',887,'New',339),
(3093,'City','26','Blue',887,'New',339),
(3094,'City','26','Blue',887,'New',339),
(3095,'City','26','Blue',887,'New',339),
(3096,'City','26','Blue',887,'New',339),
(3097,'City','26','Blue',887,'New',339),
(3098,'City','26','Blue',887,'New',339),
(3099,'City','26','Blue',887,'New',339),
(3100,'City','26','Blue',887,'New',339),
(3101,'City','26','Blue',887,'New',339),
(3102,'City','26','Blue',887,'New',339),
(3103,'City','26','Blue',887,'New',339),
(3104,'City','26','Blue',887,'New',339),
(3105,'City','26','Blue',887,'New',339),
(3106,'City','26','Blue',887,'New',339),
(3107,'City','26','Blue',887,'New',339),
(3108,'City','26','Blue',887,'New',339),
(3109,'City','26','Blue',887,'New',339),
(3110,'City','26','Blue',887,'New',339),
(3111,'City','26','Blue',887,'New',339),
(3112,'City','26','Blue',887,'New',339),
(3113,'City','26','Blue',887,'New',339),
(3114,'City','26','Blue',887,'New',339),
(3115,'City','26','Blue',887,'New',339),
(3116,'City','26','Blue',887,'New',339),
(3117,'City','26','Blue',887,'New',339),
(3118,'City','26','Blue',887,'New',339),
(3119,'City','26','Blue',887,'New',339),
(3120,'City','26','Blue',887,'New',339),
(3121,'City','26','Blue',887,'New',339),
(3122,'City','26','Blue',887,'New',339),
(3123,'City','26','Blue',887,'New',339),
(3124,'City','26','Blue',887,'New',339),
(3125,'City','26','Blue',887,'New',339),
(3126,'City','26','Blue',887,'New',339),
(3127,'City','26','Blue',887,'New',339),
(3128,'City','26','Blue',887,'New',339),
(3129,'City','26','Blue',887,'New',339),
(3130,'City','26','Blue',887,'New',339),
(3131,'City','26','Blue',887,'New',339),
(3132,'City','26','Blue',887,'New',339),
(3133,'City','26','Blue',887,'New',339),
(3134,'City','26','Blue',887,'New',339),
(3135,'City','26','Blue',887,'New',339),
(3136,'City','26','Blue',887,'New',339),
(3137,'City','26','Blue',887,'New',339),
(3138,'City','26','Blue',887,'New',339),
(3139,'City','26','Blue',887,'New',339),
(3140,'City','26','Blue',887,'New',339),
(3141,'City','26','Blue',887,'New',339),
(3142,'City','26','Blue',887,'New',339),
(3143,'City','26','Blue',887,'New',339),
(3144,'City','26','Blue',887,'New',339),
(3145,'City','26','Blue',887,'New',339),
(3146,'City','26','Blue',887,'New',339),
(3147,'City','26','Blue',887,'New',339),
(3148,'City','26','Blue',887,'New',339),
(3149,'City','26','Blue',887,'New',339),
(3150,'City','26','Blue',887,'New',339),
(3151,'City','26','Blue',887,'New',339),
(3152,'City','26','Blue',887,'New',339),
(3153,'City','26','Blue',887,'New',339),
(3154,'City','26','Blue',887,'New',339),
(3155,'City','26','Blue',887,'New',339),
(3156,'City','26','Blue',887,'New',339),
(3157,'City','26','Blue',887,'New',339),
(3158,'City','26','Blue',887,'New',339),
(3159,'City','26','Blue',887,'New',339),
(3160,'City','26','Blue',887,'New',339),
(3161,'City','26','Blue',887,'New',339),
(3162,'City','26','Blue',887,'New',339),
(3163,'City','26','Blue',887,'New',339),
(3164,'City','26','Blue',887,'New',339),
(3165,'City','26','Blue',887,'New',339),
(3166,'City','26','Blue',887,'New',339),
(3167,'City','26','Blue',887,'New',339),
(3168,'City','26','Blue',887,'New',339),
(3169,'City','26','Blue',887,'New',339),
(3170,'City','26','Blue',887,'New',339),
(3171,'City','26','Blue',887,'New',339),
(3172,'City','26','Blue',887,'New',339),
(3173,'City','26','Blue',887,'New',339),
(3174,'City','26','Blue',887,'New',339),
(3175,'City','26','Blue',887,'New',339),
(3176,'City','26','Black',887,'New',339),
(3177,'City','26','Black',887,'New',339),
(3178,'City','26','Black',887,'New',339),
(3179,'City','26','Black',887,'New',339),
(3180,'City','26','Black',887,'New',339),
(3181,'City','26','Black',887,'New',339),
(3182,'City','26','Black',887,'New',339),
(3183,'City','26','Black',887,'New',339),
(3184,'City','26','Black',887,'New',339),
(3185,'City','26','Black',887,'New',339),
(3186,'City','26','Black',887,'New',339),
(3187,'City','26','Black',887,'New',339),
(3188,'City','26','Black',887,'New',339),
(3189,'City','26','Black',887,'New',339),
(3190,'City','26','Black',887,'New',339),
(3191,'City','26','Black',887,'New',339),
(3192,'City','26','Black',887,'New',339),
(3193,'City','26','Black',887,'New',339),
(3194,'City','26','Black',887,'New',339),
(3195,'City','26','Black',887,'New',339),
(3196,'City','26','Black',887,'New',339),
(3197,'City','26','Black',887,'New',339),
(3198,'City','26','Black',887,'New',339),
(3199,'City','26','Black',887,'New',339),
(3200,'City','26','Black',887,'New',339),
(3201,'City','26','Black',887,'New',339),
(3202,'City','26','Black',887,'New',339),
(3203,'City','26','Black',887,'New',339),
(3204,'City','26','Black',887,'New',339),
(3205,'City','26','Black',887,'New',339),
(3206,'City','26','Black',887,'New',339),
(3207,'City','26','Black',887,'New',339),
(3208,'City','26','Black',887,'New',339),
(3209,'City','26','Black',887,'New',339),
(3210,'City','26','Black',887,'New',339),
(3211,'City','26','Black',887,'New',339),
(3212,'City','26','Black',887,'New',339),
(3213,'City','26','Black',887,'New',339),
(3214,'City','26','Black',887,'New',339),
(3215,'City','26','Black',887,'New',339),
(3216,'City','26','Black',887,'New',339),
(3217,'City','26','Black',887,'New',339),
(3218,'City','26','Black',887,'New',339),
(3219,'City','26','Black',887,'New',339),
(3220,'City','26','Black',887,'New',339),
(3221,'City','26','Black',887,'New',339),
(3222,'City','26','Black',887,'New',339),
(3223,'City','26','Black',887,'New',339),
(3224,'City','26','Black',887,'New',339),
(3225,'City','26','Black',887,'New',339),
(3226,'City','26','Black',887,'New',339),
(3227,'City','26','Black',887,'New',339),
(3228,'City','26','Black',887,'New',339),
(3229,'City','26','Black',887,'New',339),
(3230,'City','26','Black',887,'New',339),
(3231,'City','26','Black',887,'New',339),
(3232,'City','26','Black',887,'New',339),
(3233,'City','26','Black',887,'New',339),
(3234,'City','26','Black',887,'New',339),
(3235,'City','26','Black',887,'New',339),
(3236,'City','26','Black',887,'New',339),
(3237,'City','26','Black',887,'New',339),
(3238,'City','26','Black',887,'New',339),
(3239,'City','26','Black',887,'New',339),
(3240,'City','26','Black',887,'New',339),
(3241,'City','26','Black',887,'New',339),
(3242,'City','26','Black',887,'New',339),
(3243,'City','26','Black',887,'New',339),
(3244,'City','26','Black',887,'New',339),
(3245,'City','26','Black',887,'New',339),
(3246,'City','26','Black',887,'New',339),
(3247,'City','26','Black',887,'New',339),
(3248,'City','26','Black',887,'New',339),
(3249,'City','26','Black',887,'New',339),
(3250,'City','26','Black',887,'New',339),
(3251,'City','26','Black',887,'New',339),
(3252,'City','26','Black',887,'New',339),
(3253,'City','26','Black',887,'New',339),
(3254,'City','26','Black',887,'New',339),
(3255,'City','26','Black',887,'New',339),
(3256,'City','26','Black',887,'New',339),
(3257,'City','26','Black',887,'New',339),
(3258,'City','26','Black',887,'New',339),
(3259,'City','26','Black',887,'New',339),
(3260,'City','26','Black',887,'New',339),
(3261,'City','26','Black',887,'New',339),
(3262,'City','26','Black',887,'New',339),
(3263,'City','26','Black',887,'New',339),
(3264,'City','26','Black',887,'New',339),
(3265,'City','26','Black',887,'New',339),
(3266,'City','26','Black',887,'New',339),
(3267,'City','26','Black',887,'New',339),
(3268,'City','26','Black',887,'New',339),
(3269,'City','26','Black',887,'New',339),
(3270,'City','26','Black',887,'New',339),
(3271,'City','26','Black',887,'New',339),
(3272,'City','26','Black',887,'New',339),
(3273,'City','26','Black',887,'New',339),
(3274,'City','26','Black',887,'New',339);
/*!40000 ALTER TABLE `Order_Details` ENABLE KEYS */;

-- 
-- Definition of Order_Part
-- 

DROP TABLE IF EXISTS `Order_Part`;
CREATE TABLE IF NOT EXISTS `Order_Part` (
  `id_Order_Part` int NOT NULL AUTO_INCREMENT,
  `Week_Name` varchar(45) DEFAULT NULL,
  `Total_Price` int DEFAULT NULL,
  `Order_Date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Order_Part`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table Order_Part
-- 

/*!40000 ALTER TABLE `Order_Part` DISABLE KEYS */;
INSERT INTO `Order_Part`(`id_Order_Part`,`Week_Name`,`Total_Price`,`Order_Date`) VALUES
(61,'15',48015,'10/04/2021 18:23:52');
/*!40000 ALTER TABLE `Order_Part` ENABLE KEYS */;

-- 
-- Definition of Parts
-- 

DROP TABLE IF EXISTS `Parts`;
CREATE TABLE IF NOT EXISTS `Parts` (
  `Id_Bike_Parts` int NOT NULL,
  `Bikes_Id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table Parts
-- 

/*!40000 ALTER TABLE `Parts` DISABLE KEYS */;
INSERT INTO `Parts`(`Id_Bike_Parts`,`Bikes_Id`) VALUES
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,7),
(1,8),
(1,9),
(1,10),
(1,11),
(1,12),
(1,13),
(1,14),
(1,15),
(1,16),
(1,17),
(1,18),
(2,2),
(2,3),
(2,4),
(2,5),
(2,6),
(2,7),
(2,8),
(2,9),
(2,10),
(2,11),
(2,12),
(2,13),
(2,14),
(2,15),
(2,16),
(2,17),
(2,18),
(3,7),
(4,2),
(4,8),
(5,3),
(5,9),
(6,4),
(6,10),
(7,5),
(7,11),
(8,6),
(8,12),
(9,13),
(10,14),
(11,15),
(12,16),
(13,17),
(14,18),
(15,2),
(15,3),
(15,4),
(15,5),
(15,6),
(15,7),
(15,8),
(15,9),
(15,10),
(15,11),
(15,12),
(15,13),
(15,14),
(15,15),
(15,16),
(15,17),
(15,18),
(16,2),
(16,3),
(16,4),
(16,5),
(16,6),
(16,7),
(16,8),
(16,9),
(16,10),
(16,11),
(16,12),
(16,13),
(16,14),
(16,15),
(16,16),
(16,17),
(16,18),
(17,2),
(17,3),
(17,4),
(17,5),
(17,6),
(17,7),
(17,8),
(17,9),
(17,10),
(17,11),
(17,12),
(17,13),
(17,14),
(17,15),
(17,16),
(17,17),
(17,18),
(18,2),
(18,3),
(18,4),
(18,5),
(18,6),
(18,7),
(18,8),
(18,9),
(18,10),
(18,11),
(18,12),
(18,13),
(18,14),
(18,15),
(18,16),
(18,17),
(18,18),
(20,2),
(21,3),
(22,4),
(23,5),
(24,6),
(25,7),
(25,8),
(25,9),
(25,13),
(25,14),
(25,15),
(26,10),
(26,11),
(26,12),
(26,16),
(26,17),
(26,18),
(27,2),
(27,3),
(27,4),
(27,5),
(27,6),
(27,7),
(27,8),
(27,9),
(27,10),
(27,11),
(27,12),
(27,13),
(27,14),
(27,15),
(27,16),
(27,17),
(27,18),
(28,2),
(28,3),
(28,4),
(28,5),
(28,6),
(28,7),
(28,8),
(28,9),
(28,10),
(28,11),
(28,12),
(28,13),
(28,14),
(28,15),
(28,16),
(28,17),
(28,18),
(29,2),
(29,3),
(29,4),
(29,5),
(29,6),
(29,7),
(29,8),
(29,9),
(29,10),
(29,11),
(29,12),
(29,13),
(29,14),
(29,15),
(29,16),
(29,17),
(29,18),
(30,2),
(30,3),
(30,4),
(30,5),
(30,6),
(30,7),
(30,8),
(30,9),
(30,10),
(30,11),
(30,12),
(31,2),
(31,3),
(31,7),
(31,8),
(31,9),
(31,13),
(31,14),
(31,15),
(32,4),
(32,5),
(32,6),
(32,10),
(32,11),
(32,12),
(32,16),
(32,17),
(32,18),
(33,2),
(33,3),
(33,4),
(33,5),
(33,6),
(33,7),
(33,8),
(33,9),
(33,10),
(33,11),
(33,12),
(33,13),
(33,14),
(33,15),
(33,16),
(33,17),
(33,18),
(34,2),
(34,3),
(34,4),
(34,5),
(34,6),
(34,7),
(34,8),
(34,9),
(34,10),
(34,11),
(34,12),
(34,13),
(34,14),
(34,15),
(34,16),
(34,17),
(34,18),
(35,1),
(35,2),
(35,3),
(36,4),
(36,5),
(36,6),
(37,7),
(37,8),
(37,9),
(37,13),
(37,14),
(37,15),
(38,10),
(38,11),
(38,12),
(38,16),
(38,17),
(38,18),
(39,2),
(39,3),
(39,4),
(39,5),
(39,6),
(39,7),
(39,8),
(39,9),
(39,10),
(39,11),
(39,12),
(40,2),
(40,3),
(40,7),
(40,8),
(40,9),
(40,13),
(40,14),
(40,15),
(41,4),
(41,5),
(41,6),
(41,10),
(41,11),
(41,12),
(41,16),
(41,17),
(41,18),
(42,2),
(42,3),
(42,4),
(42,5),
(42,6),
(42,7),
(42,8),
(42,9),
(42,10),
(42,11),
(42,12),
(42,13),
(42,14),
(42,15),
(42,16),
(42,17),
(42,18),
(52,2),
(52,3),
(52,4),
(52,5),
(52,6),
(52,7),
(52,8),
(52,9),
(52,10),
(52,11),
(52,12),
(52,13),
(52,14),
(52,15),
(52,16),
(52,17),
(52,18),
(35,1),
(17,2),
(17,2),
(17,2),
(27,2),
(29,2),
(35,2),
(40,2),
(17,3),
(17,3),
(17,3),
(27,3),
(29,3),
(35,3),
(40,3),
(17,4),
(17,4),
(17,4),
(27,4),
(29,4),
(36,4),
(41,4),
(17,5),
(17,5),
(17,5),
(27,5),
(29,5),
(36,5),
(41,5),
(17,6),
(17,6),
(17,6),
(27,6),
(29,6),
(36,6),
(41,6),
(17,7),
(17,7),
(17,7),
(27,7),
(29,7),
(37,7),
(40,7),
(17,8),
(17,8),
(17,8),
(27,8),
(29,8),
(37,8),
(40,8),
(17,9),
(17,9),
(17,9),
(27,9),
(29,9),
(37,9),
(40,9),
(17,10),
(17,10),
(17,10),
(27,10),
(29,10),
(38,10),
(41,10),
(17,11),
(17,11),
(17,11),
(27,11),
(29,11),
(38,11),
(41,11),
(17,12),
(17,12),
(17,12),
(27,12),
(29,12),
(38,12),
(41,12),
(17,13),
(17,13),
(17,13),
(27,13),
(29,13),
(37,13),
(40,13),
(17,14),
(17,14),
(17,14),
(27,14),
(29,14),
(37,14),
(40,14),
(17,15),
(17,15),
(17,15),
(27,15),
(29,15),
(37,15),
(40,15),
(17,16),
(17,16),
(17,16),
(27,16),
(29,16),
(38,16),
(41,16),
(17,17),
(17,17),
(17,17),
(27,17),
(29,17),
(38,17),
(41,17),
(17,18),
(17,18),
(17,18),
(27,18),
(29,18),
(38,18),
(41,18),
(1,1),
(2,1),
(3,1),
(15,1),
(16,1),
(17,1),
(17,1),
(17,1),
(17,1),
(18,1),
(19,1),
(27,1),
(28,1),
(29,1),
(29,1),
(31,1),
(33,1),
(34,1),
(39,1),
(40,1),
(40,1),
(42,1),
(52,1),
(30,1),
(1,41),
(2,41),
(3,41);
/*!40000 ALTER TABLE `Parts` ENABLE KEYS */;

-- 
-- Definition of Users
-- 

DROP TABLE IF EXISTS `Users`;
CREATE TABLE IF NOT EXISTS `Users` (
  `id_User` int NOT NULL AUTO_INCREMENT,
  `Login` varchar(45) NOT NULL,
  `Role` varchar(45) NOT NULL,
  `Order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_User`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table Users
-- 

/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users`(`id_User`,`Login`,`Role`,`Order`) VALUES
(13,'Manager','Production Manager',NULL),
(22,'Assembler1','Assembler',NULL),
(23,'Assembler2','Assembler',NULL),
(24,'Assembler3','Assembler',NULL),
(25,'Representative1','Representative',NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2021-04-13 14:24:59
-- Total time: 0:0:0:0:763 (d:h:m:s:ms)
