/*
SQLyog 企业版 - MySQL GUI v7.14 
MySQL - 5.5.28-enterprise-commercial-advanced-log : Database - jxc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`jxc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jxc`;

/*Table structure for table `qinggoubiao` */

DROP TABLE IF EXISTS `qinggoubiao`;

CREATE TABLE `qinggoubiao` (
  `id` varchar(20) NOT NULL COMMENT '请购编号',
  `danjudate` time NOT NULL COMMENT '单据日期',
  `dankuan` varchar(20) NOT NULL COMMENT '单况',
  `qinggouleixingid` varchar(20) NOT NULL COMMENT '请购类型编号',
  `renyuanid` varchar(20) NOT NULL COMMENT '人员编号',
  `zhidanren` varchar(50) NOT NULL COMMENT '制单人',
  `shengheren` varchar(50) NOT NULL COMMENT '审核人',
  `shenhezhuantai` varchar(20) NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qinggoubiao` */

/*Table structure for table `qinggouleixing` */

DROP TABLE IF EXISTS `qinggouleixing`;

CREATE TABLE `qinggouleixing` (
  `id` varchar(20) NOT NULL COMMENT '请购类型编号',
  `leixingName` varchar(50) NOT NULL COMMENT '类型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qinggouleixing` */

/*Table structure for table `qinggoumingxi` */

DROP TABLE IF EXISTS `qinggoumingxi`;

CREATE TABLE `qinggoumingxi` (
  `id` varchar(20) NOT NULL COMMENT '明细编号',
  `line` int(11) NOT NULL AUTO_INCREMENT COMMENT '行号',
  `wuliaoid` varchar(20) NOT NULL COMMENT '物料编号',
  `xuqiudate` time NOT NULL COMMENT '需求日期',
  `jianyicaigoudate` time DEFAULT NULL COMMENT '建议采购日期',
  `laiyuanid` varchar(20) DEFAULT NULL COMMENT '来源单号',
  `laiyuandanbie` varchar(20) DEFAULT NULL COMMENT '来源单别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `line` (`line`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qinggoumingxi` */

/*Table structure for table `xunjia` */

DROP TABLE IF EXISTS `xunjia`;

CREATE TABLE `xunjia` (
  `id` varchar(20) NOT NULL COMMENT '询价单编号',
  `gongyingshangid` varchar(20) NOT NULL COMMENT '供应商编号',
  `danjudate` time NOT NULL COMMENT '单据日期',
  `youxiaodate` time DEFAULT NULL COMMENT '有效日期',
  `danjiahanshuizhuangtai` varchar(20) NOT NULL COMMENT '单价含税状态',
  `xunjiamingxiid` varchar(20) NOT NULL COMMENT '询价明细编号',
  `renyuanid` varchar(20) NOT NULL COMMENT '人员编号',
  `shenhezhuangtai` varchar(50) NOT NULL COMMENT '审核状态',
  `xiaoshoudingdanid` varchar(20) DEFAULT NULL COMMENT '销售订单编号',
  `qinggouid` varchar(20) DEFAULT NULL COMMENT '请购编号',
  `shenheren` varchar(20) DEFAULT NULL COMMENT '审核人',
  `zhidanren` varchar(20) DEFAULT NULL COMMENT '制单人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xunjia` */

/*Table structure for table `xunjiamingxi` */

DROP TABLE IF EXISTS `xunjiamingxi`;

CREATE TABLE `xunjiamingxi` (
  `id` varchar(20) NOT NULL COMMENT '明细编号',
  `line` int(11) NOT NULL COMMENT '行号',
  `wuliaoid` varchar(20) NOT NULL COMMENT '物料编号',
  `shuilv` varchar(20) DEFAULT NULL COMMENT '税率',
  `xiaoshoudianid` varchar(20) DEFAULT NULL COMMENT '销售订单编号',
  `qinggouid` varchar(20) DEFAULT NULL COMMENT '询价编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xunjiamingxi` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
