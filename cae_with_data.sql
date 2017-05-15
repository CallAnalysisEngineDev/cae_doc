/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50619
Source Host           : 127.0.0.1:3306
Source Database       : cae

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2017-05-15 11:08:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_useraccount` varchar(20) NOT NULL,
  `admin_password` varchar(35) NOT NULL,
  `admin_username` varchar(5) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'kuma', '92ca1d6460be78f636c5bc1cb8e43551', 'kuma');

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
  KEY `song_id` (`song_id`) USING BTREE,
  CONSTRAINT `call_record_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of call_record
-- ----------------------------
INSERT INTO `call_record` VALUES ('CR-3Gq322K', 'dj', '/aqours/LONELY TUNING.html', '22');
INSERT INTO `call_record` VALUES ('CR-3JpX4Pg', 'please', '/aqours/トリコリコPLEASE!!.html', '16');
INSERT INTO `call_record` VALUES ('CR-3z3ErWg', 'mt', '/aqours/MIRAI TICKET.html', '20');
INSERT INTO `call_record` VALUES ('CR-7BtA4Ve', 'yekong', '/aqours/夜空はなんでも知ってるの.html', '2');
INSERT INTO `call_record` VALUES ('CR-7fX2xAJ', 'heros', '/aqours/Aqours☆HEROES.html', '18');
INSERT INTO `call_record` VALUES ('CR-8A8Dvb0', 'jiexing', '/aqours/届かない星だとしても.html', '16');
INSERT INTO `call_record` VALUES ('CR-8F1Qpi6', 'gugu', '/aqours/海岸通りで待ってるよ.html', '25');
INSERT INTO `call_record` VALUES ('CR-9bc0hXK', 'sj', '/aqours/SKY JOURNEY.html', '23');
INSERT INTO `call_record` VALUES ('CR-aAny0u9', '0to1', '/aqours/Step! ZERO to ONE.html', '16');
INSERT INTO `call_record` VALUES ('CR-adVncQG', 'mengyekong', '/aqours/夢で夜空を照らしたい.html', '21');
INSERT INTO `call_record` VALUES ('CR-b0IL7JQ', 'ed/cw', '/aqours/サンシャインぴっかぴか音頭.html', '8');
INSERT INTO `call_record` VALUES ('CR-Be9n7cp', 'op/cw', '/aqours/ハミングフレンド.html', '18');
INSERT INTO `call_record` VALUES ('CR-DLjZYmt', 'ed', '/aqours/ユメ語るよりユメ歌おう.html', '21');
INSERT INTO `call_record` VALUES ('CR-eOPnTHT', 'shengri', '/aqours/聖なる日の祈り.html', '15');
INSERT INTO `call_record` VALUES ('CR-fXVo1ob', 'fenleixue', '/aqours/ときめき分類学.html', '20');
INSERT INTO `call_record` VALUES ('CR-H8PyUs6', 'weishu', '/aqours/未熟DREAMER.html', '21');
INSERT INTO `call_record` VALUES ('CR-iSIL1oA', 'handinhand', '/aqours/決めたよHand in Hand.html', '20');
INSERT INTO `call_record` VALUES ('CR-kmTpGyi', 'kimikoko', '/aqours/君のこころは輝いてるかい？.html', '24');
INSERT INTO `call_record` VALUES ('CR-kzy3XZr', 'bd5', '/aqours/G線上のシンデレラ.html', '18');
INSERT INTO `call_record` VALUES ('CR-nnYYSOx', 'xiangyi', '/aqours/想いよひとつになれ.html', '21');
INSERT INTO `call_record` VALUES ('CR-NwzH7QT', 'bd7', '/aqours/太陽を追いかけろ!.html', '23');
INSERT INTO `call_record` VALUES ('CR-o2fVgUP', 'st', '/aqours/Strawberry Trapper.html', '16');
INSERT INTO `call_record` VALUES ('CR-PAjQQU3', 'bd2', '/aqours/空も心も晴れるから.html', '13');
INSERT INTO `call_record` VALUES ('CR-Q3N1b4W', 'bd1', '/aqours/Pops heartで踊るんだもん！.html', '18');
INSERT INTO `call_record` VALUES ('CR-QeWCVsU', 'bd3', '/aqours/Waku-Waku-Week!.html', '25');
INSERT INTO `call_record` VALUES ('CR-Qsg2phn', 'daydayday', '/aqours/元気全開DAY! DAY! DAY!.html', '20');
INSERT INTO `call_record` VALUES ('CR-s0ByrhT', 'sandan', '/aqours/HAPPY PARTY TRAIN.html', '24');
INSERT INTO `call_record` VALUES ('CR-SAKnoHo', 'shengdan', '/aqours/ジングルベルがとまらない.html', '18');
INSERT INTO `call_record` VALUES ('CR-tagvB5T', 'bd6', '/aqours/スリリング·ワンウェイ.html', '21');
INSERT INTO `call_record` VALUES ('CR-tdMGXHo', 'bd4', '/aqours/Daydream Warrior.html', '18');
INSERT INTO `call_record` VALUES ('CR-TeMgUm8', 'fever', '/aqours/Guilty Eyes Fever.html', '22');
INSERT INTO `call_record` VALUES ('CR-UDK0pXJ', 'daisuki', '/aqours/ダイスキだったらダイジョウブ!.html', '21');
INSERT INTO `call_record` VALUES ('CR-uhKVXo7', 'ps', '/aqours/P.S.の向こう側.html', '22');
INSERT INTO `call_record` VALUES ('CR-vcCD8py', 'shojo', '/aqours/少女以上の恋がしたい.html', '25');
INSERT INTO `call_record` VALUES ('CR-W1VCo77', 'daiai', '/aqours/待ってて愛のうた.html', '16');
INSERT INTO `call_record` VALUES ('CR-WMwuy7J', 'shuizuguan', '/aqours/恋になりたいAQUARIUM.html', '21');
INSERT INTO `call_record` VALUES ('CR-WXKAaH8', 'jinweilai', '/aqours/近未来ハッピーエンド.html', '25');
INSERT INTO `call_record` VALUES ('CR-Yawopdw', 'op', '/aqours/青空Jumping Heart.html', '25');
INSERT INTO `call_record` VALUES ('CR-zvj8GGK', 'gkgn', '/aqours/Guilty Night, Guilty Kiss!.html', '22');

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
  `song_create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `song_click` int(11) NOT NULL DEFAULT '0',
  `song_last_modify_time` date NOT NULL,
  `song_video` tinyint(4) NOT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES ('0to1', 'Step! ZERO to ONE', '2015-10-07', 'Aqours', '/aqours/1.jpg', '2017-04-08 18:01:16', '34', '2017-04-03', '3');
INSERT INTO `song` VALUES ('bd1', 'Pops heartで踊るんだもん！', '2016-09-27', 'Aqours', '/aqours/10.jpg', '2017-04-08 18:20:40', '15', '2017-04-03', '20');
INSERT INTO `song` VALUES ('bd2', '空も心も晴れるから', '2016-10-26', 'Aqours', '/aqours/11_1.jpg', '2017-04-07 11:42:12', '2', '2017-04-03', '0');
INSERT INTO `song` VALUES ('bd3', 'Waku-Waku-Week!', '2016-11-25', 'Aqours', '/aqours/14_1.jpg', '2017-04-07 21:31:30', '10', '2017-05-12', '24');
INSERT INTO `song` VALUES ('bd4', 'Daydream Warrior', '2016-12-22', 'Aqours', '/aqours/15.jpg', '2017-04-08 17:34:48', '50', '2017-04-03', '25');
INSERT INTO `song` VALUES ('bd5', 'G線上のシンデレラ', '2017-01-27', 'Aqours', '/aqours/16.jpg', '2017-04-07 11:38:33', '1', '2017-04-03', '26');
INSERT INTO `song` VALUES ('bd6', 'スリリング·ワンウェイ', '2017-02-24', 'Aqours', '/aqours/17_1.jpg', '2017-04-03 17:34:02', '0', '2017-04-03', '27');
INSERT INTO `song` VALUES ('bd7', '太陽を追いかけろ!', '2017-03-24', 'Aqours', '/aqours/18_2.jpg', '2017-04-08 18:22:26', '33', '2017-04-08', '28');
INSERT INTO `song` VALUES ('daiai', '待ってて愛のうた', '2016-04-27', 'Aqours', '/aqours/2.jpg', '2017-04-07 22:02:59', '3', '2017-04-03', '5');
INSERT INTO `song` VALUES ('daisuki', 'ダイスキだったらダイジョウブ!', '2016-08-03', 'Aqours', '/aqours/7.jpg', '2017-04-07 21:46:30', '5', '2017-04-03', '16');
INSERT INTO `song` VALUES ('daydayday', '元気全開DAY！DAY！DAY！', '2016-05-11', 'CYaRon!', '/aqours/3.jpg', '2017-04-07 22:26:38', '18', '2017-04-03', '7');
INSERT INTO `song` VALUES ('dj', 'LONELY TUNING', '2017-03-24', 'AZALEA', '/aqours/19_3.jpg', '2017-04-07 21:43:40', '6', '2017-04-03', '0');
INSERT INTO `song` VALUES ('ed', 'ユメ語るよりユメ歌おう', '2016-08-24', 'Aqours', '/aqours/8.jpg', '2017-04-03 17:34:02', '0', '2017-04-03', '17');
INSERT INTO `song` VALUES ('ed/cw', 'サンシャインぴっかぴか音頭', '2016-08-24', 'Aqours', '/aqours/8.jpg', '2017-04-07 11:40:10', '3', '2017-04-03', '18');
INSERT INTO `song` VALUES ('fenleixue', 'ときめき分類学', '2016-05-25', 'AZALEA', '/aqours/4.jpg', '2017-04-07 22:14:36', '3', '2017-04-03', '10');
INSERT INTO `song` VALUES ('fever', 'Guilty Eyes Fever', '2017-03-24', 'GuiltyKiss', '/aqours/19_1.jpg', '2017-04-08 18:01:34', '5', '2017-04-03', '0');
INSERT INTO `song` VALUES ('gkgn', 'Guilty Kiss, Guilty Night', '2016-06-08', 'GuiltyKiss', '/aqours/5.jpg', '2017-04-07 23:36:51', '14', '2017-04-03', '12');
INSERT INTO `song` VALUES ('gugu', '海岸通りで待ってるよ', '2017-05-10', 'CyaRon!', '/aqours/21.jpg', '2017-05-12 20:06:00', '13', '2017-05-12', '0');
INSERT INTO `song` VALUES ('handinhand', '決めたよHand in Hand', '2016-08-03', 'Aqours', '/aqours/7.jpg', '2017-04-07 21:38:07', '4', '2017-04-03', '15');
INSERT INTO `song` VALUES ('heros', 'Aqours☆HEROES', '2015-10-07', 'Aqours', '/aqours/1.jpg', '2017-04-08 18:01:09', '53', '2017-04-03', '2');
INSERT INTO `song` VALUES ('jiexing', '届かない星だとしても', '2016-04-27', 'Aqours', '/aqours/2.jpg', '2017-04-07 22:05:02', '3', '2017-04-03', '6');
INSERT INTO `song` VALUES ('jinweilai', '近未来ハッピーエンド', '2017-05-10', 'CyaRon!', '/aqours/21.jpg', '2017-05-12 20:05:32', '8', '2017-05-12', '0');
INSERT INTO `song` VALUES ('kimikoko', '君のこころは輝いてるかい？', '2015-10-07', 'Aqours', '/aqours/1.jpg', '2017-04-07 21:47:10', '22', '2017-04-16', '1');
INSERT INTO `song` VALUES ('mengyekong', '夢で夜空を照らしたい', '2016-09-14', 'Aqours', '/aqours/9.jpg', '2017-04-07 22:13:40', '2', '2017-04-03', '0');
INSERT INTO `song` VALUES ('mt', 'MIRAI TICKET', '2016-11-09', 'Aqours', '/aqours/12.jpg', '2017-04-07 21:51:54', '11', '2017-04-03', '22');
INSERT INTO `song` VALUES ('op', '青空Jumping Heart', '2016-07-20', 'Aqours', '/aqours/6.jpg', '2017-04-08 16:56:58', '21', '2017-05-12', '13');
INSERT INTO `song` VALUES ('op/cw', 'ハミングフレンド', '2016-07-20', 'Aqours', '/aqours/6.jpg', '2017-04-07 21:46:25', '4', '2017-04-03', '14');
INSERT INTO `song` VALUES ('please', 'トリコリコPLEASE!!', '2016-05-25', 'AZALEA', '/aqours/4.jpg', '2017-04-08 18:03:04', '20', '2017-04-03', '9');
INSERT INTO `song` VALUES ('ps', 'P.S.の向こう侧', '2017-03-24', 'CYaRon!', '/aqours/19_2.jpg', '2017-04-08 16:57:05', '8', '2017-04-03', '0');
INSERT INTO `song` VALUES ('sandan', 'HAPPY PARTY TRAIN', '2017-04-05', 'Aqours', '/aqours/20.jpg', '2017-04-08 18:19:50', '95', '2017-04-16', '0');
INSERT INTO `song` VALUES ('shengdan', 'ジングルベルがとまらない', '2016-11-23', 'Aqours', '/aqours/13.jpg', '2017-04-07 21:59:59', '4', '2017-04-03', '23');
INSERT INTO `song` VALUES ('shengri', '聖なる日の祈り', '2016-11-23', 'Aqours', '/aqours/13.jpg', '2017-04-07 21:47:56', '4', '2017-04-03', '0');
INSERT INTO `song` VALUES ('shojo', '少女以上の恋がしたい', '2017-04-05', 'Aqours', '/aqours/20.jpg', '2017-04-08 18:13:27', '15', '2017-05-12', '0');
INSERT INTO `song` VALUES ('shuizuguan', '恋になりたい AQUARIUM', '2016-04-27', 'Aqours', '/aqours/2.jpg', '2017-04-08 18:20:02', '107', '2017-04-03', '4');
INSERT INTO `song` VALUES ('sj', 'SKY JOURNEY', '2017-04-05', 'Aqours', '/aqours/20.jpg', '2017-04-08 18:19:57', '32', '2017-04-08', '0');
INSERT INTO `song` VALUES ('st', 'Strawberry Trapper', '2016-06-08', 'GuiltyKiss', '/aqours/5.jpg', '2017-04-08 16:57:04', '8', '2017-04-03', '11');
INSERT INTO `song` VALUES ('weishu', '未熟DREAMER', '2016-09-14', 'Aqours', '/aqours/9.jpg', '2017-04-07 21:36:19', '6', '2017-04-03', '19');
INSERT INTO `song` VALUES ('xiangyi', '想いよひとつになれ', '2016-11-09', 'Aqours', '/aqours/12.jpg', '2017-04-07 22:13:46', '4', '2017-04-03', '21');
INSERT INTO `song` VALUES ('yekong', '夜空はなんでも知ってるの', '2016-05-11', 'CYaRon!', '/aqours/3.jpg', '2017-04-07 21:30:47', '8', '2017-04-03', '8');
