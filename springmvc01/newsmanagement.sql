
create database NewsManagement;
-- ----------------------------
-- Table structure for news_comment
-- ----------------------------
DROP TABLE IF EXISTS `news_comment`;
CREATE TABLE `news_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `newsid` int(11) NOT NULL COMMENT '新闻编号',
  `content` varchar(255) NOT NULL COMMENT '评论内容',
  `author` varchar(50) DEFAULT NULL COMMENT '评论人',
  `createdate` datetime DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`),
  KEY `fk_news_id` (`newsid`),
  CONSTRAINT `fk_news_id` FOREIGN KEY (`newsid`) REFERENCES `news_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_comment
-- ----------------------------
INSERT INTO `news_comment` VALUES ('1', '1', '很帅', ' 刘三姐', '2018-09-06 03:02:00');
INSERT INTO `news_comment` VALUES ('2', '1', ' 大师傅似的', '杀杀杀', '2018-09-01 00:00:00');
INSERT INTO `news_comment` VALUES ('3', '2', '似懂非懂', '23额', '2018-09-06 00:00:00');
INSERT INTO `news_comment` VALUES ('4', '3', '撒啊士大夫撒', 'f发生发生 ', '2018-09-05 00:00:00');
INSERT INTO `news_comment` VALUES ('5', '1', '\r\n                   踩踩踩踩踩踩从', '不要脸', '2018-09-10 10:02:28');

-- ----------------------------
-- Table structure for news_detail
-- ----------------------------
DROP TABLE IF EXISTS `news_detail`;
CREATE TABLE `news_detail` (
  `id` int(11) NOT NULL COMMENT '新闻编号',
  `title` varchar(100) NOT NULL COMMENT '新闻名称',
  `summary` varchar(255) DEFAULT NULL COMMENT '新闻摘要',
  `author` varchar(50) DEFAULT NULL COMMENT '作者',
  `createdate` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_detail
-- ----------------------------
INSERT INTO `news_detail` VALUES ('1', '我很开心', '爱心', ' 刘德华', '2018-09-03 00:00:00');
INSERT INTO `news_detail` VALUES ('2', '阿三发射点', 'd地方撒旦发的', '郭富城', '2018-09-05 00:00:00');
INSERT INTO `news_detail` VALUES ('3', '非官方的回复手动阀手动阀', '阿瑟东撒的', '郭德纲', '2018-09-12 10:00:00');
INSERT INTO `news_detail` VALUES ('4', '开心', ' 不开心呢', ' 杀杀杀', '2018-09-01 10:20:00');
