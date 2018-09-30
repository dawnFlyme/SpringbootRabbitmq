/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : rabbitmq

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-09-30 10:48:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for broker_message_log
-- ----------------------------
DROP TABLE IF EXISTS `broker_message_log`;
CREATE TABLE `broker_message_log` (
  `message_id` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `try_count` int(255) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `next_retry` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of broker_message_log
-- ----------------------------
INSERT INTO `broker_message_log` VALUES ('1538214801579$f2a234fc-d02a-40dd-a8f7-280c3a086621', '{\"id\":1001,\"messageId\":\"1538214801579$f2a234fc-d02a-40dd-a8f7-280c3a086621\",\"name\":\"This is Test Message\"}', null, '0', '2018-09-29 17:54:22', '2018-09-29 17:53:22', '2018-09-29 17:53:22');
INSERT INTO `broker_message_log` VALUES ('1538275378843$869696ef-2ab1-4799-867b-a9e0da62b034', '{\"id\":1001,\"messageId\":\"1538275378843$869696ef-2ab1-4799-867b-a9e0da62b034\",\"name\":\"This is Test Message\"}', null, '1', '2018-09-30 10:42:59', '2018-09-30 10:42:59', '2018-09-30 10:43:00');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1001', 'This is Test Message', '1538214801579$f2a234fc-d02a-40dd-a8f7-280c3a086621');
INSERT INTO `t_order` VALUES ('1001', 'This is Test Message', '1538275378843$869696ef-2ab1-4799-867b-a9e0da62b034');
