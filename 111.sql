/*
SQLyog 企业版 - MySQL GUI v7.14 
MySQL - 5.5.28-enterprise-commercial-advanced-log : Database - gwj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`gwj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gwj`;

/*Table structure for table `diaobo` */

DROP TABLE IF EXISTS `diaobo`;

CREATE TABLE `diaobo` (
  `DanJuHM` varchar(50) NOT NULL,
  `DJDate` date NOT NULL,
  `ZhiDanRY` varchar(50) NOT NULL,
  `FuHeRY` varchar(50) NOT NULL,
  `ShuLiangHJ` int(11) NOT NULL,
  `BeiZhu` varchar(200) DEFAULT NULL,
  `Udef1` varchar(200) DEFAULT NULL,
  `UDef2` varchar(200) DEFAULT NULL,
  `WareOutID` varchar(50) NOT NULL,
  `WareOutName` varchar(50) NOT NULL,
  `WareID` varchar(50) NOT NULL,
  `WareName` varchar(50) NOT NULL,
  `ZDRQianMing` varchar(50) NOT NULL,
  `FHRQianMing` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `diaobo` */

/*Table structure for table `diaobomx` */

DROP TABLE IF EXISTS `diaobomx`;

CREATE TABLE `diaobomx` (
  `MXID` varchar(50) NOT NULL,
  `DBID` varchar(50) NOT NULL,
  `WuLiaoID` varchar(50) NOT NULL,
  `WuLiaoLei` varchar(50) NOT NULL,
  `LeiName` varchar(50) NOT NULL,
  `TiaoXingMaID` varchar(50) NOT NULL,
  `EnglishName` varchar(50) NOT NULL,
  `BiBie` varchar(50) NOT NULL,
  `JianYiSJ` double NOT NULL,
  `ShouJiaA` double DEFAULT NULL,
  `ShouJiaB` double DEFAULT NULL,
  `ShouJiaC` double DEFAULT NULL,
  `ShouJiaD` double DEFAULT NULL,
  `ShouJiaE` double DEFAULT NULL,
  `BiaoZhunJJ` double NOT NULL,
  `ZhuGYS` varchar(50) NOT NULL,
  PRIMARY KEY (`MXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `diaobomx` */

/*Table structure for table `xiaoshaobaojia` */

DROP TABLE IF EXISTS `xiaoshaobaojia`;

CREATE TABLE `xiaoshaobaojia` (
  `KeHu` varchar(50) NOT NULL,
  `DJDate` date NOT NULL,
  `DJNo` varchar(50) NOT NULL,
  `SongHuoDZ` varchar(50) NOT NULL,
  `YouXiaoDate` date NOT NULL,
  `Shui` int(11) NOT NULL,
  `BiBie` varchar(50) NOT NULL,
  `HuiLv` double NOT NULL,
  `YeWuRY` varchar(50) NOT NULL,
  `SuoShuBM` int(11) NOT NULL,
  `ZhiDanRY` varchar(50) NOT NULL,
  `FuHeRY` varchar(50) NOT NULL,
  PRIMARY KEY (`KeHu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xiaoshaobaojia` */

/*Table structure for table `xiaoshoubaojiaxx` */

DROP TABLE IF EXISTS `xiaoshoubaojiaxx`;

CREATE TABLE `xiaoshoubaojiaxx` (
  `ID` int(11) NOT NULL,
  `WuLiaoID` varchar(50) NOT NULL,
  `WuLiaoName` varchar(50) NOT NULL,
  `GuiGeXH` varchar(50) NOT NULL,
  `DanWei` varchar(50) NOT NULL,
  `ShuLiang` int(11) NOT NULL,
  `OldPrice` double NOT NULL,
  `ZheShu` double NOT NULL,
  `Price` double NOT NULL,
  `JinE` double NOT NULL,
  `ShuiLv` double NOT NULL,
  `ShuiE` double NOT NULL,
  `HanShuiJE` double NOT NULL,
  `BeiZhu` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xiaoshoubaojiaxx` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
