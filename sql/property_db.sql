/*
 Navicat Premium Data Transfer

 Source Server         : 腾讯云
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : 106.53.73.30:3306
 Source Schema         : property_db

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 11/01/2022 17:38:20
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;


-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `parent_id` int(6) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '父菜单ID',
  `menu_name` varchar(255) CHARACTER SET utf8  NULL DEFAULT NULL COMMENT '菜单名',
  `url` varchar(512) CHARACTER SET utf8  NULL DEFAULT NULL COMMENT '跳转地址',
  `icon_name` varchar(255) CHARACTER SET utf8  NULL DEFAULT NULL COMMENT '图标名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 56 CHARACTER SET = utf8 COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (000001, NULL, '楼宇管理', 'building/toBuildingPage', '&#xe6fc;');
INSERT INTO `menu` VALUES (000002, NULL, '住房管理', 'house/toHousePage', '&#xe6fb;');
INSERT INTO `menu` VALUES (000005, NULL, '物业管理', '', '&#xe726;');
INSERT INTO `menu` VALUES (000003, NULL, '车位管理', 'carPark/toCarParkPage', '&#xe6e3;');
INSERT INTO `menu` VALUES (000051, 000005, '收费项目管理', 'propertyChargeItem/toPropertyChargeItemPage', '&#xe6ab;');
INSERT INTO `menu` VALUES (000052, 000005, '抄表管理', 'propertyChargeVisit/toPropertyChargeVisitPage', '&#xe6a2;');
INSERT INTO `menu` VALUES (000053, 000005, '缴费记录管理', 'propertyPayVisit/toPropertyPayVisitPage', '&#xe70c;');
INSERT INTO `menu` VALUES (000004, NULL, '住户管理', 'user/toUserPage', '&#xe6b8;');
INSERT INTO `menu` VALUES (000007, NULL, '住户投诉', 'userComplaint/toUserComplaintPage', '&#xe6c7;');
INSERT INTO `menu` VALUES (000006, NULL, '住户报修', 'userRepair/toUserRepairPage', '&#xe6d4;');
INSERT INTO `menu` VALUES (000011, NULL, '系统管理', 'adminInfo/toAdminPage', '&#xe70b;');
INSERT INTO `menu` VALUES (000008, NULL, '公告管理', 'notice/toDataPage', '&#xe6b3;');
INSERT INTO `menu` VALUES (000055, NULL, '出入记录', 'accessVisit/toDataPage', '&#xe744;');
INSERT INTO `menu` VALUES (000013, NULL, '评价管理', 'comment/toDataPage', '&#xe69b;');
INSERT INTO `menu` VALUES (000009, NULL, '员工管理', 'employee/toDataPage', '&#xe6c7;');

-- ----------------------------
-- Table structure for menu_admin_relation
-- ----------------------------
DROP TABLE IF EXISTS `menu_admin_relation`;
CREATE TABLE `menu_admin_relation`  (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_id` int(6) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '管理员ID',
  `menu_id` int(6) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 58 CHARACTER SET = utf8 COMMENT = '菜单与管理员管理表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of menu_admin_relation
-- ----------------------------
INSERT INTO `menu_admin_relation` VALUES (000001, 000001, 000001);
INSERT INTO `menu_admin_relation` VALUES (000002, 000001, 000002);
INSERT INTO `menu_admin_relation` VALUES (000003, 000001, 000003);
INSERT INTO `menu_admin_relation` VALUES (000004, 000001, 000005);
INSERT INTO `menu_admin_relation` VALUES (000005, 000001, 000051);
INSERT INTO `menu_admin_relation` VALUES (000006, 000001, 000052);
INSERT INTO `menu_admin_relation` VALUES (000007, 000001, 000053);
INSERT INTO `menu_admin_relation` VALUES (000008, 000001, 000004);
INSERT INTO `menu_admin_relation` VALUES (000009, 000001, 000007);
INSERT INTO `menu_admin_relation` VALUES (000010, 000001, 000006);
INSERT INTO `menu_admin_relation` VALUES (000011, 000001, 000011);
INSERT INTO `menu_admin_relation` VALUES (000012, 000003, 000001);
INSERT INTO `menu_admin_relation` VALUES (000013, 000003, 000002);
INSERT INTO `menu_admin_relation` VALUES (000014, 000003, 000005);
INSERT INTO `menu_admin_relation` VALUES (000015, 000003, 000003);
INSERT INTO `menu_admin_relation` VALUES (000016, 000003, 000051);
INSERT INTO `menu_admin_relation` VALUES (000017, 000003, 000052);
INSERT INTO `menu_admin_relation` VALUES (000018, 000003, 000053);
INSERT INTO `menu_admin_relation` VALUES (000019, 000003, 000004);
INSERT INTO `menu_admin_relation` VALUES (000020, 000003, 000007);
INSERT INTO `menu_admin_relation` VALUES (000021, 000003, 000006);
INSERT INTO `menu_admin_relation` VALUES (000022, 000003, 000011);
INSERT INTO `menu_admin_relation` VALUES (000023, 000004, 000001);
INSERT INTO `menu_admin_relation` VALUES (000024, 000004, 000002);
INSERT INTO `menu_admin_relation` VALUES (000025, 000004, 000005);
INSERT INTO `menu_admin_relation` VALUES (000026, 000004, 000003);
INSERT INTO `menu_admin_relation` VALUES (000027, 000004, 000051);
INSERT INTO `menu_admin_relation` VALUES (000028, 000004, 000052);
INSERT INTO `menu_admin_relation` VALUES (000029, 000004, 000053);
INSERT INTO `menu_admin_relation` VALUES (000030, 000004, 000004);
INSERT INTO `menu_admin_relation` VALUES (000031, 000004, 000007);
INSERT INTO `menu_admin_relation` VALUES (000032, 000004, 000006);
INSERT INTO `menu_admin_relation` VALUES (000033, 000004, 000011);
INSERT INTO `menu_admin_relation` VALUES (000034, 000005, 000001);
INSERT INTO `menu_admin_relation` VALUES (000035, 000005, 000002);
INSERT INTO `menu_admin_relation` VALUES (000036, 000005, 000005);
INSERT INTO `menu_admin_relation` VALUES (000037, 000005, 000003);
INSERT INTO `menu_admin_relation` VALUES (000038, 000005, 000051);
INSERT INTO `menu_admin_relation` VALUES (000039, 000005, 000052);
INSERT INTO `menu_admin_relation` VALUES (000040, 000005, 000053);
INSERT INTO `menu_admin_relation` VALUES (000041, 000005, 000004);
INSERT INTO `menu_admin_relation` VALUES (000042, 000005, 000007);
INSERT INTO `menu_admin_relation` VALUES (000043, 000005, 000006);
INSERT INTO `menu_admin_relation` VALUES (000044, 000005, 000011);
INSERT INTO `menu_admin_relation` VALUES (000045, 000001, 000008);
INSERT INTO `menu_admin_relation` VALUES (000046, 000001, 000055);
INSERT INTO `menu_admin_relation` VALUES (000047, 000003, 000055);
INSERT INTO `menu_admin_relation` VALUES (000048, 000004, 000055);
INSERT INTO `menu_admin_relation` VALUES (000049, 000005, 000055);
INSERT INTO `menu_admin_relation` VALUES (000050, 000003, 000008);
INSERT INTO `menu_admin_relation` VALUES (000051, 000004, 000008);
INSERT INTO `menu_admin_relation` VALUES (000052, 000005, 000008);
INSERT INTO `menu_admin_relation` VALUES (000053, 000001, 000013);
INSERT INTO `menu_admin_relation` VALUES (000054, 000003, 000013);
INSERT INTO `menu_admin_relation` VALUES (000055, 000004, 000013);
INSERT INTO `menu_admin_relation` VALUES (000056, 000005, 000013);
INSERT INTO `menu_admin_relation` VALUES (000057, 000001, 000009);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `title` varchar(255) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '公告标题',
  `content` varchar(255) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '公告内容',
  `create_date` date NULL DEFAULT NULL COMMENT '发布时间',
  `news_img` varchar(255) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '公告图片',
  `user_name` varchar(255) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '作者',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COMMENT = '公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (11, '失物招领', '小区失物招领', '2021-05-28', NULL, '超级管理员', NULL);

-- ----------------------------
-- Table structure for property_charge_item
-- ----------------------------
DROP TABLE IF EXISTS `property_charge_item`;
CREATE TABLE `property_charge_item`  (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `charge_name` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '收费项目名',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `item_price` int(11) NULL DEFAULT NULL COMMENT '项目单价',
  `price_desc` varchar(255) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '价格描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COMMENT = '物业收费项目信息表 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of property_charge_item
-- ----------------------------
INSERT INTO `property_charge_item` VALUES (000001, '物业费', '2020-11-22 16:45:45', 50, '每平米0.5元');
INSERT INTO `property_charge_item` VALUES (000002, '水费', '2020-11-22 16:47:29', 280, '每立方米2.8元');
INSERT INTO `property_charge_item` VALUES (000003, '电费', '2020-11-22 16:47:46', 55, '每度电0.55元，无梯度增长');
INSERT INTO `property_charge_item` VALUES (000004, '测试收费项1', '2020-11-22 16:54:05', 0, '测试数据');
INSERT INTO `property_charge_item` VALUES (000005, '测试收费项2', '2020-11-22 16:54:09', 0, '测试数据');
INSERT INTO `property_charge_item` VALUES (000006, '测试收费项3', '2020-11-22 16:54:14', 0, '测试数据');

-- ----------------------------
-- Table structure for property_charge_visit
-- ----------------------------
DROP TABLE IF EXISTS `property_charge_visit`;
CREATE TABLE `property_charge_visit`  (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `item_id` int(11) NULL DEFAULT NULL COMMENT '收费项目ID',
  `item_name` varchar(64) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '收费项名称',
  `house_id` int(11) NULL DEFAULT NULL COMMENT '住房ID',
  `building_num` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '楼宇号',
  `unit_num` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '单元号',
  `house_num` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '房间号',
  `user_name` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '客户姓名',
  `phone` varchar(255) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '客户手机号',
  `price` int(11) NULL DEFAULT NULL COMMENT '费用',
  `prev_month_count` int(11) NULL DEFAULT NULL COMMENT '上月读数',
  `curr_month_count` int(11) NULL DEFAULT NULL COMMENT '本月读数',
  `use_count` int(11) NULL DEFAULT NULL COMMENT '本次用量',
  `visit_date` datetime NULL DEFAULT NULL COMMENT '录入时间',
  `read_date` datetime NULL DEFAULT NULL COMMENT '抄表时间',
  `read_name` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '抄表人',
  `visit_status` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '记录状态（0已缴费  1未交费）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COMMENT = '物业收费记录信息表 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of property_charge_visit
-- ----------------------------

-- ----------------------------
-- Table structure for property_pay_visit
-- ----------------------------
DROP TABLE IF EXISTS `property_pay_visit`;
CREATE TABLE `property_pay_visit`  (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `charge_id` int(11) NOT NULL COMMENT '对应物业收费记录表的ID',
  `building_num` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '楼宇号',
  `unit_num` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '单元号',
  `house_num` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '房间号',
  `client_name` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '客户姓名',
  `item_name` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '收费项目',
  `pay_money` int(11) NULL DEFAULT NULL COMMENT '缴费金额（单位：分）',
  `pay_type` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '缴费方式',
  `charge_person` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '收费人员',
  `pay_date` datetime NULL DEFAULT NULL COMMENT '缴费时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COMMENT = '物业缴费记录信息表 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of property_pay_visit
-- ----------------------------


-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_name` varchar(128) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '用户姓名',
  `phone` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '电话',
  `card_num` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '身份证号',
  `sex` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '性别',
  `nation` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '民族',
  `register_address` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '户籍地址',
  `email` varchar(255) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '邮箱地址',
  `health_flag` varchar(8) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '健康码  红 黄 绿',
  `vaccines` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '疫苗：未接种 或者 二针  三针',
  `quarantine_flag` varchar(2) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '是否居家隔离 0否 1是',
  `trip` varchar(255) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '行程码，多个城市逗号隔开',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COMMENT = '住户信息表 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (000001, '张三', '15566778899', '11010519491231003X', '男', NULL, '北京', '9401114@qq.com', '绿', '三针', '0', '北京市');
INSERT INTO `user` VALUES (000002, '李四', '15566889966', '11010519491231004X', '女', NULL, '北京', '943701114@qq.com', '绿', '三针', '0', '北京市');
INSERT INTO `user` VALUES (000003, '张四', '15988667744', '11010519791231003X', '男', NULL, '北京', '943701114@qq.com', '绿', '三针', '0', '北京市');
INSERT INTO `user` VALUES (000004, '牛头', '19988774455', '14010519491231005X', '男', NULL, '山西', '943701114@qq.com', '绿', '三针', '0', '北京市');
INSERT INTO `user` VALUES (000005, '马面', '18877556633', '15010519491231004X', '女', NULL, '内蒙古', '943701114@qq.com', '绿', '三针', '0', '北京市');
INSERT INTO `user` VALUES (000006, '朱杰', '17315100630', '320724199903195713', '男', NULL, '江苏', '2430452461@qq.com', '绿', '三针', '0', '北京市');
INSERT INTO `user` VALUES (000007, '周八', '13455667788', '320724199903195713', '男', NULL, '江苏', '123456@qq.com', '红', '未接种', '1', '西安市，北京市');

-- ----------------------------
-- Table structure for user_complaint
-- ----------------------------
DROP TABLE IF EXISTS `user_complaint`;
CREATE TABLE `user_complaint`  (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_name` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '客户姓名',
  `phone` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '客户电话',
  `complaint_info` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '投诉信息',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `is_solve` varchar(4) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '是否处理 0未处理 1已处理',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '对应的用户ID',
  `emp_id` int(11) NULL DEFAULT NULL COMMENT '对应的员工ID',
  `result_msg` varchar(512) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '处理结果',
  `feedback_msg` varchar(512) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '用户反馈',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COMMENT = '用户投诉信息表 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_complaint
-- ----------------------------
INSERT INTO `user_complaint` VALUES (000001, '张三', '15566778899', '楼下半夜总是很吵', '2020-12-01 03:30:32', '1', 1, 2, '已经调解', '很满意');

-- ----------------------------
-- Table structure for user_repair
-- ----------------------------
DROP TABLE IF EXISTS `user_repair`;
CREATE TABLE `user_repair`  (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_name` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '客户姓名',
  `phone` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '客户电话',
  `repair_info` varchar(32) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '报修信息',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `is_solve` varchar(4) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '是否处理 0未处理 1已处理',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '对应的用户ID',
  `emp_id` int(11) NULL DEFAULT NULL COMMENT '对应的员工ID',
  `result_msg` varchar(512) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '处理结果',
  `feedback_msg` varchar(512) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '用户反馈',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COMMENT = '用户报修信息表 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_repair
-- ----------------------------
INSERT INTO `user_repair` VALUES (000003, '张三', '15566778899', '水管有点堵塞', '2020-12-01 03:53:50', '1', 1, 2, '已修理', '满意');

-- ----------------------------
-- Table structure for user_unit_relation
-- ----------------------------
DROP TABLE IF EXISTS `user_unit_relation`;
CREATE TABLE `user_unit_relation`  (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `unit_id` int(11) NULL DEFAULT NULL COMMENT '住房ID',
  `create_date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `is_house_holder` varchar(4) CHARACTER SET utf8 NULL DEFAULT NULL COMMENT '是否是户主 1是  0否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COMMENT = '用户与住房关系对应表 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_unit_relation
-- ----------------------------
INSERT INTO `user_unit_relation` VALUES (000001, 1, 1, '2020-11-23 22:58:51', '1');
INSERT INTO `user_unit_relation` VALUES (000002, 2, 2, '2020-11-30 21:30:19', '1');
INSERT INTO `user_unit_relation` VALUES (000008, 3, 1, '2020-12-01 00:51:47', '0');
INSERT INTO `user_unit_relation` VALUES (000009, 2, 3, '2021-11-17 09:31:16', '1');
INSERT INTO `user_unit_relation` VALUES (000010, 5, 4, '2020-12-02 17:03:33', '1');
INSERT INTO `user_unit_relation` VALUES (000011, 1, 4, '2020-12-02 17:03:46', '0');
INSERT INTO `user_unit_relation` VALUES (000012, 4, 8, '2020-12-02 17:04:06', '1');
INSERT INTO `user_unit_relation` VALUES (000013, 1, 9, '2021-05-12 00:11:35', '1');
INSERT INTO `user_unit_relation` VALUES (000014, 1, 15, '2021-05-12 00:11:55', '1');
INSERT INTO `user_unit_relation` VALUES (000015, 6, 6, '2021-05-27 17:11:23', '1');
INSERT INTO `user_unit_relation` VALUES (000016, 1, 10, '2021-11-17 09:29:29', '1');

SET FOREIGN_KEY_CHECKS = 1;
