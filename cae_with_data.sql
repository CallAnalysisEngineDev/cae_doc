/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50619
Source Host           : 127.0.0.1:3306
Source Database       : cae

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2017-04-04 16:25:11
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
INSERT INTO `call_record` VALUES ('CR-3Gq322K', 'dj', '/aqours/LONELY TUNING.html', '22');
INSERT INTO `call_record` VALUES ('CR-3JpX4Pg', 'please', '/aqours/トリコリコPLEASE!!.html', '16');
INSERT INTO `call_record` VALUES ('CR-3z3ErWg', 'mt', '/aqours/MIRAI TICKET.html', '20');
INSERT INTO `call_record` VALUES ('CR-7BtA4Ve', 'yekong', '/aqours/夜空はなんでも知ってるの.html', '2');
INSERT INTO `call_record` VALUES ('CR-7fX2xAJ', 'heros', '/aqours/Aqours☆HEROES.html', '18');
INSERT INTO `call_record` VALUES ('CR-8A8Dvb0', 'jiexing', '/aqours/届かない星だとしても.html', '16');
INSERT INTO `call_record` VALUES ('CR-aAny0u9', '0to1', '/aqours/Step! ZERO to ONE.html', '16');
INSERT INTO `call_record` VALUES ('CR-adVncQG', 'mengyekong', '/aqours/夢で夜空を照らしたい.html', '21');
INSERT INTO `call_record` VALUES ('CR-b0IL7JQ', 'ed/cw', '/aqours/サンシャインぴっかぴか音頭.html', '8');
INSERT INTO `call_record` VALUES ('CR-Be9n7cp', 'op/cw', '/aqours/ハミングフレンド.html', '18');
INSERT INTO `call_record` VALUES ('CR-DLjZYmt', 'ed', '/aqours/ユメ語るよりユメ歌おう.html', '21');
INSERT INTO `call_record` VALUES ('CR-eOPnTHT', 'shengri', '/aqours/聖なる日の祈り.html', '15');
INSERT INTO `call_record` VALUES ('CR-fXVo1ob', 'fenleixue', '/aqours/ときめき分類学.html', '20');
INSERT INTO `call_record` VALUES ('CR-H8PyUs6', 'weishu', '/aqours/未熟DREAMER.html', '21');
INSERT INTO `call_record` VALUES ('CR-iSIL1oA', 'handinhand', '/aqours/決めたよHand in Hand.html', '20');
INSERT INTO `call_record` VALUES ('CR-kmTpGyi', 'kimikoko', '/aqours/君のこころは輝いてるかい？.html', '18');
INSERT INTO `call_record` VALUES ('CR-kzy3XZr', 'bd5', '/aqours/G線上のシンデレラ.html', '18');
INSERT INTO `call_record` VALUES ('CR-nnYYSOx', 'xiangyi', '/aqours/想いよひとつになれ.html', '21');
INSERT INTO `call_record` VALUES ('CR-NwzH7QT', 'bd7', '/aqours/太陽を追いかけろ!.html', '23');
INSERT INTO `call_record` VALUES ('CR-o2fVgUP', 'st', '/aqours/Strawberry Trapper.html', '16');
INSERT INTO `call_record` VALUES ('CR-PAjQQU3', 'bd2', '/aqours/空も心も晴れるから.html', '13');
INSERT INTO `call_record` VALUES ('CR-Q3N1b4W', 'bd1', '/aqours/Pops heartで踊るんだもん！.html', '18');
INSERT INTO `call_record` VALUES ('CR-QeWCVsU', 'bd3', '/aqours/Waku-Waku-Week!.html', '15');
INSERT INTO `call_record` VALUES ('CR-Qsg2phn', 'daydayday', '/aqours/元気全開DAY！DAY！DAY！.html', '20');
INSERT INTO `call_record` VALUES ('CR-SAKnoHo', 'shengdan', '/aqours/ジングルベルがとまらない.html', '18');
INSERT INTO `call_record` VALUES ('CR-tagvB5T', 'bd6', '/aqours/スリリング·ワンウェイ.html', '21');
INSERT INTO `call_record` VALUES ('CR-tdMGXHo', 'bd4', '/aqours/Daydream Warrior.html', '18');
INSERT INTO `call_record` VALUES ('CR-TeMgUm8', 'fever', '/aqours/Guilty Eyes Fever.html', '22');
INSERT INTO `call_record` VALUES ('CR-UDK0pXJ', 'daisuki', '/aqours/ダイスキだったらダイジョウブ!.html', '21');
INSERT INTO `call_record` VALUES ('CR-uhKVXo7', 'ps', '/aqours/P.S.の向こう侧.html', '22');
INSERT INTO `call_record` VALUES ('CR-W1VCo77', 'daiai', '/aqours/待ってて愛のうた.html', '16');
INSERT INTO `call_record` VALUES ('CR-WMwuy7J', 'shuizuguan', '/aqours/恋になりたい AQUARIUM.html', '21');
INSERT INTO `call_record` VALUES ('CR-Yawopdw', 'op', '/aqours/青空Jumping Heart.html', '17');
INSERT INTO `call_record` VALUES ('CR-zvj8GGK', 'gkgn', '/aqours/Guilty Kiss, Guilty Night.html', '22');

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
  `song_last_modify_time` date NOT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES ('0to1', 'Step! ZERO to ONE', '2015-10-07', 'Aqours', '/aqours/1.jpg', '2017-04-01 01:57:15', '0', '2017-04-03');
