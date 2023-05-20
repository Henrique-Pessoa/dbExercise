-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hogwartsUniversity
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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `idOcupacaoFk` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `idade` int NOT NULL,
  `senha` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` int NOT NULL,
  `cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  `nascimento` datetime DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `idOcupacaoFk` (`idOcupacaoFk`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idOcupacaoFk`) REFERENCES `ocupacao` (`idOcupacao`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,1,'henrique','oliveira',18,'hahaah','hahah@gmail.com',199995122,'2023-05-20 00:33:49',NULL),(2,2,'rodrigo','silva',18,'123456','rodrigo@gmail.com',192983322,'2023-05-20 00:33:49',NULL),(3,3,'Matheus','Fuzari',18,'fuzari123','fuzariInce@gmail.com',197392123,'2023-05-20 00:33:49',NULL),(4,4,'Kauan','Estoque',18,'kaua123','kauan@gmail.com',197197123,'2023-05-20 00:33:49',NULL),(5,5,'fabio','benedicto',18,'binhooo','binho@gmail.com',197197121,'2023-05-20 00:33:49',NULL),(6,6,'fagner','silva',21,'passwordss','fagner@gmail.com',197196213,'2023-05-20 00:33:49',NULL),(7,7,'lucas','fuzari',23,'adwad','lucas@gmail.com',197157122,'2023-05-20 00:33:49',NULL),(8,8,'luis','pinto',44,'12321321','luis@gmail.com',197152121,'2023-05-20 00:33:49',NULL),(9,9,'andre','cleive',17,'dajdwad21','dwadwa@gmail.com',194154121,'2023-05-20 00:33:49',NULL),(10,10,'solange','alemao',12,'2131023i21a','solange@gmail.com',197167111,'2023-05-20 00:33:49',NULL),(11,11,'ana','fadiga',42,'dadwad21','ana@gmail.com',194112121,'2023-05-20 00:33:49',NULL),(12,12,'yasmin','benedicto',42,'21312321','yasmin@gmail.com',194263121,'2023-05-20 00:33:49',NULL),(13,13,'felipe','pessoa',11,'2321aafwa21','felps@gmail.com',192155821,'2023-05-20 00:33:49',NULL),(14,1,'henrique','oliveira',18,'hahaah','hahah@gmail.com',199995122,'2023-05-20 00:39:10',NULL),(15,2,'rodrigo','silva',18,'123456','rodrigo@gmail.com',192983322,'2023-05-20 00:39:10',NULL),(16,3,'Matheus','Fuzari',18,'fuzari123','fuzariInce@gmail.com',197392123,'2023-05-20 00:39:10',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19 22:42:54
