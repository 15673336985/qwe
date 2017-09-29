/*
SQLyog 企业版 - MySQL GUI v7.14 
MySQL - 5.5.28-enterprise-commercial-advanced-log : Database - sjk
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`sjk` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sjk`;

/*Table structure for table `yinfukuanmingxibiao` */

DROP TABLE IF EXISTS `yinfukuanmingxibiao`;

CREATE TABLE `yinfukuanmingxibiao` (
  `YFKMXid` int(11) NOT NULL COMMENT '单据类型',
  `YFKMXdanhao` int(11) DEFAULT NULL COMMENT '单号',
  `YFKMXdate` date DEFAULT NULL COMMENT '日期',
  `Kid` int(11) DEFAULT NULL COMMENT '供货商id',
  `YFKMXyuandanjin` int(11) DEFAULT NULL COMMENT '原单金额',
  `YFKMXxianxingjin` int(11) DEFAULT NULL COMMENT '现行余额',
  PRIMARY KEY (`YFKMXid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `yinfukuanmingxibiao` */

/*Table structure for table `yingfukuan` */

DROP TABLE IF EXISTS `yingfukuan`;

CREATE TABLE `yingfukuan` (
  `YFid` int(11) NOT NULL COMMENT '单号',
  `YFdate` date DEFAULT NULL COMMENT '日期',
  `Kid` int(11) DEFAULT NULL COMMENT '供货商ID',
  `YFjie1` varchar(50) DEFAULT NULL COMMENT '结算方式一',
  `YFjie2` varchar(50) DEFAULT NULL COMMENT '结算方式二',
  `YFjie3` varchar(50) DEFAULT NULL COMMENT '结算方式三',
  `YFzhongdate` date DEFAULT NULL COMMENT '终止账月',
  `YBM` int(11) DEFAULT NULL COMMENT '部门ID',
  `YFhe` varchar(50) DEFAULT NULL COMMENT '所属项目',
  `YFzhidan` varchar(50) DEFAULT NULL COMMENT '制单人员',
  `YFshenhe` varchar(50) DEFAULT NULL COMMENT '审核人员',
  PRIMARY KEY (`YFid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `yingfukuan` */

/*Table structure for table `yingfukuan1` */

DROP TABLE IF EXISTS `yingfukuan1`;

CREATE TABLE `yingfukuan1` (
  `YFDid` int(11) NOT NULL COMMENT '单号',
  `YFhang` int(11) DEFAULT NULL COMMENT '行号',
  `YFdanbei` varchar(50) DEFAULT NULL COMMENT '来源单别',
  `YFdanhao` int(11) DEFAULT NULL COMMENT '来源单号',
  `YFyuandanjin` int(11) DEFAULT NULL COMMENT '原单金额',
  `YFzheranjin` int(11) DEFAULT NULL COMMENT '折让金额',
  `YFchongkuanjin` int(11) DEFAULT NULL COMMENT '冲款金额',
  PRIMARY KEY (`YFDid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `yingfukuan1` */

/*Table structure for table `yingfukuanquyongyufu` */

DROP TABLE IF EXISTS `yingfukuanquyongyufu`;

CREATE TABLE `yingfukuanquyongyufu` (
  `YFid2` int(11) NOT NULL COMMENT '单号',
  `YFhan2` int(11) DEFAULT NULL COMMENT '行号',
  `YFdanhao2` int(11) DEFAULT NULL COMMENT '预收单单号',
  `YFdanhanha` int(11) DEFAULT NULL COMMENT '预收单行号',
  `YFquyongyufujin` int(11) DEFAULT NULL COMMENT '取用预售金额',
  PRIMARY KEY (`YFid2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `yingfukuanquyongyufu` */

/*Table structure for table `yufukuan` */

DROP TABLE IF EXISTS `yufukuan`;

CREATE TABLE `yufukuan` (
  `Yid` int(11) NOT NULL COMMENT '单号',
  `Ydate` date DEFAULT NULL COMMENT '日期',
  `KID` int(11) DEFAULT NULL COMMENT '供货商ID',
  `Jjie1` varchar(50) DEFAULT NULL COMMENT '结算方式一',
  `Jjie2` varchar(50) DEFAULT NULL COMMENT '结算方式二',
  `Jjie3` varchar(50) DEFAULT NULL COMMENT '结算方式三',
  `Zdate` date DEFAULT NULL COMMENT '终止账月',
  `Sbm` int(11) DEFAULT NULL COMMENT '部门ID',
  `Zzidan` varchar(50) DEFAULT NULL COMMENT '制单人员',
  `Ssuoshu` varchar(50) DEFAULT NULL COMMENT '所属项目',
  `Sshenhe` varchar(50) DEFAULT NULL COMMENT '审核人员',
  PRIMARY KEY (`Yid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `yufukuan` */

/*Table structure for table `yufukuanzibiao` */

DROP TABLE IF EXISTS `yufukuanzibiao`;

CREATE TABLE `yufukuanzibiao` (
  `Yid` int(11) NOT NULL COMMENT '单号',
  `Hhanghao` int(11) DEFAULT NULL COMMENT '行号',
  `Yyushoujiner` int(11) DEFAULT NULL COMMENT '预收金额',
  `Llaiyuandanbie` varchar(50) DEFAULT NULL COMMENT '来源单别',
  `Llaiyuandanhao` int(11) DEFAULT NULL COMMENT '来源单号',
  `Zzhaiyao` varchar(50) DEFAULT NULL COMMENT '摘要',
  PRIMARY KEY (`Yid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `yufukuanzibiao` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