INSERT INTO `song` VALUES ('bd1', 'Pops heartで踊るんだもん！', '2016-09-27', 'Aqours', '/aqours/10.jpg', '2017-04-03 17:38:04', '0', '2017-04-03');
INSERT INTO `song` VALUES ('bd2', '空も心も晴れるから', '2016-10-26', 'Aqours', '/aqours/11_1.jpg', '2017-04-03 17:38:48', '0', '2017-04-03');
INSERT INTO `song` VALUES ('bd3', 'Waku-Waku-Week!', '2016-11-25', 'Aqours', '/aqours/14_1.jpg', '2017-04-03 17:39:12', '0', '2017-04-03');
INSERT INTO `song` VALUES ('bd4', 'Daydream Warrior', '2016-12-22', 'Aqours', '/aqours/15.jpg', '2017-04-03 17:39:54', '0', '2017-04-03');
INSERT INTO `song` VALUES ('bd5', 'G線上のシンデレラ', '2017-01-27', 'Aqours', '/aqours/16.jpg', '2017-04-03 17:40:28', '0', '2017-04-03');
INSERT INTO `song` VALUES ('bd6', 'スリリング·ワンウェイ', '2017-02-24', 'Aqours', '/aqours/17_1.jpg', '2017-04-03 17:40:46', '0', '2017-04-03');
INSERT INTO `song` VALUES ('bd7', '太陽を追いかけろ!', '2017-03-24', 'Aqours', '/aqours/18_2.jpg', '2017-04-03 17:41:14', '0', '2017-04-03');
INSERT INTO `song` VALUES ('daiai', '待ってて愛のうた', '2016-04-27', 'Aqours', '/aqours/2.jpg', '2017-04-03 17:25:22', '0', '2017-04-03');
INSERT INTO `song` VALUES ('daisuki', 'ダイスキだったらダイジョウブ!', '2016-08-03', 'Aqours', '/aqours/7.jpg', '2017-04-03 17:31:56', '0', '2017-04-03');
INSERT INTO `song` VALUES ('daydayday', '元気全開DAY！DAY！DAY！', '2016-05-11', 'CYaRon!', '/aqours/3.jpg', '2017-04-03 17:26:10', '0', '2017-04-03');
INSERT INTO `song` VALUES ('dj', 'LONELY TUNING', '2017-03-24', 'AZALEA', '/aqours/19_3.jpg', '2017-04-03 17:42:39', '0', '2017-04-03');
INSERT INTO `song` VALUES ('ed', 'ユメ語るよりユメ歌おう', '2016-08-24', 'Aqours', '/aqours/8.jpg', '2017-04-03 17:32:12', '0', '2017-04-03');
INSERT INTO `song` VALUES ('ed/cw', 'サンシャインぴっかぴか音頭', '2016-08-24', 'Aqours', '/aqours/8.jpg', '2017-04-03 17:32:25', '0', '2017-04-03');
INSERT INTO `song` VALUES ('fenleixue', 'ときめき分類学', '2016-05-25', 'AZALEA', '/aqours/4.jpg', '2017-04-03 17:27:52', '0', '2017-04-03');
INSERT INTO `song` VALUES ('fever', 'Guilty Eyes Fever', '2017-03-24', 'GuiltyKiss', '/aqours/19_1.jpg', '2017-04-03 17:42:04', '0', '2017-04-03');
INSERT INTO `song` VALUES ('gkgn', 'Guilty Kiss, Guilty Night', '2016-06-08', 'GuiltyKiss', '/aqours/5.jpg', '2017-04-01 01:57:15', '1', '2017-04-03');
INSERT INTO `song` VALUES ('handinhand', '決めたよHand in Hand', '2016-08-03', 'Aqours', '/aqours/7.jpg', '2017-04-03 17:31:29', '0', '2017-04-03');
INSERT INTO `song` VALUES ('heros', 'Aqours☆HEROES', '2015-10-07', 'Aqours', '/aqours/1.jpg', '2017-04-01 01:57:15', '0', '2017-04-03');
INSERT INTO `song` VALUES ('jiexing', '届かない星だとしても', '2016-04-27', 'Aqours', '/aqours/2.jpg', '2017-04-03 17:25:37', '0', '2017-04-03');
INSERT INTO `song` VALUES ('kimikoko', '君のこころは輝いてるかい？', '2015-10-07', 'Aqours', '/aqours/1.jpg', '2017-04-03 17:21:48', '0', '2017-04-03');
INSERT INTO `song` VALUES ('mengyekong', '夢で夜空を照らしたい', '2016-09-14', 'Aqours', '/aqours/9.jpg', '2017-04-03 17:34:02', '0', '2017-04-03');
INSERT INTO `song` VALUES ('mt', 'MIRAI TICKET', '2016-11-09', 'Aqours', '/aqours/12.jpg', '2017-04-03 17:35:36', '0', '2017-04-03');
INSERT INTO `song` VALUES ('op', '青空Jumping Heart', '2016-07-20', 'Aqours', '/aqours/6.jpg', '2017-04-03 17:29:18', '0', '2017-04-03');
INSERT INTO `song` VALUES ('op/cw', 'ハミングフレンド', '2016-07-20', 'Aqours', '/aqours/6.jpg', '2017-04-03 17:30:50', '0', '2017-04-03');
INSERT INTO `song` VALUES ('please', 'トリコリコPLEASE!!', '2016-05-25', 'AZALEA', '/aqours/4.jpg', '2017-04-03 17:27:36', '0', '2017-04-03');
INSERT INTO `song` VALUES ('ps', 'P.S.の向こう侧', '2017-03-24', 'CYaRon!', '/aqours/19_2.jpg', '2017-04-03 17:42:22', '0', '2017-04-03');
INSERT INTO `song` VALUES ('sandan', 'HAPPY PARTY TRAIN', '2017-04-05', 'Aqours', '/aqours/20.jpg', '2017-04-03 17:37:13', '0', '2017-04-03');
INSERT INTO `song` VALUES ('shengdan', 'ジングルベルがとまらない', '2016-11-23', 'Aqours', '/aqours/13.jpg', '2017-04-03 17:36:17', '0', '2017-04-03');
INSERT INTO `song` VALUES ('shengri', '聖なる日の祈り', '2016-11-23', 'Aqours', '/aqours/13.jpg', '2017-04-03 17:36:35', '0', '2017-04-03');
INSERT INTO `song` VALUES ('shuizuguan', '恋になりたい AQUARIUM', '2016-04-27', 'Aqours', '/aqours/2.jpg', '2017-04-03 17:24:39', '0', '2017-04-03');
INSERT INTO `song` VALUES ('st', 'Strawberry Trapper', '2016-06-08', 'GuiltyKiss', '/aqours/5.jpg', '2017-04-03 17:28:37', '0', '2017-04-03');
INSERT INTO `song` VALUES ('weishu', '未熟DREAMER', '2016-09-14', 'Aqours', '/aqours/9.jpg', '2017-04-03 17:34:47', '0', '2017-04-03');
INSERT INTO `song` VALUES ('xiangyi', '想いよひとつになれ', '2016-11-09', 'Aqours', '/aqours/12.jpg', '2017-04-03 17:35:51', '0', '2017-04-03');
INSERT INTO `song` VALUES ('yekong', '夜空はなんでも知ってるの', '2016-05-11', 'CYaRon!', '/aqours/3.jpg', '2017-04-03 17:26:50', '0', '2017-04-03');
