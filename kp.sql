-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kp
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `dok_dl_procedury`
--

DROP TABLE IF EXISTS `dok_dl_procedury`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dok_dl_procedury` (
  `id_dokument` int NOT NULL AUTO_INCREMENT,
  `naimenovanie` varchar(1000) NOT NULL,
  PRIMARY KEY (`id_dokument`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dok_dl_procedury`
--

LOCK TABLES `dok_dl_procedury` WRITE;
/*!40000 ALTER TABLE `dok_dl_procedury` DISABLE KEYS */;
INSERT INTO `dok_dl_procedury` VALUES (1,'Паспорт'),(2,'Свидетельство о рождении ребенка до 14 лет'),(3,'Заявление'),(4,'Справка об освобождении – для лиц, освобожденных из мест лишения свободы'),(5,'Паспорт ребенка старше 14 лет'),(6,'Свидетельство об установлении отцовства – для женщин, родивших детей вне брака, в случае, если отцовство установлено'),(7,'Свидетельство о заключении брака – для лиц, состоящих в браке (для иностранных граждан и лиц без гражданства, которым предоставлены статус беженца или убежище в Республике Беларусь, – при его наличии)'),(8,'Копия решения суда о расторжении брака или свидетельство о расторжении брака – для лиц, расторгнувших брак'),(9,'Выписка из решения суда об усыновлении (удочерении) – для лиц, усыновивших (удочеривших) ребенка, не указанных в качестве родителя (родителей) ребенка в свидетельстве о рождении ребенка'),(10,'Копия решения местного исполнительного и распорядительного органа об установлении опеки – для лиц, назначенных опекунами ребенка'),(11,'Удостоверение инвалида – для инвалидов'),(12,'Удостоверение ребенка-инвалида – для детей-инвалидов'),(13,'Трудовая книжка (при ее наличии) – для неработающих граждан и неработающих членов семьи (выписка (копия) из трудовой книжки или иные документы, подтверждающие занятость, – для трудоспособных граждан)'),(14,'Сведения о полученных доходах каждого члена семьи за 12 месяцев, предшествующих месяцу обращения (для семей (граждан))'),(15,'Три экземпляра договора найма (аренды) или дополнительного соглашения к нему'),(16,'Технический паспорт и документ, подтверждающий право собственности на жилое помещение'),(17,'Письменное согласие всех собственников жилого помещения – в случае, если сдается жилое помещение, находящееся в общей собственности'),(18,'Документы, подтверждающие расходы на приобретение подгузников, установленные в соответствии с законодательством, с обязательным указанием наименования приобретенного товара в Республике Беларусь'),(19,'Индивидуальная программа реабилитации инвалида или заключение врачебно-консультационной комиссии государственной организации здравоохранения о нуждаемости в подгузниках'),(20,'Удостоверение на право представления интересов подопечного, доверенность, оформленная в порядке, установленном гражданским законодательством, документ, подтверждающий родственные отношения, – для лиц, представляющих интересы инвалида I группы'),(21,'Выписка из медицинских документов ребенка с рекомендациями врача-педиатра участкового (врача-педиатра, врача общей практики) по рациону питания ребенка'),(22,'Заключение врачебно-консультационной комиссии – в случае направления ребенка в государственный санаторный ясли-сад, государственный санаторный детский сад, санаторную группу государственного учреждения образования'),(23,'Заключение государственного центра коррекционно-развивающего обучения и реабилитации – в случае направления ребенка в группу интегрированного обучения и воспитания государственного учреждения образования, специальную группу государственного учреждения образования, государственное специальное дошкольное учреждение'),(24,'копия приказа об отпуске – в случае использования усыновителем (удочерителем) кратковременного отпуска без сохранения заработной платы продолжительностью не менее 30 календарных дней');
/*!40000 ALTER TABLE `dok_dl_procedury` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gragdanin`
--

DROP TABLE IF EXISTS `gragdanin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gragdanin` (
  `idgragdanin` int NOT NULL AUTO_INCREMENT,
  `familiya` varchar(100) NOT NULL,
  `imya` varchar(100) NOT NULL,
  `otchestvo` varchar(100) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgragdanin`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gragdanin`
--

LOCK TABLES `gragdanin` WRITE;
/*!40000 ALTER TABLE `gragdanin` DISABLE KEYS */;
INSERT INTO `gragdanin` VALUES (1,'Карнкевич ','Яна','Александровна','+375293194979','suicidalsun4@gmail.com'),(2,'Каранкевич','Татьяна','Владимировна','+375445634147','tkevich84@gmail.com'),(3,'Миргалеева','Людмила','Владимировна','+375296581719','luchia.85@mail.ru'),(4,'Мартинович','Эдуард','Станиславович','+375295660197','edicmarthinovich@gmail.com'),(5,'Платковская','Наталья','Аркадьевна','+375296596580','dezdemona.59@mail.ru'),(6,'Кудина','Ангелина','Сергеевна','+375336854952','angelic_meow@icloud.com'),(7,'Трифоненко ','Мария','Олеговна','+375259669562','machkatrof@gmail.com'),(8,'Карпов','Антон','Сергеевич','+375296586355','jhgfds@mail.ru');
/*!40000 ALTER TABLE `gragdanin` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `gragdanin_AFTER_INSERT` AFTER INSERT ON `gragdanin` FOR EACH ROW BEGIN
INSERT INTO user_log( u_date, operation,tabl) VALUES ( now(), 'ins','gragdanin');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `gragdanin_AFTER_UPDATE` AFTER UPDATE ON `gragdanin` FOR EACH ROW BEGIN
INSERT INTO user_log( u_date, operation,tabl) VALUES ( now(), 'upd','gragdanin');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `organistiya`
--

DROP TABLE IF EXISTS `organistiya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organistiya` (
  `idorganistiya` int NOT NULL AUTO_INCREMENT,
  `naimenovanie` varchar(100) NOT NULL,
  `adres` varchar(200) NOT NULL,
  `kontakty` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idorganistiya`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organistiya`
--

LOCK TABLES `organistiya` WRITE;
/*!40000 ALTER TABLE `organistiya` DISABLE KEYS */;
INSERT INTO `organistiya` VALUES (1,'РВЦ Первомайского района','ул. 50 лет ВЛКСМ 43','8 0225 73-15-19'),(2,'РВЦ Ленинского района','ул. Интернациональная 17','8 0225 71-82-74'),(3,'Агентство по государственной регистрации и земельному кадастру, Бобруйский филиал',' ул. Комсомольская 30','8 0225 70-84-63'),(4,'Отдел образования, спорта и туризма администрации Первомайского района г. Бобруйска','ул. Орджоникидзе 12','8 0225 78-60-30'),(5,'Администрация Ленинского района','ул. Советская 78',NULL),(6,'Бобруйский РОВД','пер. Котовского 25','8 0225 43-52-81'),(7,'Бобруйский городской исполнительный комитет','пл. Ленина 1',NULL);
/*!40000 ALTER TABLE `organistiya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otvet`
--

DROP TABLE IF EXISTS `otvet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otvet` (
  `idotvet` int NOT NULL AUTO_INCREMENT,
  `id_zapros` int NOT NULL,
  `data` date NOT NULL,
  `text` varchar(1000) NOT NULL,
  PRIMARY KEY (`idotvet`),
  KEY `with_zapros_idx` (`id_zapros`),
  CONSTRAINT `with_zapros` FOREIGN KEY (`id_zapros`) REFERENCES `zapros` (`idzapros`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otvet`
--

LOCK TABLES `otvet` WRITE;
/*!40000 ALTER TABLE `otvet` DISABLE KEYS */;
INSERT INTO `otvet` VALUES (1,1,'2022-10-17','Ответ на обработанный запрос выслан на почту'),(2,2,'2022-10-18','Данных по запросу не найдено'),(3,3,'2022-12-04','Данных по запросу не найдено'),(4,4,'2022-12-18','Ответ на обработанный запрос выслан на почту'),(5,5,'2022-12-18','Ответ на обработанный запрос выслан на почту'),(6,6,'2022-10-15','Ответ на обработанный запрос выслан на почту'),(7,7,'2022-12-18','Ответ на обработанный запрос выслан на почту');
/*!40000 ALTER TABLE `otvet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prav_akty`
--

DROP TABLE IF EXISTS `prav_akty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prav_akty` (
  `id_akt` int NOT NULL AUTO_INCREMENT,
  `naimenovanie` varchar(500) NOT NULL,
  PRIMARY KEY (`id_akt`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prav_akty`
--

LOCK TABLES `prav_akty` WRITE;
/*!40000 ALTER TABLE `prav_akty` DISABLE KEYS */;
INSERT INTO `prav_akty` VALUES (1,'Закон Республики Беларусь от 28 октября 2008 г. № 433-З «Об основах административных процедур»'),(2,'Директива Президента Республики Беларусь от 27 декабря 2006 г. № 2 «О дебюрократизации государственного аппарата и повышении качества обеспечения жизнедеятельности населения»'),(3,'Указ Президента Республики Беларусь от 26 апреля 2010 г. № 200 «Об административных процедурах, осуществляемых государственными органами и иными организациями по заявлениям граждан»'),(4,'Указ Президента Республики Беларусь от 25 июня 2021 г. № 240 «Об административных процедурах, осуществляемых в отношении субъектов хозяйствования»'),(5,'Указ Президента Республики Беларусь от 24 мая 2018 г. № 202 «О службе «одно окно»'),(6,'Постановление Совета Министров Республики Беларусь от 17 октября 2018 г. № 740 «О перечне административных процедур, прием заявлений и выдача решений по которым осуществляются через службу «одно окно»'),(7,'Постановление Совета Министров Республики Беларусь от 18 сентября 2020 г.№ 541 «О документах, запрашиваемых при осуществлении административных процедур»'),(8,' Постановление Совета Министров Республики Беларусь от 24 сентября 2021 г. № 548 «Об административных процедурах, осуществляемых в отношении субъектов хозяйствования»'),(9,'Постановление Совета Министров Республики Беларусь от 6 мая 2020 г. № 271 «Об изменении постановлений Совета Министров Республики Беларусь по вопросам осуществления административных процедур»'),(10,'Постановление Совета Министров Республики Беларусь от 17 октября 2018 г. № 741 «О некоторых мерах по реализации Указа Президента Республики Беларусь от 24 мая 2018 г. № 202»');
/*!40000 ALTER TABLE `prav_akty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priem`
--

DROP TABLE IF EXISTS `priem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priem` (
  `idpriem` int NOT NULL AUTO_INCREMENT,
  `id_prosedura` int NOT NULL,
  `id_sotrudnik` int NOT NULL,
  `id_gragdanin` int NOT NULL,
  `data` date NOT NULL,
  `time` time NOT NULL,
  `yavka` tinyint NOT NULL,
  `rechenie` varchar(100) NOT NULL,
  PRIMARY KEY (`idpriem`),
  KEY `with_prosedura1_idx` (`id_prosedura`),
  KEY `with_sotrudnik1_idx` (`id_sotrudnik`),
  KEY `with_gragdanin1_idx` (`id_gragdanin`),
  CONSTRAINT `with_gragdanin1` FOREIGN KEY (`id_gragdanin`) REFERENCES `gragdanin` (`idgragdanin`),
  CONSTRAINT `with_prosedura1` FOREIGN KEY (`id_prosedura`) REFERENCES `procedura` (`idprocedura`),
  CONSTRAINT `with_sotrudnik1` FOREIGN KEY (`id_sotrudnik`) REFERENCES `sotrudnik` (`idsotrudnik`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priem`
--

LOCK TABLES `priem` WRITE;
/*!40000 ALTER TABLE `priem` DISABLE KEYS */;
INSERT INTO `priem` VALUES (1,5,2,1,'2019-11-30','12:00:00',1,'Передано в обработку'),(2,2,1,3,'2022-10-15','15:15:00',1,'Отказано в связи с отсутсвием документов'),(3,1,3,4,'2022-11-02','09:30:00',1,'Передано в обработку'),(4,6,1,2,'2022-10-16','08:45:00',0,'Отсутствовал(а) на приеме'),(5,3,3,5,'2022-12-01','16:55:00',1,'Передано в обработку'),(6,4,7,3,'2022-12-17','10:30:00',1,'Передано в обработку'),(7,7,7,7,'2022-12-17','17:15:00',1,'Передано в обработку');
/*!40000 ALTER TABLE `priem` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `priem_AFTER_INSERT` AFTER INSERT ON `priem` FOR EACH ROW BEGIN
INSERT INTO user_log( u_date, operation,tabl) VALUES ( now(),'ins','priem');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `priem_AFTER_UPDATE` AFTER UPDATE ON `priem` FOR EACH ROW BEGIN
INSERT INTO user_log( u_date, operation,tabl) VALUES ( now(), 'upd','priem');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `procedura`
--

DROP TABLE IF EXISTS `procedura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procedura` (
  `idprocedura` int NOT NULL AUTO_INCREMENT,
  `nomer` varchar(100) NOT NULL,
  `kategory` varchar(200) NOT NULL,
  `naimenovanie` varchar(500) NOT NULL,
  `id_akt` int DEFAULT NULL,
  PRIMARY KEY (`idprocedura`),
  KEY `wich_akt_idx` (`id_akt`),
  CONSTRAINT `wich_akt` FOREIGN KEY (`id_akt`) REFERENCES `prav_akty` (`id_akt`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedura`
--

LOCK TABLES `procedura` WRITE;
/*!40000 ALTER TABLE `procedura` DISABLE KEYS */;
INSERT INTO `procedura` VALUES (1,'1.8','ЖИЛИЩНЫЕ ПРАВООТНОШЕНИЯ',' Регистрация договора найма (аренды) жилого помещения частного жилищного фонда и дополнительных соглашений к нему',4),(2,'2.33.1','ТРУД И СОЦИАЛЬНАЯ ЗАЩИТА','Принятие решения о предоставлении (об отказе в предоставлении) государственной адресной социальной помощи в виде:ежемесячного и (или) единовременного социальных пособий',2),(3,'2.33.2','ТРУД И СОЦИАЛЬНАЯ ЗАЩИТА','Принятие решения о предоставлении (об отказе в предоставлении) государственной адресной социальной помощи в виде:социального пособия для возмещения затрат на приобретение подгузников',2),(4,'2.33.4','ТРУД И СОЦИАЛЬНАЯ ЗАЩИТА','Принятие решения о предоставлении (об отказе в предоставлении) государственной адресной социальной помощи в виде:обеспечения продуктами питания детей первых двух лет жизни',2),(5,'6.6','ОБРАЗОВАНИЕ','Постановка на учет детей в целях получения ими дошкольного образования, специального образования на уровне дошкольного образования',1),(6,'6.7','ОБРАЗОВАНИЕ','Выдача направления в учреждение образования для освоения содержания образовательной программы дошкольного образования, образовательной программы специального образования на уровне дошкольного образования, образовательной программы специального образования на уровне дошкольного образования для лиц с интеллектуальной недостаточностью',1),(7,'4.2','УСЫНОВЛЕНИЕ (УДОЧЕРЕНИЕ). ОПЕКА, ПОПЕЧИТЕЛЬСТВО, ПАТРОНАЖ. ЭМАНСИПАЦИЯ',' Назначение ежемесячных денежных выплат на содержание усыновленных (удочеренных) детей',6);
/*!40000 ALTER TABLE `procedura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedury_dokumenty`
--

DROP TABLE IF EXISTS `procedury_dokumenty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procedury_dokumenty` (
  `idprocedury_dokumenty` int NOT NULL AUTO_INCREMENT,
  `id_procedury` int NOT NULL,
  `id_dokumenta` int NOT NULL,
  PRIMARY KEY (`idprocedury_dokumenty`),
  KEY `witc_procedura_idx` (`id_procedury`),
  KEY `with_dokument_idx` (`id_dokumenta`),
  CONSTRAINT `with_dokument` FOREIGN KEY (`id_dokumenta`) REFERENCES `dok_dl_procedury` (`id_dokument`),
  CONSTRAINT `with_procedura` FOREIGN KEY (`id_procedury`) REFERENCES `procedura` (`idprocedura`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedury_dokumenty`
--

LOCK TABLES `procedury_dokumenty` WRITE;
/*!40000 ALTER TABLE `procedury_dokumenty` DISABLE KEYS */;
INSERT INTO `procedury_dokumenty` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,2,13),(14,2,14),(15,1,3),(16,1,2),(17,1,15),(18,1,16),(19,1,17),(20,3,3),(21,3,1),(22,3,11),(23,3,12),(24,3,2),(25,3,18),(26,3,19),(27,3,20),(28,4,1),(29,4,2),(30,4,3),(31,4,21),(32,4,6),(33,4,7),(34,4,8),(35,4,9),(36,4,10),(37,4,13),(38,5,1),(39,5,2),(40,5,3),(41,6,1),(42,6,2),(43,6,3),(44,6,22),(45,6,23),(46,7,1),(47,7,2),(48,7,3),(49,7,9),(50,7,24);
/*!40000 ALTER TABLE `procedury_dokumenty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sotrudnik`
--

DROP TABLE IF EXISTS `sotrudnik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sotrudnik` (
  `idsotrudnik` int NOT NULL AUTO_INCREMENT,
  `Imya` varchar(100) NOT NULL,
  `Otchestbo` varchar(100) NOT NULL,
  `Familiya` varchar(100) NOT NULL,
  `dolgnost` varchar(50) NOT NULL,
  `rab_nomer` varchar(20) DEFAULT NULL,
  `stag` int DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `parol` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idsotrudnik`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sotrudnik`
--

LOCK TABLES `sotrudnik` WRITE;
/*!40000 ALTER TABLE `sotrudnik` DISABLE KEYS */;
INSERT INTO `sotrudnik` VALUES (1,'Елена','Эдуардовна','Рачинская','работник службы \"Одно окно\"','77-75-11',2,'9566@yopmail.com','1234'),(2,'Татьяна','Сергеевна','Юшкевич','работник службы \"Одно окно\"',' 77-75-04',5,'9379@yopmail.com','5678'),(3,'Светлана','Николаевна','Жукова','работник службы \"Одно окно\"','77-75-11',3,'9566@yopmail.com','9123'),(4,'Анжелика','Дмитриевна','Дубовик','заместитель начальника службы \"Одно окно\"','77 75 31',10,'pofouraddeyoi-9841@yopmail.com','4567'),(5,'Людмила','Ивановна','Литвина','начальник службы \"Одно окно\"','79-24-26',12,'siprojoyapi-9560@yopmail.com','8912'),(6,'Алёна','Сергеевна','Красова','работник службы \"Одно окно\"','77-75-11',1,'7749@yopmail.com','3456'),(7,'Екатерина','Андреевна','Барсукова','работник службы \"Одно окно\"',' 77-75-04',4,'xoiwetellilli-8260@yopmail.com','7891');
/*!40000 ALTER TABLE `sotrudnik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spravka`
--

DROP TABLE IF EXISTS `spravka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spravka` (
  `idspravka` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(1000) NOT NULL,
  PRIMARY KEY (`idspravka`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spravka`
--

LOCK TABLES `spravka` WRITE;
/*!40000 ALTER TABLE `spravka` DISABLE KEYS */;
INSERT INTO `spravka` VALUES (1,'Выдача справки о состоянии на учете нуждающихся в улучшении жилищных условий'),(2,'Выдача справки о начислении жилищной квоты'),(3,'Выдача справки о предоставлении (не предоставлении) одноразовой субсидии на строительство (реконструкцию) или приобретение жилого помещения'),(4,'Выдача справки о размере пособия на детей и периоде его выплаты'),(5,'Выдача справки о неполучении пособия на детей'),(6,'Выдача справки о неполучении пособия на детей'),(7,' Выдача справки о неполучении пенсии'),(8,'Выдача справки о размере пенсии'),(9,'Выдача справки о размере (неполучении) пособия по уходу за инвалидом 1-ой группы либо лицом, достигшим 80-летнего возраста'),(10,'Выдача справки о размере ежемесячного денежного содержания');
/*!40000 ALTER TABLE `spravka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spravka_gragdanin`
--

DROP TABLE IF EXISTS `spravka_gragdanin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spravka_gragdanin` (
  `idspravka_gragdanin` int NOT NULL AUTO_INCREMENT,
  `id_gragdanin` int NOT NULL,
  `id_spravka` int NOT NULL,
  `id_sotrudnika` int NOT NULL,
  PRIMARY KEY (`idspravka_gragdanin`),
  KEY `with_gragdanin_idx` (`id_gragdanin`),
  KEY `with_spravka_idx` (`id_spravka`),
  KEY `with_sotrudnik_idx` (`id_sotrudnika`),
  CONSTRAINT `with_gragdanin` FOREIGN KEY (`id_gragdanin`) REFERENCES `gragdanin` (`idgragdanin`),
  CONSTRAINT `with_sotrudnik` FOREIGN KEY (`id_sotrudnika`) REFERENCES `sotrudnik` (`idsotrudnik`),
  CONSTRAINT `with_spravka` FOREIGN KEY (`id_spravka`) REFERENCES `spravka` (`idspravka`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spravka_gragdanin`
--

LOCK TABLES `spravka_gragdanin` WRITE;
/*!40000 ALTER TABLE `spravka_gragdanin` DISABLE KEYS */;
INSERT INTO `spravka_gragdanin` VALUES (1,3,1,1),(2,1,4,1),(3,5,8,3),(4,2,9,2),(5,3,4,3),(6,4,3,2),(7,2,3,4);
/*!40000 ALTER TABLE `spravka_gragdanin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_log` (
  `iduser_log` int NOT NULL AUTO_INCREMENT,
  `u_date` varchar(45) DEFAULT NULL,
  `operation` varchar(45) DEFAULT NULL,
  `tabl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iduser_log`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
INSERT INTO `user_log` VALUES (1,'2022-12-18 11:35:55','ins','gragdanin'),(2,'2022-12-18 11:35:55','ins','gragdanin'),(3,'2022-12-18 11:35:55','ins','gragdanin'),(4,'2022-12-18 11:35:55','ins','gragdanin'),(5,'2022-12-18 11:35:55','ins','gragdanin'),(6,'2022-12-18 11:35:55','ins','gragdanin'),(7,'2022-12-18 11:35:55','ins','gragdanin'),(8,'2022-12-18 11:35:55','ins','gragdanin'),(9,'2022-12-18 11:35:56','ins','priem'),(10,'2022-12-18 11:35:56','ins','priem'),(11,'2022-12-18 11:35:56','ins','priem'),(12,'2022-12-18 11:35:56','ins','priem'),(13,'2022-12-18 11:35:56','ins','priem'),(14,'2022-12-18 11:35:56','ins','priem'),(15,'2022-12-18 11:35:56','ins','priem');
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zapros`
--

DROP TABLE IF EXISTS `zapros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zapros` (
  `idzapros` int NOT NULL AUTO_INCREMENT,
  `id_priem` int NOT NULL,
  `data` date NOT NULL,
  `text` varchar(1000) NOT NULL,
  `organistiya_idorganistiya` int NOT NULL,
  PRIMARY KEY (`idzapros`,`organistiya_idorganistiya`),
  KEY `with_priem_idx` (`id_priem`),
  KEY `fk_zapros_organistiya1_idx` (`organistiya_idorganistiya`),
  CONSTRAINT `fk_zapros_organistiya1` FOREIGN KEY (`organistiya_idorganistiya`) REFERENCES `organistiya` (`idorganistiya`),
  CONSTRAINT `with_priem` FOREIGN KEY (`id_priem`) REFERENCES `priem` (`idpriem`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zapros`
--

LOCK TABLES `zapros` WRITE;
/*!40000 ALTER TABLE `zapros` DISABLE KEYS */;
INSERT INTO `zapros` VALUES (1,2,'2022-10-15','Справка о составе семьи для заявителя',1),(2,2,'2022-10-15','Справка о получении пенсионных выплат',5),(3,5,'2022-12-01','Регистрация в качестве индивидуального предпринимателя',7),(4,7,'2022-12-17','Справка о составе семьи для заявителя',1),(5,6,'2022-12-17','Справка о получении пенсионных выплат',5),(6,1,'2022-10-15','Регистрация в качестве индивидуального предпринимателя',7),(7,6,'2022-12-17','Справка о составе семьи для заявителя',1);
/*!40000 ALTER TABLE `zapros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'kp'
--

--
-- Dumping routines for database 'kp'
--
/*!50003 DROP PROCEDURE IF EXISTS `detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detail`()
begin
select*from priem
where yavka='1';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filter`()
begin
select*from kp.priem where yavka=1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-03 21:15:47
