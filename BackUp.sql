-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: transacciones_banco
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `bancos`
--

DROP TABLE IF EXISTS `bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bancos` (
  `Cod_Banco` int NOT NULL,
  `Nombre_Banco` varchar(50) NOT NULL,
  `Oficial` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_Banco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bancos`
--

LOCK TABLES `bancos` WRITE;
/*!40000 ALTER TABLE `bancos` DISABLE KEYS */;
INSERT INTO `bancos` VALUES (7,'Banco Galicia','Carmen Castro'),(11,'Banco Nacion','Victor Silva'),(14,'Banco Provincia','Juan Perez'),(15,'ICBC','Carmen Castro'),(16,'Citibank','Jorge Torres'),(17,'BBVA','Ana Martinez'),(20,'Cordoba','Miguel Sanchez'),(27,'Supervielle','Luis Garcia'),(29,'Ciudad','Ana Martinez'),(34,'Patagonia','Juan Perez'),(44,'Hipotecario','Monica Ortega'),(45,'San Juan','Elena Vargas'),(65,'Municipal de Rosario','Pablo Ruiz'),(72,'Santander','Daniela Aguilar'),(83,'Chubut','Carmen Castro'),(86,'Santa Cruz','Ricardo Herrera'),(93,'La Pampa','Ana Martinez'),(94,'Corrientes','Juan Perez'),(97,'Provincia de Neuquen','Jorge Torres');
/*!40000 ALTER TABLE `bancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `Nro_Cliente` int NOT NULL AUTO_INCREMENT,
  `Raz_soc_Cliente` varchar(50) NOT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Nro_Cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (101,'Tremblay-Schultz','idurdy0@oakley.com'),(102,'Mann-Collins','ltorn1@yahoo.com'),(103,'Tillman, Goyette and Gusikowski','jlage2@godaddy.com'),(104,'Beatty, Schuppe and Hauck','vmanterfield3@cmu.edu'),(105,'MacGyver-Larkin','mhurle4@guardian.co.uk'),(106,'Dach Inc','kdamato5@cnet.com'),(107,'Langosh-Wolff','mfirle6@census.gov'),(108,'Rodriguez-Erdman','lmaren7@merriam-webster.com'),(109,'Kshlerin-Gottlieb','bbullene8@springer.com'),(110,'Considine, Welch and Waters','sfaas9@umich.edu'),(111,'Swift and Sons','atomasellia@foxnews.com'),(112,'Jones and Sons','sbugdaleb@topsy.com'),(113,'Ruecker Group','wbaumanc@statcounter.com'),(114,'Fahey-Bernhard','astagged@sciencedaily.com'),(115,'Kerluke Inc','tbettinsone@aol.com'),(116,'Bosco, Wisozk and Fahey','eerwinf@smh.com.au'),(117,'Kunze Group','lkeatong@soup.io'),(118,'McClure, Walter and Yundt','sissetth@hp.com'),(119,'Beier, Ebert and Block','adelaguai@hatena.ne.jp'),(120,'Beatty-Gerlach','haldrenj@cnet.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `Legajo` int NOT NULL AUTO_INCREMENT,
  `Nombre_Apellido` varchar(50) NOT NULL,
  `Antiguedad` int DEFAULT NULL,
  `Sector` varchar(50) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Legajo`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (201,'Lorena Vargas',10,'marketing','jgillbee0@telegraph.co.uk'),(202,'Mateo Rojas',2,'administrativo','kellcock1@microsoft.com'),(203,'Abril Soto',11,'administrativo','egawkes2@furl.net'),(204,'Santino Rios',10,'ventas','dditter3@senate.gov'),(205,'Renata Mendoza',23,'marketing','gmcgenis4@surveymonkey.com'),(206,'Emiliano Cordero',27,'ventas','wnunesnabarro5@google.fr'),(207,'Ariadna Guzman',35,'financiero','agreally6@addthis.com'),(208,'Valentino Paredes',32,'administrativo','mborrowman7@themeforest.net'),(209,'Ivanna Delgado',1,'ventas','cmcgookin8@amazon.com'),(210,'Benjamin Caceres',16,'financiero','vgrunnill9@squidoo.com'),(211,'Maria Zamora',23,'produccion','msailora@google.ca'),(212,'Santiago Herrera',34,'administrativo','bchisholmeb@51.la'),(213,'Camila Landa',25,'produccion','rbalamc@ihg.com'),(214,'Thiago Salazar',18,'produccion','bkolisd@dropbox.com'),(215,'Marina Rivas',24,'administrativo','hdodlee@arizona.edu'),(216,'Maximiliano Len',38,'ventas','bdrayf@phpbb.com'),(217,'Aitana Navarro',16,'financiero','fpadillag@twitpic.com'),(218,'Jeronimo Fuentes',34,'financiero','nambrozewiczh@walmart.com'),(219,'Alma Cervantes',17,'ventas','grawlcliffei@wikia.com'),(220,'Dante Sanchez',13,'financiero','bcolafatej@taobao.com');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_actualizar_sueldo_promedio` AFTER INSERT ON `empleados` FOR EACH ROW BEGIN
    UPDATE sectores
    SET sueldo_promedio = (
        SELECT AVG(facturas.importe_factura)
        FROM facturas
        JOIN empleados ON facturas.codigo = empleados.legajo
        WHERE empleados.sector = sectores.sector
    )
    WHERE sector = NEW.sector;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `enlace_transacciones_clientes_facturas`
--

DROP TABLE IF EXISTS `enlace_transacciones_clientes_facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enlace_transacciones_clientes_facturas` (
  `Nro_Movimiento` int NOT NULL,
  `Nro_Cliente` int NOT NULL,
  `Factura` int NOT NULL,
  PRIMARY KEY (`Nro_Movimiento`,`Nro_Cliente`,`Factura`),
  KEY `fk_Enlace_Transacciones_Clientes_Facturas_Clientes` (`Nro_Cliente`),
  KEY `fk_Enlace_Transacciones_Clientes_Facturas_Facturas` (`Factura`),
  CONSTRAINT `fk_Enlace_Transacciones_Clientes_Facturas_Clientes` FOREIGN KEY (`Nro_Cliente`) REFERENCES `clientes` (`Nro_Cliente`),
  CONSTRAINT `fk_Enlace_Transacciones_Clientes_Facturas_Facturas` FOREIGN KEY (`Factura`) REFERENCES `facturas` (`Factura`),
  CONSTRAINT `fk_Enlace_Transacciones_Clientes_Facturas_Transacciones` FOREIGN KEY (`Nro_Movimiento`) REFERENCES `transacciones` (`Nro_Movimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enlace_transacciones_clientes_facturas`
--

LOCK TABLES `enlace_transacciones_clientes_facturas` WRITE;
/*!40000 ALTER TABLE `enlace_transacciones_clientes_facturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `enlace_transacciones_clientes_facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enlace_transacciones_empleados`
--

DROP TABLE IF EXISTS `enlace_transacciones_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enlace_transacciones_empleados` (
  `Nro_Movimiento` int NOT NULL,
  `Legajo` int NOT NULL,
  PRIMARY KEY (`Nro_Movimiento`,`Legajo`),
  KEY `fk_Enlace_Transacciones_Empleados_Empleados` (`Legajo`),
  CONSTRAINT `fk_Enlace_Transacciones_Empleados_Empleados` FOREIGN KEY (`Legajo`) REFERENCES `empleados` (`Legajo`),
  CONSTRAINT `fk_Enlace_Transacciones_Empleados_Transacciones` FOREIGN KEY (`Nro_Movimiento`) REFERENCES `transacciones` (`Nro_Movimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enlace_transacciones_empleados`
--

LOCK TABLES `enlace_transacciones_empleados` WRITE;
/*!40000 ALTER TABLE `enlace_transacciones_empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `enlace_transacciones_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enlace_transacciones_proveedores_facturas`
--

DROP TABLE IF EXISTS `enlace_transacciones_proveedores_facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enlace_transacciones_proveedores_facturas` (
  `Nro_Movimiento` int NOT NULL,
  `Nro_Proveedor` int NOT NULL,
  `Factura` int NOT NULL,
  PRIMARY KEY (`Nro_Movimiento`,`Nro_Proveedor`,`Factura`),
  KEY `fk_Enlace_Transacciones_Proveedores_Facturas_Proveedores` (`Nro_Proveedor`),
  KEY `fk_Enlace_Transacciones_Proveedores_Facturas_Facturas` (`Factura`),
  CONSTRAINT `fk_Enlace_Transacciones_Proveedores_Facturas_Facturas` FOREIGN KEY (`Factura`) REFERENCES `facturas` (`Factura`),
  CONSTRAINT `fk_Enlace_Transacciones_Proveedores_Facturas_Proveedores` FOREIGN KEY (`Nro_Proveedor`) REFERENCES `proveedores` (`Nro_Proveedor`),
  CONSTRAINT `fk_Enlace_Transacciones_Proveedores_Facturas_Transacciones` FOREIGN KEY (`Nro_Movimiento`) REFERENCES `transacciones` (`Nro_Movimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enlace_transacciones_proveedores_facturas`
--

LOCK TABLES `enlace_transacciones_proveedores_facturas` WRITE;
/*!40000 ALTER TABLE `enlace_transacciones_proveedores_facturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `enlace_transacciones_proveedores_facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `Factura` int NOT NULL,
  `Codigo` int NOT NULL,
  `Importe_factura` decimal(12,2) NOT NULL,
  `Producto` varchar(50) NOT NULL,
  `Cantidad` int NOT NULL,
  PRIMARY KEY (`Factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (11941,117,76796.22,'harina de trigo',16),(13010,6,30877.99,'harina de avena',2),(19533,1,420361.12,'harina de maiz',2),(20904,15,236571.58,'harina de arroz',3),(21552,216,793502.71,'harina de avena',7),(21787,2055,883250.87,'harina de avena',6),(23624,210,258723.76,'harina de maiz',20),(27711,207,933852.27,'harina de avena',7),(31664,5,92942.73,'harina de maiz',103),(36398,111,522606.16,'harina de centeno',2),(37282,114,819238.13,'harina de arroz',18),(40819,113,807645.05,'harina de centeno',116),(41986,3,286054.91,'harina de maiz',119),(45128,114,776953.20,'harina de maiz',15),(45692,6,339871.81,'harina de avena',107),(45990,13,195312.81,'harina de trigo',10),(49064,210,681646.99,'harina de maiz',2),(50390,8,710882.29,'harina de maiz',6),(50534,203,203501.44,'harina de maiz',9),(50650,117,58821.52,'harina de trigo',10),(52367,112,842464.21,'harina de arroz',106),(53544,115,158749.60,'harina de centeno',8),(57026,116,942037.93,'harina de trigo',5),(65361,211,842544.70,'harina de trigo',109),(66475,201,771663.11,'harina de avena',105),(68691,217,293007.95,'harina de trigo',10),(71906,19,790737.37,'harina de maiz',16),(75362,109,335357.44,'harina de avena',106),(76175,13,705312.49,'harina de avena',3),(78282,14,803892.88,'harina de avena',109),(82456,118,315252.58,'harina de centeno',118),(83971,2,503925.93,'harina de avena',2),(88598,118,754084.37,'harina de avena',20),(89032,207,269824.61,'harina de arroz',9),(91263,10,758070.55,'harina de avena',12),(91915,9,326430.69,'harina de trigo',10),(92949,15,911304.99,'harina de arroz',20),(93606,206,686168.29,'harina de trigo',111),(94432,8,910698.06,'harina de maiz',112),(95664,16,148509.65,'harina de centeno',3);
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_actualizar_total_vendido` AFTER INSERT ON `facturas` FOR EACH ROW BEGIN
    UPDATE clientes
    SET total_vendido = (
        SELECT SUM(facturas.Importe_factura)
        FROM facturas
        WHERE facturas.codigo = clientes.Nro_Cliente
    )
    WHERE Nro_Cliente = NEW.codigo;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `medios_de_pago`
--

DROP TABLE IF EXISTS `medios_de_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medios_de_pago` (
  `Codigo_Pago` int NOT NULL AUTO_INCREMENT,
  `MEdio_Pago` varchar(50) NOT NULL,
  PRIMARY KEY (`Codigo_Pago`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medios_de_pago`
--

LOCK TABLES `medios_de_pago` WRITE;
/*!40000 ALTER TABLE `medios_de_pago` DISABLE KEYS */;
INSERT INTO `medios_de_pago` VALUES (1,'Tarjeta de credito'),(2,'Tarjeta de debito'),(3,'Transferencia bancaria'),(4,'Efectivo');
/*!40000 ALTER TABLE `medios_de_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `Nro_Proveedor` int NOT NULL AUTO_INCREMENT,
  `Raz_soc_Prov` varchar(50) NOT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Nro_Proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Cremin LLC','ctocher0@chicagotribune.com'),(2,'Jaskolski LLC','amenezes1@uol.com.br'),(3,'Labadie LLC','ncosely2@instagram.com'),(4,'Streich LLC','tpaschek3@elegantthemes.com'),(5,'Leannon-Wuckert','whyne4@discuz.net'),(6,'Zboncak-Grant','estanfield5@joomla.org'),(7,'Haley LLC','fmccree6@linkedin.com'),(8,'Kohler, Pfeffer and Harris','dlitster7@reference.com'),(9,'Schmeler-Gerlach','mrudgley8@mediafire.com'),(10,'Rosenbaum-Jacobson','pleithharvey9@joomla.org'),(11,'Frami, Mueller and Wolff','lmitchalla@vinaora.com'),(12,'Gutmann-Bernhard','ejurczykb@ning.com'),(13,'Fritsch, Wisozk and Krajcik','fhanscomc@ovh.net'),(14,'Kessler-Schaefer','kmeadd@buzzfeed.com'),(15,'Runte-Zulauf','jscamadene@cbc.ca'),(16,'Gutmann, Rolfson and Corwin','lterbeekf@mapquest.com'),(17,'Flatley, Lueilwitz and Lowe','sdabbesg@craigslist.org'),(18,'Wunsch-Altenwerth','temmsh@si.edu'),(19,'Gleason, Tromp and Crooks','jsarrelli@flickr.com'),(20,'Rodriguez Inc','khanveyj@spotify.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacciones` (
  `Nro_Movimiento` int NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Importe` decimal(12,2) NOT NULL,
  `Medio_Pago` int NOT NULL,
  `Codigo_Banco` int NOT NULL,
  `Codigo` int NOT NULL,
  PRIMARY KEY (`Nro_Movimiento`),
  UNIQUE KEY `Nro_Movimiento` (`Nro_Movimiento`),
  KEY `FK_TRANSACCIONES_MEDIODEPAGO` (`Medio_Pago`),
  KEY `FK_TRANSACCIONES_BANCOS` (`Codigo_Banco`),
  CONSTRAINT `FK_TRANSACCIONES_BANCOS` FOREIGN KEY (`Codigo_Banco`) REFERENCES `bancos` (`Cod_Banco`),
  CONSTRAINT `FK_TRANSACCIONES_MEDIODEPAGO` FOREIGN KEY (`Medio_Pago`) REFERENCES `medios_de_pago` (`Codigo_Pago`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (1,'2024-05-25',347676.67,4,44,215),(2,'2024-05-21',105846.15,2,17,219),(3,'2024-05-19',860566.12,2,65,204),(4,'2024-05-15',456908.42,1,94,110),(5,'2024-05-16',91523.65,2,94,112),(6,'2024-05-25',722338.94,1,20,206),(7,'2024-05-06',83437.97,3,34,16),(8,'2024-05-16',501651.84,4,29,17),(9,'2024-05-25',885120.34,2,29,204),(10,'2024-05-09',434273.65,1,15,119),(11,'2024-05-28',762047.68,3,11,116),(12,'2024-05-24',904043.64,1,14,110),(13,'2024-05-20',902171.82,2,15,14),(14,'2024-05-11',465250.10,4,27,208),(15,'2024-05-13',319253.58,1,72,203),(16,'2024-05-21',315006.13,4,14,210),(17,'2024-05-06',120277.64,2,45,219),(18,'2024-05-28',695073.42,2,45,105),(19,'2024-05-03',207695.33,3,83,10),(20,'2024-05-11',94894.29,2,45,14),(21,'2024-05-05',323376.18,1,27,202),(22,'2024-05-24',985480.05,4,65,114),(23,'2024-05-18',254532.32,4,29,204),(24,'2024-05-01',460898.14,4,44,113),(25,'2024-05-06',811213.79,3,29,104),(26,'2024-05-11',585420.72,2,94,7),(27,'2024-05-13',106941.17,3,20,9),(28,'2024-05-14',834129.33,1,20,11),(29,'2024-05-06',223643.42,4,97,114),(30,'2024-05-02',891944.69,2,14,12);
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trigger_actualizar_tablas_enlace` AFTER INSERT ON `transacciones` FOR EACH ROW BEGIN
    INSERT INTO Enlace_Transacciones_Clientes (Nro_Movimiento, Nro_Cliente, Factura)
    VALUES (NEW.Nro_Movimiento, NEW.Codigo, (
        SELECT Factura
        FROM facturas
        WHERE codigo = NEW.Codigo
    ));

    INSERT INTO Enlace_Transacciones_Empleados (Nro_Movimiento, Legajo_Empleado)
    VALUES (NEW.Nro_Movimiento, (
        SELECT Legajo
        FROM empleados
        WHERE codigo = NEW.Codigo
    ));
    INSERT INTO Enlace_Transacciones_Productos (Nro_Movimiento, Codigo_Producto)
    VALUES (NEW.Nro_Movimiento, (
        SELECT Codigo_Producto
        FROM productos
        WHERE codigo = NEW.Codigo
    ));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `view_bancos_mas_usados`
--

DROP TABLE IF EXISTS `view_bancos_mas_usados`;
/*!50001 DROP VIEW IF EXISTS `view_bancos_mas_usados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_bancos_mas_usados` AS SELECT 
 1 AS `Nombre_Banco`,
 1 AS `Bancos_mas_usados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_mejores_clientes`
--

DROP TABLE IF EXISTS `view_mejores_clientes`;
/*!50001 DROP VIEW IF EXISTS `view_mejores_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_mejores_clientes` AS SELECT 
 1 AS `Raz_soc_Cliente`,
 1 AS `total_vendido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_proveedores_mayores_compras`
--

DROP TABLE IF EXISTS `view_proveedores_mayores_compras`;
/*!50001 DROP VIEW IF EXISTS `view_proveedores_mayores_compras`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_proveedores_mayores_compras` AS SELECT 
 1 AS `Raz_soc_Prov`,
 1 AS `Producto`,
 1 AS `total_comprado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_top_medios_pago`
--

DROP TABLE IF EXISTS `view_top_medios_pago`;
/*!50001 DROP VIEW IF EXISTS `view_top_medios_pago`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_top_medios_pago` AS SELECT 
 1 AS `Medio_pago`,
 1 AS `top_medios_pago`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'transacciones_banco'
--

--
-- Dumping routines for database 'transacciones_banco'
--
/*!50003 DROP FUNCTION IF EXISTS `Sueldo_Promedio_sector` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Sueldo_Promedio_sector`(Sector VARCHAR(50)) RETURNS decimal(12,2)
    READS SQL DATA
BEGIN
	DECLARE sueldo_promedio DECIMAL (12,2);	
    SELECT AVG(facturas.importe_factura) INTO sueldo_promedio
    FROM facturas
    JOIN empleados ON facturas.codigo = empleados.legajo 
    WHERE empleados.sector = sector;
    RETURN sueldo_promedio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Ventas_por_fecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Ventas_por_fecha`(fecha DATE) RETURNS decimal(12,2)
    READS SQL DATA
    DETERMINISTIC
BEGIN
	DECLARE Ventas DECIMAL (12,2);
    SELECT SUM(transacciones.importe) INTO Ventas
    FROM transacciones
    Where transacciones.fecha = Fecha;
    RETURN Ventas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VerificarAntiguedadEmpleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `VerificarAntiguedadEmpleado`(
    IN 	p_Legajo INT,
    IN 	p_antiguedad_deseada INT,
    OUT p_Mensaje VARCHAR(50)
)
BEGIN
    DECLARE antiguedadEmpleado INT;
    SELECT Antiguedad INTO antiguedadEmpleado
    FROM Empleados
    WHERE Legajo = p_Legajo;
    IF antiguedadEmpleado < p_antiguedad_deseada THEN
        SET p_Mensaje = 'Menor antiguedad';
    ELSE
        SET p_Mensaje = 'Mayor antiguedad';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VisualizarTransaccionYFactura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `VisualizarTransaccionYFactura`(
    IN p_Nro_Movimiento INT
)
BEGIN
    SELECT transacciones.Nro_Movimiento,transacciones.Fecha,transacciones.Importe,medios_de_pago.Medio_Pago,bancos.Nombre_Banco,transacciones.Codigo
    FROM Transacciones
    JOIN Medios_de_Pago ON transacciones.Medio_Pago = medios_de_pago.Codigo_Pago
    JOIN Bancos ON transacciones.Codigo_Banco = bancos.Cod_Banco
    WHERE transacciones.Nro_Movimiento = p_Nro_Movimiento;

    SELECT 
        facturas.Factura, 
        facturas.Codigo, 
        facturas.Importe_factura, 
        facturas.Producto, 
        facturas.Cantidad
    FROM Facturas
    WHERE facturas.Factura IN (
        SELECT Factura 
        FROM Enlace_Transacciones_Clientes_Facturas 
        WHERE Nro_Movimiento = p_Nro_Movimiento
        UNION
        SELECT Factura 
        FROM Enlace_Transacciones_Proveedores_Facturas 
        WHERE Nro_Movimiento = p_Nro_Movimiento
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_bancos_mas_usados`
--

/*!50001 DROP VIEW IF EXISTS `view_bancos_mas_usados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_bancos_mas_usados` AS select `bancos`.`Nombre_Banco` AS `Nombre_Banco`,sum(`transacciones`.`Importe`) AS `Bancos_mas_usados` from (`bancos` join `transacciones` on((`bancos`.`Cod_Banco` = `transacciones`.`Codigo_Banco`))) group by `bancos`.`Nombre_Banco` order by `Bancos_mas_usados` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_mejores_clientes`
--

/*!50001 DROP VIEW IF EXISTS `view_mejores_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_mejores_clientes` AS select `clientes`.`Raz_soc_Cliente` AS `Raz_soc_Cliente`,sum(`facturas`.`Importe_factura`) AS `total_vendido` from (`clientes` left join `facturas` on((`clientes`.`Nro_Cliente` = `facturas`.`Codigo`))) group by `clientes`.`Raz_soc_Cliente` order by `total_vendido` desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_proveedores_mayores_compras`
--

/*!50001 DROP VIEW IF EXISTS `view_proveedores_mayores_compras`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_proveedores_mayores_compras` AS select `proveedores`.`Raz_soc_Prov` AS `Raz_soc_Prov`,`facturas`.`Producto` AS `Producto`,sum(`facturas`.`Importe_factura`) AS `total_comprado` from (`proveedores` left join `facturas` on((`proveedores`.`Nro_Proveedor` = `facturas`.`Codigo`))) group by `proveedores`.`Raz_soc_Prov`,`facturas`.`Producto` order by `total_comprado` desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_top_medios_pago`
--

/*!50001 DROP VIEW IF EXISTS `view_top_medios_pago`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_top_medios_pago` AS select `medios_de_pago`.`MEdio_Pago` AS `Medio_pago`,count(`transacciones`.`Medio_Pago`) AS `top_medios_pago` from (`medios_de_pago` join `transacciones` on((`medios_de_pago`.`Codigo_Pago` = `transacciones`.`Medio_Pago`))) group by `medios_de_pago`.`MEdio_Pago` */;
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

-- Dump completed on 2024-08-25 14:55:51
