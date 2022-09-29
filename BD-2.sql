-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: infosura
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
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargos` (
  `idcargos` int NOT NULL AUTO_INCREMENT,
  `nombreCargo` varchar(100) NOT NULL,
  `descripcionCargo` varchar(500) NOT NULL,
  PRIMARY KEY (`idcargos`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (1,'Gerente','1'),(2,'Sub-Gerente','2'),(3,'Analista Administrativo','3'),(4,'Analista de Calidad','4'),(5,'Analista de Talento Humano','5'),(6,'Jefe de Personal','6'),(7,'jefe de Planta','7'),(8,'Conductor','8'),(9,'Auxiliar de Produccion','9'),(10,'Auxiliar de Transporte','10'),(11,'Analista de Inventarios','11'),(12,'Vendedor','12');
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `descCategoria` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'120 cc'),(2,'250 cc'),(3,'450 cc'),(4,'500 cc'),(5,'700 cc'),(6,'750 cc'),(7,'800 cc'),(8,'900 cc '),(9,'1000 cc'),(10,'2000 cc'),(11,'3000 cc'),(12,'5000 cc'),(13,'20 Litros'),(14,'18 Kilo'),(15,'18 Litros'),(16,'17 Litros'),(17,'17 Kilos'),(18,'Hidrogenado'),(19,'Mantequilla');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idClientes` int NOT NULL AUTO_INCREMENT,
  `tipoDocumentoCliente` enum('TI','CC') NOT NULL,
  `numDocumentoCliente` varchar(20) NOT NULL,
  `nomCliente` varchar(45) NOT NULL,
  `apelCliente` varchar(45) NOT NULL,
  `direccionCliente` varchar(100) NOT NULL,
  `telCliente` varchar(45) NOT NULL,
  `mailCliente` varchar(45) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `productos_idProductos` int NOT NULL,
  PRIMARY KEY (`idClientes`),
  KEY `productos_idProductos` (`productos_idProductos`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`productos_idProductos`) REFERENCES `productos` (`idProductos`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (4,'CC','1042212894','JAILER\r\n','ALARCON FAJARDO ','DIAGONAL 5-78-96','601000145','JAILER@GMAIL.COM','2022-06-15','2022-06-15',5),(6,'CC','79428693\r\n','CARLOS JULIO\r\n','ALEJO MENDIVELSO ','CALLE 54-96-01','7158554','CARLOSJULIO@GMAIL.COM','2022-06-15','2022-06-15',1),(9,'CC','1000125517','CRISTIAN CAMILO\r\n','ANGARITA TORRES ','tv 75-96-25','6017812587','angarita05àgmail.com','2022-06-15','2022-06-15',4);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `idCompras` int NOT NULL AUTO_INCREMENT,
  `proveedor_idProveedor` int NOT NULL,
  `productos_idProductos` int NOT NULL,
  `unidadMedida_idunidadMedida` int NOT NULL,
  `fechaCompra` date NOT NULL,
  `numfacturaCompra` varchar(45) NOT NULL,
  `cantidadCompra` int NOT NULL,
  `valorCompra` decimal(10,0) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`idCompras`),
  KEY `unidadMedida_idunidadMedida` (`unidadMedida_idunidadMedida`),
  KEY `productos_idProductos` (`productos_idProductos`),
  KEY `proveedor_idProveedor` (`proveedor_idProveedor`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`unidadMedida_idunidadMedida`) REFERENCES `unidadmedida` (`idunidadMedida`),
  CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`productos_idProductos`) REFERENCES `productos` (`idProductos`),
  CONSTRAINT `compras_ibfk_3` FOREIGN KEY (`proveedor_idProveedor`) REFERENCES `proveedor` (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (2,1,1,1,'2022-06-15','001',1,1000,'2022-06-15','2022-06-15'),(4,3,5,4,'2022-06-15','002',15,15000,'2022-06-15','2022-06-15'),(5,2,4,3,'2022-06-15','003',1,1500,'2022-06-15','2022-06-15');
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `idEmpresa` int NOT NULL AUTO_INCREMENT,
  `tipoDocumento` enum('CC','NIT') NOT NULL,
  `numDocumento` varchar(20) NOT NULL,
  `nombreEmpresa` varchar(100) NOT NULL,
  `telEmpresa` varchar(20) NOT NULL,
  `mailEmpresa` varchar(70) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `created_at` varchar(45) NOT NULL,
  `updated_at` varchar(45) NOT NULL,
  PRIMARY KEY (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'NIT','900287157-7','Cartones America','6015874785','clientes@cartonesamericas.com','calle 95-10-96','15 junio 2022','15 junio 2022'),(2,'NIT','870581258-7','EmvasesSanvic','3102587415','ladinoandres@homtail.com','carrera 72g # 85-01','15 junio 2022','15 junio 2022'),(3,'CC','2155585','Bidones','2155568','darioloco@gmail.com','carrera 95-65-45','15 junio 2022','15 junio 2022');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entregas`
--

DROP TABLE IF EXISTS `entregas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entregas` (
  `Identrega` int NOT NULL AUTO_INCREMENT,
  `vehiculos_idvehiculos` int NOT NULL,
  `usuarios_idUsuario_conductor` int NOT NULL,
  `fechaEntrega` date NOT NULL,
  `clientes_idClientes` int NOT NULL,
  `direccionDestino` varchar(100) NOT NULL,
  `estadoEntrega` enum('En Ruta','Entregado','Devuelto') NOT NULL,
  PRIMARY KEY (`Identrega`),
  KEY `clientes_idClientes` (`clientes_idClientes`),
  KEY `vehiculos_idvehiculos` (`vehiculos_idvehiculos`),
  KEY `usuarios_idUsuario_conductor` (`usuarios_idUsuario_conductor`),
  CONSTRAINT `entregas_ibfk_1` FOREIGN KEY (`clientes_idClientes`) REFERENCES `clientes` (`idClientes`),
  CONSTRAINT `entregas_ibfk_2` FOREIGN KEY (`vehiculos_idvehiculos`) REFERENCES `vehiculos` (`idvehiculos`),
  CONSTRAINT `entregas_ibfk_3` FOREIGN KEY (`usuarios_idUsuario_conductor`) REFERENCES `usuarios` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entregas`
--

LOCK TABLES `entregas` WRITE;
/*!40000 ALTER TABLE `entregas` DISABLE KEYS */;
INSERT INTO `entregas` VALUES (1,7,12,'2022-06-30',6,'CALLE 76 # 46-96','En Ruta'),(3,2,12,'2022-06-30',4,'DIAGONAL 15# 65-96','Devuelto');
/*!40000 ALTER TABLE `entregas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProductos` int NOT NULL AUTO_INCREMENT,
  `codProducto` varchar(100) NOT NULL,
  `nombreProducto` varchar(45) NOT NULL,
  `valorProducto` decimal(10,0) NOT NULL,
  `stock` int NOT NULL,
  `imagen` blob NOT NULL,
  `fechaVencimiento` date NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `categoria_idCategoria` int NOT NULL,
  `unidadMedida_idunidadMedida` int NOT NULL,
  PRIMARY KEY (`idProductos`),
  KEY `categoria_idCategoria` (`categoria_idCategoria`),
  KEY `unidadMedida_idunidadMedida` (`unidadMedida_idunidadMedida`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_idCategoria`) REFERENCES `categoria` (`idCategoria`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`unidadMedida_idunidadMedida`) REFERENCES `unidadmedida` (`idunidadMedida`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'001','aceite',1000,20,'','2023-06-15','2022-06-15','2022-06-15',1,1),(4,'002','aceite',2000,100,'','2023-06-15','2022-06-15','2022-06-15',2,1),(5,'003','hidrogenado',5000,120,'','2023-06-15','0000-00-00','0000-00-00',18,2);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_has_ventas`
--

DROP TABLE IF EXISTS `productos_has_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_has_ventas` (
  `idproductosVentas` int NOT NULL AUTO_INCREMENT,
  `ventas_idVentas` int NOT NULL,
  `cantidad` int NOT NULL,
  `productos_idProductos` int NOT NULL,
  `valorventaProducto` decimal(10,0) NOT NULL,
  `valorTotalProducto` decimal(10,0) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`idproductosVentas`),
  KEY `productos_idProductos` (`productos_idProductos`),
  KEY `ventas_idVentas` (`ventas_idVentas`),
  CONSTRAINT `productos_has_ventas_ibfk_1` FOREIGN KEY (`productos_idProductos`) REFERENCES `productos` (`idProductos`),
  CONSTRAINT `productos_has_ventas_ibfk_2` FOREIGN KEY (`ventas_idVentas`) REFERENCES `ventas` (`idVentas`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_has_ventas`
--

LOCK TABLES `productos_has_ventas` WRITE;
/*!40000 ALTER TABLE `productos_has_ventas` DISABLE KEYS */;
INSERT INTO `productos_has_ventas` VALUES (1,2,20,4,1000,20000,'2022-06-22','2022-06-22'),(2,2,15,5,1500,22500,'2022-06-22','2022-06-22'),(3,5,14,5,100000,1400000,'2022-06-15','2022-06-15'),(4,3,15,4,100000,1500000,'0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `productos_has_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `idProveedor` int NOT NULL AUTO_INCREMENT,
  `tipoDocumento` enum('CC','CE','NIT') NOT NULL,
  `numDocumento` varchar(20) NOT NULL,
  `nomProveedor` varchar(45) NOT NULL,
  `telProveedor` varchar(20) NOT NULL,
  `mailProvvedor` varchar(100) NOT NULL,
  `direccionProveedor` varchar(45) NOT NULL,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'NIT','0000000','soluciones en cartones','000000','cartones@cartones.co','calle 95-65-85'),(2,'NIT','1111111','frascos de bogota','111111','frascosbogota@gmail.com','carrerA 42-85-96'),(3,'CC','2222222','aceites la sevillana','222222','aceitessoya@sevillana.com','avenida boyaca 75-96');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `idRol` int NOT NULL AUTO_INCREMENT,
  `descRol` varchar(45) NOT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Administrador'),(2,'Jefe de Sistema'),(3,'Inventarios'),(4,'Auxiliar de Produccion'),(5,'Axuiliar de Transporte'),(6,'Conductor');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turnos`
--

DROP TABLE IF EXISTS `turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turnos` (
  `idTurnos` int NOT NULL,
  `nombreTurno` varchar(50) NOT NULL,
  `descripcionTurno` varchar(500) NOT NULL,
  PRIMARY KEY (`idTurnos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` VALUES (0,'Diurnos','06:00 // 14:00 Horas'),(1,'Nocturnos','14:00 // 22:00 Horas');
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turnos_has_usuarios_operador`
--

DROP TABLE IF EXISTS `turnos_has_usuarios_operador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turnos_has_usuarios_operador` (
  `IdTurnos_has_usuarios_operadorcol` int NOT NULL AUTO_INCREMENT,
  `Turnos_idTurnos` int NOT NULL,
  `usuarios_idUsuario` int NOT NULL,
  `fechaInicial` date NOT NULL,
  `FechaFinal` date NOT NULL,
  PRIMARY KEY (`IdTurnos_has_usuarios_operadorcol`),
  KEY `usuarios_idUsuario` (`usuarios_idUsuario`),
  KEY `Turnos_idTurnos` (`Turnos_idTurnos`),
  CONSTRAINT `turnos_has_usuarios_operador_ibfk_1` FOREIGN KEY (`usuarios_idUsuario`) REFERENCES `usuarios` (`idUsuario`),
  CONSTRAINT `turnos_has_usuarios_operador_ibfk_2` FOREIGN KEY (`Turnos_idTurnos`) REFERENCES `turnos` (`idTurnos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos_has_usuarios_operador`
--

LOCK TABLES `turnos_has_usuarios_operador` WRITE;
/*!40000 ALTER TABLE `turnos_has_usuarios_operador` DISABLE KEYS */;
INSERT INTO `turnos_has_usuarios_operador` VALUES (2,0,9,'2022-06-13','2022-06-19'),(3,1,11,'2022-06-13','2022-06-19');
/*!40000 ALTER TABLE `turnos_has_usuarios_operador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidadmedida`
--

DROP TABLE IF EXISTS `unidadmedida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidadmedida` (
  `idunidadMedida` int NOT NULL AUTO_INCREMENT,
  `descUnidad` varchar(50) NOT NULL,
  PRIMARY KEY (`idunidadMedida`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidadmedida`
--

LOCK TABLES `unidadmedida` WRITE;
/*!40000 ALTER TABLE `unidadmedida` DISABLE KEYS */;
INSERT INTO `unidadmedida` VALUES (1,'Centimetros cubicos'),(2,'Kilos'),(3,'Litros'),(4,'Cajas');
/*!40000 ALTER TABLE `unidadmedida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `tipoDocumentoUsuario` enum('TI','CC') NOT NULL,
  `numDocumentoUsuario` varchar(20) NOT NULL,
  `nomUsuario` varchar(45) NOT NULL,
  `apelCliente` varchar(45) NOT NULL,
  `telUsuario` varchar(45) NOT NULL,
  `mailUsuario` int NOT NULL,
  `rol_idRol` int NOT NULL,
  `cargos_idcargos` int NOT NULL,
  `password` varchar(100) NOT NULL,
  `confpassword` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `rol_idRol` (`rol_idRol`),
  KEY `cargos_idcargos` (`cargos_idcargos`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol_idRol`) REFERENCES `rol` (`idRol`),
  CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`cargos_idcargos`) REFERENCES `cargos` (`idcargos`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (3,'CC','3456','Admin','Admin','12345',0,1,1,'3456','3456',NULL,NULL),(9,'CC','1070592323','jorge luis','forero herrera','3153121586',0,2,6,'1070592323','1070592323','2022-06-15 23:33:19','2022-06-15 23:33:21'),(11,'CC','1016001672','JHOJAN','AGUDELO QUINTERO DIEGO ','3004587452',0,4,9,'1016001672','1016001672','2022-06-15 23:44:26','2022-06-15 23:44:33'),(12,'CC','1109298221','CARLOS ALFREDO','ANGEL ANGEL ','3158742585',0,5,10,'1109298221','1109298221','2022-06-15 23:44:26','2022-06-15 23:44:33'),(13,'CC','1000773953','DIANA PAOLA','BARRIOS RAMIREZ ','3015478524',0,4,9,'1000773953','1000773953','2022-06-15 23:44:26','2022-06-15 23:44:33'),(15,'CC','1072466782\r\n','NESTOR IVAN\r\n','BOHORQUEZ ENCISO ','3045877457',0,3,3,'1072466782\r\n','1072466782\r\n','2022-06-15 23:44:26','2022-06-15 23:44:33'),(16,'CC','51557203\r\n','LUZ ANA','HERRERA GUZMAN ','3502155568',0,1,1,'51557203\r\n','51557203\r\n','2022-06-15 23:44:26',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculos` (
  `idvehiculos` int NOT NULL AUTO_INCREMENT,
  `placa` varchar(45) NOT NULL,
  PRIMARY KEY (`idvehiculos`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculos`
--

LOCK TABLES `vehiculos` WRITE;
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
INSERT INTO `vehiculos` VALUES (1,'szz750'),(2,'eer580'),(3,'rff140'),(4,'wll890'),(5,'hit740'),(6,'dea666'),(7,'ill650');
/*!40000 ALTER TABLE `vehiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `idVentas` int NOT NULL AUTO_INCREMENT,
  `fechaVenta` datetime NOT NULL,
  `valorTotalVenta` decimal(10,0) NOT NULL,
  `empresa_idEmpresa` int NOT NULL,
  `clientes_idClientes` int NOT NULL,
  PRIMARY KEY (`idVentas`),
  KEY `empresa_idEmpresa` (`empresa_idEmpresa`),
  KEY `clientes_idClientes` (`clientes_idClientes`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`empresa_idEmpresa`) REFERENCES `empresa` (`idEmpresa`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`clientes_idClientes`) REFERENCES `clientes` (`idClientes`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (2,'2022-06-15 19:57:46',20000,1,6),(3,'2022-06-16 19:58:03',50000,1,6),(5,'2022-06-17 19:58:19',60000,3,9);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-29 13:17:52
