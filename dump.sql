-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: AndroidGoServer
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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


CREATE DATABASE AndroidGoServer;

USE AndroidGoServer;


--
-- Table structure for table `User_t`
--

DROP TABLE IF EXISTS `User_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_t`
--

LOCK TABLES `User_t` WRITE;
/*!40000 ALTER TABLE `User_t` DISABLE KEYS */;
INSERT INTO `User_t` VALUES (1,'saisai',25,'shanghai'),(2,'zhangsan',12,'shanghai');
/*!40000 ALTER TABLE `User_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auths`
--

DROP TABLE IF EXISTS `user_auths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `identify_type` varchar(50) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `credential` varchar(100) NOT NULL,
  `latestlogintime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `registertime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auths`
--

LOCK TABLES `user_auths` WRITE;
/*!40000 ALTER TABLE `user_auths` DISABLE KEYS */;
INSERT INTO `user_auths` VALUES (1,'5b73d1056ed11b3e4ceb54c1','email','375542326@qq.com','saisai@@',NULL,NULL,NULL),(13,'5b7635976ed11b464cfd793d','phone','9789741461','saisai@@',NULL,NULL,NULL),(14,'5b76362a6ed11b3d74160cf1','phone','9789741461','saisai@@',NULL,NULL,NULL),(15,'5b76394a6ed11b392015b561','phone','9789741461','saisai@@',NULL,NULL,NULL),(16,'5b76397b6ed11b392015b562','phone','9789741461','saisai@@',NULL,NULL,NULL),(17,'5b763a176ed11b1fe827c66d','phone','9789741461','saisai@@',NULL,NULL,'2018-08-17 10:59:35'),(18,'5b763ad66ed11b357450c281','phone','9789741461','saisai@@',NULL,NULL,'2018-08-17 11:02:46'),(19,'5b765f896ed11b29a406a8e9','email','saisaixv@163.com','123456',NULL,NULL,'2018-08-17 13:39:21'),(20,'5b765f896ed11b29a406a8e9','phone','15033156272','123456',NULL,NULL,'2018-08-17 13:39:21'),(21,'5b769d0e1d41c81ef721eec7','email','478306328@qq.com','saisai@@',NULL,NULL,'2018-08-17 03:01:50'),(22,'5b7d2dc96ed11b3c94b824a1','email','saisai_xv@163.com','000000',NULL,NULL,'2018-08-22 17:32:57'),(23,'5b7d2dc96ed11b3c94b824a1','phone','15033156272','000000',NULL,NULL,'2018-08-22 17:32:57'),(24,'5b87aa0c1d41c8a9758670a4','phone','123456','123456',NULL,NULL,'2018-08-30 01:25:48'),(25,'5b87ae181d41c8af86145127','phone','888888','123456',NULL,NULL,'2018-08-30 01:43:04'),(26,'5b87ae981d41c8b06b4949ba','phone','777777','123456',NULL,NULL,'2018-08-30 01:45:12'),(27,'5b87af431d41c8b190fdddc5','phone','666666','123456',NULL,NULL,'2018-08-30 01:48:03'),(28,'5b87afc81d41c8b23d7e02fb','phone','222222','123456',NULL,NULL,'2018-08-30 01:50:16');
/*!40000 ALTER TABLE `user_auths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(100) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `avatar` varchar(150) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1534314671130559400','zhangsan','asdasdasdasda','2018-08-16 15:22:23',NULL,0),('5b73d1056ed11b3e4ceb54c1','lisi','asdasdasdasda','2018-08-16 15:22:23',NULL,0),('5b74dce86ed11b06bcb30c05','daiyanj','dassdsadsadsa','2018-08-16 15:22:23',NULL,0),('5b756dbc6ed11b3484033151','AAAAAAAAAAAAAA','AAAAAAAAAAA','2018-08-16 15:22:25',NULL,1),('5b756dc86ed11b3484033152','asdsada','sadsad','2018-08-16 15:22:26',NULL,1),('5b756dce6ed11b3484033153','addwsd','sadsad','2018-08-16 15:22:27',NULL,1),('5b756dd46ed11b3484033154','ewqewqdda','sadsad','2018-08-16 15:22:28',NULL,1),('5b756ddb6ed11b3484033155','qwwedsaa','sadsad','2018-08-16 15:22:29',NULL,1),('5b756de46ed11b3484033156','fjduisaifioafh','sadsad','2018-08-16 15:22:29',NULL,1),('5b756ee66ed11b3484033157','dcfecefc','sadsad','2018-08-16 15:22:29',NULL,1),('5b756eef6ed11b3484033158','rvfrgfvcrvfc','sadsad','2018-08-16 15:22:30',NULL,1),('5b756ef76ed11b3484033159','vvfcsdvcd','sadsad','2018-08-16 15:22:30',NULL,1),('5b756efd6ed11b348403315a','sdvsdvsfddvc','sadsad','2018-08-16 15:22:31',NULL,1),('5b7635976ed11b464cfd793d','edcsc','sadsad','2018-08-17 10:40:23',NULL,1),('5b76362a6ed11b3d74160cf1','afsdf','sadsad','2018-08-17 10:42:50',NULL,1),('5b76394a6ed11b392015b561','rtgfdg','sadsad','2018-08-17 10:56:10',NULL,1),('5b76397b6ed11b392015b562','evfdfg','sadsad','2018-08-17 10:56:59',NULL,1),('5b763a176ed11b1fe827c66d','wdxwdxd','sadsad','2018-08-17 10:59:35',NULL,1),('5b763ad66ed11b357450c281','werwefd','sadsad','2018-08-17 11:02:46',NULL,1),('5b765f896ed11b29a406a8e9','aaaa','sadsad','2018-08-17 13:39:21',NULL,1),('5b769d0e1d41c81ef721eec7','dasdasfa','sadsad','2018-08-17 03:01:50',NULL,1),('5b7d2dc96ed11b3c94b824a1','aasasa','sdasdasdasda','2018-08-22 17:32:57',NULL,NULL),('5b87aa0c1d41c8a9758670a4','1','1','2018-08-30 01:25:48',NULL,NULL),('5b87ae181d41c8af86145127','wqe','1','2018-08-30 01:43:04',NULL,NULL),('5b87ae981d41c8b06b4949ba','cscx','1','2018-08-30 01:45:12',NULL,NULL),('5b87af431d41c8b190fdddc5','mklmklkl','1','2018-08-30 01:48:03',NULL,NULL),('5b87afc81d41c8b23d7e02fb','werwe','1','2018-08-30 01:50:16',NULL,NULL);
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

-- Dump completed on 2018-08-31  1:45:21
