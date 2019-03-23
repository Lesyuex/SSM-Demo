/*
Navicat MySQL Data Transfer

Source Server         : lesyuex
Source Server Version : 50639
Source Host           : 127.0.0.1:3306
Source Database       : ssmdemo01

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2019-03-23 18:07:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '研发部');
INSERT INTO `department` VALUES ('2', '销售部');
INSERT INTO `department` VALUES ('3', '行政部');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_name` varchar(255) DEFAULT NULL,
  `e_gender` varchar(255) DEFAULT NULL,
  `e_email` varchar(255) DEFAULT NULL,
  `e_tel` varchar(255) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`e_id`),
  KEY `d_id` (`d_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `department` (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '张三', '男', 'zhangsan@163.com', '13567896657', '1');
INSERT INTO `employee` VALUES ('2', '李四', '男', 'lisi@163.com', '16789556789', '1');
INSERT INTO `employee` VALUES ('3', '王五', '男', 'wangwu@163.com', '16678906541', '2');
INSERT INTO `employee` VALUES ('4', '小明', '男', 'xiaoming@163.com', '15678956781', '2');
INSERT INTO `employee` VALUES ('5', '小红', '女', 'xiaohong@163.com', '13345678765', '3');
INSERT INTO `employee` VALUES ('6', '小花', '女', 'xiaohua@163.com', '18367654678', '3');
INSERT INTO `employee` VALUES ('7', 'test', '女', 'test@163.com', '18888888888', '2');
INSERT INTO `employee` VALUES ('8', '张强', '男', 'das@sd.com', '15622222222', '3');
