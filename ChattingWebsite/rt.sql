-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: chatting_website
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `rt_friend_message`
--

DROP TABLE IF EXISTS `rt_friend_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rt_friend_message` (
  `sender` varchar(20) NOT NULL COMMENT '消息发送者',
  `recipient` varchar(20) NOT NULL COMMENT '消息接收者',
  `type` tinyint NOT NULL COMMENT '消息类型',
  `time` datetime NOT NULL COMMENT '消息发送时间',
  `content` text COMMENT '消息内容',
  PRIMARY KEY (`sender`,`recipient`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='用于存储好友发送的消息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rt_friend_message`
--

LOCK TABLES `rt_friend_message` WRITE;
/*!40000 ALTER TABLE `rt_friend_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `rt_friend_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rt_friend_relationship`
--

DROP TABLE IF EXISTS `rt_friend_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rt_friend_relationship` (
  `username` varchar(20) NOT NULL,
  `friendname` varchar(20) NOT NULL,
  PRIMARY KEY (`username`,`friendname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rt_friend_relationship`
--

LOCK TABLES `rt_friend_relationship` WRITE;
/*!40000 ALTER TABLE `rt_friend_relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `rt_friend_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rt_group`
--

DROP TABLE IF EXISTS `rt_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rt_group` (
  `groupid` char(4) NOT NULL,
  `groupname` varchar(40) NOT NULL,
  `avatar` varchar(10) NOT NULL,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rt_group`
--

LOCK TABLES `rt_group` WRITE;
/*!40000 ALTER TABLE `rt_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `rt_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rt_group_member`
--

DROP TABLE IF EXISTS `rt_group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rt_group_member` (
  `groupid` char(4) NOT NULL,
  `membername` varchar(20) NOT NULL,
  PRIMARY KEY (`groupid`,`membername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rt_group_member`
--

LOCK TABLES `rt_group_member` WRITE;
/*!40000 ALTER TABLE `rt_group_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `rt_group_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rt_group_message`
--

DROP TABLE IF EXISTS `rt_group_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rt_group_message` (
  `groupid` char(4) NOT NULL COMMENT '群号',
  `sender` varchar(20) NOT NULL COMMENT '消息发送者',
  `type` tinyint NOT NULL COMMENT '消息类型',
  `time` datetime NOT NULL COMMENT '消息发送时间',
  `content` text COMMENT '消息内容',
  PRIMARY KEY (`groupid`,`sender`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='用于存储群聊信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rt_group_message`
--

LOCK TABLES `rt_group_message` WRITE;
/*!40000 ALTER TABLE `rt_group_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `rt_group_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rt_user`
--

DROP TABLE IF EXISTS `rt_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rt_user` (
  `username` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `birthday` varchar(15) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `avatar` varchar(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rt_user`
--

LOCK TABLES `rt_user` WRITE;
/*!40000 ALTER TABLE `rt_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `rt_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-24 17:31:35
