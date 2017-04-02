/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50619
Source Host           : 127.0.0.1:3306
Source Database       : cae

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2017-04-03 02:56:26
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
  PRIMARY KEY (`call_id`),
  KEY `song_id` (`song_id`),
  CONSTRAINT `call_record_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of call_record
-- ----------------------------
INSERT INTO `call_record` VALUES ('a', '1', 'asd', '22');
INSERT INTO `call_record` VALUES ('b', '2', 'dsa', '22');
INSERT INTO `call_record` VALUES ('c', '3', 'asd', '1');
INSERT INTO `call_record` VALUES ('d', '4', 'asd', '1');
INSERT INTO `call_record` VALUES ('e', '5', 'asd', '55');
INSERT INTO `call_record` VALUES ('f', '6', 'eqw', '213');
INSERT INTO `call_record` VALUES ('g', '7', 'sdfa', '13');
INSERT INTO `call_record` VALUES ('h', '8', 'sad', '5');
INSERT INTO `call_record` VALUES ('i', '9', 'nas', '2');
INSERT INTO `call_record` VALUES ('j', '10', 'jkj', '3');

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `song_id` varchar(10) NOT NULL,
  `song_name` varchar(30) NOT NULL,
  `song_sell_time` date NOT NULL,
  `song_owner` varchar(10) NOT NULL,
  `song_cover` varchar(50) NOT NULL,
  `song_create_time` timestamp NOT NULL,
  `song_click` int(11) NOT NULL DEFAULT '0',
  `song_last_modify_time` timestamp NOT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES ('1', 'Aqours☆HEROES', '2017-04-03', 'Aqours', '/test1', '2017-04-01 01:57:15', '1123', '2017-04-03 01:29:33');
INSERT INTO `song` VALUES ('10', 'Step! ZERO to ONE', '2017-04-03', 'Aqours', '/test10', '2017-04-01 01:57:15', '4', '2017-04-03 01:35:03');
INSERT INTO `song` VALUES ('2', 'Daydream Warrior', '2017-04-03', 'Aqours', '/test2', '2017-04-01 01:57:15', '345', '2017-04-03 01:29:55');
INSERT INTO `song` VALUES ('3', 'Guilty Eyes Fever', '2017-04-03', 'Aqours', '/test3', '2017-04-01 01:57:15', '6', '2017-04-03 01:30:15');
INSERT INTO `song` VALUES ('4', 'G線上のシンデレラ', '2017-04-03', 'Aqours', '/test4', '2017-04-01 01:57:15', '0', '2017-04-03 01:31:21');
INSERT INTO `song` VALUES ('5', 'Guilty Kiss, Guilty Night', '2017-04-03', 'Aqours', '/test5', '2017-04-01 01:57:15', '567', '2017-04-03 01:33:27');
INSERT INTO `song` VALUES ('6', 'LONELY TUNING', '2017-04-03', 'Aqours', '/test6', '2017-04-01 01:57:15', '0', '2017-04-03 01:33:48');
INSERT INTO `song` VALUES ('7', 'MIRAI TICKET', '2017-04-03', 'Aqours', '/test7', '2017-04-01 01:57:15', '867', '2017-04-03 01:34:08');
INSERT INTO `song` VALUES ('8', 'P.S.の向こう側', '2017-04-03', 'Aqours', '/test8', '2017-04-01 01:57:15', '89', '2017-04-03 01:34:26');
INSERT INTO `song` VALUES ('9', 'Pops heartで踊るんだもん!', '2017-04-03', 'Aqours', '/test9', '2017-04-01 01:57:15', '89', '2017-04-03 01:34:45');
