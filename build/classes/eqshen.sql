/*
Navicat MySQL Data Transfer

Source Server         : LocalMySQL
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : eqshen

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2017-02-26 15:32:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `content` text,
  `date` varchar(30) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_type` (`type`),
  CONSTRAINT `FK_type` FOREIGN KEY (`type`) REFERENCES `classify` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', 'servlet工作原理', '一、流程（servlet 生命周期）\r\n							1.\r\n							用户请求servlet\r\n							————>>>服务器接收请求，并且利用connector 封装请求和响应为HttpServletRequest和HttpServletResponse对象。然后传递给container（容器）。\r\n							————>>>容器根据请求的url找到正确servlet对象（如果是第一次请求，则先创建servlet对象），并且为请求分配或者创建一个线程(也就是说，某个servlet\r\n', '2015-08-21 12:03:46', '1', '15', '33');
INSERT INTO `articles` VALUES ('2', 'JavaMail(一)', '一、电子邮箱服务器 1.像腾讯，163....接收用户的邮件并且转发到另一个用户 2.邮件服务器有哪些功能？1）收发邮件。2）... 3.按通讯协议分类 可以分为两类：SMTP和POP3/IMAM(pop3的升级版) 1）：smtp协议：用户使用邮箱收发邮件使用此协议 2）pop3协议：用户打开邮箱，查看邮件列表使用此协议 二、电子邮箱 也就是用户使用的E-MAIL地址 每个电子邮箱(e-mail)在电子邮箱服务器都被分配一块地址和一定的空间来存储邮件\r\n', '2015-08-21 12:03:46', '1', '25', '53');
INSERT INTO `articles` VALUES ('3', 'Log4j笔记', '1.apache推出的日志管理工具 Log4j主要由3种组件组成：Logger，Appender，Layout 2.Logger组件 1)负责产生日志。可以定义多个记录器，记录器之间通过名字表明隶属管系a.b a.b.c 2)根记录器 位于记录器层次的顶部，永远存在，不能通过名字检索或者引用，Logger的静态方法getRootLogger()得到 普通的记录器可以通过 Logger.getLogger(String name)得到 3)Logger类的基本方法如图\r\n', '2015-08-21 12:03:46', '2', '5', '45');
INSERT INTO `articles` VALUES ('4', 'web项目导入重名问题（改名问题）1', '在开发过程中，有时需要将一个现有的项目拷贝一份，并改名后做适当修，成为另一个项目。 在eclipse中，导入项目到会出现/path相同的问题，导致项目无法运行。 解决方法： 1）修改项目下.project文件中对应的项目名字为现在的名字\r\n', '2015-08-21 12:03:46', '1', '15', '35');

-- ----------------------------
-- Table structure for classify
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES ('1', 'JavaWeb');
INSERT INTO `classify` VALUES ('2', 'Log4j');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'hendy', '123456');
