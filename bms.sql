/*
Navicat MySQL Data Transfer

Source Server         : library
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : bms

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2019-10-11 15:53:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL auto_increment,
  `admin_name` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123');
INSERT INTO `admin` VALUES ('2', '聂风', 'aaa');

-- ----------------------------
-- Table structure for `appointment`
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `id` int(11) NOT NULL default '0',
  `book_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `appoint_time` date NOT NULL,
  `book_state` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appointment
-- ----------------------------
INSERT INTO `appointment` VALUES ('5', '1003', 'aa', '2018-03-27', '预约中');
INSERT INTO `appointment` VALUES ('6', '1000', 'aa', '2018-03-29', '预约中');
INSERT INTO `appointment` VALUES ('32', '1004', 'aa', '2018-07-13', '借阅中');
INSERT INTO `appointment` VALUES ('33', '1006', 'aa', '2018-07-13', '借阅中');

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL auto_increment,
  `book_id` int(11) default NULL,
  `book_name` varchar(255) default NULL,
  `number` int(11) default NULL,
  `type` varchar(255) default NULL,
  `press` varchar(255) default NULL,
  `author` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '1000', 'Java程序设计', '10', '计算机', '人民出版社', '张三');
INSERT INTO `book` VALUES ('2', '1002', '资本论', '69', '计算机', '国富出版社', '王二');
INSERT INTO `book` VALUES ('3', '1003', '资本论', '0', '经管', '北京联合出版社', '马克思');
INSERT INTO `book` VALUES ('4', '1004', '浮生六记', '6', '文学', '天津人民出版社', '沈复');
INSERT INTO `book` VALUES ('5', '1005', '荒野求生手册', '7', '生活', '北京联合出版社', 'BearGrylls');
INSERT INTO `book` VALUES ('6', '1006', '新东方四级词汇', '4', '教育', '海豚出版社', '俞敏洪');
INSERT INTO `book` VALUES ('7', '1111', '数据结构', '6', '计算机', '天天出版社', '李四');
INSERT INTO `book` VALUES ('8', '1112', '人工智能简史', '16', '计算机', '人民邮电出版社', '尼克');
INSERT INTO `book` VALUES ('9', '1113', '论语', '5', '计算机', '北京出版社', '孔子');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `user_name` varchar(255) default NULL,
  `user_password` varchar(255) default NULL,
  `phone_number` varchar(255) default NULL,
  `day` int(11) default NULL,
  `overdue` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '55', '44', '546651456', '10', '0');
INSERT INTO `user` VALUES ('2', 'aa', 'bb', '45465', '5', '5');
INSERT INTO `user` VALUES ('3', 'aaa', 'bb', '123', '4', '0');
INSERT INTO `user` VALUES ('4', 'abc', '123456', '18827373434', '5', '0');
INSERT INTO `user` VALUES ('5', 'abcx', '123456', '18827373434', '5', '0');
INSERT INTO `user` VALUES ('6', 'abcxa', '123456', '18827373434', '5', '0');
INSERT INTO `user` VALUES ('7', 'ss', '44', '546651456', '5', '0');
INSERT INTO `user` VALUES ('8', '张小胖', 'aa', '48646', '10', '0');
