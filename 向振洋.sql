/*
SQLyog 企业版 - MySQL GUI v7.14 
MySQL - 5.5.28-enterprise-commercial-advanced-log : Database - xm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`xm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xm`;

/*Table structure for table `tjmxb` */

DROP TABLE IF EXISTS `tjmxb`;

CREATE TABLE `tjmxb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '明细id',
  `djid` int(11) DEFAULT NULL COMMENT '外键',
  `wlbh` varchar(50) DEFAULT NULL COMMENT '物料编号',
  `wlname` varchar(50) DEFAULT NULL COMMENT '物料名称',
  `ggxh` varchar(50) DEFAULT NULL COMMENT '规格型号',
  `dw` varchar(50) DEFAULT NULL COMMENT '单位',
  `kc` int(11) DEFAULT NULL COMMENT '库存',
  `pjcb` double DEFAULT NULL COMMENT '评价成本',
  `dj` double DEFAULT NULL COMMENT '单价',
  `tjje` double DEFAULT NULL COMMENT '调价金额',
  `bz` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tjmxb` */

insert  into `tjmxb`(`id`,`djid`,`wlbh`,`wlname`,`ggxh`,`dw`,`kc`,`pjcb`,`dj`,`tjje`,`bz`) values (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `tjzb` */

DROP TABLE IF EXISTS `tjzb`;

CREATE TABLE `tjzb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '调价id',
  `djsj` datetime DEFAULT NULL COMMENT '单价时间',
  `djhm` varchar(50) DEFAULT NULL COMMENT '单价号码',
  `pzbh` varchar(50) DEFAULT NULL COMMENT '凭证编号',
  `bz` varchar(50) DEFAULT NULL COMMENT '备注',
  `zdry` varchar(50) DEFAULT NULL COMMENT '制单人员',
  `fkry` varchar(50) DEFAULT NULL COMMENT '复核人员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tjzb` */

/*Table structure for table `xsck` */

DROP TABLE IF EXISTS `xsck`;

CREATE TABLE `xsck` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '客户id',
  `khname` varchar(50) NOT NULL COMMENT '客户名称',
  `djsj` datetime DEFAULT NULL COMMENT '单据时间',
  `khsdz` varchar(50) DEFAULT NULL COMMENT '客户地址',
  `djhm` varchar(50) DEFAULT NULL COMMENT '单据编号',
  `hsid` int(11) DEFAULT NULL COMMENT '含税id',
  `bibieid` int(11) DEFAULT NULL COMMENT '币别id',
  `cangkuid` int(11) DEFAULT NULL COMMENT '仓库id',
  `ywry` varchar(50) DEFAULT NULL COMMENT '业务人员',
  `bmid` int(50) DEFAULT NULL COMMENT '部门id',
  `zdry` varchar(50) DEFAULT NULL COMMENT '制单人员',
  `fhry` varchar(50) DEFAULT NULL COMMENT '复核人员',
  `bz` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `xsck` */

insert  into `xsck`(`id`,`khname`,`djsj`,`khsdz`,`djhm`,`hsid`,`bibieid`,`cangkuid`,`ywry`,`bmid`,`zdry`,`fhry`,`bz`) values (1,'株洲伟大','2017-01-01 00:00:00','株洲','201701001',1,1,1,'admin',NULL,NULL,NULL,NULL);

/*Table structure for table `xsckmx` */

DROP TABLE IF EXISTS `xsckmx`;

CREATE TABLE `xsckmx` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '销售出库明细id',
  `xsid` int(11) DEFAULT NULL COMMENT '外键',
  `wlbh` varchar(50) DEFAULT NULL COMMENT '物料编号',
  `wlname` varchar(50) DEFAULT NULL COMMENT '物料名称',
  `ggxh` varchar(50) DEFAULT NULL COMMENT '规格型号',
  `dwname` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `sl` int(11) DEFAULT NULL COMMENT '数量',
  `zkqjg` double DEFAULT NULL COMMENT '折扣前单价',
  `zheko` double DEFAULT NULL COMMENT '折扣',
  `dj` double DEFAULT NULL COMMENT '单价',
  `je` double DEFAULT NULL COMMENT '金额',
  `shuilv` double DEFAULT NULL COMMENT '税率',
  `shuie` double DEFAULT NULL COMMENT '税额',
  `pihao` varchar(50) DEFAULT NULL COMMENT '批号',
  `zenping` int(11) DEFAULT NULL COMMENT '赠品',
  `bz` varchar(50) DEFAULT NULL COMMENT '备注',
  `lydb` varchar(50) DEFAULT NULL COMMENT '来源单别',
  `lydh` varchar(50) DEFAULT NULL COMMENT '来源单号',
  `khdd` varchar(50) DEFAULT NULL COMMENT '客户订单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xsckmx` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
