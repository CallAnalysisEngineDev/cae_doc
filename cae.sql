/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50619
Source Host           : 127.0.0.1:3306
Source Database       : cae

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2017-03-31 21:14:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for call_record
-- ----------------------------
DROP TABLE IF EXISTS `call_record`;
CREATE TABLE `call_record` (
  `call_id` varchar(10) NOT NULL,
  `song_id` varchar(10) NOT NULL,
  `call_source` varchar(50) NOT NULL,
  `call_version` smallint(6) NOT NULL,
  `call_last_modify` timestamp NOT NULL,
  PRIMARY KEY (`call_id`),
  KEY `song_id` (`song_id`),
  CONSTRAINT `call_record_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `song_id` varchar(10) NOT NULL,
  `song_name` varchar(20) NOT NULL,
  `song_sell_time` date NOT NULL,
  `song_owner` varchar(10) NOT NULL,
  `song_cover` varchar(50) NOT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
