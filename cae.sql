/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50619
Source Host           : 127.0.0.1:3306
Source Database       : cae

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2017-03-29 11:22:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for call_record
-- ----------------------------
DROP TABLE IF EXISTS `call_record`;
CREATE TABLE `call_record` (
  `call_id` varchar(10) NOT NULL,
  `call_name` varchar(20) NOT NULL,
  `call_content` varchar(50) NOT NULL,
  `call_sell_time` date NOT NULL,
  `call_version` smallint(6) NOT NULL,
  `call_cover` varchar(50) NOT NULL,
  `call_last_modify` timestamp NOT NULL,
  PRIMARY KEY (`call_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
