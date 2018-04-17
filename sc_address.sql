/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : kaoqin

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-04-17 10:52:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sc_address
-- ----------------------------
DROP TABLE IF EXISTS `sc_address`;
CREATE TABLE `sc_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addressName` varchar(50) DEFAULT NULL,
  `supId` int(11) DEFAULT NULL,
  `rank` varchar(50) DEFAULT NULL,
  `supName` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `createDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deptId` int(11) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sc_address
-- ----------------------------
INSERT INTO `sc_address` VALUES ('1', '海淀区', '0', '1', null, '1', '2018-04-17 10:48:58', null, null, null);
INSERT INTO `sc_address` VALUES ('2', '苏家坨镇', '1', '2', '海淀区', '1', '2018-04-17 10:48:58', null, null, null);
INSERT INTO `sc_address` VALUES ('3', '管家岭村', '2', '3', '海淀区苏家坨镇', '1', '2018-04-17 10:48:58', null, null, null);
INSERT INTO `sc_address` VALUES ('4', '1号', '3', '4', '海淀区苏家坨镇管家岭村', '1', '2018-04-17 10:48:58', null, '116.0986199995000', '40.0700850000000\n');
INSERT INTO `sc_address` VALUES ('5', '1单元', '4', '5', '海淀区苏家坨镇管家岭村1号', '1', '2018-04-17 10:48:58', null, null, null);
INSERT INTO `sc_address` VALUES ('6', '1', '5', '6', '海淀区苏家坨镇管家岭村1号1单元', '1', '2018-04-17 10:48:58', null, null, null);
INSERT INTO `sc_address` VALUES ('7', '1号', '6', '7', '海淀区苏家坨镇管家岭村1号1单元1', '1', '2018-04-17 10:48:58', null, null, null);
INSERT INTO `sc_address` VALUES ('8', '116.0986199995000', '6', '8', '海淀区苏家坨镇管家岭村1号1单元1', '1', '2018-04-17 10:48:58', null, null, null);
INSERT INTO `sc_address` VALUES ('9', '40.0700850000000', '6', '9', '海淀区苏家坨镇管家岭村1号1单元1', '1', '2018-04-17 10:48:58', null, null, null);
INSERT INTO `sc_address` VALUES ('10', '2号', '6', '7', '海淀区苏家坨镇管家岭村1号1单元1', '1', '2018-04-17 10:48:58', null, null, null);
INSERT INTO `sc_address` VALUES ('11', '3号', '6', '7', '海淀区苏家坨镇管家岭村1号1单元1', '1', '2018-04-17 10:48:58', null, null, null);
INSERT INTO `sc_address` VALUES ('12', '4号', '6', '7', '海淀区苏家坨镇管家岭村1号1单元1', '1', '2018-04-17 10:48:58', null, null, null);
INSERT INTO `sc_address` VALUES ('13', '5号', '6', '7', '海淀区苏家坨镇管家岭村1号1单元1', '1', '2018-04-17 10:48:58', null, null, null);
INSERT INTO `sc_address` VALUES ('14', '23号', '3', '4', '海淀区苏家坨镇管家岭村', '1', '2018-04-17 10:48:58', null, '116.0909149990000', '40.0734599995000\n');
INSERT INTO `sc_address` VALUES ('15', '1单元', '14', '5', '海淀区苏家坨镇管家岭村23号', '1', '2018-04-17 10:48:58', null, null, null);
INSERT INTO `sc_address` VALUES ('16', '1', '15', '6', '海淀区苏家坨镇管家岭村23号1单元', '1', '2018-04-17 10:48:58', null, null, null);
INSERT INTO `sc_address` VALUES ('17', '10号', '16', '7', '海淀区苏家坨镇管家岭村23号1单元1', '1', '2018-04-17 10:48:58', null, null, null);
INSERT INTO `sc_address` VALUES ('18', '116.0909149990000', '16', '8', '海淀区苏家坨镇管家岭村23号1单元1', '1', '2018-04-17 10:48:58', null, null, null);
INSERT INTO `sc_address` VALUES ('19', '40.0734599995000', '16', '9', '海淀区苏家坨镇管家岭村23号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('20', '11号', '16', '7', '海淀区苏家坨镇管家岭村23号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('21', '12号', '16', '7', '海淀区苏家坨镇管家岭村23号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('22', '1号', '16', '7', '海淀区苏家坨镇管家岭村23号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('23', '2号', '16', '7', '海淀区苏家坨镇管家岭村23号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('24', '3号', '16', '7', '海淀区苏家坨镇管家岭村23号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('25', '4号', '16', '7', '海淀区苏家坨镇管家岭村23号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('26', '5号', '16', '7', '海淀区苏家坨镇管家岭村23号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('27', '6号', '16', '7', '海淀区苏家坨镇管家岭村23号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('28', '7号', '16', '7', '海淀区苏家坨镇管家岭村23号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('29', '8号', '16', '7', '海淀区苏家坨镇管家岭村23号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('30', '9号', '16', '7', '海淀区苏家坨镇管家岭村23号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('31', '25号', '3', '4', '海淀区苏家坨镇管家岭村', '1', '2018-04-17 10:48:59', null, '116.0916799995000', '40.0747950000000\n');
INSERT INTO `sc_address` VALUES ('32', '1单元', '31', '5', '海淀区苏家坨镇管家岭村25号', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('33', '1', '32', '6', '海淀区苏家坨镇管家岭村25号1单元', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('34', '10号', '33', '7', '海淀区苏家坨镇管家岭村25号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('35', '116.0916799995000', '33', '8', '海淀区苏家坨镇管家岭村25号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('36', '40.0747950000000', '33', '9', '海淀区苏家坨镇管家岭村25号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('37', '1号', '33', '7', '海淀区苏家坨镇管家岭村25号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('38', '2号', '33', '7', '海淀区苏家坨镇管家岭村25号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('39', '3号', '33', '7', '海淀区苏家坨镇管家岭村25号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('40', '4号', '33', '7', '海淀区苏家坨镇管家岭村25号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('41', '5号', '33', '7', '海淀区苏家坨镇管家岭村25号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('42', '6号', '33', '7', '海淀区苏家坨镇管家岭村25号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('43', '7号', '33', '7', '海淀区苏家坨镇管家岭村25号1单元1', '1', '2018-04-17 10:48:59', null, null, null);
INSERT INTO `sc_address` VALUES ('44', '8号', '33', '7', '海淀区苏家坨镇管家岭村25号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('45', '9号', '33', '7', '海淀区苏家坨镇管家岭村25号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('46', '29号', '3', '4', '海淀区苏家坨镇管家岭村', '1', '2018-04-17 10:49:00', null, '116.0902750000000', '40.0738900000000\n');
INSERT INTO `sc_address` VALUES ('47', '1单元', '46', '5', '海淀区苏家坨镇管家岭村29号', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('48', '1', '47', '6', '海淀区苏家坨镇管家岭村29号1单元', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('49', '10号', '48', '7', '海淀区苏家坨镇管家岭村29号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('50', '116.0902750000000', '48', '8', '海淀区苏家坨镇管家岭村29号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('51', '40.0738900000000', '48', '9', '海淀区苏家坨镇管家岭村29号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('52', '1号', '48', '7', '海淀区苏家坨镇管家岭村29号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('53', '2号', '48', '7', '海淀区苏家坨镇管家岭村29号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('54', '3号', '48', '7', '海淀区苏家坨镇管家岭村29号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('55', '4号', '48', '7', '海淀区苏家坨镇管家岭村29号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('56', '5号', '48', '7', '海淀区苏家坨镇管家岭村29号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('57', '6号', '48', '7', '海淀区苏家坨镇管家岭村29号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('58', '7号', '48', '7', '海淀区苏家坨镇管家岭村29号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('59', '8号', '48', '7', '海淀区苏家坨镇管家岭村29号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('60', '9号', '48', '7', '海淀区苏家坨镇管家岭村29号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('61', '西埠头村北街', '2', '3', '海淀区苏家坨镇', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('62', '48号', '61', '4', '海淀区苏家坨镇西埠头村北街', '1', '2018-04-17 10:49:00', null, '116.1185850000000', '40.0832550000000\n');
INSERT INTO `sc_address` VALUES ('63', '1单元', '62', '5', '海淀区苏家坨镇西埠头村北街48号', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('64', '1', '63', '6', '海淀区苏家坨镇西埠头村北街48号1单元', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('65', '10号', '64', '7', '海淀区苏家坨镇西埠头村北街48号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('66', '116.1185850000000', '64', '8', '海淀区苏家坨镇西埠头村北街48号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('67', '40.0832550000000', '64', '9', '海淀区苏家坨镇西埠头村北街48号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('68', '11号', '64', '7', '海淀区苏家坨镇西埠头村北街48号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('69', '1号', '64', '7', '海淀区苏家坨镇西埠头村北街48号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('70', '2号', '64', '7', '海淀区苏家坨镇西埠头村北街48号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('71', '3号', '64', '7', '海淀区苏家坨镇西埠头村北街48号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('72', '4号', '64', '7', '海淀区苏家坨镇西埠头村北街48号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('73', '5号', '64', '7', '海淀区苏家坨镇西埠头村北街48号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('74', '6号', '64', '7', '海淀区苏家坨镇西埠头村北街48号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('75', '7号', '64', '7', '海淀区苏家坨镇西埠头村北街48号1单元1', '1', '2018-04-17 10:49:00', null, null, null);
INSERT INTO `sc_address` VALUES ('76', '8号', '64', '7', '海淀区苏家坨镇西埠头村北街48号1单元1', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('77', '9号', '64', '7', '海淀区苏家坨镇西埠头村北街48号1单元1', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('78', '49号', '61', '4', '海淀区苏家坨镇西埠头村北街', '1', '2018-04-17 10:49:01', null, '116.1186250000000', '40.0834600000000\n');
INSERT INTO `sc_address` VALUES ('79', '1单元', '78', '5', '海淀区苏家坨镇西埠头村北街49号', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('80', '1', '79', '6', '海淀区苏家坨镇西埠头村北街49号1单元', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('81', '10号', '80', '7', '海淀区苏家坨镇西埠头村北街49号1单元1', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('82', '116.1186250000000', '80', '8', '海淀区苏家坨镇西埠头村北街49号1单元1', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('83', '40.0834600000000', '80', '9', '海淀区苏家坨镇西埠头村北街49号1单元1', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('84', '11号', '80', '7', '海淀区苏家坨镇西埠头村北街49号1单元1', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('85', '12号', '80', '7', '海淀区苏家坨镇西埠头村北街49号1单元1', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('86', '1号', '80', '7', '海淀区苏家坨镇西埠头村北街49号1单元1', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('87', '2号', '80', '7', '海淀区苏家坨镇西埠头村北街49号1单元1', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('88', '3号', '80', '7', '海淀区苏家坨镇西埠头村北街49号1单元1', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('89', '4号', '80', '7', '海淀区苏家坨镇西埠头村北街49号1单元1', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('90', '5号', '80', '7', '海淀区苏家坨镇西埠头村北街49号1单元1', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('91', '6号', '80', '7', '海淀区苏家坨镇西埠头村北街49号1单元1', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('92', '7号', '80', '7', '海淀区苏家坨镇西埠头村北街49号1单元1', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('93', '8号', '80', '7', '海淀区苏家坨镇西埠头村北街49号1单元1', '1', '2018-04-17 10:49:01', null, null, null);
INSERT INTO `sc_address` VALUES ('94', '9号', '80', '7', '海淀区苏家坨镇西埠头村北街49号1单元1', '1', '2018-04-17 10:49:01', null, null, null);
