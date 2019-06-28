/*
MySQL Data Transfer
Source Host: localhost
Source Database: keyan
Target Host: localhost
Target Database: keyan
Date: 2019/6/11 20:42:30
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(4) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `realname` varchar(50) default NULL,
  `sex` varchar(50) default NULL,
  `age` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `tel` varchar(50) default NULL,
  `addtime` varchar(50) default NULL,
  `sf` varchar(50) default '员工',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for cg
-- ----------------------------
DROP TABLE IF EXISTS `cg`;
CREATE TABLE `cg` (
  `id` int(4) NOT NULL auto_increment,
  `bh` varchar(500) default NULL,
  `mc` varchar(500) default NULL,
  `fzr` varchar(500) default NULL,
  `lb` varchar(500) default NULL,
  `xk` varchar(500) default NULL,
  `bz` varchar(500) default NULL,
  `url` varchar(500) default NULL,
  `yh` varchar(500) default NULL,
  `dw` varchar(500) default NULL,
  `sj` date default NULL,
  `sh` varchar(500) default '暂无',
  `yj` varchar(500) default '暂无',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for dw
-- ----------------------------
DROP TABLE IF EXISTS `dw`;
CREATE TABLE `dw` (
  `id` int(4) NOT NULL auto_increment,
  `mc` varchar(500) default NULL,
  `bz` varchar(500) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for fk
-- ----------------------------
DROP TABLE IF EXISTS `fk`;
CREATE TABLE `fk` (
  `id` int(4) NOT NULL auto_increment,
  `mc` varchar(500) default NULL,
  `bz` varchar(500) default NULL,
  `sj` varchar(500) default NULL,
  `yh` varchar(500) default NULL,
  `dw` varchar(500) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for hd
-- ----------------------------
DROP TABLE IF EXISTS `hd`;
CREATE TABLE `hd` (
  `id` int(4) NOT NULL auto_increment,
  `mc` varchar(500) default NULL,
  `bz` varchar(500) default NULL,
  `sj` varchar(500) default NULL,
  `yh` varchar(500) default NULL,
  `dw` varchar(500) default NULL,
  `sh` varchar(500) default '暂无',
  `yj` varchar(500) default '暂无',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for rz
-- ----------------------------
DROP TABLE IF EXISTS `rz`;
CREATE TABLE `rz` (
  `id` int(4) NOT NULL auto_increment,
  `yh` varchar(500) default NULL,
  `sf` varchar(500) default NULL,
  `sj` varchar(500) default NULL,
  `ip` varchar(500) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for tz
-- ----------------------------
DROP TABLE IF EXISTS `tz`;
CREATE TABLE `tz` (
  `id` int(4) NOT NULL auto_increment,
  `mc` varchar(500) default NULL,
  `bz` varchar(500) default NULL,
  `sj` varchar(50) default NULL,
  `yh` varchar(500) default NULL,
  `dw` varchar(500) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for wj
-- ----------------------------
DROP TABLE IF EXISTS `wj`;
CREATE TABLE `wj` (
  `id` int(4) NOT NULL auto_increment,
  `mc` varchar(500) default NULL,
  `url` varchar(500) default NULL,
  `bz` varchar(500) default NULL,
  `sj` varchar(50) default NULL,
  `yh` varchar(500) default NULL,
  `dw` varchar(500) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for xm
-- ----------------------------
DROP TABLE IF EXISTS `xm`;
CREATE TABLE `xm` (
  `id` int(4) NOT NULL auto_increment,
  `bh` varchar(500) default NULL,
  `mc` varchar(500) default NULL,
  `fzr` varchar(500) default NULL,
  `lb` varchar(500) default NULL,
  `xk` varchar(500) default NULL,
  `jf` varchar(500) default NULL,
  `ksj` varchar(500) default NULL,
  `esj` varchar(500) default NULL,
  `url` varchar(500) default NULL,
  `yh` varchar(500) default NULL,
  `dw` varchar(500) default NULL,
  `sj` date default NULL,
  `sh` varchar(500) default '暂无',
  `yj` varchar(500) default '暂无',
  `zj` varchar(500) default '暂无',
  `zhj` varchar(500) default '暂无',
  `pf` varchar(50) default '暂无',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '111', '卢星儒', '男', '硕士研究生', '工程技术学院科教师', '18152059486', '2019-06-10', '系统管理员');
INSERT INTO `admin` VALUES ('2', 'kygl', '111', '王梓龙', '男', '博士', '科技处副主任', '13800008888', '2019-06-10', '科研管理人员');
INSERT INTO `admin` VALUES ('4', 'kyms', '111', '杜鹃', '女', '硕士研究生', '工程技术学院科研秘书', '18666667123', '2019-06-10', '科研秘书');
INSERT INTO `admin` VALUES ('5', 'kyry', '111', '卢星儒', '男', '硕士研究生', '工程技术学院科教师', '18152059486', '2019-06-10', '科研人员');
INSERT INTO `cg` VALUES ('3', '1487335131243', '测试成果名称', '刘泽', '国家级', '理工类', '说明说明', 'upfile/1.doc', 'xxxry', '工程技术学院', '2019-02-17', '暂无', '暂无');
INSERT INTO `dw` VALUES ('1', '工程技术学院', 'test');
INSERT INTO `dw` VALUES ('2', '经济管理学院', '测试\r\n');
INSERT INTO `dw` VALUES ('3', '通识学院', '测试');
INSERT INTO `dw` VALUES ('4', '土环学院', 'hsh');
INSERT INTO `dw` VALUES ('5', '鼎利学院', 'ss');
INSERT INTO `fk` VALUES ('2', '测试反馈标题', '测试反馈内容', '2019-02-17', 'xxxry', '工程技术学院');
INSERT INTO `hd` VALUES ('2', '关于举办百家讲坛的申请', '测试', '2019-02-17', 'xxxry', '工程技术学院', '通过', '热烈支持');
INSERT INTO `rz` VALUES ('2', 'admin', '系统管理员', '2017-02-18 00:19:32', '127.0.0.1');
INSERT INTO `rz` VALUES ('3', 'xxxry', '科研人员', '2017-02-18 00:20:39', '127.0.0.1');
INSERT INTO `rz` VALUES ('4', 'xxxms', '科研秘书', '2017-02-18 00:21:35', '127.0.0.1');
INSERT INTO `rz` VALUES ('5', 'kygl', '科研管理人员', '2017-02-18 00:22:33', '127.0.0.1');
INSERT INTO `rz` VALUES ('6', 'xxxry', '科研人员', '2018-12-21 14:29:08', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('7', 'xxxry', '科研人员', '2018-12-21 14:30:05', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('8', 'xxxry', '科研人员', '2018-12-21 15:53:52', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('9', 'admin', '系统管理员', '2019-06-10 14:15:29', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('10', 'xxxry', '科研人员', '2019-06-10 14:17:36', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('11', 'admin', '系统管理员', '2019-06-10 17:57:17', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('12', 'admin', '系统管理员', '2019-06-10 18:00:17', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('13', 'admin', '系统管理员', '2019-06-10 18:05:53', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('14', 'admin', '系统管理员', '2019-06-10 18:07:48', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('15', 'admin', '系统管理员', '2019-06-10 18:13:14', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('16', 'admin', '系统管理员', '2019-06-10 18:13:17', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('17', 'admin', '系统管理员', '2019-06-10 18:13:35', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('18', 'admin', '系统管理员', '2019-06-10 18:15:41', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('19', 'admin', '系统管理员', '2019-06-10 18:16:44', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('20', 'admin', '系统管理员', '2019-06-10 18:18:50', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('21', 'admin', '系统管理员', '2019-06-10 18:19:10', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('22', 'admin', '系统管理员', '2019-06-10 18:19:29', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('23', 'admin', '系统管理员', '2019-06-10 18:20:47', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('24', 'admin', '系统管理员', '2019-06-10 18:51:34', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('25', 'admin', '系统管理员', '2019-06-11 08:42:26', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('26', 'admin', '系统管理员', '2019-06-11 10:49:32', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('27', 'admin', '系统管理员', '2019-06-11 11:04:12', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('28', 'admin', '系统管理员', '2019-06-11 11:57:45', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('29', 'admin', '系统管理员', '2019-06-11 11:58:37', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('30', 'admin', '系统管理员', '2019-06-11 14:27:22', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('31', 'admin', '系统管理员', '2019-06-11 15:54:30', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('32', 'admin', '系统管理员', '2019-06-11 16:11:18', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('33', 'admin', '系统管理员', '2019-06-11 16:11:27', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('34', 'admin', '系统管理员', '2019-06-11 16:21:26', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('35', 'ky', '科研人员', '2019-06-11 16:30:32', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('36', 'ky', '科研人员', '2019-06-11 16:37:56', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('37', 'ky', '科研人员', '2019-06-11 16:40:27', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('38', 'ms', '科研秘书', '2019-06-11 16:45:49', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('39', 'kygl', '科研管理人员', '2019-06-11 16:48:48', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('40', 'ms', '科研秘书', '2019-06-11 17:00:21', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('41', 'ms', '科研秘书', '2019-06-11 17:05:31', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('42', 'ms', '科研秘书', '2019-06-11 17:05:33', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('43', 'admin', '系统管理员', '2019-06-11 17:07:21', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('44', 'admin', '系统管理员', '2019-06-11 17:08:59', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('45', 'admin', '系统管理员', '2019-06-11 17:12:07', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('46', 'admin', '系统管理员', '2019-06-11 17:15:12', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('47', 'admin', '系统管理员', '2019-06-11 17:17:01', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('48', 'admin', '系统管理员', '2019-06-11 17:17:07', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('49', 'admin', '系统管理员', '2019-06-11 17:17:26', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('50', 'admin', '系统管理员', '2019-06-11 17:36:17', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('51', 'admin', '系统管理员', '2019-06-11 17:43:28', '0:0:0:0:0:0:0:1');
INSERT INTO `rz` VALUES ('52', 'admin', '系统管理员', '2019-06-11 17:51:09', '0:0:0:0:0:0:0:1');
INSERT INTO `tz` VALUES ('2', '测试通知标题', '测试通知内容', '2019-02-18 00:21:59', 'xxxms', '工程技术学院');
INSERT INTO `wj` VALUES ('2', '测试文件名称', 'upfile/1.doc', '测试文件说明', '2019-02-17', 'xxxms', '工程技术学院');
INSERT INTO `xm` VALUES ('2', '1487335131243', '测试项目名称', '刘泽', '国家级', '理工类', '100', '2019-01-28', '2019-12-30', 'upfile/1.doc', 'xxxry', '工程技术学院', '2019-12-18', '通过', '很好很好', '暂无', '是', '6');
