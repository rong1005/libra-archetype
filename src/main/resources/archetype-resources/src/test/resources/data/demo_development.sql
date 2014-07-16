/*
Navicat MySQL Data Transfer

Source Server         : MySQL-Local
Source Server Version : 50522
Source Host           : localhost:3306
Source Database       : demo_development

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2014-07-16 11:55:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ${tablePrefix}department
-- ----------------------------
DROP TABLE IF EXISTS `${tablePrefix}department`;
CREATE TABLE `${tablePrefix}department` (
  `id` bigint(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `higher_department_id` bigint(20) DEFAULT NULL,
  `department_type` int(11) DEFAULT NULL,
  `show_order` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `higher_department_id` (`higher_department_id`) USING BTREE,
  CONSTRAINT `${tablePrefix}department_ibfk_1` FOREIGN KEY (`higher_department_id`) REFERENCES `${tablePrefix}department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ${tablePrefix}department
-- ----------------------------
INSERT INTO `${tablePrefix}department` VALUES ('1', '2014-06-20 18:13:36', '2014-06-20 18:13:36', '国光集团', '国光集团', null, '0', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('2', '2014-06-20 18:22:49', '2014-06-20 18:22:49', '国光电器股份有限公司', '国光电器股份有限公司', '1', '1', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('3', '2014-06-20 18:22:49', '2014-06-20 18:22:49', '梧州恒声电子科技有限公司', '梧州恒声电子科技有限公司', '1', '1', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('4', '2014-06-20 18:22:49', '2014-06-20 18:22:49', '广东国光电子有限公司', '广东国光电子有限公司', '1', '1', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('5', '2014-06-20 18:22:49', '2014-06-20 18:22:49', '系统测试', '系统测试', '1', '1', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('6', '2014-06-20 18:22:49', '2014-06-20 18:22:49', '广州仰诚精密电子有限公司', '广州仰诚精密电子有限公司', '1', '1', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('7', '2014-06-20 18:22:49', '2014-06-20 18:22:49', '供应商', '供应商', '1', '1', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('8', '2014-06-20 18:22:49', '2014-06-20 18:22:49', '梧州基地', '梧州基地', '1', '1', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('46', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '党工团', '党工团', '2', '2', '2', '2');
INSERT INTO `${tablePrefix}department` VALUES ('47', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '内审部', '内审部', '2', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('48', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '总裁办', '总裁办', '2', '2', '4', '2');
INSERT INTO `${tablePrefix}department` VALUES ('49', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '财务中心', '财务中心', '2', '2', '5', '2');
INSERT INTO `${tablePrefix}department` VALUES ('50', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '人力资源中心', '人力资源中心', '2', '2', '6', '2');
INSERT INTO `${tablePrefix}department` VALUES ('51', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '安委会', '安委会', '2', '2', '7', '2');
INSERT INTO `${tablePrefix}department` VALUES ('52', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '音响事业部', '音响事业部', '2', '2', '8', '2');
INSERT INTO `${tablePrefix}department` VALUES ('53', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '国际音响事业部', '国际音响事业部', '2', '2', '1', '2');
INSERT INTO `${tablePrefix}department` VALUES ('54', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '技术中心', '技术中心', '2', '2', '2', '2');
INSERT INTO `${tablePrefix}department` VALUES ('55', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '采购中心', '采购中心', '2', '2', '5', '2');
INSERT INTO `${tablePrefix}department` VALUES ('56', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '信息部', '信息部', '2', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('57', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '管理部', '管理部', '2', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('58', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '财务部', '财务部', '4', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('59', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '行政部', '行政部', '4', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('60', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '生产部', '生产部', '4', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('61', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '营销部', '营销部', '4', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('62', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '资材部', '资材部', '4', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('63', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '技术部', '技术部', '4', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('64', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '质管部', '质管部', '4', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('65', '2014-06-22 10:21:51', '2014-06-22 10:21:51', 'test1', 'test1', '5', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('66', '2014-06-22 10:21:51', '2014-06-22 10:21:51', 'test2', 'test2', '5', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('67', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '研发部', '研发部', '6', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('68', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '生产部', '生产部', '6', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('69', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '质量管理部', '质量管理部', '6', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('70', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '行政管理部', '行政管理部', '6', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('71', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '销售部', '销售部', '6', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('72', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '财务部', '财务部', '6', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('73', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '国光供应商', '国光供应商', '7', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('74', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '采购部', '采购部', '6', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('75', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '电声部', '电声部', '3', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('76', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '技术管理部', '技术管理部', '6', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('77', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '设备部', '设备部', '2', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('78', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '制造中心', '制造中心', '2', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('79', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '园区开发事业部', '园区开发事业部', '2', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('80', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '法务部', '法务部', '2', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('81', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '财务部', '财务部', '3', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('82', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '国内专业音响事业部', '国内专业音响事业部', '2', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('83', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '预研发中心', '预研发中心', '2', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('84', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '国内音响事业部', '国内音响事业部', '2', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('85', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '行政部', '行政部', '3', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('86', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '五金部', '五金部', '3', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('87', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '采购部', '采购部', '3', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('88', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '总经办', '总经办', '3', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('89', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '销售部', '销售部', '3', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('90', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '改善部', '改善部', '3', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('91', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '技术部', '技术部', '3', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('92', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '系统部', '系统部', '4', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('93', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '国光管理学院', '国光管理学院', '2', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('94', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '工艺部', '工艺部', '4', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('95', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '五金部', '五金部', '8', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('96', '2014-06-22 10:21:51', '2014-06-22 10:21:51', '行政部', '行政部', '8', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('97', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '改善办', '改善办', '48', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('98', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '质管部', '质管部', '78', '2', '3', '2');
INSERT INTO `${tablePrefix}department` VALUES ('99', '2014-06-22 10:34:48', '2014-06-22 10:34:48', 'PMC', 'PMC', '78', '2', '4', '2');
INSERT INTO `${tablePrefix}department` VALUES ('100', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '工程部', '工程部', '78', '2', '6', '2');
INSERT INTO `${tablePrefix}department` VALUES ('101', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '生产一部', '生产一部', '78', '2', '7', '2');
INSERT INTO `${tablePrefix}department` VALUES ('102', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '塑胶部', '塑胶部', '78', '2', '9', '2');
INSERT INTO `${tablePrefix}department` VALUES ('103', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '软件中心', '软件中心', '52', '2', '10', '2');
INSERT INTO `${tablePrefix}department` VALUES ('104', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '创新管理中心', '创新管理中心', '48', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('105', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '装配部', '装配部', '75', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('106', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '生产二部', '生产二部', '78', '2', '8', '2');
INSERT INTO `${tablePrefix}department` VALUES ('107', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '后勤管理部', '后勤管理部', '79', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('108', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '木箱部', '木箱部', '78', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('109', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '采购中心报关组', '采购中心报关组', '55', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('110', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '生产三部', '生产三部', '78', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('111', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '财务部', '财务部', '84', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('112', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '行政部', '行政部', '84', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('113', '2014-06-22 10:34:48', '2014-06-22 10:34:48', 'OEM部', 'OEM部', '84', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('114', '2014-06-22 10:34:48', '2014-06-22 10:34:48', 'FTC业务部', 'FTC业务部', '82', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('115', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '行政部', '行政部', '82', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('116', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '产品部', '产品部', '82', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('117', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '工程部', '工程部', '82', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('118', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '业务部', '业务部', '86', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('119', '2014-06-22 10:34:48', '2014-06-22 10:34:48', 'PMC', 'PMC', '86', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('120', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '仓务部', '仓务部', '86', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('121', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '模具车间', '模具车间', '91', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('122', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '生产部', '生产部', '86', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('123', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '设备部', '设备部', '86', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('124', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '质管部', '质管部', '86', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('125', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '装配工艺组', '装配工艺组', '75', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('126', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '业务开发一部', '业务开发一部', '53', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('127', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '业务开发二部', '业务开发二部', '53', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('128', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '业务开发三部', '业务开发三部', '53', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('129', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '业务开发四部', '业务开发四部', '53', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('130', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '业务开发五部', '业务开发五部', '53', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('131', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '订单货运部', '订单货运部', '53', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('132', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '项目部', '项目部', '53', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('133', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '技术部', '技术部', '82', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('134', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '物控部', '物控部', '82', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('135', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '物控组', '物控组', '82', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('136', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '高管层', '高管层', '48', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('137', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '投资管理', '投资管理', '48', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('138', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '小车队', '小车队', '48', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('139', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '会计组', '会计组', '49', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('140', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '成本组', '成本组', '49', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('141', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '税务组', '税务组', '49', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('142', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '信用组', '信用组', '49', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('143', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '电声组', '电声组', '55', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('144', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '电子组', '电子组', '55', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('145', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '报关组', '报关组', '55', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('146', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '薪资绩效组', '薪资绩效组', '50', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('147', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '招聘培训组', '招聘培训组', '50', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('148', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '人事管理组', '人事管理组', '50', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('149', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '开发组', '开发组', '77', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('150', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '维护组', '维护组', '77', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('151', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '机电班', '机电班', '77', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('152', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '模具班', '模具班', '77', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('153', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '返修班', '返修班', '46', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('154', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '行政部', '行政部', '83', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('155', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '软件设计部', '软件设计部', '83', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('156', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '博士后工作站', '博士后工作站', '83', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('157', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '电子设计部', '电子设计部', '83', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('158', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '电池二元极材料项目', '电池二元极材料项目', '83', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('159', '2014-06-22 10:34:48', '2014-06-22 10:34:48', 'WLAN项目', 'WLAN项目', '83', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('160', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '财务部', '财务部', '82', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('161', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '总经办', '总经办', '84', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('162', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '品牌运营部', '品牌运营部', '84', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('163', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '售后部', '售后部', '84', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('164', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '技术部', '技术部', '84', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('165', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '企划部', '企划部', '84', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('166', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '花都分店', '花都分店', '84', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('167', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '技术电声组', '技术电声组', '53', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('168', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '技术电子组', '技术电子组', '53', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('169', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '技术结构组', '技术结构组', '53', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('170', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '技术软件组', '技术软件组', '53', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('171', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '技术包装组', '技术包装组', '53', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('172', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '耳机设计项目', '耳机设计项目', '53', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('173', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '技术电声装配组', '技术电声装配组', '53', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('174', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '塑胶部仓库', '塑胶部仓库', '78', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('175', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '思迈车间', '思迈车间', '78', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('176', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '品牌代理', '品牌代理', '84', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('177', '2014-06-22 10:34:48', '2014-06-22 10:34:48', '生产部', '生产部', '95', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('178', '2014-06-22 10:34:49', '2014-06-22 10:34:49', '木箱一部', '木箱一部', '108', '2', '9', '2');
INSERT INTO `${tablePrefix}department` VALUES ('179', '2014-06-22 10:34:49', '2014-06-22 10:34:49', '木箱二部', '木箱二部', '108', '2', '12', '2');
INSERT INTO `${tablePrefix}department` VALUES ('180', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'H62E车间', 'H62E车间', '101', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('181', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'H62W车间', 'H62W车间', '101', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('182', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'J12E车间', 'J12E车间', '101', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('183', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'J12W车间', 'J12W车间', '106', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('184', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'J13E车间', 'J13E车间', '101', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('185', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'J13W车间', 'J13W车间', '106', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('186', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'J14E车间', 'J14E车间', '106', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('187', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'J14W车间', 'J14W车间', '101', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('188', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'J22E车间', 'J22E车间', '101', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('189', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'J22W车间', 'J22W车间', '106', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('190', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'J23E车间', 'J23E车间', '101', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('191', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'J23W车间', 'J23W车间', '106', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('192', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'J24E车间', 'J24E车间', '101', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('193', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'GW1车间', 'GW1车间', '101', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('194', '2014-06-22 10:34:49', '2014-06-22 10:34:49', '多媒体设备车间', '多媒体设备车间', '101', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('195', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'SMT车间', 'SMT车间', '106', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('196', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'H63E车间', 'H63E车间', '101', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('197', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'H64E车间', 'H64E车间', '106', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('198', '2014-06-22 10:34:49', '2014-06-22 10:34:49', '生产部模具', '生产部模具', '101', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('199', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'J24W车间', 'J24W车间', '106', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('200', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'H63W车间', 'H63W车间', '106', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('201', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'M2车间', 'M2车间', '101', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('202', '2014-06-22 10:34:49', '2014-06-22 10:34:49', '试产车间', '试产车间', '100', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('203', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'GW1车间', 'GW1车间', '105', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('204', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'GW2车间', 'GW2车间', '105', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('205', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'PMC仓库', 'PMC仓库', '99', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('206', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'H62W', 'H62W', '110', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('207', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'B6', 'B6', '110', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('208', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'GW3车间', 'GW3车间', '105', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('209', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'T铁车间', 'T铁车间', '122', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('210', '2014-06-22 10:34:49', '2014-06-22 10:34:49', '冲压车间', '冲压车间', '122', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('211', '2014-06-22 10:34:49', '2014-06-22 10:34:49', '自动化华司车间', '自动化华司车间', '122', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('212', '2014-06-22 10:34:49', '2014-06-22 10:34:49', '电镀车间', '电镀车间', '122', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('213', '2014-06-22 10:34:49', '2014-06-22 10:34:49', '交付组', '交付组', '131', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('214', '2014-06-22 10:34:49', '2014-06-22 10:34:49', '船务组', '船务组', '131', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('215', '2014-06-22 10:34:49', '2014-06-22 10:34:49', '电子组', '电子组', '100', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('216', '2014-06-22 10:34:49', '2014-06-22 10:34:49', '电声组', '电声组', '100', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('217', '2014-06-22 10:34:49', '2014-06-22 10:34:49', '效率组', '效率组', '100', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('218', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'QE组', 'QE组', '98', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('219', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'QA组', 'QA组', '98', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('220', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'IQC组', 'IQC组', '98', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('221', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'PQC组', 'PQC组', '98', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('222', '2014-06-22 10:34:49', '2014-06-22 10:34:49', '测试组', '测试组', '98', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('223', '2014-06-22 10:34:49', '2014-06-22 10:34:49', '财务组', '财务组', '107', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('224', '2014-06-22 10:34:49', '2014-06-22 10:34:49', '华东办事处', '华东办事处', '98', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('225', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'D4车间', 'D4车间', '101', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('226', '2014-06-22 10:34:49', '2014-06-22 10:34:49', 'GW2车间', 'GW2车间', '101', '2', '0', '2');
INSERT INTO `${tablePrefix}department` VALUES ('227', '2014-06-22 10:34:50', '2014-06-22 10:34:50', '机加工组', '机加工组', '209', '2', '0', '2');

-- ----------------------------
-- Table structure for ${tablePrefix}project
-- ----------------------------
DROP TABLE IF EXISTS `${tablePrefix}project`;
CREATE TABLE `${tablePrefix}project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `finish_task` int(11) DEFAULT NULL,
  `is_place_on_file` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `percent` double DEFAULT NULL,
  `total_task` int(11) DEFAULT NULL,
  `director` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_muw3a8w31hw00a06fhp91xy52` (`director`) USING BTREE,
  CONSTRAINT `${tablePrefix}project_ibfk_1` FOREIGN KEY (`director`) REFERENCES `${tablePrefix}user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ${tablePrefix}project
-- ----------------------------
INSERT INTO `${tablePrefix}project` VALUES ('1', '2014-04-27 16:29:10', '2014-04-27 16:29:10', '自己搭建一个符合自己使用习惯的项目管理系统。\r\n1、第一步先完成项目管理\r\n2、第二步是项目成员管理\r\n3、第三步是任务列表', '0', '0', '项目管理系统', '0', '0', '1');
INSERT INTO `${tablePrefix}project` VALUES ('2', '2014-04-27 16:33:41', '2014-04-27 16:33:41', '学习使用\r\n目标是：请假流程', '0', '0', '工作流引擎', '0', '0', '1');
INSERT INTO `${tablePrefix}project` VALUES ('3', '2014-04-27 16:36:12', '2014-04-27 16:36:12', '学习Spring的相关内容', '0', '0', '加强学习-Spring的正式使用', '0', '0', '1');
INSERT INTO `${tablePrefix}project` VALUES ('4', '2014-04-27 16:36:39', '2014-04-27 16:36:39', '培养自己的工作习惯', '0', '0', '习惯养成', '0', '0', '1');

-- ----------------------------
-- Table structure for ${tablePrefix}role
-- ----------------------------
DROP TABLE IF EXISTS `${tablePrefix}role`;
CREATE TABLE `${tablePrefix}role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `default_role` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ${tablePrefix}role
-- ----------------------------
INSERT INTO `${tablePrefix}role` VALUES ('1', null, null, 'admin', '0', '系统管理员', '0');
INSERT INTO `${tablePrefix}role` VALUES ('2', null, null, 'user', '1', '员工', '1');

-- ----------------------------
-- Table structure for ${tablePrefix}role_sidebar
-- ----------------------------
DROP TABLE IF EXISTS `${tablePrefix}role_sidebar`;
CREATE TABLE `${tablePrefix}role_sidebar` (
  `role_id` bigint(20) NOT NULL,
  `sidebar_id` bigint(20) NOT NULL,
  KEY `FK_59rp0u2aph88kd4045y00mf1p` (`sidebar_id`) USING BTREE,
  KEY `FK_3eah9odem243gcd52tuj3q292` (`role_id`) USING BTREE,
  CONSTRAINT `${tablePrefix}role_sidebar_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `${tablePrefix}role` (`id`),
  CONSTRAINT `${tablePrefix}role_sidebar_ibfk_2` FOREIGN KEY (`sidebar_id`) REFERENCES `${tablePrefix}sidebar` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ${tablePrefix}role_sidebar
-- ----------------------------
INSERT INTO `${tablePrefix}role_sidebar` VALUES ('1', '1');
INSERT INTO `${tablePrefix}role_sidebar` VALUES ('1', '2');
INSERT INTO `${tablePrefix}role_sidebar` VALUES ('1', '4');
INSERT INTO `${tablePrefix}role_sidebar` VALUES ('1', '5');
INSERT INTO `${tablePrefix}role_sidebar` VALUES ('1', '3');
INSERT INTO `${tablePrefix}role_sidebar` VALUES ('2', '1');
INSERT INTO `${tablePrefix}role_sidebar` VALUES ('2', '2');
INSERT INTO `${tablePrefix}role_sidebar` VALUES ('2', '4');
INSERT INTO `${tablePrefix}role_sidebar` VALUES ('2', '3');

-- ----------------------------
-- Table structure for ${tablePrefix}sidebar
-- ----------------------------
DROP TABLE IF EXISTS `${tablePrefix}sidebar`;
CREATE TABLE `${tablePrefix}sidebar` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pre_sidebar_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_e603qcttght9illi2t1yvkeer` (`pre_sidebar_id`) USING BTREE,
  CONSTRAINT `${tablePrefix}sidebar_ibfk_1` FOREIGN KEY (`pre_sidebar_id`) REFERENCES `${tablePrefix}sidebar` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ${tablePrefix}sidebar
-- ----------------------------
INSERT INTO `${tablePrefix}sidebar` VALUES ('1', null, null, 'workbench', '/workbench', '我的工作', null);
INSERT INTO `${tablePrefix}sidebar` VALUES ('2', null, null, 'struct-manager', '', '架构管理', null);
INSERT INTO `${tablePrefix}sidebar` VALUES ('3', null, null, 'projects-manager', '', '项目管理', null);
INSERT INTO `${tablePrefix}sidebar` VALUES ('4', null, null, 'users-list', '/user', '用户管理', '2');
INSERT INTO `${tablePrefix}sidebar` VALUES ('5', null, null, 'departments-list', '/department', '部门信息', '2');

-- ----------------------------
-- Table structure for ${tablePrefix}task
-- ----------------------------
DROP TABLE IF EXISTS `${tablePrefix}task`;
CREATE TABLE `${tablePrefix}task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_elk6mlelf430j9ip1dka77avv` (`user_id`) USING BTREE,
  CONSTRAINT `${tablePrefix}task_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `${tablePrefix}user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ${tablePrefix}task
-- ----------------------------
INSERT INTO `${tablePrefix}task` VALUES ('1', 'http://www.playframework.org/', 'Study PlayFramework 2.0', '2', null, null);
INSERT INTO `${tablePrefix}task` VALUES ('2', 'http://www.grails.org/', 'Study Grails 2.0', '2', null, null);
INSERT INTO `${tablePrefix}task` VALUES ('3', 'http://www.springfuse.com/', 'Try SpringFuse', '2', null, null);
INSERT INTO `${tablePrefix}task` VALUES ('4', 'http://www.springsource.org/spring-roo', 'Try Spring Roo', '2', null, null);
INSERT INTO `${tablePrefix}task` VALUES ('5', 'As soon as posibble.', 'Release SpringSide 4.0', '2', null, null);
INSERT INTO `${tablePrefix}task` VALUES ('6', '123', 'Google 超越苹果，成全球最具价值品牌', '2', null, null);

-- ----------------------------
-- Table structure for ${tablePrefix}user
-- ----------------------------
DROP TABLE IF EXISTS `${tablePrefix}user`;
CREATE TABLE `${tablePrefix}user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `login_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ${tablePrefix}user
-- ----------------------------
INSERT INTO `${tablePrefix}user` VALUES ('1', 'admin@163.com', 'admin', '梁仲荣', '691b14d79bf0fa2215f155235df5e670b64394cc', '2012-06-04 01:00:00', 'admin', '7efbd59d9741d34f', '2014-04-27 16:45:46', '2014-04-27 16:45:49', 'libra.jpg');
INSERT INTO `${tablePrefix}user` VALUES ('2', 'user@163.com', 'user', '成员', '2488aa0c31c624687bd9928e0a5d29e7d1ed520b', '2012-06-04 02:00:00', 'user', '6d65d24122c30500', '2014-04-27 16:45:52', '2014-04-27 16:45:54', 'avatar1.jpg');

-- ----------------------------
-- Table structure for ${tablePrefix}user_role
-- ----------------------------
DROP TABLE IF EXISTS `${tablePrefix}user_role`;
CREATE TABLE `${tablePrefix}user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `FK_1txpcisco2l99tl5qqshr6ptp` (`role_id`) USING BTREE,
  KEY `FK_qrc2efy4dx7j5okwcg0hit512` (`user_id`) USING BTREE,
  CONSTRAINT `${tablePrefix}user_role_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `${tablePrefix}role` (`id`),
  CONSTRAINT `${tablePrefix}user_role_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `${tablePrefix}user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ${tablePrefix}user_role
-- ----------------------------
INSERT INTO `${tablePrefix}user_role` VALUES ('2', '2');
INSERT INTO `${tablePrefix}user_role` VALUES ('1', '1');
