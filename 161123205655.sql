/*
MySQL Backup
Source Server Version: 5.7.12
Source Database: classroommanager
Date: 2016/11/23 20:56:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `apply`
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply` (
  `apply_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(8) DEFAULT NULL,
  `classroom_id` int(11) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`apply_id`),
  UNIQUE KEY `fk_classroomid[apply]` (`classroom_id`),
  UNIQUE KEY `fk_studentid[apply]` (`student_id`),
  CONSTRAINT `fk_classroomid[apply]` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`class_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_studentid[apply]` FOREIGN KEY (`student_id`) REFERENCES `user` (`student_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `classroom`
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `adress1` varchar(255) DEFAULT NULL,
  `adress2` varchar(255) DEFAULT NULL,
  `adress3` varchar(255) DEFAULT NULL,
  `seat` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `classuse`
-- ----------------------------
DROP TABLE IF EXISTS `classuse`;
CREATE TABLE `classuse` (
  `classuse_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `classroom_id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `student_id` varchar(8) DEFAULT NULL,
  `apply_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`classuse_id`),
  KEY `fk_classroomid` (`classroom_id`),
  KEY `fk_studentid` (`student_id`),
  KEY `fk_applyid[classuse]` (`apply_id`),
  CONSTRAINT `fk_applyid[classuse]` FOREIGN KEY (`apply_id`) REFERENCES `apply` (`apply_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_classroomid` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`class_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_studentid` FOREIGN KEY (`student_id`) REFERENCES `user` (`student_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `student_id` varchar(8) NOT NULL,
  `academy` varchar(255) DEFAULT NULL,
  `banji` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
