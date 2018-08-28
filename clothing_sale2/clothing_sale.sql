/*
Navicat MySQL Data Transfer

Source Server         : bbs
Source Server Version : 50027
Source Host           : localhost:3306
Source Database       : clothing_sale

Target Server Type    : MYSQL
Target Server Version : 50027
File Encoding         : 65001

Date: 2018-08-28 11:23:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cs_addr
-- ----------------------------
DROP TABLE IF EXISTS `cs_addr`;
CREATE TABLE `cs_addr` (
  `id` int(11) NOT NULL auto_increment,
  `addr` varchar(255) default NULL,
  `uid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `cs_addr_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `cs_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_addr
-- ----------------------------
INSERT INTO `cs_addr` VALUES ('1', '湖南省衡阳市', '2');
INSERT INTO `cs_addr` VALUES ('2', '湖南郴州市', '2');

-- ----------------------------
-- Table structure for cs_bill
-- ----------------------------
DROP TABLE IF EXISTS `cs_bill`;
CREATE TABLE `cs_bill` (
  `id` int(11) NOT NULL auto_increment,
  `payer` int(11) default NULL,
  `payee` int(11) default NULL,
  `money` double(11,2) default NULL,
  `time` datetime default NULL,
  `detail` varchar(255) default NULL,
  `method` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `payer` (`payer`),
  KEY `payee` (`payee`),
  CONSTRAINT `cs_bill_ibfk_1` FOREIGN KEY (`payer`) REFERENCES `cs_user` (`uid`),
  CONSTRAINT `cs_bill_ibfk_2` FOREIGN KEY (`payee`) REFERENCES `cs_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_bill
-- ----------------------------
INSERT INTO `cs_bill` VALUES ('1', '2', '2', '11.00', '2018-08-26 18:36:58', '充值', '支付宝');

-- ----------------------------
-- Table structure for cs_board
-- ----------------------------
DROP TABLE IF EXISTS `cs_board`;
CREATE TABLE `cs_board` (
  `id` int(255) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `parentid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_board
-- ----------------------------
INSERT INTO `cs_board` VALUES ('1', '男装', '0');
INSERT INTO `cs_board` VALUES ('2', '女装', '0');
INSERT INTO `cs_board` VALUES ('3', '童装', '0');

-- ----------------------------
-- Table structure for cs_cart
-- ----------------------------
DROP TABLE IF EXISTS `cs_cart`;
CREATE TABLE `cs_cart` (
  `id` int(11) NOT NULL auto_increment,
  `count` int(11) default NULL,
  `scid` int(11) default NULL,
  `uid` int(11) default NULL,
  `time` varchar(255) default NULL,
  `status` int(11) default '0',
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`),
  KEY `scid` (`scid`),
  CONSTRAINT `cs_cart_ibfk_1` FOREIGN KEY (`scid`) REFERENCES `size_color` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_cart
-- ----------------------------
INSERT INTO `cs_cart` VALUES ('116', '19', '1', '2', '2018-08-28 11:22:18', '0');
INSERT INTO `cs_cart` VALUES ('117', '19', '2', '2', '2018-08-28 11:21:17', '0');
INSERT INTO `cs_cart` VALUES ('119', '2', '3', '2', '2018-08-28 10:53:45', '0');

-- ----------------------------
-- Table structure for cs_goods
-- ----------------------------
DROP TABLE IF EXISTS `cs_goods`;
CREATE TABLE `cs_goods` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `image` varchar(255) default NULL,
  `sid` int(11) default NULL,
  `price` double(11,0) default NULL,
  `time` datetime default NULL,
  `bid` int(11) default NULL,
  `describe` varchar(255) default NULL,
  `rebate` double(11,2) default NULL,
  `feature` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `saler_id` (`sid`),
  KEY `board_id` (`bid`),
  CONSTRAINT `board_id` FOREIGN KEY (`bid`) REFERENCES `cs_board` (`id`),
  CONSTRAINT `saler_id` FOREIGN KEY (`sid`) REFERENCES `cs_saler` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_goods
-- ----------------------------
INSERT INTO `cs_goods` VALUES ('1', 'PUMA彪马官方 男子连帽长袖针织卫衣 ', '01.jpg', '1', '222', '2018-08-17 16:50:10', '1', null, '0.80', null);
INSERT INTO `cs_goods` VALUES ('2', '222', '02.jpg', '1', '222', '2018-08-17 16:56:11', '1', null, '0.70', null);
INSERT INTO `cs_goods` VALUES ('3', '333', '03.jpg', '1', '111', '2018-08-18 11:18:06', '1', null, '0.40', null);
INSERT INTO `cs_goods` VALUES ('4', '444', '05.jpg', '1', '233', '2018-08-31 15:13:47', '2', null, '0.90', null);
INSERT INTO `cs_goods` VALUES ('5', '555', '04.jpg', '1', '144', '2018-08-23 15:13:51', '2', null, '1.00', null);
INSERT INTO `cs_goods` VALUES ('6', '新时尚', '06.jpg', '1', '211', '2018-08-19 17:16:38', '2', null, '1.00', null);
INSERT INTO `cs_goods` VALUES ('7', '1111', null, '1', '155', null, '2', null, '0.90', null);
INSERT INTO `cs_goods` VALUES ('8', '1', null, '1', '233', null, '2', null, '0.80', null);
INSERT INTO `cs_goods` VALUES ('9', '11111', null, '1', '622', null, '2', null, '0.60', null);

-- ----------------------------
-- Table structure for cs_orders
-- ----------------------------
DROP TABLE IF EXISTS `cs_orders`;
CREATE TABLE `cs_orders` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `time` datetime default NULL,
  `status` int(255) default '0' COMMENT '订单状态  0 已支付 1未支付',
  `comment` varchar(255) default NULL,
  `level` varchar(11) default NULL,
  `isdelete` int(11) default '0',
  `orderAddr` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `cs_orders_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `cs_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_orders
-- ----------------------------
INSERT INTO `cs_orders` VALUES ('1', '2', '2018-08-26 09:19:04', '0', '好好好好', '3', '0', null);
INSERT INTO `cs_orders` VALUES ('27', '2', '2018-08-28 00:00:00', '0', null, null, '0', '湖南郴州市');
INSERT INTO `cs_orders` VALUES ('28', '2', '2018-08-28 00:00:00', '0', null, null, '0', '湖南省衡阳市');
INSERT INTO `cs_orders` VALUES ('29', '2', '2018-08-28 00:00:00', '0', null, null, '0', '湖南省衡阳市');
INSERT INTO `cs_orders` VALUES ('30', '2', '2018-08-28 00:00:00', '0', null, null, '0', '湖南省衡阳市');

-- ----------------------------
-- Table structure for cs_saler
-- ----------------------------
DROP TABLE IF EXISTS `cs_saler`;
CREATE TABLE `cs_saler` (
  `id` int(11) NOT NULL,
  `name` varchar(255) default NULL,
  `status` int(11) default NULL COMMENT '0 正常  1 被拉黑',
  `image` varchar(255) default NULL,
  `uid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `cs_saler_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `cs_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_saler
-- ----------------------------
INSERT INTO `cs_saler` VALUES ('1', null, null, null, null);

-- ----------------------------
-- Table structure for cs_user
-- ----------------------------
DROP TABLE IF EXISTS `cs_user`;
CREATE TABLE `cs_user` (
  `uid` int(255) NOT NULL auto_increment,
  `uname` varchar(255) default NULL,
  `pwd` varchar(255) NOT NULL,
  `email` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `age` int(11) default NULL,
  `sex` int(255) default NULL,
  `money` int(255) default NULL,
  `status` int(11) default NULL COMMENT '0 正常  1  封号',
  `nickname` varchar(255) default NULL,
  `role` int(11) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_user
-- ----------------------------
INSERT INTO `cs_user` VALUES ('1', '李磊', '123', '123123', '15522233311', '21', '1', '100', '0', '拉闸', null);
INSERT INTO `cs_user` VALUES ('2', '张天龙', '3049a1f0f1c808cdaa4fbed0e01649b1', '1253633565@qq.com', '13875675748', '18', '1', '122', '0', '爱你哟', null);
INSERT INTO `cs_user` VALUES ('3', null, '3049a1f0f1c808cdaa4fbed0e01649b1', '3350526516@qq.com', null, null, null, null, null, '傻傻爱', null);
INSERT INTO `cs_user` VALUES ('4', null, '3049a1f0f1c808cdaa4fbed0e01649b1', '125365@qq.com', null, null, null, null, null, '啊啊', null);

-- ----------------------------
-- Table structure for goods_orders
-- ----------------------------
DROP TABLE IF EXISTS `goods_orders`;
CREATE TABLE `goods_orders` (
  `id` int(11) NOT NULL auto_increment,
  `scid` int(11) default NULL,
  `oid` int(11) default NULL,
  `count` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_orders
-- ----------------------------
INSERT INTO `goods_orders` VALUES ('1', '2', '2', '3');
INSERT INTO `goods_orders` VALUES ('2', '3', '2', '2');
INSERT INTO `goods_orders` VALUES ('3', '4', '1', '1');
INSERT INTO `goods_orders` VALUES ('4', '2', '5', '7');
INSERT INTO `goods_orders` VALUES ('5', '2', '5', '5');
INSERT INTO `goods_orders` VALUES ('6', '2', '5', '2');
INSERT INTO `goods_orders` VALUES ('7', '4', '5', '2');
INSERT INTO `goods_orders` VALUES ('8', '4', '5', '1');
INSERT INTO `goods_orders` VALUES ('9', '5', '5', '4');
INSERT INTO `goods_orders` VALUES ('10', '2', '6', '7');
INSERT INTO `goods_orders` VALUES ('11', '2', '6', '5');
INSERT INTO `goods_orders` VALUES ('12', '2', '6', '2');
INSERT INTO `goods_orders` VALUES ('13', '4', '6', '2');
INSERT INTO `goods_orders` VALUES ('14', '4', '6', '1');
INSERT INTO `goods_orders` VALUES ('15', '5', '6', '4');
INSERT INTO `goods_orders` VALUES ('16', '2', '7', '7');
INSERT INTO `goods_orders` VALUES ('17', '2', '7', '5');
INSERT INTO `goods_orders` VALUES ('18', '2', '7', '2');
INSERT INTO `goods_orders` VALUES ('19', '4', '7', '2');
INSERT INTO `goods_orders` VALUES ('20', '4', '7', '4');
INSERT INTO `goods_orders` VALUES ('21', '5', '7', '4');
INSERT INTO `goods_orders` VALUES ('22', '2', '8', '7');
INSERT INTO `goods_orders` VALUES ('23', '2', '8', '5');
INSERT INTO `goods_orders` VALUES ('24', '2', '8', '2');
INSERT INTO `goods_orders` VALUES ('25', '4', '8', '4');
INSERT INTO `goods_orders` VALUES ('26', '4', '8', '4');
INSERT INTO `goods_orders` VALUES ('27', '5', '8', '4');
INSERT INTO `goods_orders` VALUES ('28', '2', '9', '7');
INSERT INTO `goods_orders` VALUES ('29', '2', '9', '5');
INSERT INTO `goods_orders` VALUES ('30', '2', '9', '2');
INSERT INTO `goods_orders` VALUES ('31', '4', '9', '4');
INSERT INTO `goods_orders` VALUES ('32', '4', '9', '4');
INSERT INTO `goods_orders` VALUES ('33', '5', '9', '4');
INSERT INTO `goods_orders` VALUES ('34', '2', '10', '10');
INSERT INTO `goods_orders` VALUES ('35', '2', '10', '5');
INSERT INTO `goods_orders` VALUES ('36', '2', '10', '2');
INSERT INTO `goods_orders` VALUES ('37', '4', '10', '4');
INSERT INTO `goods_orders` VALUES ('38', '4', '10', '6');
INSERT INTO `goods_orders` VALUES ('39', '5', '10', '4');
INSERT INTO `goods_orders` VALUES ('40', '2', '11', '10');
INSERT INTO `goods_orders` VALUES ('41', '2', '11', '6');
INSERT INTO `goods_orders` VALUES ('42', '2', '11', '2');
INSERT INTO `goods_orders` VALUES ('43', '4', '11', '4');
INSERT INTO `goods_orders` VALUES ('44', '4', '11', '8');
INSERT INTO `goods_orders` VALUES ('45', '5', '11', '7');
INSERT INTO `goods_orders` VALUES ('46', '2', '12', '10');
INSERT INTO `goods_orders` VALUES ('47', '2', '12', '6');
INSERT INTO `goods_orders` VALUES ('48', '2', '12', '2');
INSERT INTO `goods_orders` VALUES ('49', '4', '12', '4');
INSERT INTO `goods_orders` VALUES ('50', '4', '12', '8');
INSERT INTO `goods_orders` VALUES ('51', '5', '12', '7');
INSERT INTO `goods_orders` VALUES ('52', '2', '13', '10');
INSERT INTO `goods_orders` VALUES ('53', '2', '13', '6');
INSERT INTO `goods_orders` VALUES ('54', '2', '13', '2');
INSERT INTO `goods_orders` VALUES ('55', '4', '13', '4');
INSERT INTO `goods_orders` VALUES ('56', '4', '13', '8');
INSERT INTO `goods_orders` VALUES ('57', '5', '13', '7');
INSERT INTO `goods_orders` VALUES ('58', '2', '14', '10');
INSERT INTO `goods_orders` VALUES ('59', '2', '14', '6');
INSERT INTO `goods_orders` VALUES ('60', '2', '14', '2');
INSERT INTO `goods_orders` VALUES ('61', '4', '14', '4');
INSERT INTO `goods_orders` VALUES ('62', '4', '14', '8');
INSERT INTO `goods_orders` VALUES ('63', '5', '14', '7');
INSERT INTO `goods_orders` VALUES ('64', '2', '15', '10');
INSERT INTO `goods_orders` VALUES ('65', '2', '15', '6');
INSERT INTO `goods_orders` VALUES ('66', '2', '15', '2');
INSERT INTO `goods_orders` VALUES ('67', '4', '15', '4');
INSERT INTO `goods_orders` VALUES ('68', '4', '15', '8');
INSERT INTO `goods_orders` VALUES ('69', '5', '15', '7');
INSERT INTO `goods_orders` VALUES ('70', '2', '16', '10');
INSERT INTO `goods_orders` VALUES ('71', '2', '16', '6');
INSERT INTO `goods_orders` VALUES ('72', '2', '16', '2');
INSERT INTO `goods_orders` VALUES ('73', '4', '16', '4');
INSERT INTO `goods_orders` VALUES ('74', '4', '16', '8');
INSERT INTO `goods_orders` VALUES ('75', '5', '16', '7');
INSERT INTO `goods_orders` VALUES ('76', '2', '17', '10');
INSERT INTO `goods_orders` VALUES ('77', '2', '17', '6');
INSERT INTO `goods_orders` VALUES ('78', '2', '17', '2');
INSERT INTO `goods_orders` VALUES ('79', '4', '17', '4');
INSERT INTO `goods_orders` VALUES ('80', '4', '17', '8');
INSERT INTO `goods_orders` VALUES ('81', '5', '17', '7');
INSERT INTO `goods_orders` VALUES ('82', '2', '18', '10');
INSERT INTO `goods_orders` VALUES ('83', '2', '18', '6');
INSERT INTO `goods_orders` VALUES ('84', '2', '18', '2');
INSERT INTO `goods_orders` VALUES ('85', '4', '18', '4');
INSERT INTO `goods_orders` VALUES ('86', '4', '18', '8');
INSERT INTO `goods_orders` VALUES ('87', '5', '18', '7');
INSERT INTO `goods_orders` VALUES ('88', '2', '19', '10');
INSERT INTO `goods_orders` VALUES ('89', '2', '19', '6');
INSERT INTO `goods_orders` VALUES ('90', '2', '19', '2');
INSERT INTO `goods_orders` VALUES ('91', '4', '19', '4');
INSERT INTO `goods_orders` VALUES ('92', '4', '19', '8');
INSERT INTO `goods_orders` VALUES ('93', '5', '19', '7');
INSERT INTO `goods_orders` VALUES ('94', '2', '20', '10');
INSERT INTO `goods_orders` VALUES ('95', '2', '20', '6');
INSERT INTO `goods_orders` VALUES ('96', '2', '20', '2');
INSERT INTO `goods_orders` VALUES ('97', '4', '20', '4');
INSERT INTO `goods_orders` VALUES ('98', '4', '20', '8');
INSERT INTO `goods_orders` VALUES ('99', '5', '20', '7');
INSERT INTO `goods_orders` VALUES ('100', '2', '21', '10');
INSERT INTO `goods_orders` VALUES ('101', '2', '21', '6');
INSERT INTO `goods_orders` VALUES ('102', '2', '21', '2');
INSERT INTO `goods_orders` VALUES ('103', '4', '21', '4');
INSERT INTO `goods_orders` VALUES ('104', '4', '21', '8');
INSERT INTO `goods_orders` VALUES ('105', '5', '21', '7');
INSERT INTO `goods_orders` VALUES ('106', '2', '22', '10');
INSERT INTO `goods_orders` VALUES ('107', '2', '22', '6');
INSERT INTO `goods_orders` VALUES ('108', '2', '22', '2');
INSERT INTO `goods_orders` VALUES ('109', '4', '22', '4');
INSERT INTO `goods_orders` VALUES ('110', '4', '22', '8');
INSERT INTO `goods_orders` VALUES ('111', '5', '22', '7');
INSERT INTO `goods_orders` VALUES ('112', '2', '23', '10');
INSERT INTO `goods_orders` VALUES ('113', '2', '23', '6');
INSERT INTO `goods_orders` VALUES ('114', '2', '23', '2');
INSERT INTO `goods_orders` VALUES ('115', '4', '23', '4');
INSERT INTO `goods_orders` VALUES ('116', '4', '23', '8');
INSERT INTO `goods_orders` VALUES ('117', '5', '23', '7');
INSERT INTO `goods_orders` VALUES ('118', '2', '24', '10');
INSERT INTO `goods_orders` VALUES ('119', '2', '24', '6');
INSERT INTO `goods_orders` VALUES ('120', '2', '24', '2');
INSERT INTO `goods_orders` VALUES ('121', '4', '24', '4');
INSERT INTO `goods_orders` VALUES ('122', '4', '24', '8');
INSERT INTO `goods_orders` VALUES ('123', '5', '24', '7');
INSERT INTO `goods_orders` VALUES ('124', '2', '25', '10');
INSERT INTO `goods_orders` VALUES ('125', '2', '25', '6');
INSERT INTO `goods_orders` VALUES ('126', '2', '25', '2');
INSERT INTO `goods_orders` VALUES ('127', '4', '25', '4');
INSERT INTO `goods_orders` VALUES ('128', '4', '25', '8');
INSERT INTO `goods_orders` VALUES ('129', '5', '25', '7');
INSERT INTO `goods_orders` VALUES ('130', '2', '26', '10');
INSERT INTO `goods_orders` VALUES ('131', '2', '26', '6');
INSERT INTO `goods_orders` VALUES ('132', '2', '26', '2');
INSERT INTO `goods_orders` VALUES ('133', '4', '26', '4');
INSERT INTO `goods_orders` VALUES ('134', '4', '26', '10');
INSERT INTO `goods_orders` VALUES ('135', '5', '26', '7');
INSERT INTO `goods_orders` VALUES ('136', '5', '27', '7');
INSERT INTO `goods_orders` VALUES ('137', '4', '27', '4');
INSERT INTO `goods_orders` VALUES ('138', '2', '27', '13');
INSERT INTO `goods_orders` VALUES ('139', '5', '28', '7');
INSERT INTO `goods_orders` VALUES ('140', '4', '28', '4');
INSERT INTO `goods_orders` VALUES ('141', '2', '28', '13');
INSERT INTO `goods_orders` VALUES ('142', '2', '29', '1');
INSERT INTO `goods_orders` VALUES ('143', '1', '29', '1');
INSERT INTO `goods_orders` VALUES ('144', '1', '30', '2');
INSERT INTO `goods_orders` VALUES ('145', '2', '30', '2');

-- ----------------------------
-- Table structure for goods_saler
-- ----------------------------
DROP TABLE IF EXISTS `goods_saler`;
CREATE TABLE `goods_saler` (
  `sid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `count` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `sid` (`sid`),
  KEY `gid` (`gid`),
  CONSTRAINT `goods_saler_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `cs_saler` (`id`),
  CONSTRAINT `goods_saler_ibfk_2` FOREIGN KEY (`gid`) REFERENCES `cs_goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_saler
-- ----------------------------
INSERT INTO `goods_saler` VALUES ('1', '1', '1', '14');
INSERT INTO `goods_saler` VALUES ('1', '1', '2', '25');
INSERT INTO `goods_saler` VALUES ('1', '2', '3', '20');
INSERT INTO `goods_saler` VALUES ('1', '2', '4', '20');
INSERT INTO `goods_saler` VALUES ('1', '3', '5', '30');
INSERT INTO `goods_saler` VALUES ('1', '4', '6', '10');
INSERT INTO `goods_saler` VALUES ('1', '5', '7', '7');

-- ----------------------------
-- Table structure for size_color
-- ----------------------------
DROP TABLE IF EXISTS `size_color`;
CREATE TABLE `size_color` (
  `id` int(11) NOT NULL,
  `size` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `gid` int(11) NOT NULL,
  `stock` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `gid` (`gid`),
  CONSTRAINT `size_color_ibfk_1` FOREIGN KEY (`gid`) REFERENCES `cs_goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of size_color
-- ----------------------------
INSERT INTO `size_color` VALUES ('1', 'XL', '黑色', '2', '8');
INSERT INTO `size_color` VALUES ('2', 'XXL', '黑色', '2', '8');
INSERT INTO `size_color` VALUES ('3', 'L', '白色', '2', '13');
INSERT INTO `size_color` VALUES ('4', 'XL', '红色', '1', '19');
INSERT INTO `size_color` VALUES ('5', 'M', '粉红', '1', '40');
