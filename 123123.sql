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

/*Table structure for table `kehuleibieshed` */

DROP TABLE IF EXISTS `kehuleibieshed`;

CREATE TABLE `kehuleibieshed` (
  `khTypeID` int(50) NOT NULL AUTO_INCREMENT COMMENT '类别编号',
  `khTypeName` char(5) NOT NULL COMMENT '客户名称',
  `khYwTypeName` char(50) DEFAULT NULL COMMENT '英文名称',
  `KhBeiZhu` char(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`khTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `kehuleibieshed` */

/*Table structure for table `kehuzhuwenjiansheding` */

DROP TABLE IF EXISTS `kehuzhuwenjiansheding`;

CREATE TABLE `kehuzhuwenjiansheding` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `KehuID` int(50) NOT NULL COMMENT '客户编号',
  `KehuName` char(50) NOT NULL COMMENT '客户全称',
  `KehuTypeID` int(50) NOT NULL COMMENT '客户类别外键',
  `KehuEzName` char(50) DEFAULT NULL COMMENT '客户简称',
  `KehuAddresId` int(50) NOT NULL COMMENT '地区外键',
  `EngishName` char(50) DEFAULT NULL COMMENT '英文全称',
  `EngishEZName` char(50) DEFAULT NULL COMMENT '客户简称',
  `YeWuNameID` int(11) DEFAULT NULL COMMENT '客户外键',
  PRIMARY KEY (`ID`,`KehuID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `kehuzhuwenjiansheding` */

/*Table structure for table `xiaoshoudd` */

DROP TABLE IF EXISTS `xiaoshoudd`;

CREATE TABLE `xiaoshoudd` (
  `XiaoSDDId` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `KeHuNameId` int(50) NOT NULL COMMENT '客户名称外键',
  `danjuDate` date NOT NULL COMMENT '单据日期',
  `songhuodizhi` char(50) DEFAULT NULL COMMENT '送货地址',
  `danjuNumber` char(50) NOT NULL COMMENT '单据号码',
  `xiaoshouType` char(50) DEFAULT NULL COMMENT '销售订单类型',
  `kehuDd` char(50) DEFAULT NULL COMMENT '客户订单',
  `HanShuiID` int(50) NOT NULL COMMENT '单价是否含税外键',
  `BiBie` char(50) DEFAULT NULL COMMENT '币别',
  `DanKuangID` int(50) NOT NULL COMMENT '单况外键',
  `HuiLv` int(50) NOT NULL COMMENT '汇率',
  `XiangXiID` int(50) NOT NULL COMMENT '详表外键',
  `YeWuRYId` int(50) NOT NULL COMMENT '业务人员外键',
  `ZhiDanName` char(50) NOT NULL COMMENT '制单人员',
  `BuMenId` int(50) NOT NULL COMMENT '所属部门外键',
  `FuHeName` char(50) NOT NULL COMMENT '复核人员',
  PRIMARY KEY (`XiaoSDDId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xiaoshoudd` */

/*Table structure for table `xiaoshouxinagxi` */

DROP TABLE IF EXISTS `xiaoshouxinagxi`;

CREATE TABLE `xiaoshouxinagxi` (
  `XxID` int(50) NOT NULL AUTO_INCREMENT COMMENT '栏号',
  `WuliaoID` int(50) NOT NULL COMMENT '物料编号',
  `WuliaoName` char(50) NOT NULL COMMENT '物料名称',
  `GuigeXinghao` char(50) DEFAULT NULL COMMENT '规格型号',
  `DanweiName` char(50) NOT NULL COMMENT '单位名称',
  `Number` int(50) DEFAULT NULL COMMENT '数量',
  `ZhekouPrice` int(50) NOT NULL COMMENT '折扣前单价',
  `ZheShu` char(50) NOT NULL COMMENT '折数',
  `Price` int(50) NOT NULL COMMENT '单价',
  `Money` int(50) NOT NULL COMMENT '金额',
  `ShuiLv` int(50) NOT NULL COMMENT '税率',
  `ShuiE` int(50) NOT NULL COMMENT '税额',
  `HanShuiMoney` int(50) NOT NULL COMMENT '含税金额',
  `YuOutDate` datetime NOT NULL COMMENT '预出库日',
  `NotOutNumber` int(50) NOT NULL COMMENT '未出库数量',
  `ZengP` int(2) NOT NULL COMMENT '赠品',
  `TypeBeizhu` char(50) NOT NULL COMMENT '分录备注',
  `WuLiaoZuhe` char(50) NOT NULL COMMENT '物料组合',
  `XiaoShouBJID` int(50) NOT NULL COMMENT '销售报价外键(物料组合来源单别，排程单号)',
  `shengc` int(2) NOT NULL COMMENT '生产',
  `RemberNumber` int(50) NOT NULL COMMENT '已记产生数量',
  PRIMARY KEY (`XxID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xiaoshouxinagxi` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
