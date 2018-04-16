/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : bookstore

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-04-16 19:16:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `press` varchar(255) DEFAULT NULL,
  `isbn` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('1', 'Head First HTML与CSS 第2版', '（美）罗布森（Robson,E）', '98.00', '中国电力出版社', '978-7-5123-4477-8');
INSERT INTO `books` VALUES ('2', '软件工程：实践者的研究方法（第8版）', '（美）罗杰 S.普莱斯曼（Roger S.Pressman）', '59.00', '机械工业出版社', '978-7-111-55501-8');
INSERT INTO `books` VALUES ('3', 'Head First Servlets and JSP：第二版：中文版	', '（美）巴萨姆（Basham,B.）', '118.00', '中国电力出版社', '978-7-5083-8897-7');
INSERT INTO `books` VALUES ('4', '大学计算机第四版', '蒋加伏', '38.00', '北京邮电大学出版社', '978-7-5635-3444-9');
INSERT INTO `books` VALUES ('5', '习近平谈治国理政', '国务院新闻办公室会同中央文献研究室、中国外文局', '80.00', '外文出版社', '978-7-1190-9087-0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'mg', '123');
INSERT INTO `user` VALUES ('2', 'cxy', '123');
SET FOREIGN_KEY_CHECKS=1;
