/*
Navicat MySQL Data Transfer

Source Server         : MySQL Community Server
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : emmissions

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2014-04-24 09:35:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `emmissions`
-- ----------------------------
DROP TABLE IF EXISTS `emmissions`;
CREATE TABLE `emmissions` (
  `emmission_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `full_title` varchar(255) NOT NULL,
  `short_title` varchar(100) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `rating` float NOT NULL,
  `date_gov_registration` date NOT NULL,
  `date_report_registartion` date NOT NULL,
  `code_registration` varchar(50) NOT NULL,
  `DDK` varchar(20) DEFAULT NULL,
  `RTC` varchar(20) DEFAULT NULL,
  `ISIN` varchar(20) DEFAULT NULL,
  `blocks` varchar(255) DEFAULT NULL,
  `CFI` varchar(30) DEFAULT NULL,
  `personal_DDK` varchar(255) DEFAULT NULL,
  `name_registration` varchar(255) NOT NULL,
  `service_type` tinyint(4) NOT NULL,
  PRIMARY KEY (`emmission_id`),
  UNIQUE KEY `DDK` (`DDK`),
  UNIQUE KEY `RTC` (`RTC`),
  UNIQUE KEY `ISIN` (`ISIN`),
  UNIQUE KEY `CFI` (`CFI`),
  KEY `type_id` (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Таблица эмитентов';

-- ----------------------------
-- Records of emmissions
-- ----------------------------

-- ----------------------------
-- Table structure for `issues`
-- ----------------------------
DROP TABLE IF EXISTS `issues`;
CREATE TABLE `issues` (
  `issue_id` mediumint(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`issue_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Таблица типов выпуска';

-- ----------------------------
-- Records of issues
-- ----------------------------

-- ----------------------------
-- Table structure for `service_type`
-- ----------------------------
DROP TABLE IF EXISTS `service_type`;
CREATE TABLE `service_type` (
  `service_id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Таблица вариантов обслуживания';

-- ----------------------------
-- Records of service_type
-- ----------------------------

-- ----------------------------
-- Table structure for `types`
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `type_id` mediumint(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Таблица типов';

-- ----------------------------
-- Records of types
-- ----------------------------
