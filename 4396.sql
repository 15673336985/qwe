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

/*Table structure for table `yingshoukuan` */

DROP TABLE IF EXISTS `yingshoukuan`;

CREATE TABLE `yingshoukuan` (
  `YSid` int(11) NOT NULL COMMENT '单号',
  `YSdate` date DEFAULT NULL COMMENT '日期',
  `KSd` int(11) DEFAULT NULL COMMENT '供货商ID',
  `YSjie1` varchar(50) DEFAULT NULL COMMENT '结算方式一',
  `YSjie2` varchar(50) DEFAULT NULL COMMENT '结算方式二',
  `YSjie3` varchar(50) DEFAULT NULL COMMENT '结算方式三',
  `YSzhongdate` date DEFAULT NULL COMMENT '终止账月',
  `YSM` int(11) DEFAULT NULL COMMENT '部门ID',
  `YShe` varchar(50) DEFAULT NULL COMMENT '所属项目',
  `YSzhidan` varchar(50) DEFAULT NULL COMMENT '制单人员',
  `YSshenhe` varchar(50) DEFAULT NULL COMMENT '审核人员',
  PRIMARY KEY (`YSid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `yingshoukuan` */

/*Table structure for table `yingshoukuan1` */

DROP TABLE IF EXISTS `yingshoukuan1`;

CREATE TABLE `yingshoukuan1` (
  `YSDid` int(11) NOT NULL COMMENT '单号',
  `YShang` int(11) DEFAULT NULL COMMENT '行号',
  `YSdanbei` varchar(50) DEFAULT NULL COMMENT '来源单别',
  `YSdanhao` int(11) DEFAULT NULL COMMENT '来源单号',
  `YSyuandanjin` int(11) DEFAULT NULL COMMENT '原单金额',
  `YSzheranjin` int(11) DEFAULT NULL COMMENT '折让金额',
  `YSchongkuanjin` int(11) DEFAULT NULL COMMENT '冲款金额',
  PRIMARY KEY (`YSDid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `yingshoukuan1` */

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

/*Table structure for table `yushoukuan` */

DROP TABLE IF EXISTS `yushoukuan`;

CREATE TABLE `yushoukuan` (
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

/*Data for the table `yushoukuan` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
