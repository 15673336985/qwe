/*
SQLyog 企业版 - MySQL GUI v7.14 
MySQL - 5.5.28 : Database - asd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`asd` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `asd`;

/*Table structure for table `cgrkcongbiao` */

DROP TABLE IF EXISTS `cgrkcongbiao`;

CREATE TABLE `cgrkcongbiao` (
  `id` int(11) NOT NULL COMMENT '编号',
  `cgrkid` int(11) NOT NULL COMMENT '主表编号',
  `wlid` int(11) NOT NULL COMMENT '物料编号',
  `dj` double NOT NULL COMMENT '单价',
  `zp` int(11) DEFAULT NULL COMMENT '赠品',
  `cgddid` int(11) NOT NULL COMMENT '采购订单编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cgrkcongbiao` */

/*Table structure for table `cgrkzhubiao` */

DROP TABLE IF EXISTS `cgrkzhubiao`;

CREATE TABLE `cgrkzhubiao` (
  `id` int(11) NOT NULL COMMENT '编号',
  `gysid` int(11) NOT NULL COMMENT '供应商编号',
  `cgrklx` varchar(50) DEFAULT NULL COMMENT '采购入库类型',
  `cankuid` int(11) NOT NULL COMMENT '仓库编号',
  `djrq` date NOT NULL COMMENT '单据日期 ',
  `djhm` int(11) NOT NULL COMMENT '单据编号',
  `bb` varchar(50) NOT NULL COMMENT '币别',
  `huilv` double NOT NULL COMMENT '汇率',
  `bmid` int(11) NOT NULL COMMENT '部门编号',
  `ryid` int(11) NOT NULL COMMENT '人员编号',
  `shzt` int(11) NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cgrkzhubiao` */

/*Table structure for table `gyscaigoufukuan` */

DROP TABLE IF EXISTS `gyscaigoufukuan`;

CREATE TABLE `gyscaigoufukuan` (
  `id` int(11) NOT NULL COMMENT '编号',
  `gysid` int(11) NOT NULL COMMENT '供应商编号',
  `zccgrk` date NOT NULL COMMENT '最初采购入库',
  `zccgth` date NOT NULL COMMENT '最初采购退货',
  `zjcgrk` date NOT NULL COMMENT '最近采购入库',
  `zjcgth` date NOT NULL COMMENT '最近采购退货',
  `hszt` int(11) NOT NULL COMMENT '含税状态',
  `zzjy` date NOT NULL COMMENT '终止交易',
  `zked` int(11) NOT NULL COMMENT '账款额度',
  `syed` int(11) NOT NULL COMMENT '剩余额度',
  `qcyufk` int(11) NOT NULL COMMENT '期初预付款',
  `qcyfk` int(11) NOT NULL COMMENT '期初应付款',
  `qmyufk` int(11) NOT NULL COMMENT '期末预付款',
  `qmyfk` int(11) NOT NULL COMMENT '期末应付款',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gyscaigoufukuan` */

/*Table structure for table `gysdizhi` */

DROP TABLE IF EXISTS `gysdizhi`;

CREATE TABLE `gysdizhi` (
  `id` int(11) NOT NULL COMMENT '地址编号',
  `gysid` int(11) NOT NULL COMMENT '供应商编号',
  `dizhi` varchar(50) NOT NULL COMMENT '供应商地址',
  `lxr` varchar(50) NOT NULL COMMENT '联系人',
  `lxrzc` varchar(50) NOT NULL COMMENT '联系人职称',
  `lxdh` int(11) NOT NULL COMMENT '联系电话',
  `bz` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gysdizhi` */

/*Table structure for table `gysleibie` */

DROP TABLE IF EXISTS `gysleibie`;

CREATE TABLE `gysleibie` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别编号',
  `Name` varchar(50) NOT NULL COMMENT '类别名称',
  `bz` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gysleibie` */

/*Table structure for table `gyszhubiao` */

DROP TABLE IF EXISTS `gyszhubiao`;

CREATE TABLE `gyszhubiao` (
  `id` int(11) NOT NULL COMMENT '供应商编号',
  `Name` varchar(50) NOT NULL COMMENT '供应商名称',
  `JianCheng` varchar(50) DEFAULT NULL COMMENT '供应商简称',
  `BiBie` varchar(50) NOT NULL COMMENT '币别',
  `ZhangKuanGuiShu` varchar(50) NOT NULL COMMENT '账款归属',
  `Liebie` varchar(50) NOT NULL COMMENT '类别',
  `DiQu` varchar(50) NOT NULL COMMENT '地区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gyszhubiao` */

/*Table structure for table `gyszibiao` */

DROP TABLE IF EXISTS `gyszibiao`;

CREATE TABLE `gyszibiao` (
  `id` int(11) NOT NULL COMMENT '编号',
  `gysid` int(11) NOT NULL COMMENT '供应商编号',
  `fzr` varchar(50) NOT NULL COMMENT '负责人',
  `cgr` varchar(50) NOT NULL COMMENT '采购人',
  `lxr` varchar(50) NOT NULL COMMENT '联系人',
  `dh` int(11) NOT NULL COMMENT '练习电话',
  `sj` int(11) NOT NULL COMMENT '移动电话',
  `yj` varchar(50) NOT NULL COMMENT '电子邮件',
  `bz` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gyszibiao` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
