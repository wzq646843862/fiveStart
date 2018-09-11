/*
Navicat MySQL Data Transfer

Source Server         : PHP
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : myshop

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-08-08 19:27:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shop_cart
-- ----------------------------
DROP TABLE IF EXISTS `shop_cart`;
CREATE TABLE `shop_cart` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL,
  `gid` int(10) unsigned NOT NULL,
  `cnt` tinyint(4) DEFAULT NULL,
  `otime` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_cart
-- ----------------------------

-- ----------------------------
-- Table structure for shop_detail
-- ----------------------------
DROP TABLE IF EXISTS `shop_detail`;
CREATE TABLE `shop_detail` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oid` char(18) DEFAULT NULL,
  `gid` int(10) unsigned NOT NULL,
  `buyprice` decimal(6,2) DEFAULT NULL,
  `buycnt` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_detail
-- ----------------------------
INSERT INTO `shop_detail` VALUES ('1', '201701052115181913', '3', '120.00', '2');
INSERT INTO `shop_detail` VALUES ('2', '201701052115181913', '1', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('3', '201701061143106191', '3', '120.00', '2');
INSERT INTO `shop_detail` VALUES ('4', '201701061350238529', '3', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('5', '201701061356509760', '4', '50.00', '1');
INSERT INTO `shop_detail` VALUES ('6', '201701061404496844', '1', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('7', '201701061443329846', '3', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('8', '201701061523137796', '1', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('9', '201701061526503375', '3', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('10', '201701061530008166', '1', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('11', '201701061849392000', '1', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('12', '201701081606577462', '4', '50.00', '1');
INSERT INTO `shop_detail` VALUES ('13', '201701081614423585', '3', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('14', '201701081651057616', '4', '50.00', '1');
INSERT INTO `shop_detail` VALUES ('15', '201701081656548984', '3', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('16', '201701081658315749', '3', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('17', '201701090834294889', '3', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('18', '201701090835454051', '5', '13.00', '1');
INSERT INTO `shop_detail` VALUES ('19', '201701090839451463', '6', '200.00', '1');
INSERT INTO `shop_detail` VALUES ('20', '201701090840103064', '5', '13.00', '1');
INSERT INTO `shop_detail` VALUES ('21', '201701090859073105', '5', '13.00', '1');
INSERT INTO `shop_detail` VALUES ('22', '201701090859073105', '6', '200.00', '1');
INSERT INTO `shop_detail` VALUES ('23', '201701090946495100', '5', '13.00', '1');
INSERT INTO `shop_detail` VALUES ('24', '201701090947068051', '6', '200.00', '1');
INSERT INTO `shop_detail` VALUES ('25', '201701091101577074', '1', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('26', '201701091130475874', '5', '13.00', '1');
INSERT INTO `shop_detail` VALUES ('27', '201701091406582194', '7', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('28', '201701091406582194', '3', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('29', '201701091555196319', '6', '200.00', '1');
INSERT INTO `shop_detail` VALUES ('30', null, '0', null, null);
INSERT INTO `shop_detail` VALUES ('31', '201703312322396271', '1', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('32', '201704012000025219', '1', '120.00', '1');
INSERT INTO `shop_detail` VALUES ('33', '201704012000025219', '7', '120.00', '1');

-- ----------------------------
-- Table structure for shop_goods
-- ----------------------------
DROP TABLE IF EXISTS `shop_goods`;
CREATE TABLE `shop_goods` (
  `gid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gname` varchar(120) NOT NULL,
  `tid` int(10) unsigned DEFAULT '0',
  `price` decimal(6,2) DEFAULT '0.00',
  `cnt` int(11) DEFAULT '0',
  `scnt` int(10) unsigned DEFAULT '0',
  `vcnt` int(10) unsigned DEFAULT '0',
  `gpice` varchar(100) DEFAULT NULL,
  `gdesc` text,
  `status` int(10) unsigned DEFAULT '0',
  `ctime` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_goods
-- ----------------------------
INSERT INTO `shop_goods` VALUES ('1', '八匹狼', '6', '120.00', '8', '18', '0', '201612301339312318.jpg', '真的不错，你值得拥有', '2', '1483079515');
INSERT INTO `shop_goods` VALUES ('3', '裙子', '7', '120.00', '-6', '16', '0', '201612301628365680.jpg', '你值得额应该', '2', '1483086516');
INSERT INTO `shop_goods` VALUES ('4', '五花肉', '11', '50.00', '31', '34', '0', '201612301629411308.jpg', '可靠的', '3', '1483086581');
INSERT INTO `shop_goods` VALUES ('5', '益达', '16', '13.00', '5', '5', '0', '201701061647263919.jpg', '真的很好，你可以拥有', '1', '1483692446');
INSERT INTO `shop_goods` VALUES ('6', '皮质', '19', '200.00', '6', '4', '0', '201701061648292506.jpeg', '很好看，质量不错', '2', '1483692509');
INSERT INTO `shop_goods` VALUES ('7', 'HHHH', '8', '120.00', '3', '2', '0', '201701091401036064.jpg', '1541212', '2', '1483941663');

-- ----------------------------
-- Table structure for shop_orders
-- ----------------------------
DROP TABLE IF EXISTS `shop_orders`;
CREATE TABLE `shop_orders` (
  `oid` char(18) NOT NULL,
  `ormb` decimal(9,2) NOT NULL,
  `uid` int(10) unsigned DEFAULT NULL,
  `rec` varchar(15) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `status` int(10) unsigned DEFAULT '0',
  `umsg` varchar(255) DEFAULT NULL,
  `otime` int(10) unsigned DEFAULT NULL,
  `ocnt` int(11) DEFAULT '0',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_orders
-- ----------------------------
INSERT INTO `shop_orders` VALUES ('201701061404496844', '120.00', '12', 'wcc', '中国', '15038323965', '2', '11111', '1483682689', '1');
INSERT INTO `shop_orders` VALUES ('201701061443329846', '120.00', '12', 'aa', '郑州', '15032633012', '2', '', '1483685012', '1');
INSERT INTO `shop_orders` VALUES ('201701061530008166', '120.00', '1', '吴志强', '北京市昌平区', '15898695698', '3', '', '1483687800', '1');
INSERT INTO `shop_orders` VALUES ('201701061849392000', '120.00', '1', 'admin', '北京市昌平区', '15265658723', '3', '', '1483699779', '1');
INSERT INTO `shop_orders` VALUES ('201701081614423585', '120.00', '1', 'admin', '北京市昌平区', '15265658723', '3', 'EQWEWQ', '1483863282', '1');
INSERT INTO `shop_orders` VALUES ('201701081651057616', '50.00', '1', 'admin', '北京市昌平区', '15265658723', '3', '', '1483865465', '1');
INSERT INTO `shop_orders` VALUES ('201701081656548984', '120.00', '1', 'admin', '北京市昌平区', '15265658723', '3', '', '1483865814', '1');
INSERT INTO `shop_orders` VALUES ('201701081658315749', '120.00', '1', 'admin', '北京市昌平区', '15265658723', '3', '', '1483865911', '1');
INSERT INTO `shop_orders` VALUES ('201701090834294889', '120.00', '1', 'admin', '北京市昌平区', '15265658723', '2', '', '1483922069', '1');
INSERT INTO `shop_orders` VALUES ('201701090835454051', '13.00', '1', 'admin', '北京市昌平区', '15265658723', '2', '', '1483922145', '1');
INSERT INTO `shop_orders` VALUES ('201701090839451463', '200.00', '1', 'ljl', '北京市昌平区', '15265658723', '2', '', '1483922385', '1');
INSERT INTO `shop_orders` VALUES ('201701090840103064', '13.00', '1', 'wcs', '北京市昌平区', '15265658723', '2', '', '1483922410', '1');
INSERT INTO `shop_orders` VALUES ('201701090859073105', '213.00', '2', 'aaaa', '河南', '12354656', '3', '', '1483923547', '2');
INSERT INTO `shop_orders` VALUES ('201701090946495100', '13.00', '2', 'aaaa', '2132134', '大大', '3', '42134', '1483926409', '1');
INSERT INTO `shop_orders` VALUES ('201701090947068051', '200.00', '2', 'aaaa', '2313', 'rqwerqw', '2', '4545', '1483926426', '1');
INSERT INTO `shop_orders` VALUES ('201701091101577074', '120.00', '17', 'dada', 'unknow', '123123123', '3', '', '1483930917', '1');
INSERT INTO `shop_orders` VALUES ('201701091130475874', '13.00', '1', 'admin', '北京市昌平区', '15265658723', '1', '', '1483932647', '1');
INSERT INTO `shop_orders` VALUES ('201701091406582194', '240.00', '19', 'QQQQ', 'W113E', '1', '3', '111123', '1483942018', '2');
INSERT INTO `shop_orders` VALUES ('201701091555196319', '200.00', '20', 'mmm', 'q1211', '1', '1', '443232', '1483948519', '1');
INSERT INTO `shop_orders` VALUES ('201703312322396271', '120.00', '1', 'admin', '北京市昌平区', '15265658723', '1', 'asbg', '1490973759', '1');
INSERT INTO `shop_orders` VALUES ('201704012000025219', '240.00', '1', 'admin', '北京市昌平区', '15265658723', '1', '', '1491048002', '2');

-- ----------------------------
-- Table structure for shop_type
-- ----------------------------
DROP TABLE IF EXISTS `shop_type`;
CREATE TABLE `shop_type` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tname` varchar(120) NOT NULL,
  `pid` int(10) unsigned DEFAULT '0',
  `path` varchar(120) DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_type
-- ----------------------------
INSERT INTO `shop_type` VALUES ('1', '服装', '0', '0,');
INSERT INTO `shop_type` VALUES ('2', '食品', '0', '0,');
INSERT INTO `shop_type` VALUES ('3', '电器', '0', '0,');
INSERT INTO `shop_type` VALUES ('4', '兵器', '0', '0,');
INSERT INTO `shop_type` VALUES ('5', '书籍', '0', '0,');
INSERT INTO `shop_type` VALUES ('6', '男装', '1', '0,1,');
INSERT INTO `shop_type` VALUES ('7', '女装', '1', '0,1,');
INSERT INTO `shop_type` VALUES ('8', '童装', '1', '0,1,');
INSERT INTO `shop_type` VALUES ('11', '肉类', '2', '0,2,');
INSERT INTO `shop_type` VALUES ('12', '风扇', '3', '0,3,');
INSERT INTO `shop_type` VALUES ('13', '长剑', '4', '0,4,');
INSERT INTO `shop_type` VALUES ('14', '西游记', '5', '0,5,');
INSERT INTO `shop_type` VALUES ('15', '生活用品', '0', '0,');
INSERT INTO `shop_type` VALUES ('16', '毛巾', '15', '0,15,');
INSERT INTO `shop_type` VALUES ('17', '牙刷', '15', '0,15,');
INSERT INTO `shop_type` VALUES ('18', '家具', '0', '0,');
INSERT INTO `shop_type` VALUES ('19', '沙发', '18', '0,18,');
INSERT INTO `shop_type` VALUES ('20', 'HHHH', '0', '0,');
INSERT INTO `shop_type` VALUES ('21', 'BBBB', '20', '0,20,');

-- ----------------------------
-- Table structure for shop_users
-- ----------------------------
DROP TABLE IF EXISTS `shop_users`;
CREATE TABLE `shop_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uname` char(20) NOT NULL,
  `upwd` char(32) NOT NULL,
  `sex` enum('w','m','x') DEFAULT 'w',
  `uface` varchar(50) DEFAULT NULL,
  `birth` int(10) unsigned DEFAULT '0',
  `tel` varchar(15) DEFAULT 'unknow',
  `addr` varchar(100) DEFAULT 'unknow',
  `auth` int(10) unsigned DEFAULT '0',
  `email` varchar(30) DEFAULT 'unknow',
  `regtime` int(10) unsigned DEFAULT NULL,
  `sign` int(10) unsigned DEFAULT '0',
  `stime` int(10) unsigned DEFAULT NULL,
  `jifen` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_users
-- ----------------------------
INSERT INTO `shop_users` VALUES ('1', 'admin', '202cb962ac59075b964b07152d234b70', 'm', '201701061054161055.jpg', '0', '15265658723', '北京市昌平区', '1', 'unknow', '1482891265', '6', '1483931865', '8990');
INSERT INTO `shop_users` VALUES ('2', 'aaaa', 'c81e728d9d4c2f636f067f89cc14862c', 'w', '201701091144121514.gif', '0', '1215454554', '111112554', '3', 'unknow', '1482891282', '0', '1211232154', '90');
INSERT INTO `shop_users` VALUES ('3', 'bbbb', 'c4ca4238a0b923820dcc509a6f75849b', 'm', null, '0', '', 'unknow', '3', 'unknow', '1482891293', '1', '1483934653', '0');
INSERT INTO `shop_users` VALUES ('4', 'cccc', 'c4ca4238a0b923820dcc509a6f75849b', 'w', null, '0', '', 'unknow', '3', 'unknow', '1482891306', '1', '1483934799', '0');
INSERT INTO `shop_users` VALUES ('5', 'dddd', 'c4ca4238a0b923820dcc509a6f75849b', 'm', null, '0', '', 'unknow', '3', 'unknow', '1482891321', '0', null, '0');
INSERT INTO `shop_users` VALUES ('6', 'eeee', 'c4ca4238a0b923820dcc509a6f75849b', 'm', null, '0', '', 'unknow', '3', 'unknow', '1482891335', '0', null, '0');
INSERT INTO `shop_users` VALUES ('7', 'ffff', 'c4ca4238a0b923820dcc509a6f75849b', 'm', null, '0', '', 'unknow', '2', 'unknow', '1482891345', '0', null, '0');
INSERT INTO `shop_users` VALUES ('8', 'gggg', 'c4ca4238a0b923820dcc509a6f75849b', 'm', null, '0', '', 'unknow', '3', 'unknow', '1482891358', '0', null, '0');
INSERT INTO `shop_users` VALUES ('9', 'abcd', 'c4ca4238a0b923820dcc509a6f75849b', 'm', null, '0', '', 'unknow', '1', 'unknow', '1482891370', '0', null, '0');
INSERT INTO `shop_users` VALUES ('10', 'hhhh', '202cb962ac59075b964b07152d234b70', 'm', null, '0', '', 'unknow', '1', 'unknow', '1482972675', '0', null, '0');
INSERT INTO `shop_users` VALUES ('14', 'wcc', '202cb962ac59075b964b07152d234b70', 'm', null, '0', '12345678912', 'unknow', '2', 'unknow', '1483928045', '0', null, '0');
INSERT INTO `shop_users` VALUES ('16', 'www', 'c4ca4238a0b923820dcc509a6f75849b', 'w', null, '0', '1', 'unknow', '3', '', '1483928931', '0', null, '0');
INSERT INTO `shop_users` VALUES ('17', 'dada', 'b01abf84324066bdb4eed4d5bf20f887', 'w', null, '0', '123123123', 'unknow', '3', '', '1483930894', '0', null, '1200');
INSERT INTO `shop_users` VALUES ('18', 'HHHH', 'c4ca4238a0b923820dcc509a6f75849b', 'm', null, '0', '1235456', 'unknow', '3', 'unknow', '1483941523', '0', null, '0');
INSERT INTO `shop_users` VALUES ('19', 'QQQQ', 'c4ca4238a0b923820dcc509a6f75849b', 'w', '201701091406033546.jpg', '0', '1', '11212', '3', '', '1483941937', '1', '1483941968', '2100');
INSERT INTO `shop_users` VALUES ('20', 'mmm', 'c4ca4238a0b923820dcc509a6f75849b', 'w', null, '0', '1', 'unknow', '3', '', '1483948482', '1', '1483948494', '1500');
INSERT INTO `shop_users` VALUES ('21', '123', '202cb962ac59075b964b07152d234b70', 'w', null, '0', '1111', 'unknow', '3', 'unknow', '1494332453', '0', null, '0');
INSERT INTO `shop_users` VALUES ('22', '333', '202cb962ac59075b964b07152d234b70', 'w', null, '0', '1111', 'unknow', '3', 'unknow', '1494332521', '0', null, '0');
INSERT INTO `shop_users` VALUES ('23', '444', '202cb962ac59075b964b07152d234b70', 'w', null, '0', '1111', 'unknow', '3', 'unknow', '1494332708', '0', null, '0');
