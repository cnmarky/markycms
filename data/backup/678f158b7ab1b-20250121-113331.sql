-- -----------------------------
-- SDCMS MySQL Data Transfer 
-- 
-- Date:2025-01-21 11:33:31
-- -----------------------------

SET FOREIGN_KEY_CHECKS = 0;


-- -----------------------------
-- Table structure for `cms_ad`
-- -----------------------------
DROP TABLE IF EXISTS `cms_ad`;
CREATE TABLE `cms_ad` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '0',
  `name` varchar(50) DEFAULT '',
  `pic` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `isshow` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_ad_group`
-- -----------------------------
DROP TABLE IF EXISTS `cms_ad_group`;
CREATE TABLE `cms_ad_group` (
  `gid` int(10) NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) DEFAULT '',
  `gnum` int(10) DEFAULT '0',
  `gkey` varchar(50) DEFAULT '',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_admin`
-- -----------------------------
DROP TABLE IF EXISTS `cms_admin`;
CREATE TABLE `cms_admin` (
  `adminid` int(10) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(50) DEFAULT '',
  `adminpass` varchar(50) DEFAULT '',
  `penname` varchar(20) DEFAULT '',
  `pid` int(10) DEFAULT '0',
  `logintimes` int(10) DEFAULT '0',
  `lastlogindate` int(10) DEFAULT '0',
  `lastloginip` varchar(50) DEFAULT '',
  `readonly` smallint(1) DEFAULT '0',
  `isshow` smallint(1) DEFAULT '0',
  PRIMARY KEY (`adminid`),
  KEY `adminname` (`adminname`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_alias`
-- -----------------------------
DROP TABLE IF EXISTS `cms_alias`;
CREATE TABLE `cms_alias` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `alias` varchar(50) DEFAULT '',
  `app` varchar(50) DEFAULT '',
  `sid` int(10) DEFAULT '0',
  `types` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_auth`
-- -----------------------------
DROP TABLE IF EXISTS `cms_auth`;
CREATE TABLE `cms_auth` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ckey` varchar(50) DEFAULT '',
  `cval` text,
  `cdate` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_badword`
-- -----------------------------
DROP TABLE IF EXISTS `cms_badword`;
CREATE TABLE `cms_badword` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `words` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_book`
-- -----------------------------
DROP TABLE IF EXISTS `cms_book`;
CREATE TABLE `cms_book` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `mobile` varchar(20) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `qq` varchar(20) DEFAULT '',
  `postip` varchar(20) DEFAULT '',
  `message` text,
  `reply` text,
  `createdate` int(10) DEFAULT '0',
  `replydate` int(10) DEFAULT '0',
  `isshow` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_class`
-- -----------------------------
DROP TABLE IF EXISTS `cms_class`;
CREATE TABLE `cms_class` (
  `cateid` int(10) NOT NULL AUTO_INCREMENT,
  `followid` int(10) DEFAULT '0',
  `cate_name` varchar(50) DEFAULT '',
  `cate_type` smallint(2) DEFAULT '0',
  `cate_url` varchar(255) DEFAULT '',
  `cate_page` int(10) DEFAULT '20',
  `cate_order` int(10) DEFAULT '0',
  `cate_title` varchar(255) DEFAULT '',
  `cate_key` varchar(255) DEFAULT '',
  `cate_desc` varchar(255) DEFAULT '',
  `cate_list` varchar(255) DEFAULT '',
  `cate_show` varchar(255) DEFAULT '',
  `cate_pic` varchar(255) DEFAULT '',
  `cate_en` varchar(255) DEFAULT '',
  `isgroup` smallint(1) DEFAULT '0',
  `ismenu` smallint(1) DEFAULT '0',
  `isnew` smallint(1) DEFAULT '0',
  `mycat_thumb` varchar(255) DEFAULT '',
  `mycat_banner` varchar(255) DEFAULT '',
  PRIMARY KEY (`cateid`),
  KEY `order` (`cate_order`,`cateid`),
  KEY `where` (`followid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_config`
-- -----------------------------
DROP TABLE IF EXISTS `cms_config`;
CREATE TABLE `cms_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gid` int(10) DEFAULT '0',
  `ckey` varchar(50) DEFAULT '',
  `ctitle` varchar(50) DEFAULT '',
  `cvalue` text,
  `ordnum` int(10) DEFAULT '0',
  `ctype` int(10) DEFAULT '0',
  `dvalue` text,
  `dtext` varchar(255) DEFAULT '',
  `rtype` smallint(1) DEFAULT '0',
  `utype` smallint(1) DEFAULT '0',
  `isshow` smallint(1) DEFAULT '0',
  `issys` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ckey` (`ckey`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_config_group`
-- -----------------------------
DROP TABLE IF EXISTS `cms_config_group`;
CREATE TABLE `cms_config_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `isshow` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_data`
-- -----------------------------
DROP TABLE IF EXISTS `cms_data`;
CREATE TABLE `cms_data` (
  `dataid` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '0',
  `piclist` text,
  `content` mediumtext,
  `mywork_principle` text,
  `myperformance` text,
  `myfeatures` text,
  `myapplication` text,
  `myproduct_pic` varchar(255) DEFAULT '',
  PRIMARY KEY (`dataid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_field`
-- -----------------------------
DROP TABLE IF EXISTS `cms_field`;
CREATE TABLE `cms_field` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` int(10) DEFAULT '0',
  `field_title` varchar(50) DEFAULT '',
  `field_key` varchar(50) DEFAULT '',
  `field_type` int(5) DEFAULT '0',
  `field_length` int(10) DEFAULT '0',
  `field_upload_type` int(10) DEFAULT '0',
  `field_default` varchar(255) DEFAULT '',
  `field_list` text,
  `field_sql` varchar(255) DEFAULT '',
  `field_tips` varchar(255) DEFAULT '',
  `field_rule` int(10) DEFAULT '0',
  `field_radio` int(10) DEFAULT '0',
  `field_editor` int(10) DEFAULT '0',
  `field_group` int(10) DEFAULT '0',
  `field_filter` int(10) DEFAULT '0',
  `field_table` varchar(50) DEFAULT '',
  `field_join` varchar(255) DEFAULT '',
  `field_where` varchar(255) DEFAULT '',
  `field_order` varchar(255) DEFAULT '',
  `field_value` varchar(50) DEFAULT '',
  `field_label` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `isshow` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_file`
-- -----------------------------
DROP TABLE IF EXISTS `cms_file`;
CREATE TABLE `cms_file` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `file_url` varchar(255) DEFAULT '',
  `file_name` varchar(255) DEFAULT '',
  `file_ext` varchar(50) DEFAULT '',
  `file_size` int(10) DEFAULT '0',
  `file_type` int(10) DEFAULT '0',
  `file_update` int(10) DEFAULT '0',
  `file_adminid` int(10) DEFAULT '0',
  `file_ip` varchar(50) DEFAULT '',
  `gid` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`file_type`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_file_group`
-- -----------------------------
DROP TABLE IF EXISTS `cms_file_group`;
CREATE TABLE `cms_file_group` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `isshow` smallint(1) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_link`
-- -----------------------------
DROP TABLE IF EXISTS `cms_link`;
CREATE TABLE `cms_link` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `isshow` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_log`
-- -----------------------------
DROP TABLE IF EXISTS `cms_log`;
CREATE TABLE `cms_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `msg` varchar(255) DEFAULT '',
  `ip` varchar(50) DEFAULT '',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=354 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_log_login`
-- -----------------------------
DROP TABLE IF EXISTS `cms_log_login`;
CREATE TABLE `cms_log_login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(50) DEFAULT '',
  `loginip` varchar(50) DEFAULT '',
  `logindate` int(10) DEFAULT '0',
  `loginmsg` varchar(255) DEFAULT '',
  `loginstate` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_menu`
-- -----------------------------
DROP TABLE IF EXISTS `cms_menu`;
CREATE TABLE `cms_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `cname` varchar(50) DEFAULT '',
  `aname` varchar(50) DEFAULT '',
  `dname` varchar(255) DEFAULT '',
  `followid` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `isshow` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_page`
-- -----------------------------
DROP TABLE IF EXISTS `cms_page`;
CREATE TABLE `cms_page` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT NULL,
  `piclist` text,
  `content` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_part`
-- -----------------------------
DROP TABLE IF EXISTS `cms_part`;
CREATE TABLE `cms_part` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `page_list` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_plug_chatglm`
-- -----------------------------
DROP TABLE IF EXISTS `cms_plug_chatglm`;
CREATE TABLE `cms_plug_chatglm` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `classid` int(10) DEFAULT '0',
  `pass` smallint(1) DEFAULT '0',
  `cid` int(10) DEFAULT '0',
  `tid` varchar(100) DEFAULT '',
  `createdate` int(10) DEFAULT '0',
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_plug_chatglm_config`
-- -----------------------------
DROP TABLE IF EXISTS `cms_plug_chatglm_config`;
CREATE TABLE `cms_plug_chatglm_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `keylist` text,
  `model` varchar(50) DEFAULT '',
  `max` int(10) DEFAULT '0',
  `space` smallint(1) DEFAULT '0',
  `tags` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_plug_collect`
-- -----------------------------
DROP TABLE IF EXISTS `cms_plug_collect`;
CREATE TABLE `cms_plug_collect` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `cid` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `isshow` int(10) DEFAULT '0',
  `paramter` varchar(50) DEFAULT '',
  `replacetext` text,
  `picdata` text,
  `listtype` int(10) DEFAULT '1',
  `listrule` varchar(255) DEFAULT '',
  `listmin` int(10) DEFAULT '0',
  `listmax` int(10) DEFAULT '0',
  `listdata` text,
  `list_loop_begin` text,
  `list_loop_over` text,
  `list_a_begin` text,
  `list_a_over` text,
  `list_pic` int(10) DEFAULT '0',
  `list_pic_begin` text,
  `list_pic_over` text,
  `c_title_begin` text,
  `c_title_over` text,
  `c_content_begin` text,
  `c_content_over` text,
  `c_content_page` int(10) DEFAULT '0',
  `c_content_page_begin` text,
  `c_content_page_over` text,
  `c_content_page_a_begin` text,
  `c_content_page_a_over` text,
  `c_date` int(10) DEFAULT '0',
  `c_date_begin` text,
  `c_date_over` text,
  `c_keyword` int(10) DEFAULT '0',
  `c_keyword_begin` text,
  `c_keyword_over` text,
  `c_description` int(10) DEFAULT '0',
  `c_description_begin` text,
  `c_description_over` text,
  `c_hits` int(10) DEFAULT '0',
  `c_hits_begin` text,
  `c_hits_over` text,
  `c_key_data` text,
  `c_key_default` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_plug_collect_history`
-- -----------------------------
DROP TABLE IF EXISTS `cms_plug_collect_history`;
CREATE TABLE `cms_plug_collect_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_plug_push`
-- -----------------------------
DROP TABLE IF EXISTS `cms_plug_push`;
CREATE TABLE `cms_plug_push` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '0',
  `pushdate` int(10) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_plug_push_config`
-- -----------------------------
DROP TABLE IF EXISTS `cms_plug_push_config`;
CREATE TABLE `cms_plug_push_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `url` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_show`
-- -----------------------------
DROP TABLE IF EXISTS `cms_show`;
CREATE TABLE `cms_show` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `classid` int(10) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `pic` varchar(255) DEFAULT '',
  `ispic` smallint(1) DEFAULT '0',
  `tags` varchar(255) DEFAULT '',
  `tagslist` varchar(500) DEFAULT '',
  `alias` varchar(50) DEFAULT '',
  `isnice` smallint(1) DEFAULT '0',
  `isshow` smallint(1) DEFAULT '0',
  `isauto` smallint(1) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `hits` int(10) DEFAULT '0',
  `intro` varchar(500) DEFAULT '',
  `isurl` smallint(1) DEFAULT '0',
  `url` varchar(255) DEFAULT '',
  `show_title` varchar(255) DEFAULT '',
  `show_key` varchar(255) DEFAULT '',
  `show_desc` varchar(255) DEFAULT '',
  `show_theme` varchar(255) DEFAULT '',
  `createdate` int(10) DEFAULT '0',
  `lastupdate` int(10) DEFAULT '0',
  `adminid` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `where1` (`isshow`,`classid`),
  KEY `where2` (`isshow`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_sitelink`
-- -----------------------------
DROP TABLE IF EXISTS `cms_sitelink`;
CREATE TABLE `cms_sitelink` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `num` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `isshow` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `cms_tags`
-- -----------------------------
DROP TABLE IF EXISTS `cms_tags`;
CREATE TABLE `cms_tags` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `hits` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `cms_ad`
-- -----------------------------
INSERT INTO `cms_ad` VALUES ('1','1','气动敲击锤','/upfile/2025/01/1737165560211.jpg','/pneumatic-pammer.html','0','0');
INSERT INTO `cms_ad` VALUES ('2','1','气动敲击锤','/upfile/2025/01/1737165783387.jpg','/pneumatic-vibrator.html','0','1');
INSERT INTO `cms_ad` VALUES ('3','1','气动振动器','/upfile/2025/01/1737165811665.jpg','/pneumatic-vibrator.html','0','1');
INSERT INTO `cms_ad` VALUES ('4','1','电动敲击锤','/upfile/2025/01/1737166118907.jpg','/electric-hammer/80.html','0','1');
INSERT INTO `cms_ad` VALUES ('5','1','控制器','/upfile/2025/01/1737166159459.jpg','/controller.html','0','1');
INSERT INTO `cms_ad` VALUES ('6','1','零速开关','/upfile/2025/01/1737166174394.jpg','/zero-speed-switch/69.html','0','1');
INSERT INTO `cms_ad` VALUES ('7','1','电动振动器','/upfile/2025/01/1737166209992.jpg','/electric-vibrator.html','0','1');
-- -----------------------------
-- Records of `cms_ad_group`
-- -----------------------------
INSERT INTO `cms_ad_group` VALUES ('1','PC站Banner','0','pc');
INSERT INTO `cms_ad_group` VALUES ('2','手机站Banner','0','mobile');
-- -----------------------------
-- Records of `cms_admin`
-- -----------------------------
INSERT INTO `cms_admin` VALUES ('1','admin','21232f297a57a5a743894a0e4a801fc3','创始人','0','4','1737367522','123.53.37.9','0','1');
-- -----------------------------
-- Records of `cms_alias`
-- -----------------------------
INSERT INTO `cms_alias` VALUES ('1','sitemap','other/sitemap','0','0');
INSERT INTO `cms_alias` VALUES ('2','search','other/search','0','0');
INSERT INTO `cms_alias` VALUES ('3','book','other/book','0','0');
INSERT INTO `cms_alias` VALUES ('5','label','other/label','0','0');
INSERT INTO `cms_alias` VALUES ('6','tags','other/tags','0','0');
INSERT INTO `cms_alias` VALUES ('7','aboutus','class','1','1');
INSERT INTO `cms_alias` VALUES ('8','contact','class','7','1');
INSERT INTO `cms_alias` VALUES ('9','faq','class','6','1');
INSERT INTO `cms_alias` VALUES ('10','services','class','5','1');
INSERT INTO `cms_alias` VALUES ('11','project','class','4','1');
INSERT INTO `cms_alias` VALUES ('12','news','class','3','1');
INSERT INTO `cms_alias` VALUES ('13','product','class','2','1');
INSERT INTO `cms_alias` VALUES ('14','pneumatic-pammer','class','8','1');
INSERT INTO `cms_alias` VALUES ('15','knowledge','class','15','1');
INSERT INTO `cms_alias` VALUES ('16','industry','class','16','1');
INSERT INTO `cms_alias` VALUES ('19','pneumatic-vibrator','class','9','1');
INSERT INTO `cms_alias` VALUES ('20','electric-hammer','class','10','1');
INSERT INTO `cms_alias` VALUES ('21','electric-vibrator','class','11','1');
INSERT INTO `cms_alias` VALUES ('22','controller','class','12','1');
INSERT INTO `cms_alias` VALUES ('23','zero-speed-switch','class','13','1');
INSERT INTO `cms_alias` VALUES ('24','vibration-platform','class','14','1');
INSERT INTO `cms_alias` VALUES ('25','heavy-impact-pneumatic-hammer','show','85','1');
INSERT INTO `cms_alias` VALUES ('26','404','class','17','1');
-- -----------------------------
-- Records of `cms_auth`
-- -----------------------------
INSERT INTO `cms_auth` VALUES ('1','main','ZGIzNitSOE5xL3E5bm4xbnY1eWxLamJiK1NuZ3NBb2crWml4TTRJSlAzb2h2K0F4a250ZFIzSUY4dWVESjZwMER1cGEvMFB2VFFnczRLUjl4b3VjOXJxbEtwbnhyWSt4bUJDcU9uUFpsZXpFbEVPazlvdGYyamloNVN2eVQxeXRkL1BKNGxnODJud3pXSndBdlJ5ejdlR0hRaTdNS2JDTVA4bitYckprYitSNllXcUk0S0NTMFlaTEx3ZElNTnh5cG80VS9ZQlVyd2JkUGNoWXZ2NlhDdUVEakxLbXdxOG8xRG5KQjRzMTUyTjlOek16dlJTZU1WN0h0bFdjcm44bG8zaDU3K3hOaWg2R0hDODJ5RlVtK2tVQzcxdnlpQ0tiTmp5all5N2xINEZ3aEJIRmtpcXJmYXFTaUNrbDRsU3N2dGJ3Qm1vVS9wMnVIak1OWWM2ejZXcVoreDFTVW1nYVVjQkNFazlORVJieGlFNU9RSlZ2Y2pidlFQKzdnaFNCMEF3TXYyVEVRbmNVN2p5cHY5M2JQb3Q0cTdqWTY0ZkxTUHdaMktEcVJiTndOdlhUV2pkU0t1cFF4d1RrdXdIY3ZRbklFV01RRThVZWlvaStYTHZwUTIrZTMrUEdPUXFXN3AzbmZkaHUvc1Nwdk5wWDdhS1ZDZWhOWWxFUC9jRHRzY2xVS004RURHZEcwQ3BpaHIyQXVMdTRZNi9TSU9IeE9xOUJyWW5pTENFTFB0U0pNS0JCbGx6cUE4S0E5QmpnVVo1cmdrdUhNQkM2V0dIMURGRXRYV1JOUkdleVlTNG82UVJDN3lvL2dFcUljMjJ0blljRlNOaHNZbmRRcEhZL2dDWTU2c1d4dEJweTlyVGhYMHBTczBQVjlNd0t5TDU2Z2gyTHlnNHdHZDNlU3JIZTZGYUpKL2VReVg2WlJod2tYUE1OTitWUjFoMVlLbllDUVE4THpIOE5waWVBZnBCK0pVTXIrUkZ1ck1pYzVNd1ZoQ2lFQXNTVy9hd1B0aksydmwzQnFENFc4RkNkdTRKWm03UWR5aUpPZHdicHk1c2tQNitzOSsrRm9JTHNUSno0cGU1dUxlSG8vSnFDcTlaRGlkNVdqSHdGeGRLS21XZGVDUFhlUWFuQUdrK3psZy9OVm1pUzU3ZWdsK3FvWnJUMWlGcGZRZ1pZaUhzUzd3V1REWVVKVkVGcG10Rm1wbW51NGpyYU1MYTA2bi9vWFpDVmR0VU94Uyt6eVB3MkdtU3JYa0lXS3lCWjhMZmpOR3hGNVpOMXBHZGE5SjZkTmlJQVJIb2lhU0NSN1d0Vk5CakFpcFZUTFR0ZXorYTVJbTVyMjhxckJ3OXRoazhMYWU2Z0QwOHFpN0VYZ1RHbUk0K2dpM0FoMmZjajdlUit3aFVmVUhqTllnUlFGRm9nWW1YN1lKZ2xDbmVjdXVscGpwV2pyYUV3dm9GTktGazdrNWprd2JMVVpuR1YxaUdZa0h4RlFicmY5anlmMTBWUUl0S3l1UGNOVGxxNVNPV0hWNm8','MGEzN0JURnNuSmZFdnQydVZSQlhwa25mWDZYd2l4VDAyem45V1R1Z1pKM1dBMVhmM2pwag');
-- -----------------------------
-- Records of `cms_badword`
-- -----------------------------
INSERT INTO `cms_badword` VALUES ('1','');
-- -----------------------------
-- Records of `cms_book`
-- -----------------------------
INSERT INTO `cms_book` VALUES ('1','423','13333333333','','','192.168.1.88','23423','','1737108760','0','0');
INSERT INTO `cms_book` VALUES ('2','11','13525802252','','','192.168.1.88','asdfsdf','','1737185094','0','0');
-- -----------------------------
-- Records of `cms_class`
-- -----------------------------
INSERT INTO `cms_class` VALUES ('1','0','关于我们','-1','aboutus','12','0','','','','','','','','0','1','0','','/upfile/2025/01/1737174575833.jpg');
INSERT INTO `cms_class` VALUES ('2','0','产品展示','0','product','12','0','','','','content/list_product_top.php','','','','0','1','0','','/upfile/2025/01/1737174592623.jpg');
INSERT INTO `cms_class` VALUES ('3','0','新闻动态','0','news','12','0','','','','','','','','0','1','0','','/upfile/2025/01/1737174619723.jpg');
INSERT INTO `cms_class` VALUES ('4','0','工程案例','0','project','12','0','','','','content/list_img.php','','','','0','1','0','','/upfile/2025/01/1737174632124.jpg');
INSERT INTO `cms_class` VALUES ('5','0','售后服务','-1','services','12','0','','','','','','','','0','1','0','','/upfile/2025/01/1737174645600.jpg');
INSERT INTO `cms_class` VALUES ('6','0','常见问题','0','faq','12','0','','','','content/list_faq.php','','','','0','1','0','','/upfile/2025/01/1737174680807.jpg');
INSERT INTO `cms_class` VALUES ('7','0','联系我们','-1','contact','12','0','','','','','content/show_contact.php','','','0','1','0','','/upfile/2025/01/1737174692690.jpg');
INSERT INTO `cms_class` VALUES ('8','2','气动敲击锤','0','pneumatic-pammer','12','0','','','','content/list_product.php','content/show_product.php','','','0','1','0','/upfile/2025/01/1737187019496.jpg','');
INSERT INTO `cms_class` VALUES ('9','2','气动振动器','0','pneumatic-vibrator','12','0','','','','content/list_product.php','content/show_product.php','','','0','1','0','/upfile/2025/01/1737187372345.jpg','');
INSERT INTO `cms_class` VALUES ('10','2','电动敲击锤','0','electric-hammer','12','0','','','','content/list_product.php','content/show_product.php','','','0','1','0','/upfile/2025/01/1737187216595.jpg','');
INSERT INTO `cms_class` VALUES ('11','2','电动振动器','0','electric-vibrator','12','0','','','','content/list_product.php','content/show_product.php','','','0','1','0','/upfile/2025/01/1737183479138.jpg','');
INSERT INTO `cms_class` VALUES ('12','2','控制器','0','controller','12','0','','','','content/list_product.php','content/show_product.php','','','0','1','0','/upfile/2025/01/1737188041704.jpg','');
INSERT INTO `cms_class` VALUES ('13','2','零速开关','0','zero-speed-switch','12','0','','','','content/list_product.php','content/show_product.php','','','0','1','0','/upfile/2025/01/1737188082501.jpg','');
INSERT INTO `cms_class` VALUES ('14','2','振动平台','0','vibration-platform','12','0','','','','content/list_product.php','content/show_product.php','','','0','1','0','/upfile/2025/01/1737183378725.jpg','');
INSERT INTO `cms_class` VALUES ('15','3','产品百科','0','knowledge','12','0','','','','','','','','0','0','0','','');
INSERT INTO `cms_class` VALUES ('16','3','行业动态','0','industry','12','0','','','','','','','','0','0','0','','');
INSERT INTO `cms_class` VALUES ('17','0','404','-1','404','12','0','','','','','content/404.php','','','0','0','0','','/upfile/2025/01/1737174592623.jpg');
-- -----------------------------
-- Records of `cms_config`
-- -----------------------------
INSERT INTO `cms_config` VALUES ('1','1','web_line','常用设置','','1','9','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('2','1','web_open','网站开关','1','3','6','开启|1,关闭|0','关闭后前台无法访问，后台不影响使用','1','0','1','0');
INSERT INTO `cms_config` VALUES ('3','1','web_close','关闭原因','网站维护','5','5','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('4','1','web_name','网站名称','安阳市卓易机械电子有限公司','7','1','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('5','1','web_logo','网站Logo','/upfile/2025/01/1737196813108.jpg','9','4','','','1','1','1','0');
INSERT INTO `cms_config` VALUES ('6','1','web_icp','ICP备案号','豫ICP备13005956号','11','1','','','1','1','1','0');
INSERT INTO `cms_config` VALUES ('7','1','web_service','QQ客服','','13','5','','示范：客服名称|10001，一行一条','1','0','0','0');
INSERT INTO `cms_config` VALUES ('8','1','count_code','流量统计','<script type=\"text/javascript\" src=\"http://s.union.360.cn/193058.js\" async defer></script>','15','5','','百度统计请至模板里添加','1','0','1','0');
INSERT INTO `cms_config` VALUES ('9','1','home_line','域名相关','','17','9','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('10','1','web_http','Http类型','http://','19','6','Http://|http://,Https://|https://','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('11','1','web_domain','主域名','','21','1','','例：www.baidu.com，使用栏目绑定域名时，必须配置主域名','1','0','1','0');
INSERT INTO `cms_config` VALUES ('12','1','web_domains','副域名','','23','5','','一行一条，格式：www.baidu.com 或 baidu.com，副域名会自动跳转到主域名','1','0','1','0');
INSERT INTO `cms_config` VALUES ('13','1','seo_line','优化设置','','25','9','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('14','1','seo_title','优化标题','安阳卓易振动器厂_最新气动振动器价格_仓壁振动器图片_电动振动器_敲击锤_气动敲击锤_电磁敲击锤_零速开关','27','1','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('15','1','seo_key','关键字','电动振动器,敲击锤,气动敲击锤,电磁敲击锤,零速开关','29','5','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('16','1','seo_desc','描述','安阳卓易机械电子有限公司，致力于振动器的研制与开发，专注于解决物料堵塞的各种问题。 专业生产气动振动器、气动敲击锤、电动振动器、电动敲击锤、小型电磁振动器、零速开关、振动器控制箱、电磁阀箱等产品。 产品广泛应用于化工、机械、食品、饲料、水泥、制药、矿业等所有加工粉体的行业','31','5','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('17','2','url_mode_line','Url设置','','1','9','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('18','2','url_mode','Url模式','3','3','6','调试模式（例: /?m=home）|1,Path_Info模式（例: /index.php/news.html）|2,伪静态模式（例: /news.html）|3','在域名下使用，建议伪静态模式，同时需要配置伪静态规则','2','0','1','0');
INSERT INTO `cms_config` VALUES ('19','2','url_mid','Url间隔符','/','5','8','/|/,-|-,_|_','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('20','2','url_cate_ext','栏目及别名后缀','.html','7','8','无后缀|,/|/,.html|.html','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('21','2','url_ext','内容页Url后缀','.html','9','8','无后缀|,/|/,.html|.html','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('22','2','url_line','路由映射','','11','9','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('23','2','url_list','内容列表页','list','13','1','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('24','2','url_show','内容详情页','show','15','1','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('25','3','upload_line','上传设置','','1','9','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('26','3','upload_image_max','图像最大上传','5','3','1','','单位：M','1','0','1','0');
INSERT INTO `cms_config` VALUES ('27','3','upload_video_max','视频最大上传','10','5','1','','单位：M','1','0','1','0');
INSERT INTO `cms_config` VALUES ('28','3','upload_file_max','附件最大上传','20','7','1','','单位：M','1','0','1','0');
INSERT INTO `cms_config` VALUES ('29','3','upload_file_folder','储存方式','2','9','6','按年储存|1,按年/月储存|2,按年/月/日储存|3','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('30','3','thumb_line','压缩设置','','11','9','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('31','3','thumb_open','压缩开关','0','13','6','开启|1,关闭|0','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('32','3','thumb_min','压缩宽度','600','15','1','','图片会被压缩成这个宽度','1','0','1','0');
INSERT INTO `cms_config` VALUES ('33','3','thumb_piclist','组图压缩','0','17','6','开始|1,关闭|0','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('34','3','thumb_auto','自动缩略图','0','19','6','开启|1,关闭|0','前台图片自动生成缩略图','1','0','1','0');
INSERT INTO `cms_config` VALUES ('35','3','water_line','水印设置','','21','9','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('36','3','water_open','水印开关','0','23','6','开启|1,关闭|0','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('37','3','water_width','最小宽度','400','25','1','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('38','3','water_height','最小高度','100','27','1','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('39','3','water_opacity','透明度','60','29','1','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('40','3','water_position','水印位置','5','31','8','随机显示|0,顶部居左|1,顶部居中|2,顶部居右|3,中部居左|4,中部居中|5,中部居右|6,底部居左|7,底部居中|8,底部居右|9','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('41','3','water_logo','水印Logo','','33','4','','','1','1','1','0');
INSERT INTO `cms_config` VALUES ('42','3','water_piclist','组图水印','0','35','6','开启|1,关闭|0','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('43','4','mobile_open','开关','1','1','6','开启|1,关闭|0','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('44','4','mobile_http','Http类型','http://','3','6','Http://|http://,Https://|https://','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('45','4','mobile_domain','绑定域名','','5','1','','例：m.baidu.com，和主域名一样需要做解析和空间上绑定','1','0','1','0');
INSERT INTO `cms_config` VALUES ('46','4','mobile_auto','自动识别','1','7','6','开启|1,关闭|0','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('47','4','mobile_logo','手机站Logo','/upfile/logo.png','9','4','','','1','1','1','0');
INSERT INTO `cms_config` VALUES ('48','5','ct_company','公司名称','安阳市卓易机械电子有限公司','1','1','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('49','5','ct_tel','服务热线','0372-5055372','3','1','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('50','5','ct_fax','传真号码','0372-5055372','5','1','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('51','5','ct_mobile','手机号码','18537246387  13064426460','7','1','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('52','5','ct_email','电子邮箱','zhuoyizsj@163.com','9','1','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('53','5','ct_address','公司地址','河南省安阳市高新区衡山大街与安彩南路交叉口向南200米路西1号','13','1','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('54','5','ct_work_time','独立沟通链接','http://p.qiao.baidu.com/cps/chat?siteId=10517856&userId=23240450','15','1','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('55','5','ct_weixin','微信二维码','/upfile/2025/01/1737173711529.png','11','4','','上传微信二维码，方便客户加好友','1','1','1','0');
INSERT INTO `cms_config` VALUES ('56','6','admin_logo','后台Logo','/public/admin/images/logo.png','1','4','','建议尺寸：200*40','1','1','1','0');
INSERT INTO `cms_config` VALUES ('57','6','admin_code','登录验证码','1','3','6','开启|1,关闭|2','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('58','6','admin_logintimes','登录尝试次数','10','5','1','','超过次数后禁止登录','1','0','1','0');
INSERT INTO `cms_config` VALUES ('59','6','admin_log','自动清理日志时间','10','7','1','','单位：天，超过多少天的自动清理','1','0','1','0');
INSERT INTO `cms_config` VALUES ('60','6','admin_log_login','登录日志','1','9','6','开启|1,关闭|0','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('61','6','admin_log_admin','管理日志','1','11','6','开启|1,关闭|0','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('62','6','admin_csrf','CSRF开关','1','13','6','开启|1,关闭|0','如果使用火车头采集软件，请关闭，不影响前台CSRF防护','1','0','1','0');
INSERT INTO `cms_config` VALUES ('64','7','state_class_line','栏目部分','','1','9','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('65','7','state_class_en','英文名称','0','3','6','开启|1,关闭|0','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('66','7','state_class_pic','栏目图片','0','5','6','开启|1,关闭|0','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('67','7','state_content_line','内容部分','','7','9','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('68','7','state_page','单页组图','0','9','6','开启|1,关闭|0','单页组图开关','1','0','1','0');
INSERT INTO `cms_config` VALUES ('69','7','state_content','内容组图','1','11','6','开启|1,关闭|0','内容组图开关','1','0','1','0');
INSERT INTO `cms_config` VALUES ('70','7','state_tags','标签功能','1','13','6','开启|1,关闭|0','后台部分功能开关','1','0','1','0');
INSERT INTO `cms_config` VALUES ('71','7','state_book_line','留言部分','','15','9','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('72','7','state_book','留言开关','0','17','6','开启|1,关闭|0','关闭后无法使用留言功能','1','0','1','0');
INSERT INTO `cms_config` VALUES ('73','7','state_book_show','留言显示','0','19','6','开启|1,关闭|0','留言页面是否显示通过审核的留言','1','0','1','0');
INSERT INTO `cms_config` VALUES ('74','7','state_name','姓名开关','0','21','6','开启|1,关闭|0','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('75','7','state_mobile','手机开关','0','23','6','开启|1,关闭|0','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('76','7','state_email','邮箱开关','0','25','6','开启|1,关闭|0','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('77','7','state_qq','QQ开关','0','27','6','开启|1,关闭|0','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('78','7','state_message','留言内容','0','29','6','开启|1,关闭|0','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('79','7','state_code','验证码','0','31','6','开启|1,关闭|0','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('80','7','state_limit','提交限制','1','33','1','','单位：分钟，为0时不限制','1','0','1','0');
INSERT INTO `cms_config` VALUES ('81','7','beian_line','公安备案号','','35','9','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('82','7','beian_num','备案号','','37','1','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('83','7','beian_url','备案链接','','39','1','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('84','7','other_line','其他可选','','41','9','','','1','0','1','0');
INSERT INTO `cms_config` VALUES ('85','7','other_favicon','favicon图标','/upfile/2025/01/1737184586274.png','43','4','','请上传.ico格式的文件','1','3','1','0');
INSERT INTO `cms_config` VALUES ('86','7','other_beian','备案号链接','https://beian.miit.gov.cn/#/Integrated/index','45','1','','工信部备案号链接网址，一般情况下无需修改','1','0','1','0');
INSERT INTO `cms_config` VALUES ('87','7','other_nopic','暂无图片','/upfile/2025/01/1737196842783.gif','47','4','','没有缩略图时显示的图片','1','1','1','0');
-- -----------------------------
-- Records of `cms_config_group`
-- -----------------------------
INSERT INTO `cms_config_group` VALUES ('1','基本设置','0','1');
INSERT INTO `cms_config_group` VALUES ('2','运行模式','0','1');
INSERT INTO `cms_config_group` VALUES ('3','附件设置','0','1');
INSERT INTO `cms_config_group` VALUES ('4','手机站','0','1');
INSERT INTO `cms_config_group` VALUES ('5','联系方式','0','1');
INSERT INTO `cms_config_group` VALUES ('6','后台相关','0','1');
INSERT INTO `cms_config_group` VALUES ('7','可选设置','0','1');
-- -----------------------------
-- Records of `cms_data`
-- -----------------------------
INSERT INTO `cms_data` VALUES ('1','1','\"\"','<p>‌<span style=\"color: rgb(54, 54, 54); font-family: 宋体; font-size: 14px; text-indent: 2em;\">国内的振动器在国外能用吗？答案是：不一定！</span></p>\r\n<p style=\"padding: 0px; line-height: 25px; text-indent: 2em; font-size: 14px; color: rgb(54, 54, 54); font-family: 宋体;\">&nbsp;&nbsp;因为国内的电压和赫兹和国外的不一定通用，国外客户在订购振动电机的时候一定的把他们的电压和赫兹给弄清楚，否则振动电机在很短的时间内就会烧掉。</p>\r\n<p style=\"padding: 0px; line-height: 25px; text-indent: 2em; font-size: 14px; color: rgb(54, 54, 54); font-family: 宋体;\">&nbsp;&nbsp;振动电机厂家在生产过程中一定的把电压和赫兹给改成国外通用的，这样振动电机使用客户就可以直接使用。</p>\r\n<p style=\"padding: 0px; line-height: 25px; text-indent: 2em; font-size: 14px; color: rgb(54, 54, 54); font-family: 宋体;\">&nbsp;&nbsp;如果您还有其他问题，请直接咨询卓易厂家。</p>','','','','','');
INSERT INTO `cms_data` VALUES ('2','2','\"\"','<p>‌<span style=\"color: rgb(44, 44, 44); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 2em;\">大家都知道</span><a href=\"http://www.zyjxdz.com/\" target=\"_blank\" style=\"font-size: 14px; text-indent: 2em; margin: 0px; padding: 0px; color: rgb(54, 54, 54); cursor: pointer;\">振动电机</a><span style=\"color: rgb(44, 44, 44); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 2em;\">的使用环境大多潮湿且多粉尘，空气流通也比较差。大多数用户在使用时也不太注重振动电机的维护保养，常常导致振动电机提前毁坏。所以，今天卓易机械就告诉大家一些预防的措施。</span></p>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 26px; text-indent: 2em; color: rgb(44, 44, 44); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px;\">　　振动电机如何防潮：</p>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 26px; text-indent: 2em; color: rgb(44, 44, 44); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px;\">　　1、振动电机应尽量使用无溶剂漆。</p>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 26px; text-indent: 2em; color: rgb(44, 44, 44); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px;\">　　2、尽量选用不含氧化成分的浸渍漆，如环氧尿烷基或未变性环氧基浸渍漆。</p>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 26px; text-indent: 2em; color: rgb(44, 44, 44); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px;\">　　3、采用不含挥发性酸的漆。</p>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 26px; text-indent: 2em; color: rgb(44, 44, 44); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px;\">　　4、选择耐水解性好的漆。</p>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 26px; text-indent: 2em; color: rgb(44, 44, 44); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px;\">　　5、尽量选用矿物油系轴承润滑脂。</p>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 26px; text-indent: 2em; color: rgb(44, 44, 44); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px;\">　　振动电机如何防尘：</p>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 26px; text-indent: 2em; color: rgb(44, 44, 44); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px;\">　　1、定期清除振动电机的内部灰尘，使其在良好的状态下工作。</p>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 26px; text-indent: 2em; color: rgb(44, 44, 44); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px;\">　　2、在设计过程中，振动电机机芯应尽量润滑，使灰尘不易堆积，假如在粉尘较大的情况下工作，应考虑减去机芯内部的散热筋，因为此时，散热筋不仅起不到散热的作用，反而易使粉尘沉积，阻碍振动电机的散热。</p>','','','','','');
INSERT INTO `cms_data` VALUES ('3','3','\"\"','<p>‌<span style=\"color: rgb(44, 44, 44); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 2em;\">大家都明白影响筛分过程的因素主要有以下三大类： 一是入筛物料的性质；二是筛分分设备的性能 三是电磁振动器的操作条件，包括处理能力的大小和给料的均匀性等。今天我们就说一下这第三点电磁振动器的操作条件。</span></p>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 26px; text-indent: 2em; color: rgb(44, 44, 44); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px;\">为了找出影响电磁振动器激振频率、偏心块厚度、处理量对筛分效率影响的主次地位和因素水平的最佳搭配以及因素间是否存在交互作用，为此选用正交试验设计方法，采用Minitab软件进行试验设计，并进行数据处理分析和优方案的试验结果预测，检验因素与交互作用对试验指标影响的显著性，以较少的试验次数确定最优试验条件。</p>\r\n<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; line-height: 26px; text-indent: 2em; color: rgb(44, 44, 44); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px;\">试验选用-13mm粒级，灰分为43.25%，外在水分为2.10%的煤样，在新型椭圆等厚筛试验样机上，使用6mm冲孔筛板，进行干法筛分，以确定筛机的最优工作参数。当样机最优工作参数确定后，通过筛分试验测定各段筛面的透筛量，并分析验证等厚筛分原理；另外，用不同的筛面振动方向角和入料煤的外在水分，在仓壁振动器上进行对比试验。</p>','','','','','');
INSERT INTO `cms_data` VALUES ('117','117','','　　大家对于直流电磁振动器都了解多少呢，相信很多朋友并不是非常熟悉吧，不要紧，下面电磁振动器就给大家来介绍一下直流电磁振动器怎样交替工作。<br />　　设备上的配件象两个电磁铁交替工作，控制部分的东西很简单，其实只要是二个交替工作,它就是一个多谐振荡器,那二只三极管就是转换开关,和定时器,我给你个图,它的电路有可能与这个大同小异.在电路中间,滑动电阻器各串一只保护电阻,线圈一端各串一只电阻共四只我图上没画,你一看就明白了.不过那BT的可能是单结晶体管,不过都可以用作开关哈哈,最后注意:调可变电阻的大小,可以控制交替工作的时间,换电容的大小也可控制。<br />　　相信通过电磁振动器的讲解，大家对于直流电磁振动器一定有了更深的了解，如果大家还有更多的问题，欢迎大家来电咨询。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('116','116','','　　大家平时都有听说过振动流化床干燥机吗，今天气动振动器就给大家来介绍一下振动流化床干燥机的运作模式。<br />　　振动源采用振动电机驱动，运转平稳，维修方便，噪音低，寿命长。流态化稳定，无死角和吹穿现象。床层开孔形式，及开孔率至关重要。终水份、产量可通过振幅及加料量来控制。可调性好，适应面宽。<br />　　对物料表面损伤小，可用于易碎物料的干燥，物料颗粒不规则时亦不影响工作效果。明显优于沸腾床<br />　　采用全封闭式的结构，有效地防止了物料与空气间的交叉污染，作业环境清洁。<br />　　物料自进料口进入机内，在振动力作用下，物料沿水平方向抛掷向前连续运动。热风向上穿过振动流化床和湿物料换热，湿空气经旋风分离器除尘后由排风口排出，干燥物料由排料口排出。<br />　　通过这些介绍，如果大家还有任何关于气动振动器问题，都可以来电咨询我们。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('118','118','','<p style=\"text-indent:2em;\">	气动锤涉及的行业还是蛮广泛的，所以它在使用时有不少注意事项，以下是气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>厂家的介绍：<br />　　1、气动锤有防爆装置，这样我就就可以放心使用，不会害怕气动锤会产生危险；<br />　　2、气动锤的压强是可以认为调节的。如果冲击力度小，我们可以给气动锤加压；如果冲击力度大，我们就可以给气动锤降压。<br />　　3、气动锤可以通过接力配管实现同时控制多台气动锤，如果气动锤链接过多，要把气动锤的打击时间设置在1秒钟以上；<br />　　4、气动锤在安装的时候要穿戴好安全帽、安全鞋。在安全的状态下作业；<br />　　5、气动锤长期使用，锤头因为长时间工作会使磁铁裂碎，应该更换锤头；<br />　　6、气动锤的吹又磁铁与基板吻合，冲击力大且单一，不可调节，会对料仓产生一定的破坏，所以，使用时应该在料仓焊接槽钢，将其锤安装在上方能消除料仓被破坏的隐患。<br />　　希望<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>厂家能对大家有所帮助，有疑问随时来电。</p>                        ','','','','','');
INSERT INTO `cms_data` VALUES ('119','119','','　　沙子烘干机是一种处置很多物料的干燥器。因为运转牢靠、操作弹性大、适应性强、处置量大，广泛使用于建材、冶金、食物、化工、煤炭、医药矿工业中。沙子烘干机属转筒烘干机。接下来转筒烘干机厂家就给大家来介绍一下沙子烘干机烘干功率包含几方面。<br />　　一、总功率<br />　　总功率指同一时间内烘干机除掉的粉尘量与从烘干机进口流入的粉尘量的百分比，也称为均匀功率。<br />　　二、通过率<br />　　通过率指烘干机出口粉尘量与进口粉尘量的百分比。通过率越大，阐明从烘干机出口的粉尘量越大，即烘干功率越低。另外，当烘干机的烘干功率很高时，用通过率表明烘干机功能上的不一样比用总功率表明时更为显着。<br />　　三、分级烘干功率<br />　　分级烘干功率按粉尘粒径或粒径规模来标定的烘干机功率称为分级功率，它是指在某一粒径规模内，被捕集的粉尘量与进口粉尘总量的比值。<br />　　通过以上的介绍，如果大家还有任何问题，都可以来电咨询我们。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('120','120','','　　气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>的优点在于；其敲击力度通过是通过调节供气压力来调整。 若敲击力度过小无法排堵便可加大气压，相反敲击力度过大则降压使用。若 客户由于型号选择不妥出现冲击力过强或不足等误差现象时，同样也可以通 过调整气压来解决气锤的敲击力度。这种可改变冲击力的结构确保了气锤选 型的便利性。如通过接力口连接，则可实现数台冲击式气动锤串联运转，同 时打击。是一种清洁、无污染、低耗能的理想清堵设备。<br />　　<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>在进行气锤安装作业时，请穿戴好安全帽，安全鞋，安全带 ，在安全的装备下进行。安装部分的板比较薄时，请焊接增强板，否则因冲 击可能会造成安装部位破损。如焊接增强板，请确保增强板与料斗之间没有 空隙，并预留约10mm的排气口, 以利空气排出, 使冲击力能充分传导。 为避 免料斗万一破损, 请务必多焊几层.为防止脱落，请用拉索将本体吊装并固定 ，否则会因冲击可能会造成螺栓松动而脱落。<br />　　气动敲击锤用螺栓将本体与法兰固定时，请在上下加装弹簧垫片，并严 格按照拧紧扭力紧固并定期检查。配管前请配备空气过滤器，若有垃圾或者 灰尘等混入，可能会导致运转不良。使用时切勿超出所需打击力，否则可能 会导致料仓或安装部位的破损。循环连续打击时，请保持1秒以上的时间设定 ，如1秒以下可能会导致误动作的发生。请确认安装法兰的打击面必须为实心 平面. 如需要请焊增强筋气动锤合适位置的安装, 能发挥其最大的性能.<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('121','121','','　　安装振动器时，要加配高弹性的垫圈，以防松动。对钢架结构梁进行振动时效时，钢架梁要加橡胶垫，便于产生共振，使焊接残余应力进行松弛，另外，不要安在节点上。<br />　　通过压缩空气为动力，瞬间释放，推动内部的锤头打击底部，将强力冲力传递给料斗壁面，有效地击破物料所构成的拱桥，使积料松动，达到卸灰顺畅的目的。空气锤对斗壁的冲击不是连续和高频率的。接到启动信号后，空气锤只工作一次，亦只产生一次冲击；待第二次启动信号送达时空气锤才再次动作。<br />　　想了解更多气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>的相关资讯，欢迎致电本公司！<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('122','122','','　　本公司致力料位开关工业自动化控制技术研发、生产和销售料位开关的高新技术企业，公司主要技术及管理人员从事料位开关自动化控制工作多年，在引进国外先进料位开关技术及自主开发的过程中累积了相当丰富的料位开关设计、开发、和生产经验。<br />　　在安装振动器之前应确定安装位置是仔细选择过的，以保证最佳工作效果。安装面必须干净、平坦。请注意，非平整安装面会由于振动器本体的扭振使振动器工作不正常。请注意，非平整安装面会由于振动器本体的扭振使振动器工作不正常。<br />　　想了解更多气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>的相关资讯，欢迎致电本公司！<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('123','123','','　　面对当前激烈的全球市场竞争和能源短缺问题，面向流程工业的过程自动化系统的地位已经变得越来越重要。过程自动化系统不仅包括各类现场仪表、执行机构、DCS（集散控制系统）、PLC（逻辑控制系统）、SIS（仪表安全系统）等硬件系统。<br />　　其特点是撞击力大,结构简单,使用方便. 可有效解决粉体物料生产过程中的粘壁、挂料、堵塞、架桥等情况且对料仓无损伤和变形。从而提高产量、减轻劳动强度、提高安全生产程度。该产品冲击力大，噪音小，多种型号可供选择。冲击力和动作时间可控制，安装方便。可在防爆、多粉尘、潮湿等环境中使用。<br />　　广泛适用于电厂改造,钢厂,煤矿,化工,食品,医疗,农药,玻璃,水泥等行业。想了解更多气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>的相关资讯，欢迎致电本公司！<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('124','124','','电磁<a href=\"http://www.zyjxdz.com\">敲击锤</a>的使用范围<br />&nbsp; <a href=\"http://www.zyjxdz.com\">电磁敲击锤</a>采用的是二位三通电磁阀，高压气体通过通道5进入活塞下腔，推动活塞上行，活塞上腔气体被挤压通过排气孔排出。当活塞上行至终点时，气体通过槽和气道自动换向是气体进入活塞上腔。高压气体亚活塞下行至终点，第一循环结束，第二循环开始。<br />电磁敲击锤一般使用碳钢材料制成，结实耐用，振动力最大，但是噪音不超过80分贝，解决物料严重黏壁，堵塞现象，例如应用于水泥行业。食品医药行业或者易爆防火花的工作环境中，也可以用以锅炉中清除灰渣等。<br /><br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('125','125','\"\"','在气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>没有通入压缩空气(3Kg/cm以上)的状态下，磁性活塞借助强磁力贴紧固定在基板 上。三通电磁阀通电时，压缩空气流入<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>本体，本体内的压力增高，当大于磁力时， 磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力。<br>\r\n<p>	　　高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘。三通 电磁阀停止通电时气动敲击锤本体内的压缩空气通过三通电磁阀排出，于是借助返回弹簧将磁 性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到初始状态。气动敲击锤：通过压缩 空气为动力，瞬间释放，推动内部的锤头打击底部，将强力冲力传递给料斗壁面，有效地击破 物料所构成的拱桥，使积料松动，达到卸灰顺畅的目的。气动敲击锤对斗壁的冲击不是连续和 高频率的。接到启动信号后，气动敲击锤只工作一次，亦只产生一次冲击；待第二次启动信号 送达时气动敲击锤?才再次动作。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339897657.jpg\" alt=\"敲击锤厂家\"></p>\r\n<a href=\"http://www.zyjxdz.com\">敲击锤厂家</a>生产的传统仓壁振动器，运用高频率振动往往不能使物料形成的拱桥受到破坏，反 而将物料振动的更加密实，达到卸灰顺畅的目的。振动力度喝频率不能调节，高频率的振动对 于灰斗破坏性很严重，造成灰斗壁振裂，开焊。<br>','','','','','');
INSERT INTO `cms_data` VALUES ('126','126','\"\"','<a href=\"http://www.zyjxdz.com\">敲击锤</a>厂家生产的<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>采用进口技术、碳钢结构、使用寿命长。<br>\r\n<p>	　　专业生产气动振动器、气敲动击锤、电动振动器、电动敲击锤、小型电磁振动器、零速开关、振动器控制箱、电磁阀箱等产品。产品广泛应用于化工、机械、食品、饲料、水泥、制药、矿业等所有加工粉体的行业。 公司拥有一支具有丰富的研发和生产经验的技术人员构成的团队，凭借雄厚的技术力量，严谨的工作态度和热诚的服务，得到了众多用户的信赖。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339888411.jpg\" alt=\" 敲击锤厂家\"></p>\r\n气动敲击锤是国内外通用的先进落粉装置，被多次改良，派生出很多新品种。产品新颖、独特。用以自动防止粉体在管路、料斗、料仓输送中产生的粘附、堵塞和架桥，而对设备的器壁均不会产生操作和变形，广泛应用于化工、化肥、食品、陶瓷、玻璃、水泥、制药、塑料、燃料等粉体加工行业。<br>','','','','','');
INSERT INTO `cms_data` VALUES ('127','127','\"\"','据了解，国内从事气动工具生意的商铺数量正在不断的攀升，这表明气动工具产品具有优越的市场环境，也具有可观的发展前景。<br>\r\n<p>	　　气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>与传统震动器比较的好处：通过压缩空气为动力，瞬间释放，推动内部的锤头打击底部，将强力冲力传递给料斗壁面，有效地击破物料所构成的拱桥，使积料松动，达到卸灰顺畅的目的。<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>对斗壁的冲击不是连续和高频率的。接到启动信号后，气动敲击锤只工作一次，亦只产生一次冲击；待第二次启动信号送达时气动敲击锤才再次动作。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339879445.jpg\" alt=\"气动敲击锤,\"></p>\r\n气动敲击锤与气动振动器相比具有更大的冲击力与落料效果，相同规格的情况下能产生更大的效果，所以节约了使用成本。但是气动锤与气动敲击锤的不足在于冲击频率低，普遍在1HZ左右，一般适用于单作用冲击的场合。','','','','','');
INSERT INTO `cms_data` VALUES ('128','128','\"\"','内从事气动工具生意的商铺数量正在不断的攀升，这表明气动工具产品具有优越的市场环境，也具有可观的发展前景。<br>\r\n<p>	　　在气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>没有通入压缩空气(3Kg/cm以上)的状态下，磁性活塞借助强磁力贴紧固定在基板上。三通电磁阀通电时，压缩空气流入<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>本体，本体内的压力增高，当大于磁力时 气动敲击锤价格，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力。高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘。三通电磁阀停止通电时气动敲击锤本体内的压缩空气通过三通电磁阀排出，于是借助返回弹簧将磁性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到初始状态。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339871777.jpg\" alt=\"敲击锤厂家\"></p>\r\n本<a href=\"http://www.zyjxdz.com\">敲击锤厂家</a>自从成立之后，一直致力于生产制造动力科技领域，严格把控气动振动器的生产制造中的每一道流程。让客户可以享受到相对比较低廉的价格但可以达到国外同类产品相同的质量的气动振动器产品。<br>','','','','','');
INSERT INTO `cms_data` VALUES ('129','129','\"\"','空气锤，即<a href=\"http://www.zyjxdz.com\" target=\"_blank\">气动</a><a href=\"http://www.zyjxdz.com\">敲击锤</a>，其特点是撞击力大，结构简单，使用方便。可有效解决粉体物料粘壁、挂料、堵塞、架桥等情况。冲击力大，噪音小，多种型号可供选择。冲击力和动作时间可控制，安装方便。可在防爆、多粉尘、潮湿等环境中使用。<br>\r\n<p>	　　首先<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>是一种通过压缩空气而产生动力来进行实际工作的设备，它是一种瞬间释放的产品，而且制造的时候使用的都是轻型材料，但是使用的时候强度却是很大的。气动敲击锤在使用的时候只能工作一次，也就是说只能产生一次冲击，后面第二次就需要经过一段时间的启动才能进行工作，这样避免了连续的强力冲击造成破坏。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339861516.jpg\" alt=\"气动敲击锤\"></p>\r\n气动敲击锤不仅能减轻劳动力，而且还可以提高生产效率，使用安全，放心。该产品种类型号多，可以根据不同的工作环境选择合适振动频率的气动敲击锤。<br>','','','','','');
INSERT INTO `cms_data` VALUES ('130','130','\"\"','在气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>没有通入压缩空气的状态下，磁性活塞借助强磁力贴紧固定在基板上。三通电磁阀通电时，压缩空气流入<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>本体，本体内的压力增高，当大于磁力时，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力。<br>\r\n<p>	　　敲击锤锤头内部有一强磁力磁铁，在未动作前，磁性锤头紧贴在磁力基板上。当三通电磁阀通电，进气压力大于贴合磁力时，磁性锤头高速脱离基板，向底部冲击。冲击后，三通电磁阀断电，产品内气体排除，锤头借助弹簧回复至初始位置。空气锤的冲击力，传递到管道或桶仓壁，使物料能够顺利流动。广泛适用于化肥,化工,食品,医疗,农药,玻璃,水泥等行业.全铝结构强度高,单击式冲击力度大,重量轻,冲击间隔时间可调整。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339851621.jpg\" alt=\"敲击锤,\"></p>\r\n正常使用时。应调节到合适的压力，不宜过大，这样对设备，对振动器都进行了很好的保护，同时避免了空气的浪费。<br>','','','','','');
INSERT INTO `cms_data` VALUES ('131','131','','<span style=\"color:#E53333;\">一、分类</span><br />分为单作用式与连续作业式两大类。<br />单作用式：电磁阀控制<br />连续作业：自动控制连续作业<br /><span style=\"color:#E53333;\">二、原理</span><br />　　在电磁<a href=\"http://www.zyjxdz.com\">敲击锤</a>没有通入压缩空气(3Kg/cm以上)的状态下，磁性活塞借助强磁力贴紧固定在基板上。三通电磁阀通电时，压缩空气流入<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>本体，本体内的压力增高，当大于磁力时，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力。高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘。三通电磁阀停止通电时气动敲击锤本体内的压缩空气通过三通电磁阀排出，于是借助返回弹簧将磁性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到初始状态。<br />利用锤头内部有一强磁力磁铁，在未动作前，磁性锤头紧贴在磁力基板上，当三通电磁阀通电，进气压力大于贴合磁力时，磁性锤头高速脱离基板，向底部冲击;冲击后，三通电磁阀断电，产品内气体排除，锤头复位。而空气锤的冲击力传递到管道或桶仓壁，使物料能够顺利流动。广泛应用于化工、化肥、农药、水泥、燃料等粉类加工行业。<br /><span style=\"color:#E53333;\">三、特点</span><br />引进日本技术，关键零部件进口；<br />高强度铝结构，重量轻，强度大；<br />单击式，每次动作产生一个冲击波；<br /><span style=\"color:#E53333;\">四、与传统震动器比较</span><br />◆气动敲击锤<br />◎通过压缩空气为动力，瞬间释放，推动内部的锤头打击底部，将强力冲力传递给料斗壁面，有效地击破物料所构成的拱桥，使积料松动，达到卸灰顺畅的目的。<br />◎<a href=\"http://www.zyjxdz.com\">电磁敲击锤</a>对斗壁的冲击不是连续和高频率的。接到启动信号后，气动敲击锤只工作一次，亦只产生一次冲击；待第二次启动信号送达时电磁敲击锤才再次动作。<br />◆传统的仓壁振动器<br />◎运用高频率振动往往不能使物料形成的拱桥受到破坏，反而将物料振动的更加密实，达到卸灰顺畅的目的。<br />◎振动力度和频率可以通过气源的压力与流量进行无级调节，高频率的振动对于灰斗破坏性很严重，造成灰斗壁振裂，开焊，故需谨慎选择型号与规格。<br /><span style=\"color:#E53333;\">五、安装使用说明</span><br />方锥形桶槽比圆锥形桶槽振动传播效率差，建议对边安装两台效果较好。<br />使用槽型钢固定架，可提升振动器的振动力，有助于桶槽或管道中的物料流动顺畅。<br />固定架方式，可使用槽型钢或加助基座，避免振动器产生左右振幅，较长的槽型钢以跳焊方式可避免桶槽壁振裂（尾端留10mm不焊接）。<br />小面积固定架用在薄桶壁时，应在与桶壁间加焊一加强板。<br />较大面积的桶壁时，将槽型钢做十字形焊接，加大振动范围效果更加<br />&nbsp;<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('132','132','','　　方锥形桶槽比圆锥形桶槽振动传播效率差，建议对边安装两台效果较好。这边气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>厂家给简单说明一下安装时的注意点：<br />　　使用槽型钢固定架，可提升振动器的振动力，有助于桶槽或管道中的物料流动顺畅。<br />　　固定架方式，可使用槽型钢或加助基座，避免振动器产生左右振幅，较长的槽型钢以跳焊方式可避免桶槽壁振裂（尾端留10mm不焊接）。<br />　　小面积固定架用在薄桶壁时，应在与桶壁间加焊一加强板。<br />　　较大面积的桶壁时，将槽型钢做十字形焊接，加大振动范围效果更加。<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"http://www.zyjxdz.com\">气动敲击锤</a>厂家就说这么多了，如有疑问，随时来电。                        ','','','','','');
INSERT INTO `cms_data` VALUES ('133','133','','　　气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>是许多行业生产过程中必备的辅助设备之一，它能够防止生产时物料在运输的过程中出现粘连或是堵塞在设备中，从而导致生产效率的下降甚至设备的损坏。下面就来介绍<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>接力串联的方法。<br />　　1、接力配管作为将多台气锤直接连接的配管方式，是用接力气管从第一个气锤的接力口接气至下一个气锤的进气口的连接控制方式。但根据操作方法不同有相应的最大连接台数限定。<br />　　2、接力配管时，接力气管内的压缩空气也会造成气锤打击。所以，使用压力和接力管的长度不要超过规定值。<br />　　3、远距离配管时，因压力有所差异，打击力也会有所差异，可适当提高压力来弥补，为充分发挥其稳定性，也可在气锤近处设置快速排气阀来提高其打击性能。<br />　　4、接力配管时，请将气锤的打击间隔设定在1秒以上，如接力台数增多时，请进一步延长间隔设定时间。<br />　　以上就是公司对气动敲击锤接力串联方法的介绍，欲了解更多详情请访问公司官网。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('134','134','','电磁<a href=\"http://www.zyjxdz.com\">敲击锤</a>是什么呢？又是怎么运作的呢？下面由小编为大家简单介绍吧。<br /><a href=\"http://www.zyjxdz.com\">电磁敲击锤</a>是出色的料仓清堵装置，能有效的处理料仓堵塞，架桥等现象，是市场上最常见的疏通装置之一，与电磁敲击锤相比具有更大的冲击力与落料效果，相同规格的情况下能产生更大的效果，所以节约了使用成本。但是不足在于冲击频率低，普遍在1HZ左右，一般适用于单作用冲击的场合。<br />如果要实现自动化控制气动锤与电磁敲击锤的配置方式需要一个配电控制系统，详情请跟客服咨询，可传输气动锤与<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>的使用视频。以便您了解气动锤与电磁敲击锤的安装方式。<br /><br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('135','135','','<p>	　　安阳市卓易机械电子有限公司专业生产气动振动器、气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>、电动振动器、电动敲击锤、小型电磁振动器、零速开关、振动器控制箱、电磁阀箱等产品的<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>厂家。产品广泛应用于化工、机械、食品、饲料、水泥、制药、矿业等所有加工粉体的行业。接下来我们 做一个气动敲击锤与传统震动器的比较，希望对各位有所帮助。</p><p>	<br />　　<strong>气动敲击锤</strong><br />　　通过压缩空气为动力，瞬间释放，推动内部的锤头打击底部，将强力冲力传递给料斗壁面，有效地击破物料所构成的拱桥，使积料松动，达到卸灰顺畅的目的。<br />　　气动敲击锤对斗壁的冲击不是连续和高频率的。接到启动信号后，气动敲击锤只工作一次，亦只产生一次冲击；待第二次启动信号送达时气动敲击锤 才再次动作。</p><p>	<br />　　<strong>传统的仓壁振动器</strong><br />　　运用高频率振动往往不能使物料形成的拱桥受到破坏，反而将物料振动的更加密实，达到卸灰顺畅的目的。<br />　　振动力度和频率可以通过气源的压力与流量进行无级调节，高频率的振动对于灰斗破坏性很严重，造成灰斗壁振裂，开焊，故需谨慎选择型号与规格。</p><p>	<br />　　知道了气动敲击锤与传统震动器的区别，希望对大家以后的选择有所帮助，想要了解更多相关知识，请关注我们的网站！</p>                        ','','','','','');
INSERT INTO `cms_data` VALUES ('136','136','\"\"','气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>行业在国内发展不断上升，这不仅说明了国内的市场环境优越，也反映了<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>的竞争压力越来越大。在未来的几年内，气动敲击锤的发展趋势是：小型化，精密化，自动化，整洁健康化。<br>\r\n<p>	　　气动敲击锤采用的是二位三通电磁阀，高压气体通过通道5进入活塞下腔，推动活塞上行，活塞上腔气体被挤压通过排气孔排出。当活塞上行至终点时，气体通过槽和气道自动换向是气体进入活塞上腔。高压气体亚活塞下行至终点，第一循环结束，第二循环开始。气动敲击锤一般使用碳钢材料制成，结实耐用，振动力最大，但是噪音不超过80分贝，解决物料严重黏壁，堵塞现象，例如应用于水泥行业。食品医药行业或者易爆防火花的工作环境中，也可以用以锅炉中清除灰渣等。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339842578.jpg\" alt=\"气动敲击锤\"></p>\r\n气动敲击锤是出色的料仓清堵装置，能有效的处理料仓堵塞，架桥等现象，是市场上最常见的疏通装置之一，与气动振动器相比具有更大的冲击力与落料效果，相同规格的情况下能产生更大的效果，所以节约了使用成本。<br>','','','','','');
INSERT INTO `cms_data` VALUES ('137','137','\"\"','气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>又叫做强力振动器，在传统意义上讲，强力振动器就是<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>。<br>\r\n<p>	　　在气动敲击锤没有通入压缩空气（3-6kg/cm2）的状态下，磁性活塞借助强磁力贴紧固定在基板上。电磁阀通电时，压缩空气流入气锤本体，在体内压力增高，当大于磁力时，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力，高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘，电磁阀停止通电时，压缩空气排出，于是借助返回弹簧将磁性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到原始状态。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339833971.jpg\" alt=\"气动敲击锤\"></p>\r\n气动敲击锤不仅能减轻劳动力，而且还可以提高生产效率，使用安全，放心。该产品种类型号多，可以根据不同的工作环境选择合适振动频率的气动敲击锤。<br>','','','','','');
INSERT INTO `cms_data` VALUES ('138','138','\"\"','气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>锤是一种靠气体运动产生压强促使物体运动的产品。作为专业的生产商，我们对气动锤有多年的研究。<br>\r\n<p>	　　在气锤没有通入压缩空气（3-6kg/cm2）的状态下，磁性活塞借助强磁力贴紧固定在基板上。电磁阀通电时，压缩空气流入气锤本体，在体内压力增高，当大于磁力时，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力，高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘，电磁阀停止通电时，压缩空气排出，于是借助返回弹簧将磁性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到原始状态。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339819673.jpg\" alt=\"气动敲击锤\"></p>\r\n磁力冲击大、落粉效果好；耗气量少，运行成本低，节能效果好；结构简单、拆卸方便；外观设计新颖、别致，活塞耐冲击，且能防爆，广泛适用于农药、医药、涂料、染料、颜料、食品、电子、建材、矿产、干燥、仓储等行业，是粉体加工生产线有力的破拱助流装置。<br>','','','','','');
INSERT INTO `cms_data` VALUES ('139','139','\"\"','<a href=\"http://www.zyjxdz.com\">敲击锤</a>是研制国外最先进技术并升级改造的先进落粉装置，产品新颖、独特。用以自动防止粉体在管路、料斗、料仓输送中产生的粘附、堵塞和架桥，而对设备的器壁均不会产生操作和变形。<br>\r\n<p>	　　<a href=\"http://www.zyjxdz.com\">电磁敲击锤</a>的主要特点体现在：无需用空气压缩机，封闭型外壳防水防尘。使用寿命长，平时无需修理，高达5,000,000次的撞击。可以间隔、连续敲打（要设定），现场持续的撞击能够有效解决连续堵塞问题。使用控制器的调节，可以改变冲击力。通过电磁锤控制器实现循环和单点控制由控制盘进行参数设定，液晶显示实时运行状态。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339810677.jpg\" alt=\"电磁敲击锤\"></p>\r\n其所适用于食品、金属铸造、水泥、饲料工业、制药、化学、肥料、橡塑胶工业、矿业.运输设备、仓储业、污染防治等工业。<br>	<br>','','','','','');
INSERT INTO `cms_data` VALUES ('140','140','\"\"','<a href=\"http://www.zyjxdz.com\">敲击锤</a>单作用冲击，电磁阀控制,力量极大，远超振动器的效果；铝合金外壳重量轻，碳钢外壳强度高，适应恶劣条件；采用超强磁性元件，精心设计，蓄能后，冲击力大，所以<a href=\"http://www.zyjxdz.com\">敲击锤厂家</a>对于其各项工作要做好。\r\n<p>	　　利用敲击锤头内部有一强磁力磁铁，在未动作前，磁性锤头紧贴在磁力基板上，当电磁阀通电，进气压力大于贴合磁力时，磁性锤头高速脱离基板，向底部冲击；冲击后，电磁阀断电，产品内气体排除，锤头复位。而空气锤的冲击力传递到管道或桶仓壁，使物料能够顺利流动。电磁阀停止通电时<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>本体内的压缩空气通过电磁阀排出，于是借助返回弹簧将磁性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到初始状态。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339802365.jpg\" alt=\"敲击锤厂家\"></p>\r\n而空气锤的冲击力传递到管道或桶仓壁，使物料能够顺利流动。广泛应用于化工、化肥、农药、水泥、燃料等粉类加工行业。','','','','','');
INSERT INTO `cms_data` VALUES ('141','141','\"\"','<a href=\"http://www.zyjxdz.com\">敲击锤</a>可有效防止粉体在管道、料斗料仓输送中产生的粘附和堵塞、架桥，而对设备的均不会产生损伤和变形。\r\n<p>	　　近年来，<a href=\"http://www.zyjxdz.com\">敲击锤厂家</a>随着技术的发展，其产品质量也不断提升，撞击力大，结构简单，使用方便.产品重量轻；可有效解决粉体物料生产过程中的粘壁、挂料、堵塞、架桥等情况且对料仓无损伤和变形。从而提高产量、减轻劳动强度、提高安全生产程度。该产品冲击力大，噪音小，多种型号可供选择。冲击力和动作时间可控制，安装方便。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339793193.jpg\" alt=\"敲击锤厂家\"></p>\r\n同时，敲击器在运转过程中无需添加任何润滑油。因此不存在漏油隐患，十分适合用于工厂内的工作环境。产品采用气动供气系统、无需安装滴油器的特点不但可以降低设备成本还可减轻滴油器维修负担，对使用客户益处甚多。','','','','','');
INSERT INTO `cms_data` VALUES ('142','142','','	　　我们常用的<a href=\"http://www.zyjxdz.com\">敲击锤</a>锤头內部有一强力磁铁，在未动作前磁性锤头与磁片紧紧相吸，当进气之空气压力大过两者吸力，磁性锤头便与磁片脱离，向下冲击而产生强大的冲击力量；冲击后复归弹簧会将磁性锤头复归原来位置，重新重新与磁片相吸。	　　其需要注意的点是：气源一定要干净，因为污染的空气会加速活塞密封的磨损，造成密封失效，同时对二位三通电磁换向阀的寿命也会有较大影响；空气锤台座与仓壁要焊牢，气锤与台座的联接要紧固，否则经一段时间的敲击后，会有松动以致脱落，需经常检查气锤的安装是否牢固；时间继电器的调整，由于气锤的型号、安装条件不同而有所不同。	　　本<a href=\"http://www.zyjxdz.com\">敲击锤厂家</a>产品主要特征有：磁力冲击大、落粉效果好；耗气量少，运行成本低，节能效果好；敲击间隔时间可调整；质量可靠、故障率低；结构简单、拆卸方便；外观设计新颖、别致；活塞耐冲击。广泛适用于农药、医药、化工、水泥、染料、颜料、食品、电子、建材、矿产、环保等行业。                        ','','','','','');
INSERT INTO `cms_data` VALUES ('143','143','','	　　<a href=\"http://www.zyjxdz.com/\" target=\"_blank\">气动<a href=\"http://www.zyjxdz.com\">敲击锤</a></a>磁力冲击力大，落粉效果好；敲击间隔时间可以调整；结构简单，拆卸方便；质量可靠，故障降低；运行成本低、节能效果好；采用高强度铝合金硬化处理，重量轻。	　　作为本公司引进先进技术开发出的一种新型自动敲击装置，可有效地防止粉体在管路、料斗、料仓输送中产生的粘附和堵塞、架桥，而且<a href=\"http://www.zyjxdz.com/\" target=\"_blank\"><a href=\"http://www.zyjxdz.com\">气动敲击锤</a></a>对设备的器壁均不产生损伤和变形。设计独特的磁性活塞，使气锤具有更大的冲击力，外壳为优质铸造铝合金，控制箱可调节敲击间隔时间和敲击时间。通过压缩空气为动力，瞬间释放推动内部的锤头打击底部，将强力冲力传递给抖斗壁面，有效地击破物料所构成的拱桥，使积料松动，选到卸灰顺畅的目的。	　　在工艺方面，我们的<a href=\"http://www.zyjxdz.com/\" target=\"_blank\">气动敲击锤</a>技术远超其他厂家，铝合金铸件压铸出来以后，经过了两次热处理措施，提高稳定性，耐磨性，整体质量得以大幅度提升。经过多次磨销处理，选材真实，没有丝毫偷工减料，绝对正品。                        ','','','','','');
INSERT INTO `cms_data` VALUES ('144','144','','	　　<a href=\"http://www.zyjxdz.com/\" target=\"_blank\">电磁<a href=\"http://www.zyjxdz.com\">敲击锤</a></a>可有效地防止粉体在管路、料仓、料斗输送中产生的粘附和堵塞、架桥，而对设备的器壁均不产生损伤和变形。设计独特的磁性活塞，使气锤具有更大的冲击力，外壳为优质的铸造铝合金，控制箱可调节敲击间隔时间和敲击时间。	　　该设备对极板具有强力清灰作用；维护工作量很小；可在户外安全使用；在现有的各种除尘器上安装简易,可用于改造旧式电除尘器。当<a href=\"http://www.zyjxdz.com/\" target=\"_blank\"><a href=\"http://www.zyjxdz.com\">电磁敲击锤</a></a>线圈通电时，线圈周围便要产生磁场，振打棒在磁场力作用下被提升，达到一定高度时因线圈断电、磁场消失，振打棒在重力作用下自由下落，撞击振打杆，由振打杆将振打力传递到内部阴、阳极系统或气流分布装置上，实现振打清灰的目的。	　　安阳市卓易机械电子有限公司的诚信、实力和产品质量获得业界的认可。产品广泛应用于化工，机械，食品，饲料，水泥，制药，矿业等所有加工粉体的行业，专注于解决<a href=\"http://www.zyjxdz.com/\" target=\"_blank\">电磁敲击锤</a>物料堵塞的各种问题。                        ','','','','','');
INSERT INTO `cms_data` VALUES ('145','145','','　　大家平时都有听说过振动流化床干燥机吗，今天气动振动器就给大家来介绍一下振动流化床干燥机的运作模式。<br />　　振动源采用振动电机驱动，运转平稳，维修方便，噪音低，寿命长。流态化稳定，无死角和吹穿现象。床层开孔形式，及开孔率至关重要。终水份、产量可通过振幅及加料量来控制。可调性好，适应面宽。<br />　　对物料表面损伤小，可用于易碎物料的干燥，物料颗粒不规则时亦不影响工作效果。明显优于沸腾床<br />　　采用全封闭式的结构，有效地防止了物料与空气间的交叉污染，作业环境清洁。<br />　　物料自进料口进入机内，在振动力作用下，物料沿水平方向抛掷向前连续运动。热风向上穿过振动流化床和湿物料换热，湿空气经旋风分离器除尘后由排风口排出，干燥物料由排料口排出。<br />　　通过这些介绍，如果大家还有任何关于气动振动器问题，都可以来电咨询我们。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('146','146','','　　大家对于直流电磁振动器都了解多少呢，相信很多朋友并不是非常熟悉吧，不要紧，下面电磁振动器就给大家来介绍一下直流电磁振动器怎样交替工作。<br />　　设备上的配件象两个电磁铁交替工作，控制部分的东西很简单，其实只要是二个交替工作,它就是一个多谐振荡器,那二只三极管就是转换开关,和定时器,我给你个图,它的电路有可能与这个大同小异.在电路中间,滑动电阻器各串一只保护电阻,线圈一端各串一只电阻共四只我图上没画,你一看就明白了.不过那BT的可能是单结晶体管,不过都可以用作开关哈哈,最后注意:调可变电阻的大小,可以控制交替工作的时间,换电容的大小也可控制。<br />　　相信通过电磁振动器的讲解，大家对于直流电磁振动器一定有了更深的了解，如果大家还有更多的问题，欢迎大家来电咨询。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('147','147','','<p style=\"text-indent:2em;\">	气动锤涉及的行业还是蛮广泛的，所以它在使用时有不少注意事项，以下是气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>厂家的介绍：<br />　　1、气动锤有防爆装置，这样我就就可以放心使用，不会害怕气动锤会产生危险；<br />　　2、气动锤的压强是可以认为调节的。如果冲击力度小，我们可以给气动锤加压；如果冲击力度大，我们就可以给气动锤降压。<br />　　3、气动锤可以通过接力配管实现同时控制多台气动锤，如果气动锤链接过多，要把气动锤的打击时间设置在1秒钟以上；<br />　　4、气动锤在安装的时候要穿戴好安全帽、安全鞋。在安全的状态下作业；<br />　　5、气动锤长期使用，锤头因为长时间工作会使磁铁裂碎，应该更换锤头；<br />　　6、气动锤的吹又磁铁与基板吻合，冲击力大且单一，不可调节，会对料仓产生一定的破坏，所以，使用时应该在料仓焊接槽钢，将其锤安装在上方能消除料仓被破坏的隐患。<br />　　希望<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>厂家能对大家有所帮助，有疑问随时来电。</p>                        ','','','','','');
INSERT INTO `cms_data` VALUES ('148','148','','　　沙子烘干机是一种处置很多物料的干燥器。因为运转牢靠、操作弹性大、适应性强、处置量大，广泛使用于建材、冶金、食物、化工、煤炭、医药矿工业中。沙子烘干机属转筒烘干机。接下来转筒烘干机厂家就给大家来介绍一下沙子烘干机烘干功率包含几方面。<br />　　一、总功率<br />　　总功率指同一时间内烘干机除掉的粉尘量与从烘干机进口流入的粉尘量的百分比，也称为均匀功率。<br />　　二、通过率<br />　　通过率指烘干机出口粉尘量与进口粉尘量的百分比。通过率越大，阐明从烘干机出口的粉尘量越大，即烘干功率越低。另外，当烘干机的烘干功率很高时，用通过率表明烘干机功能上的不一样比用总功率表明时更为显着。<br />　　三、分级烘干功率<br />　　分级烘干功率按粉尘粒径或粒径规模来标定的烘干机功率称为分级功率，它是指在某一粒径规模内，被捕集的粉尘量与进口粉尘总量的比值。<br />　　通过以上的介绍，如果大家还有任何问题，都可以来电咨询我们。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('149','149','','　　气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>的优点在于；其敲击力度通过是通过调节供气压力来调整。 若敲击力度过小无法排堵便可加大气压，相反敲击力度过大则降压使用。若 客户由于型号选择不妥出现冲击力过强或不足等误差现象时，同样也可以通 过调整气压来解决气锤的敲击力度。这种可改变冲击力的结构确保了气锤选 型的便利性。如通过接力口连接，则可实现数台冲击式气动锤串联运转，同 时打击。是一种清洁、无污染、低耗能的理想清堵设备。<br />　　<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>在进行气锤安装作业时，请穿戴好安全帽，安全鞋，安全带 ，在安全的装备下进行。安装部分的板比较薄时，请焊接增强板，否则因冲 击可能会造成安装部位破损。如焊接增强板，请确保增强板与料斗之间没有 空隙，并预留约10mm的排气口, 以利空气排出, 使冲击力能充分传导。 为避 免料斗万一破损, 请务必多焊几层.为防止脱落，请用拉索将本体吊装并固定 ，否则会因冲击可能会造成螺栓松动而脱落。<br />　　气动敲击锤用螺栓将本体与法兰固定时，请在上下加装弹簧垫片，并严 格按照拧紧扭力紧固并定期检查。配管前请配备空气过滤器，若有垃圾或者 灰尘等混入，可能会导致运转不良。使用时切勿超出所需打击力，否则可能 会导致料仓或安装部位的破损。循环连续打击时，请保持1秒以上的时间设定 ，如1秒以下可能会导致误动作的发生。请确认安装法兰的打击面必须为实心 平面. 如需要请焊增强筋气动锤合适位置的安装, 能发挥其最大的性能.<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('150','150','','　　安装振动器时，要加配高弹性的垫圈，以防松动。对钢架结构梁进行振动时效时，钢架梁要加橡胶垫，便于产生共振，使焊接残余应力进行松弛，另外，不要安在节点上。<br />　　通过压缩空气为动力，瞬间释放，推动内部的锤头打击底部，将强力冲力传递给料斗壁面，有效地击破物料所构成的拱桥，使积料松动，达到卸灰顺畅的目的。空气锤对斗壁的冲击不是连续和高频率的。接到启动信号后，空气锤只工作一次，亦只产生一次冲击；待第二次启动信号送达时空气锤才再次动作。<br />　　想了解更多气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>的相关资讯，欢迎致电本公司！<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('151','151','','　　本公司致力料位开关工业自动化控制技术研发、生产和销售料位开关的高新技术企业，公司主要技术及管理人员从事料位开关自动化控制工作多年，在引进国外先进料位开关技术及自主开发的过程中累积了相当丰富的料位开关设计、开发、和生产经验。<br />　　在安装振动器之前应确定安装位置是仔细选择过的，以保证最佳工作效果。安装面必须干净、平坦。请注意，非平整安装面会由于振动器本体的扭振使振动器工作不正常。请注意，非平整安装面会由于振动器本体的扭振使振动器工作不正常。<br />　　想了解更多气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>的相关资讯，欢迎致电本公司！<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('152','152','','　　面对当前激烈的全球市场竞争和能源短缺问题，面向流程工业的过程自动化系统的地位已经变得越来越重要。过程自动化系统不仅包括各类现场仪表、执行机构、DCS（集散控制系统）、PLC（逻辑控制系统）、SIS（仪表安全系统）等硬件系统。<br />　　其特点是撞击力大,结构简单,使用方便. 可有效解决粉体物料生产过程中的粘壁、挂料、堵塞、架桥等情况且对料仓无损伤和变形。从而提高产量、减轻劳动强度、提高安全生产程度。该产品冲击力大，噪音小，多种型号可供选择。冲击力和动作时间可控制，安装方便。可在防爆、多粉尘、潮湿等环境中使用。<br />　　广泛适用于电厂改造,钢厂,煤矿,化工,食品,医疗,农药,玻璃,水泥等行业。想了解更多气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>的相关资讯，欢迎致电本公司！<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('153','153','','电磁<a href=\"http://www.zyjxdz.com\">敲击锤</a>的使用范围<br />&nbsp; <a href=\"http://www.zyjxdz.com\">电磁敲击锤</a>采用的是二位三通电磁阀，高压气体通过通道5进入活塞下腔，推动活塞上行，活塞上腔气体被挤压通过排气孔排出。当活塞上行至终点时，气体通过槽和气道自动换向是气体进入活塞上腔。高压气体亚活塞下行至终点，第一循环结束，第二循环开始。<br />电磁敲击锤一般使用碳钢材料制成，结实耐用，振动力最大，但是噪音不超过80分贝，解决物料严重黏壁，堵塞现象，例如应用于水泥行业。食品医药行业或者易爆防火花的工作环境中，也可以用以锅炉中清除灰渣等。<br /><br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('154','154','\"\"','在气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>没有通入压缩空气(3Kg/cm以上)的状态下，磁性活塞借助强磁力贴紧固定在基板 上。三通电磁阀通电时，压缩空气流入<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>本体，本体内的压力增高，当大于磁力时， 磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力。<br>\r\n<p>	　　高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘。三通 电磁阀停止通电时气动敲击锤本体内的压缩空气通过三通电磁阀排出，于是借助返回弹簧将磁 性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到初始状态。气动敲击锤：通过压缩 空气为动力，瞬间释放，推动内部的锤头打击底部，将强力冲力传递给料斗壁面，有效地击破 物料所构成的拱桥，使积料松动，达到卸灰顺畅的目的。气动敲击锤对斗壁的冲击不是连续和 高频率的。接到启动信号后，气动敲击锤只工作一次，亦只产生一次冲击；待第二次启动信号 送达时气动敲击锤?才再次动作。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339610915.jpg\" alt=\"敲击锤厂家\"></p>\r\n<a href=\"http://www.zyjxdz.com\">敲击锤厂家</a>生产的传统仓壁振动器，运用高频率振动往往不能使物料形成的拱桥受到破坏，反 而将物料振动的更加密实，达到卸灰顺畅的目的。振动力度喝频率不能调节，高频率的振动对 于灰斗破坏性很严重，造成灰斗壁振裂，开焊。<br>','','','','','');
INSERT INTO `cms_data` VALUES ('155','155','\"\"','<a href=\"http://www.zyjxdz.com\">敲击锤</a>厂家生产的<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>采用进口技术、碳钢结构、使用寿命长。<br>\r\n<p>	　　专业生产气动振动器、气敲动击锤、电动振动器、电动敲击锤、小型电磁振动器、零速开关、振动器控制箱、电磁阀箱等产品。产品广泛应用于化工、机械、食品、饲料、水泥、制药、矿业等所有加工粉体的行业。 公司拥有一支具有丰富的研发和生产经验的技术人员构成的团队，凭借雄厚的技术力量，严谨的工作态度和热诚的服务，得到了众多用户的信赖。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339696262.jpg\" alt=\" 敲击锤厂家\"></p>\r\n气动敲击锤是国内外通用的先进落粉装置，被多次改良，派生出很多新品种。产品新颖、独特。用以自动防止粉体在管路、料斗、料仓输送中产生的粘附、堵塞和架桥，而对设备的器壁均不会产生操作和变形，广泛应用于化工、化肥、食品、陶瓷、玻璃、水泥、制药、塑料、燃料等粉体加工行业。<br>','','','','','');
INSERT INTO `cms_data` VALUES ('156','156','\"\"','据了解，国内从事气动工具生意的商铺数量正在不断的攀升，这表明气动工具产品具有优越的市场环境，也具有可观的发展前景。<br>\r\n<p>	　　气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>与传统震动器比较的好处：通过压缩空气为动力，瞬间释放，推动内部的锤头打击底部，将强力冲力传递给料斗壁面，有效地击破物料所构成的拱桥，使积料松动，达到卸灰顺畅的目的。<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>对斗壁的冲击不是连续和高频率的。接到启动信号后，气动敲击锤只工作一次，亦只产生一次冲击；待第二次启动信号送达时气动敲击锤才再次动作。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339673442.jpg\" alt=\"气动敲击锤,\"></p>\r\n气动敲击锤与气动振动器相比具有更大的冲击力与落料效果，相同规格的情况下能产生更大的效果，所以节约了使用成本。但是气动锤与气动敲击锤的不足在于冲击频率低，普遍在1HZ左右，一般适用于单作用冲击的场合。','','','','','');
INSERT INTO `cms_data` VALUES ('157','157','\"\"','内从事气动工具生意的商铺数量正在不断的攀升，这表明气动工具产品具有优越的市场环境，也具有可观的发展前景。<br>\r\n<p>	　　在气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>没有通入压缩空气(3Kg/cm以上)的状态下，磁性活塞借助强磁力贴紧固定在基板上。三通电磁阀通电时，压缩空气流入<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>本体，本体内的压力增高，当大于磁力时 气动敲击锤价格，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力。高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘。三通电磁阀停止通电时气动敲击锤本体内的压缩空气通过三通电磁阀排出，于是借助返回弹簧将磁性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到初始状态。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339586714.jpg\" alt=\"敲击锤厂家\"></p>\r\n本<a href=\"http://www.zyjxdz.com\">敲击锤厂家</a>自从成立之后，一直致力于生产制造动力科技领域，严格把控气动振动器的生产制造中的每一道流程。让客户可以享受到相对比较低廉的价格但可以达到国外同类产品相同的质量的气动振动器产品。<br>','','','','','');
INSERT INTO `cms_data` VALUES ('158','158','\"\"','空气锤，即<a href=\"http://www.zyjxdz.com\" target=\"_blank\">气动</a><a href=\"http://www.zyjxdz.com\">敲击锤</a>，其特点是撞击力大，结构简单，使用方便。可有效解决粉体物料粘壁、挂料、堵塞、架桥等情况。冲击力大，噪音小，多种型号可供选择。冲击力和动作时间可控制，安装方便。可在防爆、多粉尘、潮湿等环境中使用。<br>\r\n<p>	　　首先<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>是一种通过压缩空气而产生动力来进行实际工作的设备，它是一种瞬间释放的产品，而且制造的时候使用的都是轻型材料，但是使用的时候强度却是很大的。气动敲击锤在使用的时候只能工作一次，也就是说只能产生一次冲击，后面第二次就需要经过一段时间的启动才能进行工作，这样避免了连续的强力冲击造成破坏。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339564993.jpg\" alt=\"气动敲击锤\"></p>\r\n气动敲击锤不仅能减轻劳动力，而且还可以提高生产效率，使用安全，放心。该产品种类型号多，可以根据不同的工作环境选择合适振动频率的气动敲击锤。<br>','','','','','');
INSERT INTO `cms_data` VALUES ('159','159','\"\"','在气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>没有通入压缩空气的状态下，磁性活塞借助强磁力贴紧固定在基板上。三通电磁阀通电时，压缩空气流入<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>本体，本体内的压力增高，当大于磁力时，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力。<br>\r\n<p>	　　敲击锤锤头内部有一强磁力磁铁，在未动作前，磁性锤头紧贴在磁力基板上。当三通电磁阀通电，进气压力大于贴合磁力时，磁性锤头高速脱离基板，向底部冲击。冲击后，三通电磁阀断电，产品内气体排除，锤头借助弹簧回复至初始位置。空气锤的冲击力，传递到管道或桶仓壁，使物料能够顺利流动。广泛适用于化肥,化工,食品,医疗,农药,玻璃,水泥等行业.全铝结构强度高,单击式冲击力度大,重量轻,冲击间隔时间可调整。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339529408.jpg\" alt=\"敲击锤,\"></p>\r\n正常使用时。应调节到合适的压力，不宜过大，这样对设备，对振动器都进行了很好的保护，同时避免了空气的浪费。<br>','','','','','');
INSERT INTO `cms_data` VALUES ('160','160','','混凝土振捣正确使用振动器<br />　　在浇筑混凝土时，采用正确的振捣方法，可以避免蜂窝麻面通病，必须认真对待，精心操作。对楼板浇筑混凝土时，当板厚大于150mm时，采用插入式振动器；但棒要斜插，然后再用平板式振动器振一遍，将混凝土整平；当板厚小平150mm时，采用平板式振动器振捣。<br />当使用插入式振动器时：<br />　　振动器正确方法，应做到“快插慢拔”。在振捣过程中，宜将振动棒上下略为抽动，以使混凝土上下振捣均匀。右，以消除两层间的接逢。同时在振捣上层混凝土时，要在下层混凝土初凝前进行。<br />每一插点要掌握准振捣时间，过短不易密实，过长能引起混凝土产生离析现象，对塑性混凝土尤其要注意。一般应视混凝土表面呈水平，不再显著沉降、不再出现气泡及表面泛出灰浆为准。<br />振动器插点要均匀排列，可采用“行列式”或“交错式”的次序移动，但不能混用。每次移动位置的距离应不大于振动棒作用半径的1.5倍。<br />振动器使用时，振动器距模板不应大于振动器作用半径的0.5倍，又不能紧靠模板，且尽量避开钢筋，预埋件等。<br />当使用平板式振动器时：<br />　　在正常情况下，平板式振动器在一点位的连续振动时应以混凝土表面均匀出现浆液为准。移动振动器时应成排依次振捣，前后位置和排与排间相互搭100mm，严防漏振。<br />　　板式振动器在无筋和单筋平板中的有效作用深度为200mm；在双筋的平板中约为120mm。<br />　　振动倾斜混凝土表面时，应由低处逐渐向高处移动，以保证振动密实。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('161','161','','　　选择电机，首先要确定电机工作点的力矩有多大，及在这个力矩下需要的电机转速（即 额定转速）是多少。依此可以确定需要多大尺寸的电性能满足这个要求。<br />　　电机的额定转速和额定力矩决定了电机的输出功率。对于两台尺寸完全相同的电机来 说，由于转速不同，力矩不同，所以输出功率也不同。力矩大、转速高的电机，其输出功率 就大，当然电流也要增大。&nbsp;<br />输出功率的计算方法如下：&nbsp;<br />P2＝1.028×10 ×T×N 单位：瓦（W）&nbsp;<br />此中：T--负载力矩 单位：克/厘米（g.cm） N--负载转速 单位：转/分（rpm）&nbsp;<br />　　对于同一台电当力矩不变时，电机转速与电压成正比。即：电压越高，转速越高。 如：一台 12V 电机，在额定力矩下的负载转速为 5000rpm，当把电压升高到 24V 时，则负载 转速大约为 10000rpm。<br />　　对于同一台电机，YB防爆电机负载转速与负载力矩成反比。即：随着负载力矩的增大，电机转速将 降低。如：一台电机，若在 200g.cm 时的转速为 5000rpm，当负载力矩大于 200g.cm 时，电 机转速将低于 5000rpm；而当负载力矩小于 200g.cm 时，电机转速将高于 5000rpm。&nbsp;<br />　　一般来说，电机所带的负载力矩，应与电机给定的额定力矩相同。因为，在额定力矩下 工作时，电机是处于最高效率点附近。而当负载力矩大于额定力矩时，电机处在超负荷运行 状态，这将影响到电机的发热和使用寿命。&nbsp;<br />电机的力矩通常用 g.cm（克/厘米）表示，与其他力矩单位的换算关系是：<br />1g.cm＝0.098mNm＝0.014oz-in<br />1mNM＝10.2g.cm＝0.142oz-in<br />1oz-in＝7.056mNm＝72.0g.cm&nbsp;<br />长度单位的换算关系是：1mm＝0.039in lin＝25.4mm&nbsp;<br />重量单位的换算关系是：1g＝0.035oz loz＝28.35g<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('162','162','','　　气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>是一种经过多次改良的先进的落粉装置，主要用于预防粉体在管道、料斗的输送中产生粘附与堵塞的现象。同时并不会对设备的产生变形。在各类加工行业当中都得到了广泛的使用。下面就来对比<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>与传统震动器的特点。<br />　　1、气动敲击锤<br />　　（1）通过压缩空气为动力，瞬间释放，推动内部的锤头打击底部，将强力冲力传递给料斗壁面，有效地击破物料所构成的拱桥，使积料松动，达到卸灰顺畅的目的。<br />　　（2）气动敲击锤对斗壁的冲击不是连续和高频率的。接到启动信号后，气动敲击锤只工作一次，亦只产生一次冲击；待第二次启动信号送达时气动敲击锤 才再次动作。<br />　　2、传统的仓壁振动器<br />　　（1）运用高频率振动往往不能使物料形成的拱桥受到破坏，反而将物料振动的更加密实，达到卸灰顺畅的目的。<br />　　（2）振动力度和频率可以通过气源的压力与流量进行无级调节，高频率的振动对于灰斗破坏性很严重，造成灰斗壁振裂，开焊，故需谨慎选择型号与规格。<br />　　以上就是公司对气动敲击锤与传统震动器特点的对比，欲了解更多详情请访问公司官网。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('163','163','','&nbsp; &nbsp; &nbsp; 我想各位都不想自己的设备处出问题，那么就让气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>厂家教你怎样防止设备出问题吧：<br />　　一是入筛物料的性质，包括物料的粒度特性、物料的水分、含泥量和物料颗粒的形状；<br />　　二是篩分设备的性能，包括筛面运动的特性、筛面的长度和宽度、筛面倾角、筛孔尺寸和形状。<br />　　三是仓壁振动器的操作条件，包括处理能力的大小和给料的均匀性等。以上三类因素中，第一类因素除物料湿度外是不能随意改变的，第二类因素在设计筛子时必须认真考虑，特别是筛机的运动学参数（振幅和振动次数），第三类因素在实际生产中是可以调节的。因此，在试验过程中，主要考察以下因素对筛分效率的影响：激振频率、偏心块厚度、处理量。<br />　　听了<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>厂家的介绍，是不是有安心一些呢，有需要随时来电。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('54','54','\"\"','<p>‌<img src=\"/upfile/2025/01/1737171200299.jpg\" alt=\"project01.jpg\"></p>','','','','','');
INSERT INTO `cms_data` VALUES ('55','55','\"\"','<p>‌<img src=\"/upfile/2025/01/1737171246662.jpg\" alt=\"project02.jpg\"></p>','','','','','');
INSERT INTO `cms_data` VALUES ('56','56','\"\"','<p>‌<img src=\"/upfile/2025/01/1737171293299.jpg\" alt=\"project03.jpg\"></p>','','','','','');
INSERT INTO `cms_data` VALUES ('57','57','\"\"','<p>‌<img src=\"/upfile/2025/01/1737171308431.jpg\" alt=\"project04.jpg\"></p>','','','','','');
INSERT INTO `cms_data` VALUES ('58','58','\"\"','<p><img src=\"/upfile/2025/01/1737171478826.jpg\" alt=\"project05.jpg\">‌</p>','','','','','');
INSERT INTO `cms_data` VALUES ('59','59','\"\"','<p>‌<img src=\"/upfile/2025/01/1737171494119.jpg\" alt=\"project06.jpg\"></p>','','','','','');
INSERT INTO `cms_data` VALUES ('60','60','\"\"','<p>‌<img src=\"/upfile/2025/01/1737171508487.jpg\" alt=\"project07.jpg\"></p>','','','','','');
INSERT INTO `cms_data` VALUES ('61','61','\"\"','<p>‌<img src=\"/upfile/2025/01/1737171519388.jpg\" alt=\"project08.jpg\"></p>','','','','','');
INSERT INTO `cms_data` VALUES ('62','62','\"\"','<p>‌<img src=\"/upfile/2025/01/1737171530417.jpg\" alt=\"project09.jpg\"></p>','','','','','');
INSERT INTO `cms_data` VALUES ('63','63','\"\"','<p>‌<img src=\"/upfile/2025/01/1737171542726.jpg\" alt=\"project10.jpg\"></p>','','','','','');
INSERT INTO `cms_data` VALUES ('64','64','\"\"','<p>‌<img src=\"/upfile/2025/01/1737171553328.jpg\" alt=\"project11.jpg\"></p>','','','','','');
INSERT INTO `cms_data` VALUES ('65','65','\"\"','<p>‌<img src=\"/upfile/2025/01/1737171562825.jpg\" alt=\"project12.jpg\"></p>','','','','','');
INSERT INTO `cms_data` VALUES ('66','66','{\"1\":{\"image\":\"/upfile/2025/01/1737171553328.jpg\",\"desc\":\"\"},\"2\":{\"image\":\"/upfile/2025/01/1737171542726.jpg\",\"desc\":\"\"},\"3\":{\"image\":\"/upfile/2025/01/1737171530417.jpg\",\"desc\":\"\"}}','<p><img alt=\"\" src=\"/upfile/2025/01/1737181199263.jpg\" style=\"width: 659px; height: 461px;\"></p>\r\n<h2>\r\n	工作原理</h2>\r\n<p>\r\n	在气动敲击锤锤没有通入压缩空气（4-7kg/cm2）的状态下，磁性活塞借助强磁力贴紧固定在基板上。电磁阀通电时，压缩空气流入气锤本体，在体内压力增高，当大于磁力时，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力，高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘，电磁阀停止通电时，压缩空气排出，于是借助返回弹簧将磁性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到原始状态。</p>\r\n<h2>\r\n	适用范围</h2>\r\n<p>\r\n	化工、食品、金属铸造、水泥、饲料工业、制药、化学、肥料、橡塑胶工业、矿业.运输设备、仓储业、污染防治等工业。</p>\r\n<h2>\r\n	型号和参数</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				型号</th>\r\n			<th>\r\n				使用压力 Kg/cm2</th>\r\n			<th>\r\n				空气消耗量 L/回</th>\r\n			<th>\r\n				冲击力 Kg.m/s</th>\r\n			<th>\r\n				重量 Kg</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				ZY85</td>\r\n			<td>\r\n				3-5</td>\r\n			<td>\r\n				0.042</td>\r\n			<td>\r\n				2.6</td>\r\n			<td>\r\n				2.2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZY90</td>\r\n			<td>\r\n				3-5</td>\r\n			<td>\r\n				0.096</td>\r\n			<td>\r\n				3.2</td>\r\n			<td>\r\n				3.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZY120</td>\r\n			<td>\r\n				3-6</td>\r\n			<td>\r\n				0.38</td>\r\n			<td>\r\n				12.5</td>\r\n			<td>\r\n				5.8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZY150</td>\r\n			<td>\r\n				3-6</td>\r\n			<td>\r\n				0.46</td>\r\n			<td>\r\n				20.8</td>\r\n			<td>\r\n				11.7</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZY200</td>\r\n			<td>\r\n				3-7</td>\r\n			<td>\r\n				1.01</td>\r\n			<td>\r\n				30</td>\r\n			<td>\r\n				22</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZY260</td>\r\n			<td>\r\n				3-8</td>\r\n			<td>\r\n				1.1-2.1</td>\r\n			<td>\r\n				15-65</td>\r\n			<td>\r\n				19</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	产品特点</h2>\r\n<ul>\r\n	<li>\r\n		1、单击式，敲击次数、间隔可控制。</li>\r\n	<li>\r\n		2、冲击力大，噪音小，多种型号可供选择。</li>\r\n	<li>\r\n		3、不需要使用电源供应，防爆场内亦可使用。</li>\r\n	<li>\r\n		4、体积小，安装容易。</li>\r\n	<li>\r\n		5、可有效解决粉体物料粘壁、挂料、堵塞、架桥等情况。</li>\r\n	<li>\r\n		6、可瞬间停止或启动，无马达振动器的惯性现象，不会造成设备损坏。 敲击力度是通过调节供气压力来调整。若敲击力度过小，无法排堵便可加大气压。相反，敲击力度过大则降低压力使用。若客户由于型号选择不妥出现冲击力过强或不足等误差现象时，同样也可以通过调整气压来解决气锤的敲击力度。这种可改变冲击力的结构，确保了气锤选型的便利性。</li>\r\n</ul>\r\n<h2>\r\n	外观尺寸</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				型号</th>\r\n			<th>\r\n				DN(mm)</th>\r\n			<th>\r\n				φ1</th>\r\n			<th>\r\n				φ2</th>\r\n			<th>\r\n				n-d</th>\r\n			<th>\r\n				H</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				ZY85</td>\r\n			<td>\r\n				φ38</td>\r\n			<td>\r\n				φ74</td>\r\n			<td>\r\n				φ65</td>\r\n			<td>\r\n				4-φ9</td>\r\n			<td>\r\n				162</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZY90</td>\r\n			<td>\r\n				φ46</td>\r\n			<td>\r\n				φ85</td>\r\n			<td>\r\n				φ65</td>\r\n			<td>\r\n				4-φ11</td>\r\n			<td>\r\n				173</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZY120</td>\r\n			<td>\r\n				φ69</td>\r\n			<td>\r\n				φ120</td>\r\n			<td>\r\n				φ95</td>\r\n			<td>\r\n				4-φ14</td>\r\n			<td>\r\n				200</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZY150</td>\r\n			<td>\r\n				φ88</td>\r\n			<td>\r\n				φ145</td>\r\n			<td>\r\n				φ115</td>\r\n			<td>\r\n				4-φ14</td>\r\n			<td>\r\n				250</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZY200</td>\r\n			<td>\r\n				φ110</td>\r\n			<td>\r\n				φ182</td>\r\n			<td>\r\n				φ145</td>\r\n			<td>\r\n				4-φ18</td>\r\n			<td>\r\n				322</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZY260</td>\r\n			<td>\r\n				φ135</td>\r\n			<td>\r\n				φ198</td>\r\n			<td>\r\n				φ165</td>\r\n			<td>\r\n				4-φ17</td>\r\n			<td>\r\n				431</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	选择气动敲击锤要从以下几个方面考虑</h2>\r\n<ul>\r\n	<li>\r\n		1、根据料仓的直径和金属板厚度选用，见选型图</li>\r\n	<li>\r\n		2、根据物料的特性选用：含水率、堆密度（比重）、粒径等。</li>\r\n	<li>\r\n		3、根据料仓形状选择，圆锥料仓安1台，角锥料仓安2台。实践证明角锥料仓比圆锥料仓振动效果差，传播效率低。</li>\r\n	<li>\r\n		4、根据料仓的大小，容积选择。</li>\r\n</ul>\r\n<img alt=\"\" src=\"/upfile/2025/01/1737181199634.jpg\" style=\"width: 705px; height: 415px;\"><br>\r\n<h2>\r\n	物料堵塞的解决</h2>\r\n<p>\r\n	由于储存物料的特性（含水率、比重、粒径）会造成不同程度的附着及堵塞，例如：图一 粘附，图二 架空，图三 鼠洞，图四 管道粘附等。气动敲击锤可以针对现场不同情况，有效改善堵塞现象，可使物料流动顺畅，并且，不会对仓壁造成破坏。<br>\r\n	<br>\r\n	<img alt=\"\" src=\"/upfile/2025/01/1737181200144.jpg\" style=\"width: 775px; height: 549px;\"><br>\r\n	&nbsp;</p>','','','单击式，敲击次数、间隔可控制。冲击力大，噪音小，多种型号可供选择。不需要使用电源供应，防爆场内亦可使用。体积小，安装容易。可有效解决粉体物料粘壁、挂料、堵塞、架桥等情况。可瞬间停止或启动，无马达振动器的惯性现象，不会造成设备损坏','化工、食品、金属铸造、水泥、饲料工业、制药、化学、肥料、橡塑胶工业、矿业.运输设备、仓储业、污染防治等工业。','');
INSERT INTO `cms_data` VALUES ('67','67','\"\"','<h2>\r\n	产品特点</h2>\r\n<ul>\r\n	<li>\r\n		1、单作用冲击，不连续，需电磁阀控制保证持续作业，每秒敲击约5次。</li>\r\n	<li>\r\n		 2、重量轻，碳钢外壳强度高，适应恶劣条件。</li>\r\n	<li>\r\n		 3、采用超强磁性元件，精心设计，蓄能后，冲击力大。</li>\r\n	<li>\r\n		 4、耗气量少。</li>\r\n	<li>\r\n		5，采用气锤领域最新技术，冲击力与寿命远高于传统压缩铝气锤。</li>\r\n	<li>\r\n		6、在空间任意方向安装使用。</li>\r\n	<li>\r\n		 7、敲击作用时，活塞直接作用在目标上。</li>\r\n	<li>\r\n		8、使用方便，只需用一根通气管即可,频率与力量可通过流量与压力调节。</li>\r\n	<li>\r\n		9、寿命长。</li>\r\n	<li>\r\n		10、冲击力的方向为上下冲击。</li>\r\n	<li>\r\n		 11、法兰式安装。</li>\r\n</ul>\r\n<h2>\r\n	应用范围</h2>\r\n \r\n<ul>\r\n	<li>\r\n		1，该产品防爆防潮，适用于不同行业的物料堵塞以及易爆防火花的工作环境。</li>\r\n	<li>\r\n		 2，可安装在化工、食品、金属铸造、水泥、饲料工业、制药、化学、肥料、橡塑胶工业、矿业.运输设备、仓储业、污染防治等设备上。</li>\r\n</ul>\r\n<h2>\r\n	注意事项</h2>\r\n<p>\r\n	安装气锤时应将底盘与安装面贴实，以避免活塞侧向受力，影响使用寿命与密封。</p>\r\n<h2>\r\n	工作原理</h2>\r\n<p>\r\n	在气动敲击锤锤没有通入压缩空气（3-7kg/cm2）的状态下，磁性活塞借助强磁力贴紧固定在基板上。电磁阀通电时，压缩空气流入气锤本体，在体内压力增高，当大于磁力时，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力，高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘，电磁阀停止通电时，压缩空气排出，于是借助返回弹簧将磁性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到原始状态。</p>\r\n<h2>\r\n	型号和参数</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				型号</th>\r\n			<th>\r\n				使用压力 Kg/cm2</th>\r\n			<th>\r\n				空气消耗量 L/回</th>\r\n			<th>\r\n				冲击力 Kg.m/s</th>\r\n			<th>\r\n				重量 Kg</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				K20</td>\r\n			<td>\r\n				3-5</td>\r\n			<td>\r\n				0.02</td>\r\n			<td>\r\n				1.8</td>\r\n			<td>\r\n				0.7</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	外形尺寸</h2>\r\n<p><img src=\"/upfile/2025/01/1737182649123.jpg\" style=\"width: 418px; height: 386px;\"></p>\r\n<br>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				型号</th>\r\n			<th>\r\n				DN(mm)</th>\r\n			<th>\r\n				φ1</th>\r\n			<th>\r\n				φ2</th>\r\n			<th>\r\n				n-d</th>\r\n			<th>\r\n				H</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				K20</td>\r\n			<td>\r\n				φ28</td>\r\n			<td>\r\n				φ60</td>\r\n			<td>\r\n				φ50</td>\r\n			<td>\r\n				4-φ6.5</td>\r\n			<td>\r\n				155</td>\r\n		</tr>\r\n	</tbody>\r\n</table>','','','重量轻，碳钢外壳强度高，适应恶劣条件;采用超强磁性元件，精心设计，蓄能后，冲击力大;耗气量少;采用气锤领域最新技术，冲击力与寿命远高于传统压缩铝气锤;在空间任意方向安装使用;敲击作用时，活塞直接作用在目标上;使用方便，只需用一根通气管即可,频率与力量可通过流量与压力调节;寿命长','1，该产品防爆防潮，适用于不同行业的物料堵塞以及易爆防火花的工作环境；2，可安装在化工、食品、金属铸造、水泥、饲料工业、制药、化学、肥料、橡塑胶工业、矿业.运输设备、仓储业、污染防治等设备上。','');
INSERT INTO `cms_data` VALUES ('68','68','\"\"','<h2>\r\n	工作原理</h2>\r\n<p>\r\n	ZYPT振动平台是由电动和气动两部分组成，专门用于物料振实打包之用。 电动部分将物料下部分振实，气动部分从侧面将粘在袋上的物料抖下去。通过两部分的组合振动，使物料快速振实，便于封口。</p>\r\n<h2>\r\n	结构及参数</h2>\r\n<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/upfile/2025/01/1737183368140.jpg\" style=\"width: 658px; height: 490px;\"><br>\r\n	</div>\r\n	<span style=\"color:#b22222;\"><span style=\"font-size:14px;\"><strong>主体结构见图</strong></span></span><br>\r\n	<br>\r\n	&nbsp;\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				型号</th>\r\n			<th>\r\n				电压</th>\r\n			<th>\r\n				功率</th>\r\n			<th>\r\n				激振力</th>\r\n			<th>\r\n				压缩空气压力</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n	</tbody>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				ZYPT</td>\r\n			<td>\r\n				380V</td>\r\n			<td>\r\n				1.5KW</td>\r\n			<td>\r\n				1600N</td>\r\n			<td>\r\n				4-7kg/cm²</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	使用方法</h2>\r\n<ul>\r\n	<li>\r\n		1、连接电源：采用三相四线制连接。三相开关为3根火线，单向开关为零线。</li>\r\n	<li>\r\n		2、接通气源，用调节阀调节气量大小（出厂时已调好）。</li>\r\n	<li>\r\n		3、开关向上板，电动部分开始工作。</li>\r\n	<li>\r\n		4、踩动脚踏开关，气动部分开始工作。</li>\r\n</ul>\r\n<h2>\r\n	注意事项</h2>\r\n<ul>\r\n	<li>\r\n		1、电机不装防护罩不允许运行。</li>\r\n	<li>\r\n		2、振动电机电控系统必须装有可靠的接地装置和漏电保护装置，如缺相保护，过电流保护，过热保护等。</li>\r\n	<li>\r\n		3、振动电机运行前，必须检查以下项目：振动电机的安装及紧固件是否牢固可靠；振动电机电源电缆的连接是否牢固；振动电机的电控装置接地及保护装置是否到位。</li>\r\n	<li>\r\n		4、工作中要经常注意产品运行情况。</li>\r\n	<li>\r\n		5、气动部分过滤器要经常加油。</li>\r\n</ul>','','','','','');
INSERT INTO `cms_data` VALUES ('69','69','\"\"','<table cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				产品型号</th>\r\n			<th>\r\n				输入电压</th>\r\n			<th>\r\n				额定频率</th>\r\n			<th>\r\n				接点容量</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n	</tbody>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				ZYLS</td>\r\n			<td>\r\n				220V</td>\r\n			<td>\r\n				50/60Hz</td>\r\n			<td>\r\n				3A/220VAC</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	原理</h2>\r\n<p>\r\n	零速开关安装在旋转设备的轴头上，对旋转设备进行转速监控。两个微型继电器，可根据监控设备的实际转速，分别调整时间常数和脉冲个数，来实现转速设定。当监控设备出现异常时，两组继电器动作并给出信号。使工作人员能及时发现故障，能够对旋转设备运行进行有效的安全监控，实现plc自动化控制。</p>\r\n<p>\r\n	采用进口微型继电器直接隔离，不会对控制系统产生干扰和影响，安全可靠。</p>\r\n<h2>\r\n	特点</h2>\r\n<p>\r\n	本产品采用铝合金外壳防护等级为IP-65。体积小，重量轻，坚固耐用，安装方便，可在粉尘大、环境恶劣的场所安全稳定运行。具有防尘、防水、耐高温-45-85℃等特点。速度可调整，监测范围0-1500rpm。</p>\r\n<h2>\r\n	适用范围</h2>\r\n<p>\r\n	适用于各种需要监控的旋转设备上，如各种输送机、斗式提升机，旋转供料阀、绞龙等，打滑、低速、过负载时监控保护</p>\r\n<h2>\r\n	使用方法</h2>\r\n<ul>\r\n	<li>\r\n		1、连接形式：用4条M8螺丝将零速开关固定在一个直角型的连接板上，直角型连接板上的孔，开成长条形的孔，便于左右、前后调整。</li>\r\n	<li>\r\n		2、轴端用连轴器将零速开关与旋转设备连接起来。</li>\r\n	<li>\r\n		3、按接线图，连接电源和控制回路。接线方式：出线8根，其中2根电源线，2根开点，2根闭点，2根共用。</li>\r\n</ul>\r\n<h2>\r\n	零速开关接线图</h2>\r\n<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/upfile/2025/01/1737183470957.png\" style=\"width: 750px; height: 464px;\"><br>\r\n	</div>\r\n<h2>\r\n	零速开关调整方法</h2>\r\n<ul>\r\n	<li>\r\n		1、 该装置通电后，有1-3分钟延时，然后，进入正常工作状态。</li>\r\n	<li>\r\n		2、 当开关S1拨至中间位置时，为高速位；拨至左边位置时，为中速位；拨至右边位置时，为低速位。</li>\r\n	<li>\r\n		3、 绿灯亮时为正常运转，端子台3-5通，6-8通。绿灯灭时为有故障出现，端子台3-4通，8-7通。</li>\r\n	<li>\r\n		4、 黄灯指示运行速度快慢。</li>\r\n	<li>\r\n		5、 调整RZ2 1MΩ电位器，可设定运转设备的报警转速。顺时针调整用作快速设定报警，逆时针调整用作慢速设定报警。设定好速度后，当设备运转低于设定的转速，就会发出报警信号。RZ1 500KΩ电位器出厂时已调整好。</li>\r\n</ul>\r\n<h2>\r\n	调整开关S1及电位器位置图</h2>\r\n<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/upfile/2025/01/1737183470323.png\" style=\"width: 750px; height: 464px;\"></div>','','','本产品采用铝合金外壳防护等级为IP-65。体积小，重量轻，坚固耐用，安装方便，可在粉尘大、环境恶劣的场所安全稳定运行。具有防尘、防水、耐高温-45-85℃等特点。速度可调整，监测范围0-1500rpm。','适用于各种需要监控的旋转设备上，如各种输送机、斗式提升机，旋转供料阀、绞龙等，打滑、低速、过负载时监控保护','');
INSERT INTO `cms_data` VALUES ('85','85','\"\"','<img src=\"/upfile/2025/01/1737202443243.jpg\" alt=\"Snipaste_2025-01-18_20-03-27.jpg\" align=\"center\"><br><h2>工作原理</h2>\r\n<p>在气动敲击锤没有通入压缩空气（3-8kg/cm2）的状态下，活塞借助弹簧的弹力贴紧在隔板上。电磁阀通电时，压缩空气流入气锤本体，在体内压力增高，利用气压储能原理。使锤头瞬间受力，提高空气锤的冲击力。</p>\r\n<h2>适用范围</h2>\r\n<p>化工、食品、金属铸造、水泥、饲料工业、制药、化学、肥料、橡塑胶工业、矿业.运输设备、仓储业、污染防治等工业。</p>\r\n<h2>型号和参数</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n  <thead>\r\n    <tr>\r\n      <th>型号</th>\r\n      <th>使用压力（Kg/cm2）</th>\r\n      <th>空气消耗量（L/回）</th>\r\n      <th>冲击力（Kg.m/s）</th>\r\n      <th>重量（Kg）</th>\r\n      <th>材质</th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td>ZY - 130</td>\r\n      <td>2 - 6</td>\r\n      <td>0.9 - 1.4</td>\r\n      <td>15 - 60</td>\r\n      <td>8</td>\r\n      <td>铝合金</td>\r\n    </tr>\r\n    <tr>\r\n      <td>ZY - 130T</td>\r\n      <td>2 - 6</td>\r\n      <td>0.9 - 1.4</td>\r\n      <td>15 - 60</td>\r\n      <td>9</td>\r\n      <td>铝合金</td>\r\n    </tr>\r\n    <tr>\r\n      <td>ZY - 180</td>\r\n      <td>2 - 6</td>\r\n      <td>1 - 1.5</td>\r\n      <td>15 - 100</td>\r\n      <td>13.5</td>\r\n      <td>碳钢</td>\r\n    </tr>\r\n    <tr>\r\n      <td>ZY - 180T</td>\r\n      <td>2 - 6</td>\r\n      <td>1 - 1.5</td>\r\n      <td>15 - 100</td>\r\n      <td>14.5</td>\r\n      <td>碳钢</td>\r\n    </tr>\r\n    <tr>\r\n      <td>ZY - 260</td>\r\n      <td>2 - 6</td>\r\n      <td>1.1 - 1.55</td>\r\n      <td>15 - 120</td>\r\n      <td>20</td>\r\n      <td>铝合金</td>\r\n    </tr>\r\n    <tr>\r\n      <td>ZY - 260T</td>\r\n      <td>2 - 6</td>\r\n      <td>1.1 - 1.55</td>\r\n      <td>15 - 120</td>\r\n      <td>21</td>\r\n      <td>铝合金</td>\r\n    </tr>\r\n    <tr>\r\n      <td>ZY - 280</td>\r\n      <td>3 - 8</td>\r\n      <td>1.15 - 1.85</td>\r\n      <td>100 - 175</td>\r\n      <td>27</td>\r\n      <td>碳钢</td>\r\n    </tr>\r\n    <tr>\r\n      <td>ZY - 280T</td>\r\n      <td>3 - 8</td>\r\n      <td>1.15 - 1.85</td>\r\n      <td>100 - 175</td>\r\n      <td>28</td>\r\n      <td>碳钢</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n<h2>外形尺寸</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n    <thead>\r\n        <tr>\r\n            <th>型号</th>\r\n            <th>DN(mm)</th>\r\n            <th>φ1</th>\r\n            <th>φ2</th>\r\n            <th>n - d</th>\r\n            <th>H</th>\r\n        </tr>\r\n    </thead>\r\n    <tbody>\r\n        <tr>\r\n            <td>ZY - 130</td>\r\n            <td>Φ80</td>\r\n            <td>φ168</td>\r\n            <td>Φ140</td>\r\n            <td>4 - φ17</td>\r\n            <td>205</td>\r\n        </tr>\r\n        <tr>\r\n            <td>ZY - 130T</td>\r\n            <td>Φ80</td>\r\n            <td>φ168</td>\r\n            <td>Φ140</td>\r\n            <td>4 - φ17</td>\r\n            <td>205</td>\r\n        </tr>\r\n        <tr>\r\n            <td>ZY - 180</td>\r\n            <td>Φ100</td>\r\n            <td>Φ176</td>\r\n            <td>Φ142</td>\r\n            <td>4 - φ17</td>\r\n            <td>310</td>\r\n        </tr>\r\n        <tr>\r\n            <td>ZY - 180T</td>\r\n            <td>Φ100</td>\r\n            <td>Φ176</td>\r\n            <td>Φ142</td>\r\n            <td>4 - φ17</td>\r\n            <td>310</td>\r\n        </tr>\r\n        <tr>\r\n            <td>ZY - 260</td>\r\n            <td>φ135</td>\r\n            <td>φ198</td>\r\n            <td>φ165</td>\r\n            <td>4 - φ17</td>\r\n            <td>431</td>\r\n        </tr>\r\n        <tr>\r\n            <td>ZY - 260T</td>\r\n            <td>φ135</td>\r\n            <td>φ198</td>\r\n            <td>φ165</td>\r\n            <td>4 - φ17</td>\r\n            <td>431</td>\r\n        </tr>\r\n        <tr>\r\n            <td>ZY - 280</td>\r\n            <td>φ135</td>\r\n            <td>Φ200</td>\r\n            <td>φ165</td>\r\n            <td>4 - φ17</td>\r\n            <td>460</td>\r\n        </tr>\r\n        <tr>\r\n            <td>ZY - 280T</td>\r\n            <td>φ135</td>\r\n            <td>Φ200</td>\r\n            <td>φ165</td>\r\n            <td>4 - φ17</td>\r\n            <td>460</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<h2>产品特点</h2>\r\n<ul><li>单击式，每次动作产生一个冲击波，不产生火花。</li><li>冲击力、敲击次数、间隔可依需求调整。</li><li>冲击力大，噪音小，多种型号可供选择。</li><li>体积小，安装容易。</li><li>可有效解决粉体物料粘壁、挂料、堵塞、架桥等情况。</li><li>可瞬间停止或启动，无马达振动器的惯性现象，不会造成设备损坏。</li><li>敲击力度是通过调节供气压力来调整。若敲击力度过小，无法排堵便可加大气压。相反，敲击力度过大则降低压力使用。若客户由于型号选择不妥出现冲击力过强或不足等误差现象时，同样也可以通过调整气压来解决气锤的敲击力度。这种可改变冲击力的结构，确保了气锤选型的便利性。</li></ul>\r\n<h2>物料堵塞的解决</h2>\r\n<p>由于储存物料的特性（含水率、比重、粒径）会造成不同程度的附着及堵塞，例如：图一 粘附，图二 架空，图三 鼠洞，图四 管道粘附等。气动敲击锤可以针对现场不同情况，有效改善堵塞现象，可使物料流动顺畅，并且，不会对仓壁造成破坏。</p>\r\n<p><img src=\"/upfile/2025/01/1737202477760.jpg\" alt=\"Snipaste_2025-01-18_20-10-05.jpg\"></p>\r\n<h2>安装使用说明</h2>\r\n<h4>一、安装</h4>\r\n<ul><li>1、气动敲击锤的安装位置要合理，不合理的安装位置，既削弱了振动力，又损害了气锤本身。如图一、二、三、四，也就是不要对称安装，要交叉安装，另外不要少于L/3，否则影响振动力。</li><li>2、按照底座连接孔尺寸加工一件连接板，焊接到料仓锥形部位。或用相应槽钢焊接在料仓锥部。</li><li>3、无论是连接板还是槽钢，和气锤的接触面要平整，否则螺丝把紧时，使气锤缸筒变形导致停振。</li><li>4、安装部分的板壁较薄时，请焊接补强板，否则因冲击可能会造成安装部位破损。</li><li>5、如焊接补强板，请确保补强板与料斗之间没有空隙，使冲击力能充分传导。</li><li>6、为防止脱落，请用安全链将本体吊装并固定，否则因冲击造成螺栓松动而脱落，伤害人员。</li><li>7、用螺栓将气锤固定在连接板上时，请在上下加装弹簧垫片和平垫。</li><li>8、将气源软管与气动敲击锤连接好，即可使用。</li><li>9、使用一段时间，要检查拉杆及法兰螺丝是否松动，要及时紧固，以延长气锤使用寿命。</li><li>10、切记气锤不可空敲，即锤头行程不能大于80mm，否则容易敲坏内部铸件</li></ul>\r\n<h4>二、使用</h4>\r\n<p>各种型号同时安装使用示意</p>\r\n<p><img src=\"/upfile/2025/01/1737203466903.jpg\" alt=\"Snipaste_2025-01-18_20-30-41.jpg\"></p>\r\n<p>若同时使用几台不同型号的气动敲击锤，可根据气动敲击锤使用时间调整时间顺序继电器。</p>\r\n<h2>常见故障处理</h2>\r\n<div><img src=\"/upfile/2025/01/1737203396423.jpg\" width=\"600\"></div>','','','在气动敲击锤没有通入压缩空气（3-8kg/cm2）的状态下，活塞借助弹簧的弹力贴紧在隔板上。电磁阀通电时，压缩空气流入气锤本体，在体内压力增高，利用气压储能原理。使锤头瞬间受力，提高空气锤的冲击力','化工、食品、金属铸造、水泥、饲料工业、制药、化学、肥料、橡塑胶工业、矿业.运输设备、仓储业、污染防治等工业。','');
INSERT INTO `cms_data` VALUES ('70','70','\"\"','<h2>\r\n	基本参数</h2>\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				型号</th>\r\n			<th>\r\n				输入电压（V）</th>\r\n			<th>\r\n				频率(Hz)</th>\r\n			<th>\r\n				电源</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				DZ-1</td>\r\n			<td>\r\n				220</td>\r\n			<td>\r\n				50</td>\r\n			<td>\r\n				二相</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	应用范围</h2>\r\n<p>\r\n	DC-1型控制器是电动敲击锤的控制设备</p>\r\n<h2>\r\n	产品特点</h2>\r\n<ul>\r\n	<li>\r\n		1、实现循环控制：单锤循环和多锤循环，1-10台可任意设定打击次数及停顿时间</li>\r\n	<li>\r\n		2、实现单点控制：单锤及多锤单点控制，1-10台可任意设定打击次数及停顿时间</li>\r\n	<li>\r\n		3、打击1-10次且次数可调，然后停顿30秒至10分钟可调。</li>\r\n	<li>\r\n		4、实现液晶显示运行状态。</li>\r\n	<li>\r\n		5、通过RS-232及通讯卡进行计算机联网</li>\r\n</ul>','','','实现循环控制：单锤循环和多锤循环，1-10台可任意设定打击次数及停顿时间； 2、实现单点控制：单锤及多锤单点控制，1-10台可任意设定打击次数及停顿时间； 3、打击1-10次且次数可调，然后停顿30秒至10分钟可调； 4、实现液晶显示运行状态； 5、通过RS-232及通讯卡进行计算机联网','DC-1型控制器是电动敲击锤的控制设备','');
INSERT INTO `cms_data` VALUES ('71','71','\"\"','<h2>\r\n	技术参数</h2>\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				型 号</td>\r\n			<td>\r\n				SXFB02、SXFB04、SXFB06、SXFB08~SXFB20</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				输入电压(V)</td>\r\n			<td>\r\n				AC220V 50Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				输出电压(V)</td>\r\n			<td>\r\n				DC24V</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				输出电流</td>\r\n			<td>\r\n				0.8A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				输出回路</td>\r\n			<td>\r\n				1-20</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				脉冲间隔时间</td>\r\n			<td>\r\n				3—60秒连续可调</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				脉冲宽度时间</td>\r\n			<td>\r\n				0.2-2秒连续可调</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				工作温度</td>\r\n			<td>\r\n				-20℃～50℃</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	使用环境</h2>\r\n<ul>\r\n	<li>\r\n		1、温度-20℃～50℃</li>\r\n	<li>\r\n		2、空气相对湿度≤85%</li>\r\n	<li>\r\n		3、无严重腐蚀气体和导电尘埃</li>\r\n	<li>\r\n		4、无剧烈震动或冲击</li>\r\n</ul>\r\n<h2>\r\n	安装方式</h2>\r\n<p>\r\n	壁挂式</p>\r\n<h2>\r\n	结构原理</h2>\r\n<p>\r\n	SXFB系列气锤控制器由数控、显示、电子开关、电源四大部分组成。</p>\r\n<ul>\r\n	<li>\r\n		1、数控部分：由数字集成电路组成，包括振荡、单稳、复合、计数、复位及面板上脉宽调节、间隔调节、拨盘等控制元件组成。</li>\r\n	<li>\r\n		2、显示部分：由七段译码、电平转换及面板上数码显示、脉宽显示、工作指示、输出指示等组成。</li>\r\n	<li>\r\n		3、电子开关部分:由译码、电子开关及侧板上输出接插座组成。</li>\r\n	<li>\r\n		4、电源部分：由电源线、开关、变压器、保险丝、整流稳压电路等组成。</li>\r\n</ul>\r\n<h2>\r\n	面板各部分名称功能</h2>\r\n\r\n<div>	<img alt=\"\" src=\"/upfile/2025/01/1737186419988.jpg\" style=\"width: 497px; height: 318px;\"></div>\r\n<ul>\r\n	<li>\r\n		1、电源指示灯：220V电源指示</li>\r\n	<li>\r\n		2、电源开关</li>\r\n	<li>\r\n		3、选择开关：开关拨到“1”位置，处于循环模式，控制仪按正常顺序依次控制电磁阀进行打击，当输出路数显示到某一路数时，将开关拨到“0”位置，此时，处于重复模式，控制仪中该路则被锁定，相应的电磁阀作单一的重复打击。注意，开关从“1”到“0”或从“0”到“1”时，必须在路数显示值的更换后瞬间即拨动，也就是在脉冲间隔的前半段时间内拨动，否则，锁定值不定，并造成显示混乱。</li>\r\n	<li>\r\n		4、循环重复模式指示灯。</li>\r\n	<li>\r\n		5、输出路数设定：使用前按需要控制的电磁阀数选择相同数值设定（注意输出路数显示值为设定数值减1），控制器按此数值进行循环工作，最大设定值不超过控制器的规定值。</li>\r\n	<li>\r\n		6、脉宽调节旋钮：调节输出脉冲宽度，或称电磁阀喷吹时间，顺时针调节脉宽时间增加，反之减少。</li>\r\n	<li>\r\n		7、 间隔调节旋钮：调节两次输出脉冲之间的间隔时间（即两阀间隔），顺时针方向增加，反之减少。</li>\r\n	<li>\r\n		8、 输出路数显示：依次显示路数的序号及输出时间，即电磁阀顺序，每个数字停留时间，即为脉冲间隔，第一次输出从“00”序号开始。所以，设定的路数即是最大的显示值加1。</li>\r\n</ul>\r\n<h2>\r\n	控制仪的安装</h2>\r\n<ul>\r\n	<li>\r\n		1、 控制仪可垂直安装或直接水平放置。</li>\r\n	<li>\r\n		2、 请按照电气连接图接线见下图</li>\r\n</ul>\r\n<br>\r\n<img alt=\"\" src=\"/upfile/2025/01/1737186419275.jpg\" style=\"width: 416px; height: 187px;\">','','','','','');
INSERT INTO `cms_data` VALUES ('72','72','\"\"','<h2>\r\n	产品参数</h2>\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				型号</th>\r\n			<th>\r\n				输入电压（V）</th>\r\n			<th>\r\n				输出电压（V）</th>\r\n			<th>\r\n				输入电流（A）</th>\r\n			<th>\r\n				工作方式</th>\r\n			<th>\r\n				工作温度</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n	</tbody>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				DZ-S型控制器</td>\r\n			<td>\r\n				220</td>\r\n			<td>\r\n				10-220(可调节)</td>\r\n			<td>\r\n				10</td>\r\n			<td>\r\n				连续</td>\r\n			<td>\r\n				-30℃-70℃</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	工作原理</h2>\r\n<p>\r\n	DZ-S型控制器是电磁振动器的控制设备。 它能调整输出电压，改变振动力的大小，从而达到改变振幅、调节给料、送料的目的。</p>','','','振幅调节范围宽，输出振幅稳定等特点','改变振动力的大小，从而达到改变振幅、调节给料、送料的目的','');
INSERT INTO `cms_data` VALUES ('73','73','\"\"','<img alt=\"\" src=\"/upfile/2025/01/1737186840349.png\" style=\"width: 220px; height: 230px;\"><br>\r\n<br>\r\n<h2>\r\n	工作原理</h2>\r\n<p>\r\n	ZYDZ系列电动振动器由振动体、弹性系统、电磁线圈、机座等部件组成。铁芯和衔铁分别固定在机座和振动体上，振动体等部件构成质点M1、机座等部件构成质点M2。M1和M2由弹性系统联系在一起。由于机座紧固在料仓壁上，这样就构成了单质点定向强迫振动系统。根据机械振动的共振原理，电磁铁的激振频率为W，弹性系统自振频率为W0，使其比值W/W0＝0.9左右，处于低临界状态下共振。</p>\r\n<p>\r\n	振动器的控制原理为半波整流。电磁线圈由交流电经二极管整流供电。当线路接通后，正半周脉动直流电压加在电磁线圈上，由电磁铁的作用，在振动体和机座之间产生脉冲电磁力，振动体被吸引，此时弹性系统贮存势能，在负半周二极管不导通，电磁力消失，借助弹性系统贮存的势能，使振动体向相反的方向振动。这样周而复始，振动体便以交流电的频率往复振动。</p>\r\n<p>\r\n	振动体的周期性高频振动，通过“冲击块”传递给料仓壁。仓壁的周期性振动，一方面使物料与仓壁脱离接触，另一方面使物料受交变速度和加速度的影响，处于不稳定状态，从而有效地克服物料的内摩擦力和聚焦力。使物料从料仓口顺利地排出。</p>\r\n<h2>\r\n	产品特点</h2>\r\n<ul>\r\n	<li>\r\n		1、体积小，重量轻，安装方便。</li>\r\n	<li>\r\n		2、功率小，十分省电。</li>\r\n	<li>\r\n		3、只需220V电源即可。</li>\r\n	<li>\r\n		4、使用寿命长。</li>\r\n	<li>\r\n		5、没有压缩空气机，防尘。</li>\r\n</ul>\r\n<br>\r\n<br>\r\n<img alt=\"\" src=\"/uploads/allimg/image003.png\" style=\"width: 279px; height: 346px;\"><br>\r\n<br>\r\n<h2>\r\n	规格及参数</h2>\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table2\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				型号</th>\r\n			<th>\r\n				振动力(Kg)</th>\r\n			<th>\r\n				功率(W)</th>\r\n			<th>\r\n				电压(V)</th>\r\n			<th>\r\n				电流(A)</th>\r\n			<th>\r\n				振频(t/s)</th>\r\n			<th>\r\n				振幅(mm)</th>\r\n			<th>\r\n				环境温度(℃)</th>\r\n			<th>\r\n				振动器温度(℃)</th>\r\n			<th>\r\n				重量(Kg)</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				ZYDZ10</td>\r\n			<td>\r\n				10</td>\r\n			<td>\r\n				10</td>\r\n			<td>\r\n				220</td>\r\n			<td>\r\n				0.15</td>\r\n			<td>\r\n				50</td>\r\n			<td>\r\n				3±1</td>\r\n			<td>\r\n				≤40</td>\r\n			<td>\r\n				≤75</td>\r\n			<td>\r\n				2.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZYDZ25</td>\r\n			<td>\r\n				25</td>\r\n			<td>\r\n				18</td>\r\n			<td>\r\n				220</td>\r\n			<td>\r\n				0.6</td>\r\n			<td>\r\n				50</td>\r\n			<td>\r\n				3±1</td>\r\n			<td>\r\n				≤40</td>\r\n			<td>\r\n				≤75</td>\r\n			<td>\r\n				7.7</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZYDZ50</td>\r\n			<td>\r\n				50</td>\r\n			<td>\r\n				40</td>\r\n			<td>\r\n				220</td>\r\n			<td>\r\n				0.9</td>\r\n			<td>\r\n				50</td>\r\n			<td>\r\n				3±1</td>\r\n			<td>\r\n				≤40</td>\r\n			<td>\r\n				≤75</td>\r\n			<td>\r\n				11</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br>\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				DN(mm)</th>\r\n			<th>\r\n				φ1</th>\r\n			<th>\r\n				R</th>\r\n			<th>\r\n				n-d</th>\r\n			<th>\r\n				H</th>\r\n			<th>\r\n				L</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				Φ97</td>\r\n			<td>\r\n				Φ112</td>\r\n			<td>\r\n				Φ18</td>\r\n			<td>\r\n				2-φ10</td>\r\n			<td>\r\n				66</td>\r\n			<td>\r\n				134</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Φ144</td>\r\n			<td>\r\n				Φ158</td>\r\n			<td>\r\n				Φ21</td>\r\n			<td>\r\n				2-φ12</td>\r\n			<td>\r\n				109</td>\r\n			<td>\r\n				181</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Φ182</td>\r\n			<td>\r\n				Φ190</td>\r\n			<td>\r\n				Φ22</td>\r\n			<td>\r\n				2-φ10</td>\r\n			<td>\r\n				132</td>\r\n			<td>\r\n				220</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	应用范围</h2>\r\n<p>\r\n	ZYDZ型电磁仓壁振动器安装在粉料仓下部缩口处的外侧，ZYDZ型电磁仓壁振动器产生的高频振动，可有效的消除粉料因内摩擦、潮解、带电和成份偏析等原因而引起的堵塞、搭拱现象。使用ZYDZ型电磁仓壁振动器作疏料装置，结构简单，下料流畅，能稳定给料系统。ZYDZ型电磁仓壁振动器适合仓壁8mm以下的料仓使用。ZYDZ型电磁仓壁振动器也可用在其他需振动源的机械上。</p>','','','体积小，重量轻，安装方便；功率小，十分省电；只需220V电源即可；使用寿命长；没有压缩空气机，防尘。','ZYDZ型系列电磁仓壁振动器是高效、节能振动器，广泛在化工、建材、矿产等的料仓、粉体机械上使用。','');
INSERT INTO `cms_data` VALUES ('74','74','\"\"','<h2>\r\n	工作原理</h2>\r\n<p>\r\n	本产品是采用德国技术制造的一种产品。 它的工作原理是利用通电线圈和磁铁产生的脉冲电磁力与转子铁芯之间相互吸引，使弹簧变形储存势能，在电流的运行中释放能量，以交流电频率作往复直线振动工作过程的新型机电产品。</p>\r\n<h2>\r\n	性能及参数</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				电压</th>\r\n			<th>\r\n				电流</th>\r\n			<th>\r\n				频率</th>\r\n			<th>\r\n				阻值</th>\r\n			<th>\r\n				振幅</th>\r\n			<th>\r\n				振动强度</th>\r\n			<th>\r\n				工作温度</th>\r\n			<th>\r\n				重量</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				220V</td>\r\n			<td>\r\n				0.26A</td>\r\n			<td>\r\n				50Hz</td>\r\n			<td>\r\n				310Ω</td>\r\n			<td>\r\n				1~5mm</td>\r\n			<td>\r\n				1~1.5Kg</td>\r\n			<td>\r\n				-30~70℃</td>\r\n			<td>\r\n				2.1公斤</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	产品特点</h2>\r\n<p>\r\n	具有体积小，重量轻，方便灵活，经久耐用，使用简单，震动强度可用控制器随意调节等特点。</p>\r\n<h2>\r\n	应用范围</h2>\r\n<p>\r\n	广泛应用于化工、机械、食品、包装等行业，用于啤酒瓶盖输送、震动料斗，小型输送机，振动筛，振动平台，生产过程自动化等场合。</p>\r\n<h2>\r\n	使用安装</h2>\r\n<p>\r\n	安装前应检查电源电压是否与数据相符，并按要求正确接线。 使用中经常往两轴端加些机油，会延长使用寿命。 使用中要经常检查各紧固件有无松脱，确保安全可靠。零部件如有损坏，应及时更换。<br>\r\n	<br>\r\n	安装形式1： 带固定螺母紧固，不带配重。<br>\r\n	安装形式2： 带法兰紧固，不带配重。<br>\r\n	安装形式3： 带固定螺母紧固，带配重。<br>\r\n	安装形式4： 带法兰紧固，带配重。<br>\r\n	<img alt=\"\" src=\"/upfile/2025/01/1737186770560.jpg\" style=\"width: 361px; height: 680px;\"></p>','','','具有体积小，重量轻，方便灵活，经久耐用，使用简单，震动强度可用控制器随意调节等特点。','广泛应用于化工、机械、食品、包装等行业，用于啤酒瓶盖输送、震动料斗，小型输送机，振动筛，振动平台，生产过程自动化等场合。','');
INSERT INTO `cms_data` VALUES ('75','75','\"\"','<p>\r\n	隔爆型电磁振动器广泛应用在化工厂，矿山，火药制造等一些防爆场所，振动频率高，安全性能好等特点。</p>\r\n<h2>\r\n	产品参数</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				型号</th>\r\n			<th>\r\n				振动力(Kg)</th>\r\n			<th>\r\n				功率(W)</th>\r\n			<th>\r\n				电压(V)</th>\r\n			<th>\r\n				电流(A)</th>\r\n			<th>\r\n				振频(Hz)</th>\r\n			<th>\r\n				振幅(mm)</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n	</tbody>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				DZFB25</td>\r\n			<td>\r\n				25</td>\r\n			<td>\r\n				18</td>\r\n			<td>\r\n				220</td>\r\n			<td>\r\n				0.6</td>\r\n			<td>\r\n				50</td>\r\n			<td>\r\n				1-5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				DZFB50</td>\r\n			<td>\r\n				50</td>\r\n			<td>\r\n				40</td>\r\n			<td>\r\n				220</td>\r\n			<td>\r\n				0.9</td>\r\n			<td>\r\n				50</td>\r\n			<td>\r\n				1-5</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br>','','','振动频率高、安全性能好','化工厂、矿山、火药制造等一些防爆场所','');
INSERT INTO `cms_data` VALUES ('76','76','\"\"','<p>\r\n	ZYDZ250电磁仓壁振动器：电磁振动器是高效、节能振动器，广泛在化工、建材、矿产等粉体机械上使用。电磁振动器安装在粉料仓下部缩口处的外侧，电磁振动器产生的高频振动，可有效地消除粉料因内摩擦、潮解、带电和成份偏析等原因而引起的堵塞、搭拱现象。使用电磁振动器作疏料装置，结构简单，下料流畅，能稳定给料系统。电磁振动器也可用在其它需振动源的机械上。电磁振动器使用简单，在线圈绕组引线串接随振动器附带的二极管，接通220V交流电源即可工作。</p>\r\n<h2>\r\n	产品参数</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				电压(V)</th>\r\n			<th>\r\n				振动频率</th>\r\n			<th>\r\n				功率(W)</th>\r\n			<th>\r\n				适用仓壁厚度(mm)</th>\r\n			<th>\r\n				振动力</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n	</tbody>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				220</td>\r\n			<td>\r\n				3000</td>\r\n			<td>\r\n				150</td>\r\n			<td>\r\n				3.0~8.0</td>\r\n			<td>\r\n				600</td>\r\n		</tr>\r\n	</tbody>\r\n</table>','','','高效节能','广泛在化工、建材、矿产等粉体机械上使用','');
INSERT INTO `cms_data` VALUES ('77','77','\"\"','<h2>\r\n	产品参数</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				重量(Kg)</th>\r\n			<th>\r\n				活塞尺寸（mm）</th>\r\n			<th>\r\n				锤打次数(次)</th>\r\n			<th>\r\n				工具长度(mm)</th>\r\n			<th>\r\n				使用压力</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n	</tbody>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				1</td>\r\n			<td>\r\n				25</td>\r\n			<td>\r\n				2500-7000</td>\r\n			<td>\r\n				200</td>\r\n			<td>\r\n				2-6kg/cm2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	适用范围：</h2>\r\n<p>\r\n	解决物料严重粘壁、堵塞的情况。适用于料仓、管道不便安装固定式的振动器。改变锤头可用作电焊除渣锤，或用在薄板整形锤。</p>\r\n<h2>\r\n	结构及工作原理</h2>\r\n<p>\r\n	气体通过通道进入活塞下腔，推动活塞上行，活塞上腔气体被挤压通过排气孔排出。当活塞上行到终点时，气体通过槽和气道自动换向使气体进入活塞上腔，高压气体压活塞下行至终端，第一循环结束，第二循环开始。依次不断的往复循环使激振器产生平动和晃动，从而产生振动力。</p>\r\n<h2>\r\n	产品特点</h2>\r\n<ul>\r\n	<li>\r\n		1、 重量轻、体积小、使用方便，需用一根通气管即可；</li>\r\n	<li>\r\n		2、 在空间任意方向使用；</li>\r\n	<li>\r\n		3、 防爆、防尘；</li>\r\n	<li>\r\n		4、 在管路上加装节流阀，可调节频率和振幅；</li>\r\n	<li>\r\n		5、 可快速的运转和停止，不会过度振动，对设备损坏最小。</li>\r\n</ul>','','','重量轻、体积小、使用方便，需用一根通气管即可；在空间任意方向使用；防爆、防尘；在管路上加装节流阀，可调节频率和振幅；可快速的运转和停止，不会过度振动，对设备损坏最小。','解决物料严重粘壁、堵塞的情况。适用于料仓、管道不便安装固定式的振动器。改变锤头可用作电焊除渣锤，或用在薄板整形锤。','');
INSERT INTO `cms_data` VALUES ('78','78','\"\"','<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/upfile/2025/01/1737187010921.jpg\" style=\"width: 533px; height: 588px;\">\r\n</div>\r\n<h2>\r\n	工作原理</h2>\r\n<p>\r\n	在气动敲击锤锤没有通入压缩空气（3-7kg/cm2）的状态下，磁性活塞借助强磁力贴紧固定在基板上。电磁阀通电时，压缩空气流入气锤本体，在体内压力增高，当大于磁力时，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力，高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘，电磁阀停止通电时，压缩空气排出，于是借助返回弹簧将磁性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到原始状态。</p>\r\n<h2>\r\n	适用范围</h2>\r\n<p>\r\n	化工、食品、金属铸造、水泥、饲料工业、制药、化学、肥料、橡塑胶工业、矿业.运输设备、仓储业、污染防治等工业。</p>\r\n<h2>\r\n	型号与参数</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				型号</th>\r\n			<th>\r\n				使用压力 Kg/cm2</th>\r\n			<th>\r\n				空气消耗量 L/回</th>\r\n			<th>\r\n				冲击力 Kg.m/s</th>\r\n			<th>\r\n				重量 Kg</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n	</tbody>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				K32</td>\r\n			<td>\r\n				3-5</td>\r\n			<td>\r\n				0.042</td>\r\n			<td>\r\n				2.6</td>\r\n			<td>\r\n				2.2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				K40</td>\r\n			<td>\r\n				3-5</td>\r\n			<td>\r\n				0.096</td>\r\n			<td>\r\n				3.2</td>\r\n			<td>\r\n				3.17</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				K63</td>\r\n			<td>\r\n				4-6</td>\r\n			<td>\r\n				0.38</td>\r\n			<td>\r\n				12.5</td>\r\n			<td>\r\n				5.8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				K80</td>\r\n			<td>\r\n				4-6</td>\r\n			<td>\r\n				0.46</td>\r\n			<td>\r\n				20.8</td>\r\n			<td>\r\n				11</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				K100</td>\r\n			<td>\r\n				5-7</td>\r\n			<td>\r\n				1.01</td>\r\n			<td>\r\n				30</td>\r\n			<td>\r\n				21</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	特点</h2>\r\n<ul>\r\n	<li>\r\n		单击式，敲击次数、间隔可控制。</li>\r\n	<li>\r\n		冲击力大，噪音小，多种型号可供选择。</li>\r\n	<li>\r\n		不需要使用电源供应，防爆场内亦可使用。</li>\r\n	<li>\r\n		体积小，安装容易。</li>\r\n	<li>\r\n		可有效解决粉体物料粘壁、挂料、堵塞、架桥等情况。</li>\r\n	<li>\r\n		可瞬间停止或启动，无马达振动器的惯性现象，不会造成设备损坏。</li>\r\n</ul>\r\n<h2>\r\n	外形尺寸</h2>\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<tbody>\r\n	</tbody><thead>\r\n		<tr>\r\n			<th>\r\n				型号</th>\r\n			<th>\r\n				DN(mm)</th>\r\n			<th>\r\n				φ1</th>\r\n			<th>\r\n				φ2</th>\r\n			<th>\r\n				n-d</th>\r\n			<th>\r\n				H</th>\r\n		</tr></thead>\r\n		<tbody><tr>\r\n			<td>\r\n				K32</td>\r\n			<td>\r\n				φ38</td>\r\n			<td>\r\n				φ74</td>\r\n			<td>\r\n				φ55</td>\r\n			<td>\r\n				4-φ9</td>\r\n			<td>\r\n				162</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				K40</td>\r\n			<td>\r\n				φ46</td>\r\n			<td>\r\n				φ85</td>\r\n			<td>\r\n				φ65</td>\r\n			<td>\r\n				4-φ11</td>\r\n			<td>\r\n				173</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				K63</td>\r\n			<td>\r\n				φ69</td>\r\n			<td>\r\n				φ120</td>\r\n			<td>\r\n				φ95</td>\r\n			<td>\r\n				4-φ14</td>\r\n			<td>\r\n				200</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				K80</td>\r\n			<td>\r\n				φ88</td>\r\n			<td>\r\n				φ145</td>\r\n			<td>\r\n				φ115</td>\r\n			<td>\r\n				4-φ14</td>\r\n			<td>\r\n				250</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				K100</td>\r\n			<td>\r\n				φ110</td>\r\n			<td>\r\n				φ182</td>\r\n			<td>\r\n				φ145</td>\r\n			<td>\r\n				4-φ18</td>\r\n			<td>\r\n				322</td>\r\n		</tr>\r\n	</tbody>\r\n</table>','','','单击式，敲击次数、间隔可控制。 冲击力大，噪音小，多种型号可供选择。 不需要使用电源供应，防爆场内亦可使用。 体积小，安装容易。 可有效解决粉体物料粘壁、挂料、堵塞、架桥等情况。 可瞬间停止或启动，无马达振动器的惯性现象，不会造成设备损坏。','化工、食品、金属铸造、水泥、饲料工业、制药、化学、肥料、橡塑胶工业、矿业.运输设备、仓储业、污染防治等工业。','');
INSERT INTO `cms_data` VALUES ('79','79','\"\"','<img alt=\"\" src=\"/upfile/2025/01/1737187087244.png\" style=\"width: 676px; height: 436px;\"><br>\r\n<br>\r\n<img alt=\"\" src=\"/upfile/2025/01/1737187088230.png\" style=\"width: 427px; height: 286px;\"><br>\r\n<br>\r\n<h2>\r\n	外形尺寸及参数</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table2\">\r\n	<tbody>\r\n		<tr>\r\n			<th colspan=\"5\" style=\"height:18px; width:236px\">\r\n<p>\r\n					尺寸</p>\r\n</th>\r\n			<th colspan=\"4\" style=\"height:18px; width:307px\">\r\n<p>\r\n					性能参数</p>\r\n</th>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"height:60px; width:68px\">\r\n<p>\r\n					型号</p>\r\n</th>\r\n			<th style=\"height:60px; width:26px\">\r\n<p>\r\n					φ1</p>\r\n</th>\r\n			<th style=\"height:60px; width:26px\">\r\n<p>\r\n					φ2</p>\r\n</th>\r\n			<th style=\"height:60px; width:46px\">\r\n<p>\r\n					n-d</p>\r\n</th>\r\n			<th style=\"height:60px; width:36px\">\r\n<p>\r\n					H</p>\r\n</th>\r\n			<th style=\"height:60px; width:75px\">\r\n<p>\r\n					使用压力Mpa</p>\r\n</th>\r\n			<th style=\"height:60px; width:84px\">\r\n<p>\r\n					冲击力&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kg.m/s</p>\r\n</th>\r\n			<th style=\"height:60px; width:97px\">\r\n<p>\r\n					冲击能量&nbsp;&nbsp;&nbsp; N.M</p>\r\n</th>\r\n			<th style=\"height:60px; width:51px\">\r\n<p>\r\n					重量kg</p>\r\n</th>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18px; width:58px\">\r\n<p>\r\n					XK30</p>\r\n</td>\r\n			<td style=\"height:18px; width:36px\">\r\n<p>\r\n					82</p>\r\n</td>\r\n			<td style=\"height:18px; width:36px\">\r\n<p>\r\n					67</p>\r\n</td>\r\n			<td style=\"height:18px; width:69px\">\r\n<p>\r\n					4-φ9</p>\r\n</td>\r\n			<td style=\"height:18px; width:36px\">\r\n<p>\r\n					135</p>\r\n</td>\r\n			<td style=\"height:18px; width:75px\">\r\n<p>\r\n					0.3-0.7</p>\r\n</td>\r\n			<td style=\"height:18px; width:84px\">\r\n<p>\r\n					1.2-1.9</p>\r\n</td>\r\n			<td style=\"height:18px; width:97px\">\r\n<p>\r\n					5.5-13.1</p>\r\n</td>\r\n			<td style=\"height:18px; width:51px\">\r\n<p>\r\n					1.3</p>\r\n</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18px; width:58px\">\r\n<p>\r\n					XK40</p>\r\n</td>\r\n			<td style=\"height:18px; width:36px\">\r\n<p>\r\n					98</p>\r\n</td>\r\n			<td style=\"height:18px; width:36px\">\r\n<p>\r\n					77</p>\r\n</td>\r\n			<td style=\"height:18px; width:69px\">\r\n<p>\r\n					4-φ9</p>\r\n</td>\r\n			<td style=\"height:18px; width:36px\">\r\n<p>\r\n					175</p>\r\n</td>\r\n			<td style=\"height:18px; width:75px\">\r\n<p>\r\n					0.3-0.7</p>\r\n</td>\r\n			<td style=\"height:18px; width:84px\">\r\n<p>\r\n					2.7-4.2</p>\r\n</td>\r\n			<td style=\"height:18px; width:97px\">\r\n<p>\r\n					9.2-23</p>\r\n</td>\r\n			<td style=\"height:18px; width:51px\">\r\n<p>\r\n					2.2</p>\r\n</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18px; width:58px\">\r\n<p>\r\n					XK60</p>\r\n</td>\r\n			<td style=\"height:18px; width:36px\">\r\n<p>\r\n					143</p>\r\n</td>\r\n			<td style=\"height:18px; width:36px\">\r\n<p>\r\n					110</p>\r\n</td>\r\n			<td style=\"height:18px; width:69px\">\r\n<p>\r\n					4-φ13</p>\r\n</td>\r\n			<td style=\"height:18px; width:36px\">\r\n<p>\r\n					220</p>\r\n</td>\r\n			<td style=\"height:18px; width:75px\">\r\n<p>\r\n					0.3-0.7</p>\r\n</td>\r\n			<td style=\"height:18px; width:84px\">\r\n<p>\r\n					7.0-11.2</p>\r\n</td>\r\n			<td style=\"height:18px; width:97px\">\r\n<p>\r\n					20.6-49</p>\r\n</td>\r\n			<td style=\"height:18px; width:51px\">\r\n<p>\r\n					5.6</p>\r\n</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18px; width:58px\">\r\n<p>\r\n					XK80</p>\r\n</td>\r\n			<td style=\"height:18px; width:36px\">\r\n<p>\r\n					170</p>\r\n</td>\r\n			<td style=\"height:18px; width:36px\">\r\n<p>\r\n					140</p>\r\n</td>\r\n			<td style=\"height:18px; width:69px\">\r\n<p>\r\n					4-φ13</p>\r\n</td>\r\n			<td style=\"height:18px; width:36px\">\r\n<p>\r\n					275</p>\r\n</td>\r\n			<td style=\"height:18px; width:75px\">\r\n<p>\r\n					0.4-0.7</p>\r\n</td>\r\n			<td style=\"height:18px; width:84px\">\r\n<p>\r\n					15.5-24.2</p>\r\n</td>\r\n			<td style=\"height:18px; width:97px\">\r\n<p>\r\n					45.1-109.0</p>\r\n</td>\r\n			<td style=\"height:18px; width:51px\">\r\n<p>\r\n					11.5</p>\r\n</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18px; width:58px\">\r\n<p>\r\n					XK100</p>\r\n</td>\r\n			<td style=\"height:18px; width:36px\">\r\n<p>\r\n					195</p>\r\n</td>\r\n			<td style=\"height:18px; width:36px\">\r\n<p>\r\n					150</p>\r\n</td>\r\n			<td style=\"height:18px; width:69px\">\r\n<p>\r\n					4-φ13</p>\r\n</td>\r\n			<td style=\"height:18px; width:36px\">\r\n<p>\r\n					310</p>\r\n</td>\r\n			<td style=\"height:18px; width:75px\">\r\n<p>\r\n					0.5-0.7</p>\r\n</td>\r\n			<td style=\"height:18px; width:84px\">\r\n<p>\r\n					30.2-48.5</p>\r\n</td>\r\n			<td style=\"height:18px; width:97px\">\r\n<p>\r\n					60.5-220.2</p>\r\n</td>\r\n			<td style=\"height:18px; width:51px\">\r\n<p>\r\n					18</p>\r\n</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	工作原理</h2>\r\n<p>\r\n	在气动敲击锤锤没有通入压缩空气（3-7kg/cm2）的状态下，磁性活塞借助强磁力贴紧固定在基板上。电磁阀通电时，压缩空气流入气锤本体，在体内压力增高，当大于磁力时，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力，高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘，电磁阀停止通电时，压缩空气排出，于是借助返回弹簧将磁性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到原始状态。</p>\r\n<h2>\r\n	适用范围</h2>\r\n<p>\r\n	化工、食品、金属铸造、水泥、饲料工业、制药、化学、肥料、橡塑胶工业、矿业.运输设备、仓储业、污染防治等工业。</p>\r\n<h2>\r\n	产品特点</h2>\r\n<ul>\r\n	<li>\r\n		1、单击式，每次动作产生一个冲击波</li>\r\n	<li>\r\n		2、高强度的铝合金硬化处理</li>\r\n	<li>\r\n		3、冲击间隔时间可依需求调整</li>\r\n	<li>\r\n		4、利用磁铁的吸着力，使锤头产生蓄压功能，提高空气锤的冲击力</li>\r\n</ul>','','','单击式，每次动作产生一个冲击波;高强度的铝合金硬化处理;冲击间隔时间可依需求调整;利用磁铁的吸着力，使锤头产生蓄压功能，提高空气锤的冲击力。','化工、食品、金属铸造、水泥、饲料工业、制药、化学、肥料、橡塑胶工业、矿业.运输设备、仓储业、污染防治等工业。','');
INSERT INTO `cms_data` VALUES ('80','80','\"\"','<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/upfile/2025/01/1737187207627.jpg\" style=\"width: 552px; height: 379px;\">\r\n</div>\r\n<h2>\r\n	产品参数</h2>\r\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table2\">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan=\"2\">\r\n				<pre>​\r\n</pre>\r\n<p>\r\n					型号</p>\r\n</td>\r\n			<td rowspan=\"2\">\r\n<p>\r\n					结构</p>\r\n</td>\r\n			<td colspan=\"2\">\r\n<p>\r\n					冲击力（kg.m/SEC）</p>\r\n</td>\r\n			<td colspan=\"3\">\r\n<p>\r\n					尺寸</p>\r\n</td>\r\n			<td rowspan=\"2\">\r\n<p>\r\n					重量（kg）</p>\r\n</td>\r\n			<td rowspan=\"2\">\r\n<p>\r\n					输入电流（A）AC220V</p>\r\n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n<p>\r\n					AC220V</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					锤（磅）</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					D</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					d</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					L</p>\r\n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n<p>\r\n					ZYDC-05A型</p>\r\n</td>\r\n			<td rowspan=\"5\">\r\n<p>\r\n					完全密闭型</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					4.5</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					1</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					130</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					76</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					226</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					7</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					1.3</p>\r\n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n<p>\r\n					ZYDC-1A型</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					12.8</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					2</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					165</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					102</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					284</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					13</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					1.8</p>\r\n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n<p>\r\n					ZYDC-2A型</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					20</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					4</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					190</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					114</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					318</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					22</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					3.4</p>\r\n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n<p>\r\n					ZYDC-3A型</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					32</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					8</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					226</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					146</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					341</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					36</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					3.7</p>\r\n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n<p>\r\n					ZYDC-4A型</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					41</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					10</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					255</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					165</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					384</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					52</p>\r\n</td>\r\n			<td>\r\n<p>\r\n					3.9</p>\r\n</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n<h2>\r\n	产品特点</h2>\r\n<ul>\r\n	<li>\r\n		1、没有空气压缩机，防尘、防油。</li>\r\n	<li>\r\n		2、使用寿命长，高达5,000,000次的撞击</li>\r\n	<li>\r\n		3、撞击力度、撞击频率与停顿时间可通过控制盘来调节。</li>\r\n	<li>\r\n		4、可以通过控制盘来调试为自动撞击频率如：撞击一下停顿一次，撞击两下停顿一次，撞击三下停顿一次，以此类推，最高可以调试到撞击10下停顿一次。</li>\r\n	<li>\r\n		5、持续的撞击能够有效克服连续堵塞的问题。</li>\r\n	<li>\r\n		6、外罩被密封起来阻滞灰尘或者水气进入。</li>\r\n	<li>\r\n		7、自由接触的控制盘具有经久耐用的特点。</li>\r\n	<li>\r\n		8、控制盘中内置接线板可以用来连接外部信号</li>\r\n</ul>\r\n<img alt=\"\" src=\"/upfile/2025/01/1737187207965.jpg\" style=\"width: 339px; height: 214px;\"><br>\r\n<br>\r\n<br>\r\n<h2>\r\n	注意事项</h2>\r\n<ul>\r\n	<li>\r\n		1）可根据需求制作高温规格（周围温度1000C）</li>\r\n	<li>\r\n		2）不锈钢防腐型，可按照需求制作用于腐蚀性环境规格</li>\r\n	<li>\r\n		3）订货可制作直接打击型（活塞突出）</li>\r\n	<li>\r\n		4）磁力锤主体和控制盘间的电缆已经连接在主体上</li>\r\n	<li>\r\n		5）可以进行防爆和防噪的特殊设计制造</li>\r\n</ul>','','','没有空气压缩机，防尘、防油。使用寿命长，高达5,000,000次的撞击;撞击力度、撞击频率与停顿时间可通过控制盘来调节。 持续的撞击能够有效克服连续堵塞的问题。外罩被密封起来阻滞灰尘或者水气进入。自由接触的控制盘具有经久耐用的特点。控制盘中内置接线板可以用来连接外部信号','电磁锤是为了防止物料在输送过程中或在漏斗中产生架空现象而布置在漏斗侧壁或管道上，利用电磁钢的能量使活塞高速移动而给与对象物强力冲击力的锤击装置。','');
INSERT INTO `cms_data` VALUES ('81','81','\"\"','<h2>\r\n	产品简介</h2>\r\n<p>\r\n	在自动化生产过程中，常会使用各种料仓、管路、集尘器等设备。这些设备因为原料特性或装置设计问题，常会造成原料阻塞。在此情况下要解决此问题最有效的方法，就是在设备的阻塞处安装振动器，利用振动力将阻塞原料振落，顺利完成工艺过程。除了以上功能，也可以设计运用在水平输送机械、筛选机械、整列机械等，在自动化生产过程中，振动器是一种物美价廉的产品。</p>\r\n<h2>\r\n	产品参数</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table2\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"width:57px\">\r\n<p>\r\n					型号</p>\r\n</th>\r\n			<th colspan=\"3\" style=\"width:170px\">\r\n<p>\r\n					频率（VPM）</p>\r\n</th>\r\n			<th colspan=\"3\" style=\"width:170px\">\r\n<p>\r\n					振动力（N）</p>\r\n</th>\r\n			<th style=\"width:73px\">\r\n<p>\r\n					空气消耗量（l/min）</p>\r\n</th>\r\n			<th style=\"width:40px\">\r\n<p>\r\n					重量（kg）</p>\r\n</th>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:57px\">\r\n				&nbsp;</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					2kg/cm2</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					4kg/cm2</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					6kg/cm2</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					2kg/cm2</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					4kg/cm2</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					6kg/cm2</p>\r\n</td>\r\n			<td style=\"width:73px\">\r\n				&nbsp;</td>\r\n			<td style=\"width:40px\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					SK20</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					1850</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					2300</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					3200</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					120</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					260</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					430</p>\r\n</td>\r\n			<td style=\"width:73px\">\r\n<p>\r\n					110</p>\r\n</td>\r\n			<td style=\"width:40px\">\r\n<p>\r\n					0.7</p>\r\n</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n<h2>\r\n	工作原理</h2>\r\n<p>\r\n	振动器内有一两端导气的活塞，压缩空气进入后，由活塞导气至一 端产生推力，推动活塞往另一端，如此利用活塞导气与缸体进气位置的变化，使活塞在缸体内产生往复运动，通过缸体传递振动力。</p>\r\n<h2>\r\n	产品特点</h2>\r\n<ul>\r\n	<li>\r\n		连续振动，振动频率、振动力可调。</li>\r\n	<li>\r\n		振动频率、振动力变化容易，即使在运转中亦可调整。</li>\r\n	<li>\r\n		体积小、构造简单最适合于薄板及小型料仓，可快速的运转及停止，不会造成过度振动，对设备损坏最小。</li>\r\n	<li>\r\n		以压缩空气为动力，不会产生火花，操作安全简单，可用于防爆及潮湿，高温的恶劣环境。</li>\r\n	<li>\r\n		种类齐全，使用者可依需要选用。</li>\r\n</ul>\r\n<h2>\r\n	外形及安装尺寸</h2>\r\n<p>\r\n	<img alt=\"\" src=\"/upfile/2025/01/1737187293251.jpg\" style=\"width: 553px; height: 481px;\"></p>\r\n<br>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				型号</th>\r\n			<th>\r\n				A</th>\r\n			<th>\r\n				B</th>\r\n			<th>\r\n				C</th>\r\n			<th>\r\n				ΦD</th>\r\n			<th>\r\n				H</th>\r\n			<th>\r\n				进气</th>\r\n			<th>\r\n				排气</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				SK80</td>\r\n			<td>\r\n				82</td>\r\n			<td>\r\n				46</td>\r\n			<td>\r\n				M36</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n			<td>\r\n				3/8</td>\r\n			<td>\r\n				3/8</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	注意事项</h2>\r\n<ul>\r\n	<li>\r\n		1、 安装时，振动器要有一定斜度，以便于下次起振。</li>\r\n	<li>\r\n		2、 气动振动器与连接板连接牢靠后，再通气，以免将下面的尼龙垫振坏。</li>\r\n	<li>\r\n		3、 要经常检查连接螺丝是否松动，螺丝松动将会造成振动器损坏。</li>\r\n	<li>\r\n		4、 要间歇使用振动器，可延长使用寿</li>\r\n</ul>','','','连续振动，振动频率、振动力可调;振动频率、振动力变化容易，即使在运转中亦可调整;体积小、构造简单最适合于薄板及小型料仓，可快速的运转及停止，不会造成过度振动，对设备损坏最小;以压缩空气为动力，不会产生火花，操作安全简单，可用于防爆及潮湿，高温的恶劣环境;种类齐全，使用者可依需要选用。','1、该产品防爆防潮，适用于不同行业的物料堵塞以及易爆防火花的工作环境。 2、可安装在水平输送机械、筛选机械、环保机械、除尘机械、锅炉清灰渣等。 3、在自动化生产过程中，振动器是一种物美价廉的产品。','');
INSERT INTO `cms_data` VALUES ('82','82','\"\"','<img alt=\"\" src=\"/upfile/2025/01/1737187363827.png\" style=\"width: 502px; height: 372px;\"><br>\r\n<br>\r\n<h2>\r\n	外形尺寸</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				型号</th>\r\n			<th>\r\n				DN(mm)</th>\r\n			<th>\r\n				Φ1</th>\r\n			<th>\r\n				Φ2</th>\r\n			<th>\r\n				n-d</th>\r\n			<th>\r\n				H</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				SK-30</td>\r\n			<td>\r\n				Φ44</td>\r\n			<td>\r\n				Φ80</td>\r\n			<td>\r\n				Φ60</td>\r\n			<td>\r\n				4-Φ9</td>\r\n			<td>\r\n				132</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				SK-40</td>\r\n			<td>\r\n				Φ52</td>\r\n			<td>\r\n				Φ90</td>\r\n			<td>\r\n				Φ71</td>\r\n			<td>\r\n				4-Φ11</td>\r\n			<td>\r\n				144</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				SK-60</td>\r\n			<td>\r\n				Φ70</td>\r\n			<td>\r\n				Φ120</td>\r\n			<td>\r\n				Φ95</td>\r\n			<td>\r\n				4-Φ14</td>\r\n			<td>\r\n				206</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br>\r\n<h2>\r\n	产品简介</h2>\r\n<p>\r\n	在自动化生产过程中，常会使用各种料仓、管路、集尘器等设备。这些设备因为原料特性或装置设计问题，常会造成原料阻塞。在此情况下要解决此问题最有效的方法，就是在设备的阻塞处安装振动器，利用振动力将阻塞原料振落，顺利完成工艺过程。除了以上功能，也可以设计运用在水平输送机械、筛选机械、整列机械等，在自动化生产过程中，振动器是一种物美价廉的产品。</p>\r\n<h2>\r\n	工作原理</h2>\r\n<p>\r\n	振动器内有一两端导气的活塞，压缩空气进入后，由活塞导气至一端产生推力，推动活塞往另一端，如此利用活塞导气与缸体进气位置的变化，使活塞在缸体内产生往复运动，通过缸体传递振动力。</p>\r\n<h2>\r\n	型号参数</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table2\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"width:57px\">\r\n<p>\r\n					型号</p>\r\n</th>\r\n			<th colspan=\"3\" style=\"width:170px\">\r\n<p>\r\n					频率（VPM）</p>\r\n</th>\r\n			<th colspan=\"3\" style=\"width:170px\">\r\n<p>\r\n					振动力（N）</p>\r\n</th>\r\n			<th style=\"width:73px\">\r\n<p>\r\n					空气消耗量（l/min）</p>\r\n</th>\r\n			<th style=\"width:40px\">\r\n<p>\r\n					重量（kg）</p>\r\n</th>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:57px\">\r\n				&nbsp;</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					2kg/cm2</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					4kg/cm2</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					6kg/cm2</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					2kg/cm2</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					4kg/cm2</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					6kg/cm2</p>\r\n</td>\r\n			<td style=\"width:73px\">\r\n				&nbsp;</td>\r\n			<td style=\"width:40px\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					SK-30</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					1765</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					2308</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					2857</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					195</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					380</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					560</p>\r\n</td>\r\n			<td style=\"width:73px\">\r\n<p>\r\n					230</p>\r\n</td>\r\n			<td style=\"width:40px\">\r\n<p>\r\n					1.8</p>\r\n</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					SK-40</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					1333</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					1677</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					1875</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					275</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					531</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					715</p>\r\n</td>\r\n			<td style=\"width:73px\">\r\n<p>\r\n					249</p>\r\n</td>\r\n			<td style=\"width:40px\">\r\n<p>\r\n					3.2</p>\r\n</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					SK-60</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					1000</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					1200</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					1340</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					404</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					780</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p>\r\n					1030</p>\r\n</td>\r\n			<td style=\"width:73px\">\r\n<p>\r\n					269</p>\r\n</td>\r\n			<td style=\"width:40px\">\r\n<p>\r\n					6.1</p>\r\n</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br>\r\n<h2>\r\n	产品特点</h2>\r\n<ul>\r\n	<li>\r\n		连续振动，振动频率、振动力可调。</li>\r\n	<li>\r\n		振动频率、振动力变化容易，即使在运转中亦可调整。</li>\r\n	<li>\r\n		体积小、构造简单最适合于薄板及小型料仓，可快速的运转及停止，不会造成过度振动，对设备损坏最小。</li>\r\n	<li>\r\n		以压缩空气为动力，不会产生火花，操作安全简单，可用于防爆及潮湿，高温的恶劣环境。</li>\r\n	<li>\r\n		种类齐全，使用者可依需要选用。</li>\r\n</ul>\r\n<h2>应用范围</h2>\r\n<ul>\r\n	<li>1、	该产品防爆防潮，适用于不同行业的物料堵塞以及易爆防火花的工作环境。</li>\r\n<li>2、	可安装在水平输送机械、筛选机械、环保机械、除尘机械、锅炉清灰渣等。</li>\r\n<li>3、	在自动化生产过程中，振动器是一种物美价廉的产品。</li></ul>','','','连续振动，振动频率、振动力可调;振动频率、振动力变化容易，即使在运转中亦可调整;体积小、构造简单最适合于薄板及小型料仓，可快速的运转及停止，不会造成过度振动，对设备损坏最小;以压缩空气为动力，不会产生火花，操作安全简单，可用于防爆及潮湿，高温的恶劣环境;种类齐全，使用者可依需要选用。','1、该产品防爆防潮，适用于不同行业的物料堵塞以及易爆防火花的工作环境。 2、可安装在水平输送机械、筛选机械、环保机械、除尘机械、锅炉清灰渣等。 3、在自动化生产过程中，振动器是一种物美价廉的产品。','');
INSERT INTO `cms_data` VALUES ('83','83','\"\"','<img alt=\"\" src=\"/upfile/2025/01/1737187419687.png\" style=\"width: 547px; height: 488px;\"><br>\r\n<br>\r\n<h2>\r\n	型号和参数</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table2\" style=\"width:574px\">\r\n	<tbody>\r\n		<tr>\r\n			<th style=\"width:57px\">\r\n<p style=\"text-align: center;\">\r\n					型号</p>\r\n</th>\r\n			<th colspan=\"3\" style=\"width:170px\">\r\n<p style=\"text-align: center;\">\r\n					频率（VPM）</p>\r\n</th>\r\n			<th colspan=\"3\" style=\"width:170px\">\r\n<p style=\"text-align: center;\">\r\n					振动力（N）</p>\r\n</th>\r\n			<th style=\"width:168px\">\r\n<p style=\"text-align: center;\">\r\n					空气消耗量（l/min）</p>\r\n</th>\r\n			<th style=\"width:79px\">\r\n<p style=\"text-align: center;\">\r\n					重量（kg）</p>\r\n</th>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 57px; text-align: center;\">\r\n				&nbsp;</td>\r\n			<td style=\"width:57px\">\r\n<p style=\"text-align: center;\">\r\n					2kg/cm2</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p style=\"text-align: center;\">\r\n					4kg/cm2</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p style=\"text-align: center;\">\r\n					6kg/cm2</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p style=\"text-align: center;\">\r\n					2kg/cm2</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p style=\"text-align: center;\">\r\n					4kg/cm2</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p style=\"text-align: center;\">\r\n					6kg/cm2</p>\r\n</td>\r\n			<td style=\"width: 98px; text-align: center;\">\r\n				&nbsp;</td>\r\n			<td style=\"width: 79px; text-align: center;\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:57px\">\r\n<p style=\"text-align: center;\">\r\n					SK80</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p style=\"text-align: center;\">\r\n					1280</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p style=\"text-align: center;\">\r\n					1610</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p style=\"text-align: center;\">\r\n					2080</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p style=\"text-align: center;\">\r\n					252</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p style=\"text-align: center;\">\r\n					548</p>\r\n</td>\r\n			<td style=\"width:57px\">\r\n<p style=\"text-align: center;\">\r\n					825</p>\r\n</td>\r\n			<td style=\"width:98px\">\r\n<p style=\"text-align: center;\">\r\n					119-295</p>\r\n</td>\r\n			<td style=\"width:79px\">\r\n<p style=\"text-align: center;\">\r\n					5.9</p>\r\n</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br>\r\n<h2>\r\n	工作原理</h2>\r\n<p>\r\n	气动直线振动器，利用空气压缩机排出的高压气体，通过气管接入产品进气孔。当气体推动活塞上行，活塞上气室内气体受到挤压，受挤压的气体通过排气孔排出。当活塞上行至终点时，气体通过槽和气道自动切换通气方向，使气体进入活塞上气室，高压气体推压活塞下行至终点，第一次循环结束。第二次循环开始，依次不断地往复循环使振动器产生平动和晃动，从而产生振动力。</p>\r\n<h2>\r\n	产品特点</h2>\r\n<ul>\r\n	<li>\r\n		连续振动，振动频率、振动力可调。通过调整气压大小可使产品的振动频率、振动力发生变化，可广泛用于不同的场合。</li>\r\n	<li>\r\n		振动频率、振动力变化容易，即使在运转中亦可调整。</li>\r\n	<li>\r\n		体积小、构造简单最适合于薄板及小型料仓，可快速的运转及停止，不会造成过度振动，对设备损坏最小。</li>\r\n	<li>\r\n		以压缩空气为动力，不会产生火花，操作安全简单，可用于防爆及潮湿，高温的恶劣环境。</li>\r\n</ul>','','','连续振动，振动频率、振动力可调;振动频率、振动力变化容易，即使在运转中亦可调整;体积小、构造简单最适合于薄板及小型料仓，可快速的运转及停止，不会造成过度振动，对设备损坏最小;不会产生火花，操作安全简单，可用于防爆及潮湿，高温的恶劣环境','1、该产品防爆防潮，适用于不同行业的物料堵塞以及易爆防火花的工作环境。 2、可安装在水平输送机械、筛选机械、环保机械、除尘机械、锅炉清灰渣等。 3、在自动化生产过程中，振动器是一种物美价廉的产品。','');
INSERT INTO `cms_data` VALUES ('84','84','\"\"','<h2>\r\n	工作原理</h2>\r\n<p>\r\n	打开二位三通电磁阀，高压气体通过通道进入活塞下腔，推动活塞上行，活塞上腔气体被挤压通过排气孔排出。当活塞上行到终点时，气体通过槽和气道自动换向使气体进入活塞上腔，高压气体压活塞下行至终端，第一循环结束，第二循环开始。依次不断的往复循环使激振器产生平动和晃动，从而产生振动力。活塞两端是低压区产生背压，故而不撞击。</p>\r\n<h2>\r\n	性能参数</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n				型号</th>\r\n			<th>\r\n				H</th>\r\n			<th>\r\n				Φ1</th>\r\n			<th>\r\n				Φ2</th>\r\n			<th>\r\n				Φ3</th>\r\n			<th>\r\n				d</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n	</tbody>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				ZYFP-32</td>\r\n			<td>\r\n				100</td>\r\n			<td>\r\n				58</td>\r\n			<td>\r\n				96</td>\r\n			<td>\r\n				70</td>\r\n			<td>\r\n				8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZYFP-40</td>\r\n			<td>\r\n				130</td>\r\n			<td>\r\n				66</td>\r\n			<td>\r\n				104</td>\r\n			<td>\r\n				78</td>\r\n			<td>\r\n				8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZYFP-50</td>\r\n			<td>\r\n				130</td>\r\n			<td>\r\n				76</td>\r\n			<td>\r\n				114</td>\r\n			<td>\r\n				88</td>\r\n			<td>\r\n				8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZYFP-60</td>\r\n			<td>\r\n				140</td>\r\n			<td>\r\n				94</td>\r\n			<td>\r\n				138</td>\r\n			<td>\r\n				108</td>\r\n			<td>\r\n				10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZYFP-80</td>\r\n			<td>\r\n				140</td>\r\n			<td>\r\n				115</td>\r\n			<td>\r\n				160</td>\r\n			<td>\r\n				130</td>\r\n			<td>\r\n				10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZYFP-100</td>\r\n			<td>\r\n				150</td>\r\n			<td>\r\n				136</td>\r\n			<td>\r\n				188</td>\r\n			<td>\r\n				154</td>\r\n			<td>\r\n				12</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"pro_table\">\r\n	<thead>\r\n		<tr>\r\n			<th rowspan=\"2\">\r\n				型号</th>\r\n			<th>\r\n				振动力（N）</th>\r\n			<th>\r\n				频率(HZ/s)</th>\r\n			<th>\r\n				耗气量(l/min)</th>\r\n			<th>\r\n				使用温度℃</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n	</tbody>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				ZYFP-32</td>\r\n			<td>\r\n				480-720</td>\r\n			<td>\r\n				10-40</td>\r\n			<td>\r\n				210</td>\r\n			<td>\r\n				0-65</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZYFP-40</td>\r\n			<td>\r\n				632-1150</td>\r\n			<td>\r\n				10-35</td>\r\n			<td>\r\n				250</td>\r\n			<td>\r\n				0-65</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZYFP-50</td>\r\n			<td>\r\n				710-1300</td>\r\n			<td>\r\n				10-30</td>\r\n			<td>\r\n				270</td>\r\n			<td>\r\n				0-65</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZYFP-60</td>\r\n			<td>\r\n				923-1910</td>\r\n			<td>\r\n				10-25</td>\r\n			<td>\r\n				310</td>\r\n			<td>\r\n				0-65</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZYFP-80</td>\r\n			<td>\r\n				1100-2400</td>\r\n			<td>\r\n				5-20</td>\r\n			<td>\r\n				330</td>\r\n			<td>\r\n				0-65</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				ZYFP-100</td>\r\n			<td>\r\n				1382-3880</td>\r\n			<td>\r\n				5-15</td>\r\n			<td>\r\n				350</td>\r\n			<td>\r\n				0-65</td>\r\n		</tr>\r\n	</tbody>\r\n</table>','','','在空间任意方向安装使用;防爆、防尘;在管路上加装节流阀，可调节频率和振幅;使用方便，只需用一根通气管即可;振动力大;寿命长;材质为碳钢和不锈钢两种','振动力大，但噪音不超过80dB，解决物料严重粘壁、堵塞、混凝土灌浆模板振动，不锈钢的用在食品和制药行业','');
INSERT INTO `cms_data` VALUES ('164','164','\"\"','气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>通过压缩空气为动力，瞬间释放，推动内部的锤头打击底部，将强力冲力传递给料斗壁面，有效地击破物料所构成的拱桥，使积料松动，所以<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>能达到卸灰顺畅的目的。<br>\r\n<p>	　　由于用于破碎岩石的主要能量主要来自于气动锤核心部件活塞撞击钻头后产生的应力波。应用有限差分原理对气动锤活塞撞击钻头发生的应力波进行数值模拟，气动锤模拟出活塞和钻头的应力波形及凿入力历程曲线，为合理设计活塞和钻头结构参数提供了依据。提高气动锤的性能、延长气动锤及其钻头的使用寿命、提高气动锤破岩效率是当前发展气动锤的主要任务。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339521826.jpg\" alt=\"气动敲击\"></p>\r\n当然，正常安装时，将加强板或槽钢焊接在仓壁上，用螺栓及螺母将气动锤底座固定，注意气动锤的底座必须紧贴加强板上，确保冲击锤头垂直撞击加强板，防止侧向受力。装好保险用钢绳，气锤的安装就好了。<br>','','','','','');
INSERT INTO `cms_data` VALUES ('165','165','\"\"','由于<a href=\"http://www.zyjxdz.com\">敲击锤</a>全铝结构强度高，单击式冲击力度大，重量轻，冲击间隔时间可调整，所以<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>撞击力大，结构简单，使用方便.可有效解决粉体物料粘壁、挂料、堵塞、架桥等情况。\r\n<p>	　　可以分为单作用式与连续作业式两大类：单作用式：电磁阀控制；连续作业：自动控制连续作业。利用锤头内部有一强磁力磁铁，在未动作前，磁性锤头紧贴在磁力基板上，当三通电磁阀通电，进气压力大于贴合磁力时，磁性锤头高速脱离基板，向底部冲击;冲击后，三通电磁阀断电，产品内气体排除，锤头复位。而空气锤的冲击力传递到管道或桶仓壁，使物料能够顺利流动。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339509410.jpg\" alt=\"气动敲击锤\"></p>\r\n同时，其噪音小，多种型号可供选择。使用时间超过三个月，应及时拆洗，拆洗时只需松开上法兰四只偏心螺母即可，拉出钢套进行清洗并涂上小量润滑油，以保证磁性活塞正常。','','','','','');
INSERT INTO `cms_data` VALUES ('166','166','\"\"','国内从事<a href=\"http://www.zyjxdz.com\">敲击锤</a>工具生意的商铺数量正在不断的攀升，这表明气动工具产品具有优越的市场环境，也具有可观的发展前景。<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>就是其中的佼佼者，广受人们好评。\r\n<p>	　　随着越来越多的经营商向品牌化经营路线方向迈进，为满足不同消费者的市场需求，气动工具正向以下几方面方向发展：机电一体化方向。为了精确达到预先设定的目标，需采用气、电信号之间转换；精密化方向。为使气缸定位更回精确，使用传感器、比例阀等实现 精密反馈控制；组合化、智能化放向。在物料搬运过程中，已经使用了气缸、摆动气缸和真空吸盘的组合体。而移动小物品是将导向器的两只气缸分别按X、Y 轴组合而成，还配有电磁阀、程控器，结构紧凑，占用空间小。</p>\r\n<p style=\"text-align:center;\">	<img src=\"/upfile/2025/01/1737339495529.jpg\" alt=\"气动敲击锤\"></p>\r\n另外，安装时，方锥形桶槽比圆锥形桶槽振动传播效率差,建议对边安装两台效果较好。使用槽型钢固定架,可提升振动器的振动力,有助于桶槽或管道中的物料流动顺畅。','','','','','');
INSERT INTO `cms_data` VALUES ('167','167','','	　　<a href=\"http://www.zyjxdz.com\">敲击锤</a>的冲击力，传递到管道或桶仓壁，使物料能够顺利流动。冲击力和动作时间可控制，安装方便。可在防爆、多粉尘、潮湿等环境中使用。	　　在<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>没有通入压缩空气的状态下，磁性活塞借助强磁力贴紧固定在基板上。三通电磁阀通电时，压缩空气流入气动敲击锤本体，本体内的压力增高，当大于磁力时，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力。高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘。三通电磁阀停止通电时，本体内的压缩空气通过三通电磁阀排出，于是借助返回弹簧将磁性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到初始状态。	　　而且，随着节能减排、低碳环保理念深入人心，人们对机电产品舒适、节能、安全的功能要求也越来越高。那些节能减排效果显著，同时方便、耐用的气动敲击锤体现出了其核心竞争力。受到了广泛的支持和欢迎，近年来的发展呈现出了快速上升的可喜趋势。                        ','','','','','');
INSERT INTO `cms_data` VALUES ('168','168','','	　　当通电后，<a href=\"http://www.zyjxdz.com/\" target=\"_blank\"><a href=\"http://www.zyjxdz.com\">敲击锤</a>厂家</a>产品压缩空气进入<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>本体，本体内的压力增高，当压力大于磁力时活塞就会高速的脱离基板，由于强磁力产生的反作用力产生很强的反抗力。	　　<a href=\"http://www.zyjxdz.com/\" target=\"_blank\"><a href=\"http://www.zyjxdz.com\">敲击锤厂家</a></a>产品无需用空气压缩机，封闭型外壳防水防尘。使用寿命长，平时无需修理，高达5,000,000次的撞击。可以间隔、连续敲打，现场持续的撞击能够有效解决连续堵塞问题。使用控制器的调节，可以改变冲击力。通过电磁锤控制器实现循环和单点控制由控制盘进行参数设定，液晶显示实时运行状态。一定要安装一个安全链，确保连接在电磁锤的外壳上。尤其是当电磁锤安装在一个高位置的情况下显得尤为重要。这样可以有效避免电磁锤可能从基座板上掉落的潜在事故。	　　本<a href=\"http://www.zyjxdz.com/\" target=\"_blank\">敲击锤厂家</a>产品突出重视环保，注重噪音对人体听觉、心脏的伤害。 利用压缩空气为动力源，不产生火花，操作安全简单，防爆防潮，并要针对不同行业原料流动阻塞原料振落下来，达到自动化生产的目的。                        ','','','','','');
INSERT INTO `cms_data` VALUES ('169','169','','	　　安阳市卓易机械电子有限公司是国内生产<a href=\"http://www.zyjxdz.com/\" target=\"_blank\"><a href=\"http://www.zyjxdz.com\">敲击锤</a></a>品种最全、型号最大的生产企业。该品种为碳钢结构、耐高温使用寿命长等特点。	　　气动锤有防爆装置，这样我就就可以放心使用，不会害怕气动锤会产生危险；<a href=\"http://www.zyjxdz.com/\" target=\"_blank\">敲击锤</a>的压强是可以认为调节的。如果冲击力度小，我们可以给气动锤加压；如果冲击力度大，我们就可以给气动锤降压。气动锤可以通过接力配管实现同时控制多台气动锤，如果链接过多，要把气动锤的打击时间设置在1秒钟以上；气动锤在安装的时候要穿戴好安全帽、安全鞋。<a href=\"http://www.zyjxdz.com/\" target=\"_blank\">敲击锤</a>在最佳状态下作业；气动锤长期使用，锤头因为长时间工作会使磁铁裂碎，应该更换锤头。	　　在<a href=\"http://www.zyjxdz.com/\" target=\"_blank\">敲击锤</a>没有通入压缩空气（3-6kg/cm2）的状态下，磁性活塞借助强磁力贴紧固定在基板上。电磁阀通电时，压缩空气流入气锤本体，在体内压力增高。                        ','','','','','');
INSERT INTO `cms_data` VALUES ('170','170','','&nbsp; &nbsp; 气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>是国内外通用的先进落粉装置，被多次改良，派生出很多新品种。产品新颖、独特。用以自动防止粉体在管路、料斗、料仓输送中产生的粘附、堵塞和架桥，而对设备的器壁均不会产生操作和变形，广泛应用于化工、化肥、食品、陶瓷、玻璃、水泥、制药、塑料、燃料等粉体加工行业。<br />&nbsp; &nbsp; 在<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>没有通入压缩空气(3Kg/cm 以上)的状态下，磁性活塞借助强磁力贴紧固定在基板上。三通电磁阀通电时，压缩空气流入气动敲击锤本体，本体内的压力增高，当大于磁力时，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力。高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘。三通电磁阀停止通电时气动敲击锤本体内的压缩空气通过三通电磁阀排出，于是借助返回弹簧将磁性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到初始状态。<br />&nbsp; &nbsp; 空气锤锤头内部有一强磁力磁铁，在未动作前，磁性锤头紧贴在磁力基板上。当三通电磁阀通电，进气压力大于贴合磁力时，磁性锤头高速脱离基板，向底部冲击。冲击后，三通电磁阀断电，产品内气体排除，锤头借助弹簧回复至初始位置。空气锤的冲击力，传递到管道或桶仓壁，使物料能够顺利流动。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('171','171','','&nbsp; &nbsp; 气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>是国内外通用的先进落粉装置，被多次改良，派生出很多新品种。产品新颖、独特。用以自动防止粉体在管路、料斗、料仓输送中产生的粘附、堵塞和架桥，而对设备的器壁均不会产生操作和变形，广泛应用于化工、化肥、食品、陶瓷、玻璃、水泥、制药、塑料、燃料等粉体加工行业。<br />&nbsp; &nbsp; <a href=\"http://www.zyjxdz.com\">敲击锤厂家</a>的气动敲击器在运转过程中无需添加任何润滑油。因此不存在漏油隐患，十分适合用于工厂内的工作环境。产品采用气动供气系统、无需安装滴油器的特点不但可以降低设备成本还可减轻滴油器维修负担，对使用客户益处甚多。产品通过100万次敲击次数试验检测。构造简单基本无需保养。高设计水准的耐用性能及简单的构造基本无需保养，因此无需另备库存备。<br />&nbsp; &nbsp; 敲击锤厂家气动振动器由挤压成形的铝质壳体制造，。对于特殊环境下的应用，如制药工业等，壳体可以由不锈钢制成。其内有一钢珠或转子在轨上高速回转而产生离心力。适合在灰尘或潮湿的工作环境使用。在进气口与排气口有标准的管螺纹，使保证顺畅排气功能。具有二个垂着与二个水平安装孔以方便安装在任何困难安装的位置。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('172','172','','　　空气<a href=\"http://www.zyjxdz.com\">敲击锤</a>其特点是撞击力大,结构简单,使用方便. 可有效解决粉体物料生产过程中的粘壁、挂料、堵塞、架桥等情况且对料仓无损伤和变形。冲击力大，噪音小，多种型号可供选择。冲击力和动作时间可控制，安装方便。可在防爆、多粉尘、潮湿等环境中使用。广泛适用于化肥,化工,食品,医疗,农药,玻璃,水泥等行业。<br />　　在<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>没有通入压缩空气(3Kg/cm以上)的状态下，磁性活塞借助强磁力贴紧固定在基板上。三通电磁阀通电时，压缩空气流入气动敲击锤本体，本体内的压力增高，当大于磁力时，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力。高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘。三通电磁阀停止通电时气动敲击锤本体内的压缩空气通过三通电磁阀排出，于是借助返回弹簧将磁性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到初始状态。利用锤头内部有一强磁力磁铁，在未动作前，磁性锤头紧贴在磁力基板上，当三通电磁阀通电，进气压力大于贴合磁力时，磁性锤头高速脱离基板，向底部冲击;冲击后，三通电磁阀断电，产品内气体排除，锤头复位。而空气锤的冲击力传递到管道或桶仓壁，使物料能够顺利流动。广泛应用于化工、化肥、农药、水泥、燃料等粉类加工行业。<br />　　气动振动器由铝合金（不锈钢）壳体、小钢珠及特制的高硬度环形运动轨道等构成，通过气动振动器本身自带的进气口接入压缩空气后开始工作。产品具有无需维护、润滑，高加速度（启动），空气消耗量小、离心力大可调、振幅可调等特点（同时气动振动器在工作时会产生一定的噪音）。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('173','173','','　　为了消除漏斗滑槽、管道、罐体等发生的粉末附着、堵塞、鼠洞、拱形架空、桥形架空等现象而制造的装置。活塞杆在冲击时靠磁力浮起，因此耐久性超群。可以集中连续冲击，对除去粘附物发挥强大效果。并且，通过控制箱旋钮可以简单进行冲击力强弱的调整，还没有外部信号端子以便联动控制成为可能。<br />　　电磁铁在工业中的地位十分重要，是一种基本的电器，号称为“电器之王”。磁铁与除铁设备市场的不断发展和竞争的加剧，用户不仅对电磁铁与除铁设备的质量有了更高要求，而且对生产效率也提出了更高的要求。为了提高电磁铁与除铁设备的质量和生产效率，丰富我国产品种类，提升行业产品知名度，推动中国电磁铁与除铁设备行业发展，促进国内外电磁铁与除铁设备技术的研究和应用，组织一些活动。<br />　　电磁铁是一个带有铁心的通电螺线管，电磁铁的磁性大小与通电电流与螺线管的匝数有关。磁铁工作原理： 电磁铁的工作原理就是采用电磁感应原理，主要运用毕奥-沙瓦定律与基尔霍夫定律进行磁场设计、计算。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('174','174','','　　在气动<a href=\"http://www.zyjxdz.com\">敲击锤</a>没有通入压缩空气(3Kg/cm以上)的状态下，磁性活塞借助强磁力贴紧固定在基板上。三通电磁阀通电时，压缩空气流入<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>本体，本体内的压力增高，当大于磁力时，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力。高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘。三通电磁阀停止通电时气动敲击锤本体内的压缩空气通过三通电磁阀排出，于是借助返回弹簧将磁性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到初始状态。<br />　　利用锤头内部有一强磁力磁铁，在未动作前，磁性锤头紧贴在磁力基板上，当三通电磁阀通电，进气压力大于贴合磁力时，磁性锤头高速脱离基板，向底部冲击;冲击后，三通电磁阀断电，产品内气体排除，锤头复位。而空气锤的冲击力传递到管道或桶仓壁，使物料能够顺利流动。广泛应用于化工、化肥、农药、水泥、燃料等粉类加工行业。<br />　　通过压缩空气为动力，瞬间释放，推动内部的锤头打击底部，将强力冲力传递给料斗壁面，有效地击破物料所构成的拱桥，使积料松动，达到卸灰顺畅的目的。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('175','175','','　　<a href=\"http://www.zyjxdz.com\">敲击锤</a>是国内外通用的先进落粉装置，被多次改良，派生出很多新品种。产品新颖、独特。用以自动防止粉体在管路、料斗、料仓输送中产生的粘附、堵塞和架桥，而对设备的器壁均不会产生操作和变形，广泛应用于化工、化肥、食品、陶瓷、玻璃、水泥、制药、塑料、燃料等粉体加工行业。<br />　　敲击锤在运转过程中无需添加任何润滑油。因此不存在漏油隐患，十分适合用于工厂内的工作环境。产品采用气动供气系统、无需安装滴油器的特点不但可以降低设备成本还可减轻滴油器维修负担，对使用客户益处甚多。<br />　　敲击锤特点是撞击力大,结构简单,使用方便.可有效解决粉体物料粘壁、挂料、堵塞、架桥等情况。冲击力大，噪音小，多种型号可供选择。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('176','176','','　　<a href=\"http://www.zyjxdz.com/\" target=\"_blank\">气动</a><a href=\"http://www.zyjxdz.com\">敲击锤</a>的安装位置要合理：不合理的安装位置，既削弱了振动力，又损害了气锤本身。如图1，也就是不要对称安装，要交叉安装，另外不要少于L/3，否则影响振动力。<br />　　在<a href=\"http://www.zyjxdz.com\">气动敲击锤</a>没有通入压缩空气（3-6kg/cm2）的状态下，磁性活塞借助强磁力贴紧固定在基板上。电磁阀通电时，压缩空气流入气锤本体，在体内压力增高，当大于磁力时，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力，高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘，电磁阀停止通电时，压缩空气排出，于是借助返回弹簧将磁性活塞缓慢上升再靠近基板，通过磁力密接在基板上回复到原始状态。<br />　　气动敲击锤用以自动防止粉体在管路、料斗、料仓输送中产生的粘附、堵塞和架桥，而对设备的器壁均不会产生操作和变形，广泛应用于化工、化肥、食品、陶瓷、玻璃、水泥、制药、塑料、燃料等粉体加工行业。<br />                        ','','','','','');
INSERT INTO `cms_data` VALUES ('177','177','','　　<a href=\"http://www.zyjxdz.com/\" target=\"_blank\"><a href=\"http://www.zyjxdz.com\">敲击锤</a></a>由于强磁力的反作用力产生很强的反击力。高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘。<br />　　敲击锤产品广泛应用于化工、机械、食品、饲料、水泥、制药、矿业等所有加工粉体的行业。<br />　　敲击锤其特点是撞击力大,结构简单,使用方便.可有效解决粉体物料粘壁、挂料、堵塞、架桥等情况。冲击力大，噪音小，可在防爆、多粉尘、潮湿等环境中使用。<br />                        ','','','','','');
-- -----------------------------
-- Records of `cms_field`
-- -----------------------------
INSERT INTO `cms_field` VALUES ('1','1','栏目缩略图','mycat_thumb','5','0','1','','','varchar(255) DEFAULT NULL','','0','1','0','0','0','','','','','','','0','1');
INSERT INTO `cms_field` VALUES ('2','1','栏目Banner','mycat_banner','5','0','1','','','varchar(255) DEFAULT NULL','','0','1','0','0','0','','','','','','','0','1');
INSERT INTO `cms_field` VALUES ('3','2','工作原理','mywork_principle','12','0','0','','','text','','0','1','1','0','0','','','','','','','0','0');
INSERT INTO `cms_field` VALUES ('4','2','性能参数','myperformance','12','0','0','','','text','','0','1','1','0','0','','','','','','','0','0');
INSERT INTO `cms_field` VALUES ('5','2','产品特点','myfeatures','8','0','0','','','text','','0','1','0','0','0','','','','','','','0','1');
INSERT INTO `cms_field` VALUES ('6','2','应用范围','myapplication','8','0','0','','','text','','0','1','0','0','0','','','','','','','0','1');
INSERT INTO `cms_field` VALUES ('8','2','产品图片','myproduct_pic','5','0','1','','','varchar(255) DEFAULT NULL','','0','1','0','0','0','','','','','','','0','0');
-- -----------------------------
-- Records of `cms_file`
-- -----------------------------
INSERT INTO `cms_file` VALUES ('4','/upfile/2025/01/1737165783387.jpg','banner_01.jpg','.jpg','122876','1','1737165783','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('5','/upfile/2025/01/1737165811665.jpg','banner_02.jpg','.jpg','122911','1','1737165811','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('3','/upfile/2025/01/1737165560211.jpg','banner.jpg','.jpg','118797','1','1737165560','1','192.168.1.88','1');
INSERT INTO `cms_file` VALUES ('6','/upfile/2025/01/1737166118907.jpg','banner_03.jpg','.jpg','123419','1','1737166118','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('7','/upfile/2025/01/1737166159459.jpg','banner_05.jpg','.jpg','129762','1','1737166159','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('8','/upfile/2025/01/1737166174394.jpg','banner_06.jpg','.jpg','106307','1','1737166174','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('9','/upfile/2025/01/1737166209992.jpg','banner_04.jpg','.jpg','109602','1','1737166209','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('10','/upfile/2025/01/1737169782527.jpg','pro03.jpg','.jpg','43322','1','1737169782','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('11','/upfile/2025/01/1737169859345.jpg','dp.jpg','.jpg','6442','1','1737169859','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('12','/upfile/2025/01/1737169889933.gif','gif-01.gif','.gif','62','1','1737169889','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('13','/upfile/2025/01/1737169923359.jpg','zhengshu3.jpg','.jpg','3285','1','1737169923','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('14','/upfile/2025/01/1737169930388.jpg','zhengshu3.jpg','.jpg','3285','1','1737169930','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('15','/upfile/2025/01/1737169934799.jpg','zhengshu1.jpg','.jpg','3638','1','1737169934','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('16','/upfile/2025/01/1737169941964.png','cerz.png','.png','107842','1','1737169941','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('17','/upfile/2025/01/1737170164988.jpg','pro_8.jpg','.jpg','11082','1','1737170164','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('18','/upfile/2025/01/1737170183849.jpg','pro_9.jpg','.jpg','12379','1','1737170183','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('19','/upfile/2025/01/1737170196414.jpg','pro_10.jpg','.jpg','13109','1','1737170196','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('20','/upfile/2025/01/1737170212102.jpg','pro_11.jpg','.jpg','9776','1','1737170212','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('21','/upfile/2025/01/1737170227650.jpg','pro_12.jpg','.jpg','9398','1','1737170227','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('22','/upfile/2025/01/1737170239552.jpg','pro_13.jpg','.jpg','10083','1','1737170239','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('23','/upfile/2025/01/1737170251250.jpg','pro_14.jpg','.jpg','7899','1','1737170251','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('24','/upfile/2025/01/1737171200299.jpg','project01.jpg','.jpg','89078','1','1737171200','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('25','/upfile/2025/01/1737171246662.jpg','project02.jpg','.jpg','90897','1','1737171246','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('26','/upfile/2025/01/1737171293299.jpg','project03.jpg','.jpg','130176','1','1737171293','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('27','/upfile/2025/01/1737171305720.jpg','project05.jpg','.jpg','92894','1','1737171305','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('28','/upfile/2025/01/1737171308431.jpg','project04.jpg','.jpg','99847','1','1737171308','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('29','/upfile/2025/01/1737171478826.jpg','project05.jpg','.jpg','92894','1','1737171478','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('30','/upfile/2025/01/1737171494119.jpg','project06.jpg','.jpg','54618','1','1737171494','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('31','/upfile/2025/01/1737171508487.jpg','project07.jpg','.jpg','111977','1','1737171508','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('32','/upfile/2025/01/1737171519388.jpg','project08.jpg','.jpg','79813','1','1737171519','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('33','/upfile/2025/01/1737171530417.jpg','project09.jpg','.jpg','100647','1','1737171530','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('34','/upfile/2025/01/1737171542726.jpg','project10.jpg','.jpg','91371','1','1737171542','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('35','/upfile/2025/01/1737171553328.jpg','project11.jpg','.jpg','115006','1','1737171553','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('36','/upfile/2025/01/1737171562825.jpg','project12.jpg','.jpg','122957','1','1737171562','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('37','/upfile/2025/01/1737173711529.png','weixin_qcode.png','.png','32009','1','1737173711','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('38','/upfile/2025/01/1737174575833.jpg','banner_about.jpg','.jpg','41648','1','1737174575','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('39','/upfile/2025/01/1737174592623.jpg','banner_product.jpg','.jpg','46943','1','1737174592','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('40','/upfile/2025/01/1737174619723.jpg','banner_news.jpg','.jpg','60308','1','1737174619','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('41','/upfile/2025/01/1737174632124.jpg','banner_project.jpg','.jpg','38727','1','1737174632','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('42','/upfile/2025/01/1737174645600.jpg','banner_service.jpg','.jpg','40550','1','1737174645','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('43','/upfile/2025/01/1737174680807.jpg','banner_download.jpg','.jpg','33416','1','1737174680','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('44','/upfile/2025/01/1737174692690.jpg','banner_contactus.jpg','.jpg','32188','1','1737174692','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('45','/upfile/2025/01/1737181199263.jpg','20180803223529.jpg','.jpg','19861','1','1737181199','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('46','/upfile/2025/01/1737181199634.jpg','20180803225610.jpg','.jpg','21710','1','1737181199','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('47','/upfile/2025/01/1737181200144.jpg','20180803225812.jpg','.jpg','70076','1','1737181200','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('48','/upfile/2025/01/1737181720802.jpg','zyqd.jpg','.jpg','35068','1','1737181720','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('49','/upfile/2025/01/1737182649123.jpg','GGGG.jpg','.jpg','8080','1','1737182649','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('50','/upfile/2025/01/1737182659620.jpg','sk20.jpg','.jpg','54647','1','1737182659','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('51','/upfile/2025/01/1737183368140.jpg','zdptjiegou.jpg','.jpg','32603','1','1737183368','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('52','/upfile/2025/01/1737183378725.jpg','zdpt.jpg','.jpg','22827','1','1737183378','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('53','/upfile/2025/01/1737183470957.png','1442996483.png','.png','42155','1','1737183470','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('54','/upfile/2025/01/1737183470323.png','1442996498.png','.png','24165','1','1737183470','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('55','/upfile/2025/01/1737183479138.jpg','zydz.jpg','.jpg','39062','1','1737183479','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('56','/upfile/2025/01/1737184586274.png','Snipaste_2025-01-18_15-15-49.png','.png','4148','1','1737184586','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('57','/upfile/2025/01/1737186342967.jpg','dc-1.jpg','.jpg','44676','1','1737186342','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('58','/upfile/2025/01/1737186419988.jpg','20160311123944.jpg','.jpg','24100','1','1737186419','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('59','/upfile/2025/01/1737186419275.jpg','20160311123956.jpg','.jpg','12087','1','1737186419','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('60','/upfile/2025/01/1737186431729.jpg','sxkzq.jpg','.jpg','62969','1','1737186431','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('61','/upfile/2025/01/1737186527831.jpg','dz-s.jpg','.jpg','37498','1','1737186527','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('62','/upfile/2025/01/1737186649420.jpg','dccbzdq.jpg','.jpg','27196','1','1737186649','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('63','/upfile/2025/01/1737186720266.jpg','zyfbzdq.jpg','.jpg','18967','1','1737186720','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('64','/upfile/2025/01/1737186770560.jpg','zyx-5image003.jpg','.jpg','97235','1','1737186770','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('65','/upfile/2025/01/1737186784125.jpg','zyx-5.jpg','.jpg','43820','1','1737186784','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('66','/upfile/2025/01/1737186840349.png','image001.png','.png','26810','1','1737186840','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('67','/upfile/2025/01/1737186855710.jpg','zyx-5.jpg','.jpg','43820','1','1737186855','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('68','/upfile/2025/01/1737186872653.jpg','zydz.jpg','.jpg','39062','1','1737186872','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('69','/upfile/2025/01/1737186951561.jpg','k25.jpg','.jpg','32100','1','1737186951','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('70','/upfile/2025/01/1737187010921.jpg','sde.jpg','.jpg','34897','1','1737187010','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('71','/upfile/2025/01/1737187019496.jpg','k_qdqjc.jpg','.jpg','78187','1','1737187019','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('72','/upfile/2025/01/1737187087244.png','20160314104223.png','.png','101057','1','1737187087','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('73','/upfile/2025/01/1737187088230.png','20160314104234.png','.png','63810','1','1737187088','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('74','/upfile/2025/01/1737187097448.png','xkqdc.png','.png','171254','1','1737187097','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('75','/upfile/2025/01/1737187207627.jpg','image003.jpg','.jpg','18975','1','1737187207','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('76','/upfile/2025/01/1737187207965.jpg','image004.jpg','.jpg','7789','1','1737187207','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('77','/upfile/2025/01/1737187216595.jpg','zydc.jpg','.jpg','45188','1','1737187216','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('78','/upfile/2025/01/1737187293251.jpg','20160321172844.jpg','.jpg','13005','1','1737187293','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('79','/upfile/2025/01/1737187303516.jpg','sk20.jpg','.jpg','54647','1','1737187303','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('80','/upfile/2025/01/1737187363827.png','20160314173139.png','.png','102235','1','1737187363','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('81','/upfile/2025/01/1737187372345.jpg','sk304060.jpg','.jpg','71761','1','1737187372','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('82','/upfile/2025/01/1737187419687.png','20160314174329.png','.png','75961','1','1737187419','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('83','/upfile/2025/01/1737187434928.jpg','sk80.jpg','.jpg','49929','1','1737187434','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('84','/upfile/2025/01/1737187492715.jpg','zyfp.jpg','.jpg','41678','1','1737187492','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('85','/upfile/2025/01/1737188041704.jpg','dz-s.jpg','.jpg','37498','1','1737188041','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('86','/upfile/2025/01/1737188082501.jpg','zyls.jpg','.jpg','80660','1','1737188082','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('87','/upfile/2025/01/1737196813108.jpg','logo.jpg','.jpg','13873','1','1737196813','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('88','/upfile/2025/01/1737196842783.gif','defaultpic.gif','.gif','5606','1','1737196842','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('89','/upfile/2025/01/1737202443243.jpg','Snipaste_2025-01-18_20-03-27.jpg','.jpg','36667','1','1737202443','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('90','/upfile/2025/01/1737202477760.jpg','Snipaste_2025-01-18_20-10-05.jpg','.jpg','45418','1','1737202477','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('91','/upfile/2025/01/1737203396423.jpg','Snipaste_2025-01-18_20-29-37.jpg','.jpg','178312','1','1737203396','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('92','/upfile/2025/01/1737203466903.jpg','Snipaste_2025-01-18_20-30-41.jpg','.jpg','37983','1','1737203466','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('93','/upfile/2025/01/1737203631917.jpg','ss.jpg','.jpg','35121','1','1737203631','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('94','/upfile/2025/01/1737288017461.jpg','qdqjc.jpg','.jpg','63165','1','1737288017','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('95','/upfile/2025/01/1737289706966.jpg','145F1EE13410-61631.jpg','.jpg','38598','1','1737289706','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('96','/upfile/2025/01/1737289737894.jpg','145F1A9232930-345Y.jpg','.jpg','35177','1','1737289737','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('97','/upfile/2025/01/1737289777906.jpg','145F1EC95210-54554.jpg','.jpg','5844','1','1737289777','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('98','/upfile/2025/01/1737289785487.jpg','145F1EB55130-46131.jpg','.jpg','3697','1','1737289785','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('99','/upfile/2025/01/1737289797632.jpg','145F1EAL2Z-3T26.jpg','.jpg','7208','1','1737289797','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('100','/upfile/2025/01/1737289809363.jpg','145F1E6095T0-29562.jpg','.jpg','8780','1','1737289809','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('101','/upfile/2025/01/1737289819513.jpg','145F1E601a50-13021.jpg','.jpg','8780','1','1737289819','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('102','/upfile/2025/01/1737289858809.jpg','145F1A9114950-22003.jpg','.jpg','9621','1','1737289858','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('103','/upfile/2025/01/1737289870113.jpg','145F1AWOQ0-125M.jpg','.jpg','30277','1','1737289870','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('104','/upfile/2025/01/1737289919668.jpg','pro_8.jpg','.jpg','11082','1','1737289919','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('105','/upfile/2025/01/1737289967545.jpg','k_qdqjc.jpg','.jpg','78187','1','1737289967','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('106','/upfile/2025/01/1737289983498.jpg','145F1A441D50-54161.jpg','.jpg','4900','1','1737289984','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('107','/upfile/2025/01/1737289995857.jpg','145F1A411QP-4G53.jpg','.jpg','6993','1','1737289995','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('108','/upfile/2025/01/1737290007447.jpg','145F1A3U3C0-34605.jpg','.jpg','7362','1','1737290007','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('109','/upfile/2025/01/1737290022486.jpg','145F1A2cU50-25605.jpg','.jpg','7825','1','1737290022','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('110','/upfile/2025/01/1737290034105.jpg','145F1A23612Z-142Y.jpg','.jpg','29103','1','1737290034','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('111','/upfile/2025/01/1737339495529.jpg','145F1A9232930-345Y.jpg','.jpg','35177','1','1737339495','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('112','/upfile/2025/01/1737339509410.jpg','145F1A9114950-22003.jpg','.jpg','9621','1','1737339509','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('113','/upfile/2025/01/1737339521826.jpg','145F1AWOQ0-125M.jpg','.jpg','30277','1','1737339521','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('114','/upfile/2025/01/1737339529408.jpg','145F1A4L1940-D256.jpg','.jpg','41977','1','1737339529','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('115','/upfile/2025/01/1737339564993.jpg','145F1A441D50-54161.jpg','.jpg','4900','1','1737339564','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('116','/upfile/2025/01/1737339586714.jpg','145F1A411QP-4G53.jpg','.jpg','6993','1','1737339586','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('117','/upfile/2025/01/1737339610915.jpg','145F1A23612Z-142Y.jpg','.jpg','29103','1','1737339610','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('118','/upfile/2025/01/1737339673442.jpg','145F1A3U3C0-34605.jpg','.jpg','7362','1','1737339673','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('119','/upfile/2025/01/1737339696262.jpg','145F1A2cU50-25605.jpg','.jpg','7825','1','1737339696','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('120','/upfile/2025/01/1737339793193.jpg','145F1EE13410-61631.jpg','.jpg','38598','1','1737339793','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('121','/upfile/2025/01/1737339802365.jpg','145F1EC95210-54554.jpg','.jpg','5844','1','1737339802','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('122','/upfile/2025/01/1737339810677.jpg','145F1EB55130-46131.jpg','.jpg','3697','1','1737339810','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('123','/upfile/2025/01/1737339819673.jpg','145F1EAL2Z-3T26.jpg','.jpg','7208','1','1737339819','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('124','/upfile/2025/01/1737339833971.jpg','145F1E6095T0-29562.jpg','.jpg','8780','1','1737339833','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('125','/upfile/2025/01/1737339842578.jpg','145F1E601a50-13021.jpg','.jpg','8780','1','1737339842','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('126','/upfile/2025/01/1737339851621.jpg','145F1E5150930-632X.jpg','.jpg','41977','1','1737339851','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('127','/upfile/2025/01/1737339861516.jpg','145F1E4T3340-55V8.jpg','.jpg','4900','1','1737339861','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('128','/upfile/2025/01/1737339871777.jpg','145F1E4B52Z-45O1.jpg','.jpg','6993','1','1737339871','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('129','/upfile/2025/01/1737339879445.jpg','145F1E40202P-32Y5.jpg','.jpg','7362','1','1737339879','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('130','/upfile/2025/01/1737339888411.jpg','145F1E39601Z-25Z3.jpg','.jpg','7825','1','1737339888','1','192.168.1.88','0');
INSERT INTO `cms_file` VALUES ('131','/upfile/2025/01/1737339897657.jpg','145F1E3T40P-13201.jpg','.jpg','29103','1','1737339897','1','192.168.1.88','0');
-- -----------------------------
-- Records of `cms_file_group`
-- -----------------------------
INSERT INTO `cms_file_group` VALUES ('1','pbanner','0','1');
-- -----------------------------
-- Records of `cms_link`
-- -----------------------------
-- -----------------------------
-- Records of `cms_log`
-- -----------------------------
INSERT INTO `cms_log` VALUES ('1','','/qingcms/?m=admin&c=index&a=check','验证码不正确','123.53.37.9','1736846474');
INSERT INTO `cms_log` VALUES ('2','admin','/qingcms/?m=admin&c=index&a=check','登录成功','123.53.37.9','1736846478');
INSERT INTO `cms_log` VALUES ('3','admin','/qingcms/?m=admin&c=config&a=index&id=1','保存成功','123.53.37.9','1736846501');
INSERT INTO `cms_log` VALUES ('4','admin','/qingcms/?m=admin&c=plug&a=install&type=1&name=collect&id=266','未绑定官网账号','123.53.37.9','1736846586');
INSERT INTO `cms_log` VALUES ('5','admin','/qingcms/?m=admin&c=theme&a=config','应用成功','123.53.37.9','1736848640');
INSERT INTO `cms_log` VALUES ('6','admin','/qingcms/?m=admin&c=category&a=add&fid=0','添加成功','123.53.37.9','1736848695');
INSERT INTO `cms_log` VALUES ('7','admin','/qingcms/?m=admin&c=category&a=edit&id=1&fid=0','保存成功','123.53.37.9','1736848717');
INSERT INTO `cms_log` VALUES ('8','admin','/qingcms/?m=admin&c=config&a=index&id=2','保存成功','123.53.37.9','1736848760');
INSERT INTO `cms_log` VALUES ('9','admin','/admin/index/check.html','登录成功','123.53.37.9','1736849511');
INSERT INTO `cms_log` VALUES ('10','admin','/admin/config/index/id/2.html','保存成功','123.53.37.9','1736849564');
INSERT INTO `cms_log` VALUES ('11','admin','/admin/config/index/id/5.html','保存成功','123.53.37.9','1736849625');
INSERT INTO `cms_log` VALUES ('12','admin','/admin/config/index/id/2.html','保存成功','123.53.37.9','1736849763');
INSERT INTO `cms_log` VALUES ('13','admin','/?m=admin&c=category&a=edit&id=1&fid=0','保存成功','123.53.37.9','1736849864');
INSERT INTO `cms_log` VALUES ('14','admin','/?m=admin&c=content&a=page&classid=1','保存成功','123.53.37.9','1736849910');
INSERT INTO `cms_log` VALUES ('15','admin','/?m=admin&c=category&a=edit&id=5&fid=0','保存成功','123.53.37.9','1736849952');
INSERT INTO `cms_log` VALUES ('16','admin','/?m=admin&c=content&a=page&classid=5','保存成功','123.53.37.9','1736849967');
INSERT INTO `cms_log` VALUES ('17','admin','/?m=admin&c=category&a=add&fid=2','添加成功','123.53.37.9','1736850022');
INSERT INTO `cms_log` VALUES ('18','admin','/?m=admin&c=content&a=add&classid=6','添加成功','123.53.37.9','1736850090');
INSERT INTO `cms_log` VALUES ('19','admin','/?m=admin&c=content&a=add&classid=6','添加成功','123.53.37.9','1736850109');
INSERT INTO `cms_log` VALUES ('20','admin','/?m=admin&c=content&a=add&classid=6','添加成功','123.53.37.9','1736850124');
INSERT INTO `cms_log` VALUES ('21','admin','/?m=admin&c=index&a=check','登录成功','192.168.1.88','1737108540');
INSERT INTO `cms_log` VALUES ('22','admin','/?m=admin&c=config&a=index&id=1','保存成功','192.168.1.88','1737108694');
INSERT INTO `cms_log` VALUES ('23','admin','/?m=admin&c=book&a=switchs&id=1','修改成功','192.168.1.88','1737108770');
INSERT INTO `cms_log` VALUES ('24','admin','/?m=admin&c=book&a=switchs&id=1','修改成功','192.168.1.88','1737108772');
INSERT INTO `cms_log` VALUES ('25','admin','/?m=admin&c=theme&a=config','应用成功','192.168.1.88','1737108955');
INSERT INTO `cms_log` VALUES ('26','admin','/?m=admin&c=theme&a=config','应用成功','192.168.1.88','1737162410');
INSERT INTO `cms_log` VALUES ('27','admin','/?m=admin&c=config&a=index&id=7','保存成功','192.168.1.88','1737163196');
INSERT INTO `cms_log` VALUES ('28','admin','/?m=admin&c=config&a=index&id=7','保存成功','192.168.1.88','1737163206');
INSERT INTO `cms_log` VALUES ('29','admin','/?m=admin&c=plug&a=install&type=1&name=collect&id=266','未绑定官网账号','192.168.1.88','1737163287');
INSERT INTO `cms_log` VALUES ('30','admin','/?m=admin&c=bind&a=index','绑定成功','192.168.1.88','1737163358');
INSERT INTO `cms_log` VALUES ('31','admin','/?m=admin&c=plug&a=install&type=1&name=collect&id=266','安装成功','192.168.1.88','1737163379');
INSERT INTO `cms_log` VALUES ('32','admin','/?m=admin&c=plug&a=install&type=1&name=backup&id=265','安装成功','192.168.1.88','1737163385');
INSERT INTO `cms_log` VALUES ('33','admin','/?m=admin&c=plug&a=install&type=1&name=chatglm&id=369','安装成功','192.168.1.88','1737163392');
INSERT INTO `cms_log` VALUES ('34','admin','/?m=plug&c=admin&a=add&p=collect','/?m=plug&c=admin&a=pageset&p=collect&id=1','192.168.1.88','1737163439');
INSERT INTO `cms_log` VALUES ('35','admin','/?m=plug&c=admin&a=pageset&p=collect&id=1','/?m=plug&c=admin&a=contentset&p=collect&id=1','192.168.1.88','1737163621');
INSERT INTO `cms_log` VALUES ('36','admin','/?m=plug&c=admin&a=contentset&p=collect&id=1','保存成功','192.168.1.88','1737163703');
INSERT INTO `cms_log` VALUES ('37','admin','/?m=plug&c=admin&a=contentset&p=collect&id=1','保存成功','192.168.1.88','1737163810');
INSERT INTO `cms_log` VALUES ('38','admin','/?m=plug&c=admin&a=edit&p=collect&id=1','/?m=plug&c=admin&a=pageset&p=collect&id=1','192.168.1.88','1737163843');
INSERT INTO `cms_log` VALUES ('39','admin','/?m=plug&c=admin&a=pageset&p=collect&id=1','/?m=plug&c=admin&a=contentset&p=collect&id=1','192.168.1.88','1737163846');
INSERT INTO `cms_log` VALUES ('40','admin','/?m=plug&c=admin&a=contentset&p=collect&id=1','保存成功','192.168.1.88','1737163849');
INSERT INTO `cms_log` VALUES ('41','admin','/?m=admin&c=content&a=copy&id=11','复制成功','192.168.1.88','1737164025');
INSERT INTO `cms_log` VALUES ('42','admin','/?m=admin&c=content&a=copy&id=12','复制成功','192.168.1.88','1737164029');
INSERT INTO `cms_log` VALUES ('43','admin','/?m=admin&c=content&a=del&id=53','删除成功','192.168.1.88','1737164054');
INSERT INTO `cms_log` VALUES ('44','admin','/?m=admin&c=content&a=del&id=52','删除成功','192.168.1.88','1737164057');
INSERT INTO `cms_log` VALUES ('45','admin','/?m=admin&c=category&a=edit&id=7&fid=0','保存成功','192.168.1.88','1737164634');
INSERT INTO `cms_log` VALUES ('46','admin','/?m=admin&c=upload&a=addgroup','添加成功','192.168.1.88','1737165541');
INSERT INTO `cms_log` VALUES ('47','admin','/?m=admin&c=plug&a=install&type=1&name=attachment&id=264','安装成功','192.168.1.88','1737165587');
INSERT INTO `cms_log` VALUES ('48','admin','/?m=plug&c=admin&a=move&p=attachment','操作成功','192.168.1.88','1737165602');
INSERT INTO `cms_log` VALUES ('49','admin','/?m=plug&c=admin&a=del&p=attachment&id=2','删除成功','192.168.1.88','1737165606');
INSERT INTO `cms_log` VALUES ('50','admin','/?m=plug&c=admin&a=del&p=attachment&id=1','删除成功','192.168.1.88','1737165609');
INSERT INTO `cms_log` VALUES ('51','admin','/?m=admin&c=ad&a=addad&cid=1','添加成功','192.168.1.88','1737165774');
INSERT INTO `cms_log` VALUES ('52','admin','/?m=admin&c=ad&a=addad&cid=1','添加成功','192.168.1.88','1737165802');
INSERT INTO `cms_log` VALUES ('53','admin','/?m=admin&c=ad&a=addad&cid=1','名称已存在','192.168.1.88','1737165829');
INSERT INTO `cms_log` VALUES ('54','admin','/?m=admin&c=ad&a=addad&cid=1','添加成功','192.168.1.88','1737165833');
INSERT INTO `cms_log` VALUES ('55','admin','/?m=admin&c=ad&a=addad&cid=1','添加成功','192.168.1.88','1737166125');
INSERT INTO `cms_log` VALUES ('56','admin','/?m=admin&c=ad&a=addad&cid=1','添加成功','192.168.1.88','1737166164');
INSERT INTO `cms_log` VALUES ('57','admin','/?m=admin&c=ad&a=addad&cid=1','添加成功','192.168.1.88','1737166178');
INSERT INTO `cms_log` VALUES ('58','admin','/?m=admin&c=ad&a=addad&cid=1','添加成功','192.168.1.88','1737166213');
INSERT INTO `cms_log` VALUES ('59','admin','/?m=admin&c=block&a=add','添加成功','192.168.1.88','1737169602');
INSERT INTO `cms_log` VALUES ('60','admin','/?m=admin&c=block&a=edit&root=YTc4OTg5YXFPU3hEWjZFM1NUUHRkcGNKa1Y2a1EyYnhTbG5yQ253MGlFNU1rd3NoeVVmUUV2c0MvSjZJYlE=','保存成功','192.168.1.88','1737169785');
INSERT INTO `cms_log` VALUES ('61','admin','/?m=admin&c=content&a=page&classid=5','保存成功','192.168.1.88','1737169903');
INSERT INTO `cms_log` VALUES ('62','admin','/?m=admin&c=content&a=page&classid=1','保存成功','192.168.1.88','1737169944');
INSERT INTO `cms_log` VALUES ('63','admin','/?m=admin&c=field&a=add&mid=1','添加成功','192.168.1.88','1737170102');
INSERT INTO `cms_log` VALUES ('64','admin','/?m=admin&c=category&a=edit&id=8&fid=2','保存成功','192.168.1.88','1737170168');
INSERT INTO `cms_log` VALUES ('65','admin','/?m=admin&c=category&a=edit&id=9&fid=2','保存成功','192.168.1.88','1737170186');
INSERT INTO `cms_log` VALUES ('66','admin','/?m=admin&c=category&a=edit&id=10&fid=2','保存成功','192.168.1.88','1737170199');
INSERT INTO `cms_log` VALUES ('67','admin','/?m=admin&c=category&a=edit&id=11&fid=2','保存成功','192.168.1.88','1737170215');
INSERT INTO `cms_log` VALUES ('68','admin','/?m=admin&c=category&a=edit&id=12&fid=2','保存成功','192.168.1.88','1737170229');
INSERT INTO `cms_log` VALUES ('69','admin','/?m=admin&c=category&a=edit&id=13&fid=2','保存成功','192.168.1.88','1737170241');
INSERT INTO `cms_log` VALUES ('70','admin','/?m=admin&c=category&a=edit&id=14&fid=2','保存成功','192.168.1.88','1737170254');
INSERT INTO `cms_log` VALUES ('71','admin','/?m=admin&c=content&a=add&classid=4','添加成功','192.168.1.88','1737171206');
INSERT INTO `cms_log` VALUES ('72','admin','/?m=admin&c=content&a=copy&id=54','复制成功','192.168.1.88','1737171233');
INSERT INTO `cms_log` VALUES ('73','admin','/?m=admin&c=content&a=switchs&type=2&id=55','修改成功','192.168.1.88','1737171237');
INSERT INTO `cms_log` VALUES ('74','admin','/?m=admin&c=content&a=edit&id=55&classid=0','保存成功','192.168.1.88','1737171250');
INSERT INTO `cms_log` VALUES ('75','admin','/?m=admin&c=content&a=edit&id=55&classid=0','保存成功','192.168.1.88','1737171280');
INSERT INTO `cms_log` VALUES ('76','admin','/?m=admin&c=content&a=add&classid=4','添加成功','192.168.1.88','1737171296');
INSERT INTO `cms_log` VALUES ('77','admin','/?m=admin&c=content&a=add&classid=4','添加成功','192.168.1.88','1737171311');
INSERT INTO `cms_log` VALUES ('78','admin','/?m=admin&c=content&a=add&classid=4','添加成功','192.168.1.88','1737171482');
INSERT INTO `cms_log` VALUES ('79','admin','/?m=admin&c=content&a=add&classid=4','添加成功','192.168.1.88','1737171497');
INSERT INTO `cms_log` VALUES ('80','admin','/?m=admin&c=content&a=add&classid=4','添加成功','192.168.1.88','1737171511');
INSERT INTO `cms_log` VALUES ('81','admin','/?m=admin&c=content&a=add&classid=4','添加成功','192.168.1.88','1737171522');
INSERT INTO `cms_log` VALUES ('82','admin','/?m=admin&c=content&a=add&classid=4','添加成功','192.168.1.88','1737171534');
INSERT INTO `cms_log` VALUES ('83','admin','/?m=admin&c=content&a=add&classid=4','添加成功','192.168.1.88','1737171545');
INSERT INTO `cms_log` VALUES ('84','admin','/?m=admin&c=content&a=add&classid=4','添加成功','192.168.1.88','1737171555');
INSERT INTO `cms_log` VALUES ('85','admin','/?m=admin&c=content&a=add&classid=4','添加成功','192.168.1.88','1737171565');
INSERT INTO `cms_log` VALUES ('86','admin','/?m=admin&c=config&a=index&id=1','保存成功','192.168.1.88','1737173649');
INSERT INTO `cms_log` VALUES ('87','admin','/?m=admin&c=config&a=index&id=5','保存成功','192.168.1.88','1737173721');
INSERT INTO `cms_log` VALUES ('88','admin','/?m=admin&c=config&a=index&id=7','保存成功','192.168.1.88','1737173733');
INSERT INTO `cms_log` VALUES ('89','admin','/?m=admin&c=field&a=add&mid=1','添加成功','192.168.1.88','1737174531');
INSERT INTO `cms_log` VALUES ('90','admin','/?m=admin&c=category&a=edit&id=1&fid=0','保存成功','192.168.1.88','1737174578');
INSERT INTO `cms_log` VALUES ('91','admin','/?m=admin&c=category&a=edit&id=2&fid=0','保存成功','192.168.1.88','1737174595');
INSERT INTO `cms_log` VALUES ('92','admin','/?m=admin&c=category&a=edit&id=3&fid=0','保存成功','192.168.1.88','1737174622');
INSERT INTO `cms_log` VALUES ('93','admin','/?m=admin&c=category&a=edit&id=4&fid=0','保存成功','192.168.1.88','1737174635');
INSERT INTO `cms_log` VALUES ('94','admin','/?m=admin&c=category&a=edit&id=5&fid=0','保存成功','192.168.1.88','1737174647');
INSERT INTO `cms_log` VALUES ('95','admin','/?m=admin&c=category&a=edit&id=6&fid=0','保存成功','192.168.1.88','1737174682');
INSERT INTO `cms_log` VALUES ('96','admin','/?m=admin&c=category&a=edit&id=7&fid=0','保存成功','192.168.1.88','1737174694');
INSERT INTO `cms_log` VALUES ('97','admin','/?m=admin&c=content&a=add&classid=8','添加成功','192.168.1.88','1737176540');
INSERT INTO `cms_log` VALUES ('98','admin','/?m=admin&c=content&a=add&classid=8','添加成功','192.168.1.88','1737176552');
INSERT INTO `cms_log` VALUES ('99','admin','/?m=admin&c=category&a=edit&id=6&fid=0','保存成功','192.168.1.88','1737179437');
INSERT INTO `cms_log` VALUES ('100','admin','/?m=admin&c=category&a=edit&id=4&fid=0','保存成功','192.168.1.88','1737179588');
INSERT INTO `cms_log` VALUES ('101','admin','/?m=admin&c=category&a=edit&id=2&fid=0','保存成功','192.168.1.88','1737179873');
INSERT INTO `cms_log` VALUES ('102','admin','/?m=admin&c=field&a=add&mid=2','添加成功','192.168.1.88','1737180123');
INSERT INTO `cms_log` VALUES ('103','admin','/?m=admin&c=field&a=add&mid=2','添加成功','192.168.1.88','1737180189');
INSERT INTO `cms_log` VALUES ('104','admin','/?m=admin&c=field&a=switchs&id=3','修改成功','192.168.1.88','1737180269');
INSERT INTO `cms_log` VALUES ('105','admin','/?m=admin&c=field&a=switchs&id=4','修改成功','192.168.1.88','1737180270');
INSERT INTO `cms_log` VALUES ('106','admin','/?m=admin&c=field&a=add&mid=2','添加成功','192.168.1.88','1737180373');
INSERT INTO `cms_log` VALUES ('107','admin','/?m=admin&c=field&a=add&mid=2','添加成功','192.168.1.88','1737180393');
INSERT INTO `cms_log` VALUES ('108','admin','/?m=admin&c=content&a=edit&id=66&classid=0','保存成功','192.168.1.88','1737180504');
INSERT INTO `cms_log` VALUES ('109','admin','/?m=admin&c=field&a=add&mid=0','添加成功','192.168.1.88','1737180945');
INSERT INTO `cms_log` VALUES ('110','admin','/?m=admin&c=content&a=edit&id=66&classid=0','保存成功','192.168.1.88','1737180967');
INSERT INTO `cms_log` VALUES ('111','admin','/?m=admin&c=content&a=edit&id=66&classid=8','保存成功','192.168.1.88','1737181209');
INSERT INTO `cms_log` VALUES ('112','admin','/?m=admin&c=content&a=edit&id=66&classid=8','保存成功','192.168.1.88','1737181254');
INSERT INTO `cms_log` VALUES ('113','admin','/?m=admin&c=config&a=index&id=7','保存成功','192.168.1.88','1737181398');
INSERT INTO `cms_log` VALUES ('114','admin','/?m=admin&c=config&a=index&id=7','保存成功','192.168.1.88','1737181403');
INSERT INTO `cms_log` VALUES ('115','admin','/?m=admin&c=config&a=index&id=7','保存成功','192.168.1.88','1737181467');
INSERT INTO `cms_log` VALUES ('116','admin','/?m=admin&c=category&a=edit&id=8&fid=2','保存成功','192.168.1.88','1737181491');
INSERT INTO `cms_log` VALUES ('117','admin','/?m=admin&c=category&a=edit&id=8&fid=2','保存成功','192.168.1.88','1737181529');
INSERT INTO `cms_log` VALUES ('118','admin','/?m=admin&c=category&a=edit&id=8&fid=2','保存成功','192.168.1.88','1737181542');
INSERT INTO `cms_log` VALUES ('119','admin','/?m=admin&c=content&a=edit&id=66&classid=0','保存成功','192.168.1.88','1737181566');
INSERT INTO `cms_log` VALUES ('120','admin','/?m=admin&c=category&a=edit&id=8&fid=2','保存成功','192.168.1.88','1737181632');
INSERT INTO `cms_log` VALUES ('121','admin','/?m=admin&c=content&a=edit&id=66&classid=0','保存成功','192.168.1.88','1737181672');
INSERT INTO `cms_log` VALUES ('122','admin','/?m=admin&c=field&a=del&id=7','删除成功','192.168.1.88','1737181683');
INSERT INTO `cms_log` VALUES ('123','admin','/?m=admin&c=field&a=add&mid=0','添加成功','192.168.1.88','1737181703');
INSERT INTO `cms_log` VALUES ('124','admin','/?m=admin&c=content&a=edit&id=66&classid=0','保存成功','192.168.1.88','1737181723');
INSERT INTO `cms_log` VALUES ('125','admin','/?m=admin&c=content&a=edit&id=66&classid=0','保存成功','192.168.1.88','1737182426');
INSERT INTO `cms_log` VALUES ('126','admin','/?m=admin&c=content&a=edit&id=66&classid=0','保存成功','192.168.1.88','1737182573');
INSERT INTO `cms_log` VALUES ('127','admin','/?m=admin&c=field&a=switchs&id=8','修改成功','192.168.1.88','1737182578');
INSERT INTO `cms_log` VALUES ('128','admin','/?m=admin&c=content&a=edit&id=67&classid=0','保存成功','192.168.1.88','1737182667');
INSERT INTO `cms_log` VALUES ('129','admin','/?m=admin&c=category&a=edit&id=2&fid=0','保存成功','192.168.1.88','1737182808');
INSERT INTO `cms_log` VALUES ('130','admin','/?m=admin&c=category&a=edit&id=13&fid=2','保存成功','192.168.1.88','1737183194');
INSERT INTO `cms_log` VALUES ('131','admin','/?m=admin&c=category&a=edit&id=13&fid=2','保存成功','192.168.1.88','1737183254');
INSERT INTO `cms_log` VALUES ('132','admin','/?m=admin&c=content&a=add&classid=14','添加成功','192.168.1.88','1737183396');
INSERT INTO `cms_log` VALUES ('133','admin','/?m=admin&c=content&a=add&classid=13','添加成功','192.168.1.88','1737183484');
INSERT INTO `cms_log` VALUES ('134','admin','/?m=admin&c=config&a=index&id=1','保存成功','192.168.1.88','1737184506');
INSERT INTO `cms_log` VALUES ('135','admin','/?m=admin&c=config&a=index&id=4','保存成功','192.168.1.88','1737184513');
INSERT INTO `cms_log` VALUES ('136','admin','/?m=admin&c=config&a=index&id=7','保存成功','192.168.1.88','1737184589');
INSERT INTO `cms_log` VALUES ('137','admin','/?m=admin&c=category&a=edit&id=7&fid=0','保存成功','192.168.1.88','1737184729');
INSERT INTO `cms_log` VALUES ('138','admin','/?m=admin&c=config&a=index&id=5','保存成功','192.168.1.88','1737184854');
INSERT INTO `cms_log` VALUES ('139','admin','/?m=admin&c=config&a=index&id=5','保存成功','192.168.1.88','1737184931');
INSERT INTO `cms_log` VALUES ('140','admin','/?m=admin&c=config&a=index&id=2','保存成功','192.168.1.88','1737185153');
INSERT INTO `cms_log` VALUES ('141','admin','/index.php/admin/category/edit/id/7/fid/0.html','保存成功','192.168.1.88','1737185195');
INSERT INTO `cms_log` VALUES ('142','admin','/index.php/admin/category/edit/id/6/fid/0.html','保存成功','192.168.1.88','1737185210');
INSERT INTO `cms_log` VALUES ('143','admin','/index.php/admin/category/edit/id/5/fid/0.html','保存成功','192.168.1.88','1737185221');
INSERT INTO `cms_log` VALUES ('144','admin','/index.php/admin/category/edit/id/4/fid/0.html','保存成功','192.168.1.88','1737185231');
INSERT INTO `cms_log` VALUES ('145','admin','/index.php/admin/category/edit/id/3/fid/0.html','保存成功','192.168.1.88','1737185241');
INSERT INTO `cms_log` VALUES ('146','admin','/index.php/admin/category/edit/id/2/fid/0.html','保存成功','192.168.1.88','1737185253');
INSERT INTO `cms_log` VALUES ('147','admin','/index.php/admin/category/edit/id/8/fid/2.html','保存成功','192.168.1.88','1737185280');
INSERT INTO `cms_log` VALUES ('148','admin','/index.php/admin/content/add/classid/12.html','添加成功','192.168.1.88','1737186350');
INSERT INTO `cms_log` VALUES ('149','admin','/index.php/admin/content/add/classid/12.html','添加成功','192.168.1.88','1737186441');
INSERT INTO `cms_log` VALUES ('150','admin','/index.php/admin/content/add/classid/12.html','添加成功','192.168.1.88','1737186531');
INSERT INTO `cms_log` VALUES ('151','admin','/index.php/admin/content/add/classid/11.html','添加成功','192.168.1.88','1737186601');
INSERT INTO `cms_log` VALUES ('152','admin','/index.php/admin/content/add/classid/11.html','添加成功','192.168.1.88','1737186623');
INSERT INTO `cms_log` VALUES ('153','admin','/index.php/admin/content/add/classid/11.html','添加成功','192.168.1.88','1737186633');
INSERT INTO `cms_log` VALUES ('154','admin','/index.php/admin/content/add/classid/11.html','添加成功','192.168.1.88','1737186679');
INSERT INTO `cms_log` VALUES ('155','admin','/index.php/admin/content/edit/id/75/classid/11.html','保存成功','192.168.1.88','1737186723');
INSERT INTO `cms_log` VALUES ('156','admin','/index.php/admin/content/edit/id/74/classid/11.html','保存成功','192.168.1.88','1737186787');
INSERT INTO `cms_log` VALUES ('157','admin','/index.php/admin/content/edit/id/73/classid/11.html','保存成功','192.168.1.88','1737186874');
INSERT INTO `cms_log` VALUES ('158','admin','/index.php/admin/content/add/classid/8.html','添加成功','192.168.1.88','1737186954');
INSERT INTO `cms_log` VALUES ('159','admin','/index.php/admin/content/add/classid/8.html','添加成功','192.168.1.88','1737187024');
INSERT INTO `cms_log` VALUES ('160','admin','/index.php/admin/content/add/classid/8.html','添加成功','192.168.1.88','1737187101');
INSERT INTO `cms_log` VALUES ('161','admin','/index.php/admin/content/add/classid/10.html','添加成功','192.168.1.88','1737187221');
INSERT INTO `cms_log` VALUES ('162','admin','/index.php/admin/content/add/classid/9.html','添加成功','192.168.1.88','1737187306');
INSERT INTO `cms_log` VALUES ('163','admin','/index.php/admin/content/add/classid/9.html','添加成功','192.168.1.88','1737187375');
INSERT INTO `cms_log` VALUES ('164','admin','/index.php/admin/content/add/classid/9.html','添加成功','192.168.1.88','1737187437');
INSERT INTO `cms_log` VALUES ('165','admin','/index.php/admin/content/add/classid/9.html','添加成功','192.168.1.88','1737187494');
INSERT INTO `cms_log` VALUES ('166','admin','/index.php/admin/category/edit/id/8/fid/2.html','保存成功','192.168.1.88','1737187971');
INSERT INTO `cms_log` VALUES ('167','admin','/index.php/admin/category/edit/id/9/fid/2.html','保存成功','192.168.1.88','1737187983');
INSERT INTO `cms_log` VALUES ('168','admin','/index.php/admin/category/edit/id/10/fid/2.html','保存成功','192.168.1.88','1737187993');
INSERT INTO `cms_log` VALUES ('169','admin','/index.php/admin/category/edit/id/11/fid/2.html','保存成功','192.168.1.88','1737188026');
INSERT INTO `cms_log` VALUES ('170','admin','/index.php/admin/category/edit/id/12/fid/2.html','保存成功','192.168.1.88','1737188042');
INSERT INTO `cms_log` VALUES ('171','admin','/index.php/admin/category/edit/id/13/fid/2.html','保存成功','192.168.1.88','1737188085');
INSERT INTO `cms_log` VALUES ('172','admin','/index.php/admin/category/edit/id/14/fid/2.html','保存成功','192.168.1.88','1737188100');
INSERT INTO `cms_log` VALUES ('173','admin','/index.php/admin/content/edit/id/51/classid/3.html','保存成功','192.168.1.88','1737191012');
INSERT INTO `cms_log` VALUES ('174','admin','/index.php/admin/content/del/id/51.html','删除成功','192.168.1.88','1737191022');
INSERT INTO `cms_log` VALUES ('175','admin','/index.php/admin/content/edit/id/50/classid/3.html','保存成功','192.168.1.88','1737191473');
INSERT INTO `cms_log` VALUES ('176','admin','/index.php/admin/content/edit/id/49/classid/3.html','保存成功','192.168.1.88','1737191517');
INSERT INTO `cms_log` VALUES ('177','admin','/index.php/admin/plug/install/type/1/name/replace/id/293.html','安装成功','192.168.1.88','1737191544');
INSERT INTO `cms_log` VALUES ('178','admin','/index.php/plug/replace/admin/index.html','替换成功，共计10条内容','192.168.1.88','1737191790');
INSERT INTO `cms_log` VALUES ('179','admin','/index.php/plug/replace/admin/index.html','替换成功，共计50条内容','192.168.1.88','1737191798');
INSERT INTO `cms_log` VALUES ('180','admin','/index.php/admin/content/edit/id/78/classid/8.html','保存成功','192.168.1.88','1737192582');
INSERT INTO `cms_log` VALUES ('181','admin','/index.php/admin/content/edit/id/80/classid/10.html','保存成功','192.168.1.88','1737192637');
INSERT INTO `cms_log` VALUES ('182','admin','/index.php/admin/content/edit/id/71/classid/12.html','保存成功','192.168.1.88','1737192698');
INSERT INTO `cms_log` VALUES ('183','admin','/index.php/admin/content/edit/id/71/classid/12.html','保存成功','192.168.1.88','1737192744');
INSERT INTO `cms_log` VALUES ('184','admin','/index.php/admin/content/edit/id/69/classid/13.html','保存成功','192.168.1.88','1737192799');
INSERT INTO `cms_log` VALUES ('185','admin','/index.php/admin/content/edit/id/68/classid/14.html','保存成功','192.168.1.88','1737192841');
INSERT INTO `cms_log` VALUES ('186','admin','/index.php/admin/config/index/id/1.html','保存成功','192.168.1.88','1737196818');
INSERT INTO `cms_log` VALUES ('187','admin','/index.php/admin/config/index/id/7.html','保存成功','192.168.1.88','1737196844');
INSERT INTO `cms_log` VALUES ('188','admin','/index.php/admin/config/index/id/2.html','保存成功','192.168.1.88','1737197042');
INSERT INTO `cms_log` VALUES ('189','admin','/admin/config/index/id/1.html','保存成功','192.168.1.88','1737197304');
INSERT INTO `cms_log` VALUES ('190','admin','/admin/category/edit/id/8/fid/2.html','别名只能为字母或字母和数字的组合','192.168.1.88','1737197431');
INSERT INTO `cms_log` VALUES ('191','admin','/admin/plug/install/type/1/name/push/id/374.html','安装成功','192.168.1.88','1737197461');
INSERT INTO `cms_log` VALUES ('192','admin','/admin/content/add/classid/8.html','添加成功','192.168.1.88','1737201860');
INSERT INTO `cms_log` VALUES ('193','admin','/admin/content/edit/id/85/classid/8.html','保存成功','192.168.1.88','1737202033');
INSERT INTO `cms_log` VALUES ('194','admin','/admin/content/edit/id/85/classid/8.html','保存成功','192.168.1.88','1737202394');
INSERT INTO `cms_log` VALUES ('195','admin','/admin/content/edit/id/85/classid/8.html','保存成功','192.168.1.88','1737202589');
INSERT INTO `cms_log` VALUES ('196','admin','/admin/content/edit/id/85/classid/8.html','保存成功','192.168.1.88','1737202968');
INSERT INTO `cms_log` VALUES ('197','admin','/admin/content/edit/id/85/classid/8.html','保存成功','192.168.1.88','1737203027');
INSERT INTO `cms_log` VALUES ('198','admin','/admin/content/edit/id/85/classid/8.html','保存成功','192.168.1.88','1737203108');
INSERT INTO `cms_log` VALUES ('199','admin','/admin/content/edit/id/85/classid/8.html','保存成功','192.168.1.88','1737203252');
INSERT INTO `cms_log` VALUES ('200','admin','/admin/content/edit/id/85/classid/8.html','保存成功','192.168.1.88','1737203399');
INSERT INTO `cms_log` VALUES ('201','admin','/admin/content/edit/id/85/classid/8.html','保存成功','192.168.1.88','1737203469');
INSERT INTO `cms_log` VALUES ('202','admin','/admin/content/edit/id/85/classid/8.html','保存成功','192.168.1.88','1737203498');
INSERT INTO `cms_log` VALUES ('203','admin','/admin/content/edit/id/85/classid/8.html','保存成功','192.168.1.88','1737203639');
INSERT INTO `cms_log` VALUES ('204','admin','/admin/content/edit/id/85/classid/8.html','保存成功','192.168.1.88','1737203867');
INSERT INTO `cms_log` VALUES ('205','admin','/admin/config/index/id/4.html','保存成功','192.168.1.88','1737203984');
INSERT INTO `cms_log` VALUES ('206','admin','/admin/content/edit/id/85/classid/0.html','保存成功','192.168.1.88','1737288028');
INSERT INTO `cms_log` VALUES ('207','admin','/admin/cache/clear.html','清理成功','192.168.1.88','1737288349');
INSERT INTO `cms_log` VALUES ('208','admin','/admin/content/edit/id/47/classid/0.html','保存成功','192.168.1.88','1737289711');
INSERT INTO `cms_log` VALUES ('209','admin','/admin/content/edit/id/25/classid/3.html','保存成功','192.168.1.88','1737289741');
INSERT INTO `cms_log` VALUES ('210','admin','/admin/content/edit/id/47/classid/3.html','保存成功','192.168.1.88','1737289755');
INSERT INTO `cms_log` VALUES ('211','admin','/admin/content/edit/id/47/classid/3.html','保存成功','192.168.1.88','1737289762');
INSERT INTO `cms_log` VALUES ('212','admin','/admin/content/edit/id/46/classid/3.html','保存成功','192.168.1.88','1737289778');
INSERT INTO `cms_log` VALUES ('213','admin','/admin/content/edit/id/45/classid/3.html','保存成功','192.168.1.88','1737289790');
INSERT INTO `cms_log` VALUES ('214','admin','/admin/content/edit/id/44/classid/3.html','保存成功','192.168.1.88','1737289800');
INSERT INTO `cms_log` VALUES ('215','admin','/admin/content/edit/id/43/classid/3.html','保存成功','192.168.1.88','1737289812');
INSERT INTO `cms_log` VALUES ('216','admin','/admin/content/edit/id/42/classid/3.html','保存成功','192.168.1.88','1737289822');
INSERT INTO `cms_log` VALUES ('217','admin','/admin/content/edit/id/25/classid/3.html','保存成功','192.168.1.88','1737289848');
INSERT INTO `cms_log` VALUES ('218','admin','/admin/content/edit/id/24/classid/3.html','保存成功','192.168.1.88','1737289861');
INSERT INTO `cms_log` VALUES ('219','admin','/admin/content/edit/id/23/classid/3.html','保存成功','192.168.1.88','1737289873');
INSERT INTO `cms_log` VALUES ('220','admin','/admin/content/edit/id/18/classid/3.html','保存成功','192.168.1.88','1737289973');
INSERT INTO `cms_log` VALUES ('221','admin','/admin/content/edit/id/17/classid/3.html','保存成功','192.168.1.88','1737289986');
INSERT INTO `cms_log` VALUES ('222','admin','/admin/content/edit/id/16/classid/3.html','保存成功','192.168.1.88','1737289998');
INSERT INTO `cms_log` VALUES ('223','admin','/admin/content/edit/id/15/classid/3.html','保存成功','192.168.1.88','1737290010');
INSERT INTO `cms_log` VALUES ('224','admin','/admin/content/edit/id/14/classid/3.html','保存成功','192.168.1.88','1737290026');
INSERT INTO `cms_log` VALUES ('225','admin','/admin/content/edit/id/13/classid/3.html','保存成功','192.168.1.88','1737290038');
INSERT INTO `cms_log` VALUES ('226','admin','/admin/category/add/fid/3.html','添加成功','192.168.1.88','1737292801');
INSERT INTO `cms_log` VALUES ('227','admin','/admin/category/edit/id/15/fid/3.html','保存成功','192.168.1.88','1737292810');
INSERT INTO `cms_log` VALUES ('228','admin','/admin/category/edit/id/16/fid/3.html','保存成功','192.168.1.88','1737292819');
INSERT INTO `cms_log` VALUES ('229','admin','/admin/content/move.html','操作成功','192.168.1.88','1737292857');
INSERT INTO `cms_log` VALUES ('230','admin','/admin/content/btach.html','操作成功','192.168.1.88','1737336413');
INSERT INTO `cms_log` VALUES ('231','admin','/admin/content/btach.html','操作成功','192.168.1.88','1737336421');
INSERT INTO `cms_log` VALUES ('232','admin','/admin/content/btach.html','操作成功','192.168.1.88','1737336428');
INSERT INTO `cms_log` VALUES ('233','admin','/admin/content/btach.html','操作成功','192.168.1.88','1737336433');
INSERT INTO `cms_log` VALUES ('234','admin','/plug/collect/admin/edit/id/1.html','/plug/collect/admin/pageset/id/1.html','192.168.1.88','1737336498');
INSERT INTO `cms_log` VALUES ('235','admin','/admin/upgrade/version.html','dh-tech.cn未授权，无法在线升级','192.168.1.88','1737336690');
INSERT INTO `cms_log` VALUES ('236','admin','/admin/content/add/classid/15.html','添加成功','192.168.1.88','1737336786');
INSERT INTO `cms_log` VALUES ('237','admin','/admin/content/edit/id/86/classid/15.html','别名只能为字母或字母和数字的组合','192.168.1.88','1737336897');
INSERT INTO `cms_log` VALUES ('238','admin','/admin/content/edit/id/85/classid/8.html','保存成功','192.168.1.88','1737336912');
INSERT INTO `cms_log` VALUES ('239','admin','/admin/content/edit/id/85/classid/8.html','保存成功','192.168.1.88','1737336919');
INSERT INTO `cms_log` VALUES ('240','admin','/admin/config/index/id/2.html','保存成功','192.168.1.88','1737337114');
INSERT INTO `cms_log` VALUES ('241','admin','/admin/config/index/id/2.html','保存成功','192.168.1.88','1737337158');
INSERT INTO `cms_log` VALUES ('242','admin','/admin/category/refresh.html','更新成功','192.168.1.88','1737337182');
INSERT INTO `cms_log` VALUES ('243','admin','/plug/collect/admin/pageset/id/1.html','/plug/collect/admin/contentset/id/1.html','192.168.1.88','1737338760');
INSERT INTO `cms_log` VALUES ('244','admin','/plug/collect/admin/contentset/id/1.html','保存成功','192.168.1.88','1737338849');
INSERT INTO `cms_log` VALUES ('245','admin','/admin/content/del/id/86.html','删除成功','192.168.1.88','1737338910');
INSERT INTO `cms_log` VALUES ('246','admin','/plug/collect/admin/history.html','清空成功','192.168.1.88','1737338931');
INSERT INTO `cms_log` VALUES ('247','admin','/plug/collect/admin/edit/id/1.html','/plug/collect/admin/pageset/id/1.html','192.168.1.88','1737339143');
INSERT INTO `cms_log` VALUES ('248','admin','/plug/collect/admin/pageset/id/1.html','/plug/collect/admin/contentset/id/1.html','192.168.1.88','1737339147');
INSERT INTO `cms_log` VALUES ('249','admin','/plug/collect/admin/contentset/id/1.html','保存成功','192.168.1.88','1737339154');
INSERT INTO `cms_log` VALUES ('250','admin','/admin/content/btach.html','操作成功','192.168.1.88','1737339220');
INSERT INTO `cms_log` VALUES ('251','admin','/admin/content/btach.html','操作成功','192.168.1.88','1737339225');
INSERT INTO `cms_log` VALUES ('252','admin','/plug/collect/admin/history.html','清空成功','192.168.1.88','1737339238');
INSERT INTO `cms_log` VALUES ('253','admin','/plug/collect/admin/copy/id/1.html','复制成功','192.168.1.88','1737339327');
INSERT INTO `cms_log` VALUES ('254','admin','/plug/collect/admin/edit/id/2.html','/plug/collect/admin/pageset/id/2.html','192.168.1.88','1737339346');
INSERT INTO `cms_log` VALUES ('255','admin','/plug/collect/admin/pageset/id/2.html','/plug/collect/admin/contentset/id/2.html','192.168.1.88','1737339382');
INSERT INTO `cms_log` VALUES ('256','admin','/plug/collect/admin/contentset/id/2.html','保存成功','192.168.1.88','1737339386');
INSERT INTO `cms_log` VALUES ('257','admin','/admin/content/edit/id/166/classid/16.html','保存成功','192.168.1.88','1737339500');
INSERT INTO `cms_log` VALUES ('258','admin','/admin/content/edit/id/165/classid/16.html','保存成功','192.168.1.88','1737339513');
INSERT INTO `cms_log` VALUES ('259','admin','/admin/content/edit/id/164/classid/16.html','保存成功','192.168.1.88','1737339523');
INSERT INTO `cms_log` VALUES ('260','admin','/admin/content/edit/id/159/classid/16.html','标题重复，请更换','192.168.1.88','1737339538');
INSERT INTO `cms_log` VALUES ('261','admin','/admin/content/edit/id/159/classid/16.html','保存成功','192.168.1.88','1737339546');
INSERT INTO `cms_log` VALUES ('262','admin','/admin/content/edit/id/158/classid/16.html','标题重复，请更换','192.168.1.88','1737339568');
INSERT INTO `cms_log` VALUES ('263','admin','/admin/content/edit/id/158/classid/16.html','保存成功','192.168.1.88','1737339576');
INSERT INTO `cms_log` VALUES ('264','admin','/admin/content/edit/id/157/classid/16.html','标题重复，请更换','192.168.1.88','1737339589');
INSERT INTO `cms_log` VALUES ('265','admin','/admin/content/edit/id/157/classid/16.html','保存成功','192.168.1.88','1737339595');
INSERT INTO `cms_log` VALUES ('266','admin','/admin/content/edit/id/154/classid/16.html','标题重复，请更换','192.168.1.88','1737339613');
INSERT INTO `cms_log` VALUES ('267','admin','/admin/content/edit/id/154/classid/16.html','保存成功','192.168.1.88','1737339650');
INSERT INTO `cms_log` VALUES ('268','admin','/admin/content/edit/id/156/classid/16.html','标题重复，请更换','192.168.1.88','1737339676');
INSERT INTO `cms_log` VALUES ('269','admin','/admin/content/edit/id/156/classid/16.html','保存成功','192.168.1.88','1737339680');
INSERT INTO `cms_log` VALUES ('270','admin','/admin/content/edit/id/155/classid/16.html','保存成功','192.168.1.88','1737339698');
INSERT INTO `cms_log` VALUES ('271','admin','/admin/content/edit/id/154/classid/16.html','保存成功','192.168.1.88','1737339711');
INSERT INTO `cms_log` VALUES ('272','admin','/admin/content/edit/id/141/classid/15.html','保存成功','192.168.1.88','1737339796');
INSERT INTO `cms_log` VALUES ('273','admin','/admin/content/edit/id/140/classid/15.html','保存成功','192.168.1.88','1737339804');
INSERT INTO `cms_log` VALUES ('274','admin','/admin/content/edit/id/139/classid/15.html','保存成功','192.168.1.88','1737339812');
INSERT INTO `cms_log` VALUES ('275','admin','/admin/content/edit/id/138/classid/15.html','保存成功','192.168.1.88','1737339821');
INSERT INTO `cms_log` VALUES ('276','admin','/admin/content/edit/id/137/classid/15.html','保存成功','192.168.1.88','1737339835');
INSERT INTO `cms_log` VALUES ('277','admin','/admin/content/edit/id/136/classid/15.html','保存成功','192.168.1.88','1737339844');
INSERT INTO `cms_log` VALUES ('278','admin','/admin/content/edit/id/130/classid/15.html','保存成功','192.168.1.88','1737339854');
INSERT INTO `cms_log` VALUES ('279','admin','/admin/content/edit/id/129/classid/15.html','保存成功','192.168.1.88','1737339864');
INSERT INTO `cms_log` VALUES ('280','admin','/admin/content/edit/id/128/classid/15.html','保存成功','192.168.1.88','1737339873');
INSERT INTO `cms_log` VALUES ('281','admin','/admin/content/edit/id/127/classid/15.html','保存成功','192.168.1.88','1737339882');
INSERT INTO `cms_log` VALUES ('282','admin','/admin/content/edit/id/126/classid/15.html','保存成功','192.168.1.88','1737339891');
INSERT INTO `cms_log` VALUES ('283','admin','/admin/content/edit/id/125/classid/15.html','保存成功','192.168.1.88','1737339899');
INSERT INTO `cms_log` VALUES ('284','admin','/admin/cache/clear.html','清理成功','192.168.1.88','1737341496');
INSERT INTO `cms_log` VALUES ('285','admin','/admin/category/edit/id/15/fid/3.html','保存成功','192.168.1.88','1737342648');
INSERT INTO `cms_log` VALUES ('286','admin','/admin/category/edit/id/16/fid/3.html','保存成功','192.168.1.88','1737342654');
INSERT INTO `cms_log` VALUES ('287','admin','/admin/config/index/id/1.html','保存成功','192.168.1.88','1737343428');
INSERT INTO `cms_log` VALUES ('288','admin','/admin/cache/clear.html','清理成功','192.168.1.88','1737343437');
INSERT INTO `cms_log` VALUES ('289','admin','/admin/config/index/id/1.html','保存成功','192.168.1.88','1737343456');
INSERT INTO `cms_log` VALUES ('290','admin','/admin/cache/clear.html','清理成功','192.168.1.88','1737343461');
INSERT INTO `cms_log` VALUES ('291','admin','/admin/cache/clear.html','清理成功','192.168.1.88','1737343505');
INSERT INTO `cms_log` VALUES ('292','admin','/admin/cache/clear.html','清理成功','192.168.1.88','1737343737');
INSERT INTO `cms_log` VALUES ('293','admin','/admin/configgroupfield/switchs/id/7.html','修改成功','192.168.1.88','1737343836');
INSERT INTO `cms_log` VALUES ('294','admin','/admin/configgroupfield/index/gid/1.html','保存成功','192.168.1.88','1737343850');
INSERT INTO `cms_log` VALUES ('295','admin','/admin/configgroupfield/edit/id/54.html','保存成功','192.168.1.88','1737343893');
INSERT INTO `cms_log` VALUES ('296','admin','/admin/cache/clear.html','清理成功','192.168.1.88','1737343925');
INSERT INTO `cms_log` VALUES ('297','admin','/admin/plug/install/type/1/name/sitemap/id/269.html','安装成功','192.168.1.88','1737344019');
INSERT INTO `cms_log` VALUES ('298','admin','/admin/category/edit/id/8/fid/2.html','保存成功','192.168.1.88','1737344266');
INSERT INTO `cms_log` VALUES ('299','admin','/admin/category/edit/id/9/fid/2.html','保存成功','192.168.1.88','1737344303');
INSERT INTO `cms_log` VALUES ('300','admin','/admin/category/edit/id/10/fid/2.html','保存成功','192.168.1.88','1737344398');
INSERT INTO `cms_log` VALUES ('301','admin','/admin/category/edit/id/11/fid/2.html','保存成功','192.168.1.88','1737344426');
INSERT INTO `cms_log` VALUES ('302','admin','/admin/category/edit/id/12/fid/2.html','保存成功','192.168.1.88','1737344439');
INSERT INTO `cms_log` VALUES ('303','admin','/admin/category/edit/id/13/fid/2.html','保存成功','192.168.1.88','1737344454');
INSERT INTO `cms_log` VALUES ('304','admin','/admin/category/edit/id/14/fid/2.html','保存成功','192.168.1.88','1737344469');
INSERT INTO `cms_log` VALUES ('305','admin','/admin/content/edit/id/85/classid/8.html','别名只能为字母或字母和数字的组合','192.168.1.88','1737344496');
INSERT INTO `cms_log` VALUES ('306','admin','/admin/content/edit/id/85/classid/8.html','保存成功','192.168.1.88','1737344503');
INSERT INTO `cms_log` VALUES ('307','admin','/admin/category/edit/id/15/fid/3.html','保存成功','192.168.1.88','1737345875');
INSERT INTO `cms_log` VALUES ('308','admin','/admin/category/edit/id/16/fid/3.html','保存成功','192.168.1.88','1737345901');
INSERT INTO `cms_log` VALUES ('309','admin','/admin/config/index/id/7.html','保存成功','192.168.1.88','1737346048');
INSERT INTO `cms_log` VALUES ('310','admin','/admin/config/index/id/7.html','保存成功','192.168.1.88','1737346063');
INSERT INTO `cms_log` VALUES ('311','admin','/admin/config/index/id/7.html','保存成功','192.168.1.88','1737346068');
INSERT INTO `cms_log` VALUES ('312','admin','/admin/config/index/id/7.html','保存成功','192.168.1.88','1737350657');
INSERT INTO `cms_log` VALUES ('313','admin','/admin/cache/clear.html','清理成功','192.168.1.88','1737354773');
INSERT INTO `cms_log` VALUES ('314','admin','/admin/cache/clear.html','清理成功','192.168.1.88','1737355419');
INSERT INTO `cms_log` VALUES ('315','admin','/admin/config/index/id/1.html','保存成功','192.168.1.88','1737355491');
INSERT INTO `cms_log` VALUES ('316','admin','/admin/config/index/id/1.html','保存成功','192.168.1.88','1737355523');
INSERT INTO `cms_log` VALUES ('317','admin','/admin/plug/install/type/1/name/map/id/267.html','安装成功','192.168.1.88','1737355896');
INSERT INTO `cms_log` VALUES ('318','admin','/plug/map/admin/add.html','坐标X不能为空','192.168.1.88','1737355913');
INSERT INTO `cms_log` VALUES ('319','admin','/plug/map/admin/add.html','保存成功','192.168.1.88','1737355960');
INSERT INTO `cms_log` VALUES ('320','admin','/plug/map/admin/del/id/1.html','删除成功','192.168.1.88','1737355972');
INSERT INTO `cms_log` VALUES ('321','admin','/admin/plug/del/name/map.html','卸载成功','192.168.1.88','1737355977');
INSERT INTO `cms_log` VALUES ('322','admin','/admin/category/add/fid/0.html','添加成功','192.168.1.88','1737359148');
INSERT INTO `cms_log` VALUES ('323','admin','/admin/category/edit/id/17/fid/0.html','保存成功','192.168.1.88','1737359191');
INSERT INTO `cms_log` VALUES ('324','admin','/admin/category/edit/id/17/fid/0.html','保存成功','192.168.1.88','1737359243');
INSERT INTO `cms_log` VALUES ('325','admin','/admin/category/edit/id/17/fid/0.html','保存成功','192.168.1.88','1737359461');
INSERT INTO `cms_log` VALUES ('326','admin','/admin/cache/clear.html','清理成功','192.168.1.88','1737360454');
INSERT INTO `cms_log` VALUES ('327','admin','/admin/config/index/id/1.html','保存成功','192.168.1.88','1737361957');
INSERT INTO `cms_log` VALUES ('328','admin','/admin/cache/clear.html','清理成功','192.168.1.88','1737361974');
INSERT INTO `cms_log` VALUES ('329','admin','/?m=admin&c=index&a=check','登录成功','123.53.37.9','1737367522');
INSERT INTO `cms_log` VALUES ('330','admin','/?m=admin','保存成功','123.53.37.9','1737367544');
INSERT INTO `cms_log` VALUES ('331','admin','/?m=admin','保存成功','123.53.37.9','1737367600');
INSERT INTO `cms_log` VALUES ('332','admin','/?m=admin&c=config&a=index&id=2','保存成功','123.53.37.9','1737367706');
INSERT INTO `cms_log` VALUES ('333','admin','/admin/cache/clear.html','清理成功','123.53.37.9','1737367713');
INSERT INTO `cms_log` VALUES ('334','admin','/admin/ad/editad/id/1/cid/1.html','保存成功','123.53.37.9','1737367767');
INSERT INTO `cms_log` VALUES ('335','admin','/admin/ad/editad/id/2/cid/1.html','保存成功','123.53.37.9','1737367776');
INSERT INTO `cms_log` VALUES ('336','admin','/admin/ad/editad/id/3/cid/1.html','保存成功','123.53.37.9','1737367785');
INSERT INTO `cms_log` VALUES ('337','admin','/admin/ad/editad/id/4/cid/1.html','保存成功','123.53.37.9','1737367817');
INSERT INTO `cms_log` VALUES ('338','admin','/admin/ad/editad/id/5/cid/1.html','保存成功','123.53.37.9','1737367836');
INSERT INTO `cms_log` VALUES ('339','admin','/admin/ad/editad/id/6/cid/1.html','保存成功','123.53.37.9','1737367855');
INSERT INTO `cms_log` VALUES ('340','admin','/admin/ad/editad/id/7/cid/1.html','保存成功','123.53.37.9','1737367874');
INSERT INTO `cms_log` VALUES ('341','admin','/admin/ad/editad/id/2/cid/1.html','保存成功','123.53.37.9','1737367990');
INSERT INTO `cms_log` VALUES ('342','admin','/admin/ad/editad/id/4/cid/1.html','保存成功','123.53.37.9','1737368036');
INSERT INTO `cms_log` VALUES ('343','admin','/admin/ad/editad/id/3/cid/1.html','保存成功','123.53.37.9','1737368088');
INSERT INTO `cms_log` VALUES ('344','admin','/admin/ad/editad/id/1/cid/1.html','保存成功','123.53.37.9','1737368155');
INSERT INTO `cms_log` VALUES ('345','admin','/admin/config/index/id/7.html','保存成功','123.53.37.9','1737424136');
INSERT INTO `cms_log` VALUES ('346','admin','/admin/config/index/id/7.html','保存成功','123.53.37.9','1737424141');
INSERT INTO `cms_log` VALUES ('347','admin','/admin/menu/add/fid/0.html','添加成功','123.53.37.9','1737430128');
INSERT INTO `cms_log` VALUES ('348','admin','/admin/menu/add/fid/25.html','添加成功','123.53.37.9','1737430175');
INSERT INTO `cms_log` VALUES ('349','admin','/admin/menu/edit/id/26.html','保存成功','123.53.37.9','1737430213');
INSERT INTO `cms_log` VALUES ('350','admin','/admin/menu/edit/id/26.html','保存成功','123.53.37.9','1737430271');
INSERT INTO `cms_log` VALUES ('351','admin','/admin/menu/edit/id/26.html','保存成功','123.53.37.9','1737430310');
INSERT INTO `cms_log` VALUES ('352','admin','/admin/menu/edit/id/26.html','保存成功','123.53.37.9','1737430372');
INSERT INTO `cms_log` VALUES ('353','admin','/plug/backup/admin/btach.html','操作成功','123.53.37.9','1737430401');
-- -----------------------------
-- Records of `cms_log_login`
-- -----------------------------
INSERT INTO `cms_log_login` VALUES ('1','admin','123.53.37.9','1736846474','验证码不正确','0');
INSERT INTO `cms_log_login` VALUES ('2','admin','123.53.37.9','1736846478','登录成功','1');
INSERT INTO `cms_log_login` VALUES ('3','admin','123.53.37.9','1736849511','登录成功','1');
INSERT INTO `cms_log_login` VALUES ('4','admin','192.168.1.88','1737108540','登录成功','1');
INSERT INTO `cms_log_login` VALUES ('5','admin','123.53.37.9','1737367522','登录成功','1');
-- -----------------------------
-- Records of `cms_menu`
-- -----------------------------
INSERT INTO `cms_menu` VALUES ('1','网站管理','','','','0','1','1');
INSERT INTO `cms_menu` VALUES ('2','内容管理','','','','0','3','1');
INSERT INTO `cms_menu` VALUES ('3','扩展管理','','','','0','5','1');
INSERT INTO `cms_menu` VALUES ('4','模板插件','','','','0','7','1');
INSERT INTO `cms_menu` VALUES ('5','系统管理','','','','0','9','1');
INSERT INTO `cms_menu` VALUES ('6','网站设置','config','index','','1','1','1');
INSERT INTO `cms_menu` VALUES ('7','部门管理','part','index','','1','3','1');
INSERT INTO `cms_menu` VALUES ('8','后台用户','admin','index','','1','5','1');
INSERT INTO `cms_menu` VALUES ('9','栏目管理','category','index','','2','1','1');
INSERT INTO `cms_menu` VALUES ('10','内容管理','content','index','','2','3','1');
INSERT INTO `cms_menu` VALUES ('11','模板管理','theme','index','','4','1','1');
INSERT INTO `cms_menu` VALUES ('12','区块管理','block','index','','4','3','1');
INSERT INTO `cms_menu` VALUES ('13','插件管理','plug','index','','4','5','1');
INSERT INTO `cms_menu` VALUES ('14','广告管理','ad','index','','3','1','1');
INSERT INTO `cms_menu` VALUES ('15','友情链接','link','index','','3','3','1');
INSERT INTO `cms_menu` VALUES ('16','留言管理','book','index','','3','5','1');
INSERT INTO `cms_menu` VALUES ('17','内链管理','sitelink','index','','3','7','1');
INSERT INTO `cms_menu` VALUES ('18','标签管理','tags','index','','3','9','1');
INSERT INTO `cms_menu` VALUES ('19','字段管理','field','index','','3','11','1');
INSERT INTO `cms_menu` VALUES ('20','设置分组','configgroup','index','','5','1','1');
INSERT INTO `cms_menu` VALUES ('21','后台菜单','menu','index','','5','3','1');
INSERT INTO `cms_menu` VALUES ('22','管理日志','log','index','','5','5','1');
INSERT INTO `cms_menu` VALUES ('23','错误日志','logerror','index','','5','7','1');
INSERT INTO `cms_menu` VALUES ('24','缓存管理','cache','index','','5','9','1');
INSERT INTO `cms_menu` VALUES ('25','常用插件','','','','0','0','1');
INSERT INTO `cms_menu` VALUES ('26','复检管理','plug/attachment','admin','','25','0','1');
-- -----------------------------
-- Records of `cms_page`
-- -----------------------------
INSERT INTO `cms_page` VALUES ('1','1','','<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp;安阳市卓易机械电子有限公司，致力于振动器的研制与开发，专注于解决物料堵塞的各种问题。专业生产气动振动器、气动敲击锤、电动振动器、电动敲击锤、小型电磁振动器、零速开关、振动器控制箱、电磁阀箱等产品。产品广泛应用于化工、机械、食品、饲料、水泥、制药、矿业等所有加工粉体的行业。</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp;公司拥有一支具有丰富的研发和生产经验的技术人员构成的团队，引进国外先进的技术设备、独特的工艺、完善的检测手段和科学的质量控制，结合国内产品需求实情，辅以本厂专业技术人员的精心研发、以满足不同客户的需求，且产品赢得了广大用户的一致好评。产品广泛应用于冶金、化工、环保、建材、火电、矿山、碎石场、机械、选矿、煤炭、食品、水泥、制药、化肥、粮食、铸造、陶瓷、磨料等行业中。</p>\r\n<br>\r\n<h2>\r\n	企业口号：</h2>\r\n<p>\r\n	以高品质的产品和服务为客户创造价值，绝不为短期的利益而出卖未来！</p>\r\n<h2>\r\n	企业目标：</h2>\r\n<p>\r\n	打造振动器行业知名品牌</p>\r\n<h2>\r\n	企业理念：</h2>\r\n<p>\r\n	质量铸就品牌，服务立足市场。</p>\r\n<br>\r\n<h2>\r\n	公司荣誉</h2>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img height=\"80\" src=\"/upfile/2025/01/1737169923359.jpg\" width=\"127\" alt=\"zhengshu3.jpg\"></td>\r\n			<td style=\"padding-left:20px\">\r\n				<h3>\r\n					质量达标，放心品牌</h3>\r\n<p>\r\n					经过多年孜孜不倦的设计追求与产品改进，我公司生产的数款振动器产品于2011年经国家权威检测，被定为质量达标、放心品牌，从而为公司的产品销售打开并提供了强有力的支撑与支持！</p>\r\n</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br>\r\n<br>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img height=\"80\" src=\"/upfile/2025/01/1737169934799.jpg\" width=\"127\" alt=\"zhengshu1.jpg\"></td>\r\n			<td style=\"padding-left:20px\">\r\n				<h3>\r\n					ISO9001：2000质量管理体系认证证书</h3>\r\n<p>\r\n					我司于2013年4月通过中国检验认证集团质量认证有限公司认证，取得了ISO9001:2000质量管理体系认证证书！从而更加完善我司内部组织管理，提高产品质量与竞争力，也为我司更好地与国际接轨，向海外进军...</p>\r\n</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br>\r\n<img src=\"/upfile/2025/01/1737169941964.png\" width=\"100%\" alt=\"cerz.png\">');
INSERT INTO `cms_page` VALUES ('2','5','','<p>\r\n	<span style=\"font-size:16px;\"><strong style=\"color:#c00\">企业宗旨：</strong></span>诚信为本 质量为上</p>\r\n<p>\r\n	<strong style=\"color:#c00\"><span style=\"font-size:16px;\">经营信条：</span></strong>铸卓易品牌 让用户满意 是我们永恒的追求</p>\r\n<p>\r\n	<strong style=\"color:#c00\"><span style=\"font-size:16px;\">服务宗旨：</span></strong>对每一道工序负责 对每一台产品负责 对每一位用户负责</p>\r\n<span style=\"font-size:16px;\"><strong style=\"color:#c00\">服务理念：</strong></span>\r\n<p>\r\n	卓易机械以精湛的工艺和先进技术水平赢得了许多荣誉，卓易机械更是视质量为生命，奉用户为上帝。用户就是我们的一切。我们将会一直遵循对每一道工序负责、对每一台产品负责、对每一位用户负责的质量方针，竭诚为用户服务。我们所做的一切将全力为您着想。我们深信：对您奉献一颗真诚的心同样会得到真诚的回报！</p>\r\n<p>\r\n	卓易员工已经树立了良好的服务理念：用户设备发生故障时的及时维修；售前为用户提供项目设计、工艺流程设计；用户的设备选购方案制定；优质的产品提供；耐心周到的用户培训；及时有效的故障维修以及代为用户试验解决疑难加工问题等。</p>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"\">\r\n				<br>\r\n				<span style=\"font-size:16px;\"><strong style=\"color:#c00\">服务承诺</strong></span><br>\r\n<p style=\"line-height:26px;\">\r\n					&nbsp; &nbsp;<img height=\"6\" src=\"/upfile/2025/01/1737169889933.gif\" width=\"9\" alt=\"gif-01.gif\">&nbsp;售前服务：为您提供项目设计、工艺流程设计，适合您的机器设备选购方案的制定，根据您的特殊需求，设计制造产品，为您培训技术操作人员。<br>\r\n					&nbsp;&nbsp;&nbsp;<img height=\"6\" src=\"/upfile/2025/01/1737169889933.gif\" width=\"9\">&nbsp;售中服务：陪您一起完成对设备的验收，协助拟订施工方案和详细流程。<br>\r\n					&nbsp;&nbsp;&nbsp;<img height=\"6\" src=\"/upfile/2025/01/1737169889933.gif\" width=\"9\">&nbsp;售后服务：公司派技术人员到现场指导设备安装、调试现场及培训操作人员。</p>\r\n</td>\r\n			<td class=\"\">\r\n				<img src=\"/upfile/2025/01/1737169859345.jpg\" alt=\"dp.jpg\"></td>\r\n		</tr>\r\n	</tbody>\r\n</table>');
-- -----------------------------
-- Records of `cms_part`
-- -----------------------------
-- -----------------------------
-- Records of `cms_plug_chatglm`
-- -----------------------------
-- -----------------------------
-- Records of `cms_plug_chatglm_config`
-- -----------------------------
-- -----------------------------
-- Records of `cms_plug_collect`
-- -----------------------------
INSERT INTO `cms_plug_collect` VALUES ('1','bike-产品百科','15','0','1','[\"1\",\"2\",\"9\",\"10\"]','{\"1\":{\"type\":\"2\",\"before\":\"<div>\",\"after\":\"\"},\"2\":{\"type\":\"2\",\"before\":\"</div>\",\"after\":\"\"}}','\"\"','2','https://www.zyjxdz.com/baike/list_16_{$id}.html','1','4','https://www.zyjxdz.com/baike/list_16_1.html\r\nhttps://www.zyjxdz.com/baike/list_16_2.html\r\nhttps://www.zyjxdz.com/baike/list_16_3.html\r\nhttps://www.zyjxdz.com/baike/list_16_4.html','&lt;div class=&quot;nm_bottom&quot;&gt;\r\n                                &lt;ul&gt;','&lt;/ul&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;page&quot;&gt;','&lt;a href=&quot;(.*?)&quot; title=&quot;(.*?)&quot;&gt;(.*?)&lt;/a&gt;','','0','','','&lt;div class=&quot;main-content&quot;&gt;\r\n                            &lt;h1&gt;','&lt;/h1&gt;','&lt;div class=&quot;article-content&quot;&gt;','&lt;/div&gt;\r\n                        \r\n                 &lt;div class=&quot;pro_detail03&quot;&gt;','0','','','','','1','&lt;div class=&quot;article-info&quot;&gt;','&lt;/div&gt;','0','','','0','','','0','','','\"\"','\"\"');
INSERT INTO `cms_plug_collect` VALUES ('2','info-行业动态','16','0','1','[\"1\",\"2\",\"9\",\"10\"]','{\"1\":{\"type\":\"2\",\"before\":\"<div>\",\"after\":\"\"},\"2\":{\"type\":\"2\",\"before\":\"</div>\",\"after\":\"\"}}','\"\"','2','https://www.zyjxdz.com/info/list_15_{$id}.html','1','6','https://www.zyjxdz.com/info/list_15_1.html\r\nhttps://www.zyjxdz.com/info/list_15_2.html\r\nhttps://www.zyjxdz.com/info/list_15_3.html\r\nhttps://www.zyjxdz.com/info/list_15_4.html\r\nhttps://www.zyjxdz.com/info/list_15_5.html\r\nhttps://www.zyjxdz.com/info/list_15_6.html','&lt;div class=&quot;nm_bottom&quot;&gt;\r\n                                &lt;ul&gt;','&lt;/ul&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;page&quot;&gt;','&lt;a href=&quot;(.*?)&quot; title=&quot;(.*?)&quot;&gt;(.*?)&lt;/a&gt;','','0','','','&lt;div class=&quot;main-content&quot;&gt;\r\n                            &lt;h1&gt;','&lt;/h1&gt;','&lt;div class=&quot;article-content&quot;&gt;','&lt;/div&gt;\r\n                        \r\n                 &lt;div class=&quot;pro_detail03&quot;&gt;','0','','','','','1','&lt;div class=&quot;article-info&quot;&gt;','&lt;/div&gt;','0','','','0','','','0','','','\"\"','\"\"');
-- -----------------------------
-- Records of `cms_plug_collect_history`
-- -----------------------------
INSERT INTO `cms_plug_collect_history` VALUES ('108','振动流化床干燥机运作模式','https://www.zyjxdz.com/baike/2016030376.html','1737339245');
INSERT INTO `cms_plug_collect_history` VALUES ('109','直流电磁振动器怎样交替工作','https://www.zyjxdz.com/baike/2016030377.html','1737339246');
INSERT INTO `cms_plug_collect_history` VALUES ('110','使用气动锤的时候要注意什么','https://www.zyjxdz.com/baike/2016030378.html','1737339247');
INSERT INTO `cms_plug_collect_history` VALUES ('111','沙子烘干机烘干功率包含几方面','https://www.zyjxdz.com/baike/2016030379.html','1737339248');
INSERT INTO `cms_plug_collect_history` VALUES ('112','气动敲击锤的优点及安装注意事项','https://www.zyjxdz.com/baike/2016030380.html','1737339248');
INSERT INTO `cms_plug_collect_history` VALUES ('113','怎样安全安装气动敲击锤','https://www.zyjxdz.com/baike/2016030381.html','1737339250');
INSERT INTO `cms_plug_collect_history` VALUES ('114','安阳市卓易机械电子你值得选用','https://www.zyjxdz.com/baike/2016030382.html','1737339250');
INSERT INTO `cms_plug_collect_history` VALUES ('115','一流品质-安阳卓易机械','https://www.zyjxdz.com/baike/2016030383.html','1737339251');
INSERT INTO `cms_plug_collect_history` VALUES ('116','电磁敲击锤的使用范围','https://www.zyjxdz.com/baike/2016030384.html','1737339252');
INSERT INTO `cms_plug_collect_history` VALUES ('117','敲击锤厂家对气动敲击锤使用时的一些状态的解','https://www.zyjxdz.com/baike/2016030385.html','1737339252');
INSERT INTO `cms_plug_collect_history` VALUES ('118','敲击锤厂家的进口技术','https://www.zyjxdz.com/baike/2016030386.html','1737339253');
INSERT INTO `cms_plug_collect_history` VALUES ('119','气动敲击锤与传统震动器相比较的优势','https://www.zyjxdz.com/baike/2016030387.html','1737339254');
INSERT INTO `cms_plug_collect_history` VALUES ('120','敲击锤厂家的工作效率明显','https://www.zyjxdz.com/baike/2016030388.html','1737339255');
INSERT INTO `cms_plug_collect_history` VALUES ('121','空气锤多种型号应用广泛','https://www.zyjxdz.com/baike/2016030389.html','1737339256');
INSERT INTO `cms_plug_collect_history` VALUES ('122','气动锤为何受人青睐','https://www.zyjxdz.com/baike/2016030390.html','1737339257');
INSERT INTO `cms_plug_collect_history` VALUES ('123','电磁敲击锤小百科','https://www.zyjxdz.com/baike/2016030391.html','1737339257');
INSERT INTO `cms_plug_collect_history` VALUES ('124','安装使用说明','https://www.zyjxdz.com/baike/2016030392.html','1737339258');
INSERT INTO `cms_plug_collect_history` VALUES ('125','气动敲击锤接力串联方法的介绍','https://www.zyjxdz.com/baike/2016030393.html','1737339259');
INSERT INTO `cms_plug_collect_history` VALUES ('126','电磁敲击锤介绍','https://www.zyjxdz.com/baike/2016030394.html','1737339259');
INSERT INTO `cms_plug_collect_history` VALUES ('127','气动敲击锤与传统震动器的比较','https://www.zyjxdz.com/baike/2016030395.html','1737339260');
INSERT INTO `cms_plug_collect_history` VALUES ('128','使用气动敲击锤需注意其使用范围','https://www.zyjxdz.com/baike/2016030396.html','1737339261');
INSERT INTO `cms_plug_collect_history` VALUES ('129','传统气动式敲击锤的工作原理解析','https://www.zyjxdz.com/baike/2016030397.html','1737339262');
INSERT INTO `cms_plug_collect_history` VALUES ('130','气动锤的工作机理是怎样的','https://www.zyjxdz.com/baike/2016030398.html','1737339263');
INSERT INTO `cms_plug_collect_history` VALUES ('131','如何更好地使用电磁敲击锤工作','https://www.zyjxdz.com/baike/2016030399.html','1737339264');
INSERT INTO `cms_plug_collect_history` VALUES ('132','浅谈如何认识好敲击锤厂家的产品性能','https://www.zyjxdz.com/baike/20160303100.html','1737339264');
INSERT INTO `cms_plug_collect_history` VALUES ('133','优质敲击空气锤对料仓无损伤和变形','https://www.zyjxdz.com/baike/20160303101.html','1737339265');
INSERT INTO `cms_plug_collect_history` VALUES ('134','敲击锤厂家提醒气源一定要干净','https://www.zyjxdz.com/baike/20160303102.html','1737339266');
INSERT INTO `cms_plug_collect_history` VALUES ('135','为什么气动击锤工作效率这么高','https://www.zyjxdz.com/baike/20160303103.html','1737339267');
INSERT INTO `cms_plug_collect_history` VALUES ('136','浅析电磁敲击锤是如何有效工作的','https://www.zyjxdz.com/baike/20160303104.html','1737339267');
INSERT INTO `cms_plug_collect_history` VALUES ('137','振动流化床干燥机运作模式','https://www.zyjxdz.com/info/2016030328.html','1737339393');
INSERT INTO `cms_plug_collect_history` VALUES ('138','直流电磁振动器怎样交替工作','https://www.zyjxdz.com/info/2016030329.html','1737339393');
INSERT INTO `cms_plug_collect_history` VALUES ('139','使用气动锤的时候要注意什么','https://www.zyjxdz.com/info/2016030330.html','1737339394');
INSERT INTO `cms_plug_collect_history` VALUES ('140','沙子烘干机烘干功率包含几方面','https://www.zyjxdz.com/info/2016030331.html','1737339395');
INSERT INTO `cms_plug_collect_history` VALUES ('141','气动敲击锤的优点及安装注意事项','https://www.zyjxdz.com/info/2016030332.html','1737339395');
INSERT INTO `cms_plug_collect_history` VALUES ('142','怎样安全安装气动敲击锤','https://www.zyjxdz.com/info/2016030333.html','1737339396');
INSERT INTO `cms_plug_collect_history` VALUES ('143','安阳市卓易机械电子你值得选用','https://www.zyjxdz.com/info/2016030334.html','1737339397');
INSERT INTO `cms_plug_collect_history` VALUES ('144','一流品质-安阳卓易机械','https://www.zyjxdz.com/info/2016030335.html','1737339398');
INSERT INTO `cms_plug_collect_history` VALUES ('145','电磁敲击锤的使用范围','https://www.zyjxdz.com/info/2016030336.html','1737339399');
INSERT INTO `cms_plug_collect_history` VALUES ('146','敲击锤厂家对气动敲击锤使用时的一些状态的解','https://www.zyjxdz.com/info/2016030337.html','1737339400');
INSERT INTO `cms_plug_collect_history` VALUES ('147','敲击锤厂家的进口技术','https://www.zyjxdz.com/info/2016030338.html','1737339400');
INSERT INTO `cms_plug_collect_history` VALUES ('148','气动敲击锤与传统震动器相比较的优势','https://www.zyjxdz.com/info/2016030339.html','1737339401');
INSERT INTO `cms_plug_collect_history` VALUES ('149','敲击锤厂家的工作效率明显','https://www.zyjxdz.com/info/2016030340.html','1737339402');
INSERT INTO `cms_plug_collect_history` VALUES ('150','空气锤多种型号应用广泛','https://www.zyjxdz.com/info/2016030341.html','1737339402');
INSERT INTO `cms_plug_collect_history` VALUES ('151','气动锤为何受人青睐','https://www.zyjxdz.com/info/2016030342.html','1737339403');
INSERT INTO `cms_plug_collect_history` VALUES ('152','混凝土振捣如何正确使用振动器','https://www.zyjxdz.com/info/2016030343.html','1737339404');
INSERT INTO `cms_plug_collect_history` VALUES ('153','电动机的一般选择','https://www.zyjxdz.com/info/2016030344.html','1737339405');
INSERT INTO `cms_plug_collect_history` VALUES ('154','气动敲击锤与传统震动器的特点对比','https://www.zyjxdz.com/info/2016030345.html','1737339406');
INSERT INTO `cms_plug_collect_history` VALUES ('155','影响筛分过程的因素','https://www.zyjxdz.com/info/2016030346.html','1737339407');
INSERT INTO `cms_plug_collect_history` VALUES ('156','振动流化床干燥机运作模式','https://www.zyjxdz.com/info/2016030347.html','1737339408');
INSERT INTO `cms_plug_collect_history` VALUES ('157','直流电磁振动器怎样交替工作','https://www.zyjxdz.com/info/2016030348.html','1737339408');
INSERT INTO `cms_plug_collect_history` VALUES ('158','使用气动锤的时候要注意什么','https://www.zyjxdz.com/info/2016030349.html','1737339409');
INSERT INTO `cms_plug_collect_history` VALUES ('159','沙子烘干机烘干功率包含几方面','https://www.zyjxdz.com/info/2016030350.html','1737339410');
INSERT INTO `cms_plug_collect_history` VALUES ('160','气动敲击锤的优点及安装注意事项','https://www.zyjxdz.com/info/2016030351.html','1737339411');
INSERT INTO `cms_plug_collect_history` VALUES ('161','怎样安全安装气动敲击锤','https://www.zyjxdz.com/info/2016030352.html','1737339412');
INSERT INTO `cms_plug_collect_history` VALUES ('162','安阳市卓易机械电子你值得选用','https://www.zyjxdz.com/info/2016030353.html','1737339413');
INSERT INTO `cms_plug_collect_history` VALUES ('163','一流品质-安阳卓易机械','https://www.zyjxdz.com/info/2016030354.html','1737339413');
INSERT INTO `cms_plug_collect_history` VALUES ('164','电磁敲击锤的使用范围','https://www.zyjxdz.com/info/2016030355.html','1737339414');
INSERT INTO `cms_plug_collect_history` VALUES ('165','敲击锤厂家对气动敲击锤使用时的一些状态的解','https://www.zyjxdz.com/info/2016030356.html','1737339415');
INSERT INTO `cms_plug_collect_history` VALUES ('166','敲击锤厂家的进口技术','https://www.zyjxdz.com/info/2016030357.html','1737339416');
INSERT INTO `cms_plug_collect_history` VALUES ('167','气动敲击锤与传统震动器相比较的优势','https://www.zyjxdz.com/info/2016030358.html','1737339416');
INSERT INTO `cms_plug_collect_history` VALUES ('168','敲击锤厂家的工作效率明显','https://www.zyjxdz.com/info/2016030359.html','1737339417');
INSERT INTO `cms_plug_collect_history` VALUES ('169','空气锤多种型号应用广泛','https://www.zyjxdz.com/info/2016030360.html','1737339418');
INSERT INTO `cms_plug_collect_history` VALUES ('170','气动锤为何受人青睐','https://www.zyjxdz.com/info/2016030361.html','1737339419');
INSERT INTO `cms_plug_collect_history` VALUES ('171','活塞性能的提升能使气动锤更高效','https://www.zyjxdz.com/info/2016030362.html','1737339420');
INSERT INTO `cms_plug_collect_history` VALUES ('172','气动锤两大分类的异同','https://www.zyjxdz.com/info/2016030363.html','1737339420');
INSERT INTO `cms_plug_collect_history` VALUES ('173','说说市场需求下气动锤的发展趋势','https://www.zyjxdz.com/info/2016030364.html','1737339421');
INSERT INTO `cms_plug_collect_history` VALUES ('174','谈谈气动敲击锤恢复初始状态的过程','https://www.zyjxdz.com/info/2016030365.html','1737339422');
INSERT INTO `cms_plug_collect_history` VALUES ('175','敲击锤厂家连续敲打性强','https://www.zyjxdz.com/info/2016030366.html','1737339422');
INSERT INTO `cms_plug_collect_history` VALUES ('176','浅析敲击用锤冲击力大小要适宜','https://www.zyjxdz.com/info/2016030367.html','1737339423');
INSERT INTO `cms_plug_collect_history` VALUES ('177','气动敲击锤的工作原理','https://www.zyjxdz.com/info/2016030368.html','1737339424');
INSERT INTO `cms_plug_collect_history` VALUES ('178','厂家气动击器十分环保','https://www.zyjxdz.com/info/2016030369.html','1737339425');
INSERT INTO `cms_plug_collect_history` VALUES ('179','敲击锤原理','https://www.zyjxdz.com/info/2016030370.html','1737339426');
INSERT INTO `cms_plug_collect_history` VALUES ('180','电磁铁的技术与应用','https://www.zyjxdz.com/info/2016030371.html','1737339427');
INSERT INTO `cms_plug_collect_history` VALUES ('181','你对气动敲锤都有什么样的认识','https://www.zyjxdz.com/info/2016030372.html','1737339427');
INSERT INTO `cms_plug_collect_history` VALUES ('182','敲击锤产品的作用特点','https://www.zyjxdz.com/info/2016030373.html','1737339428');
INSERT INTO `cms_plug_collect_history` VALUES ('183','气动敲击锤的主要运行原理','https://www.zyjxdz.com/info/2016030374.html','1737339429');
INSERT INTO `cms_plug_collect_history` VALUES ('184','敲击锤产品主要的功能应用','https://www.zyjxdz.com/info/2016030375.html','1737339429');
-- -----------------------------
-- Records of `cms_plug_push`
-- -----------------------------
-- -----------------------------
-- Records of `cms_plug_push_config`
-- -----------------------------
-- -----------------------------
-- Records of `cms_show`
-- -----------------------------
INSERT INTO `cms_show` VALUES ('1','6','国内的振动器在国外能直接用吗？','','0','','[]','','0','1','0','0','13','‌国内的振动器在国外能用吗？答案是：不一定！&nbsp;&nbsp;因为国内的电压和赫兹和国外的不一定通用，国外客户在订购振动电机的时候一定的把他们的电压和赫兹给弄清楚，否则振动电机在很短的时间内就会烧掉。&nbsp;&nbsp;振动电机厂家在生产过程中一定的把电压和赫兹给改成国外通用的，这样振动电机使用客户就可以直接使用。&nbsp;&nbsp;如果您还有其他问题，请直接咨询卓易厂家','0','','','','','','1736850079','1736850090','1');
INSERT INTO `cms_show` VALUES ('2','6','振动电机该如何防潮、防尘？','','0','','[]','','0','1','0','0','8','‌大家都知道振动电机的使用环境大多潮湿且多粉尘，空气流通也比较差。大多数用户在使用时也不太注重振动电机的维护保养，常常导致振动电机提前毁坏。所以，今天卓易机械就告诉大家一些预防的措施。振动电机如何防潮：1、振动电机应尽量使用无溶剂漆。2、尽量选用不含氧化成分的浸渍漆，如环氧尿烷基或未变性环氧基浸渍漆。3、采用不含挥发性酸的漆。4、选择耐水解性','0','','','','','','1736850101','1736850109','1');
INSERT INTO `cms_show` VALUES ('3','6','电磁振动器的工作参数该如何确定？','','0','','[]','','0','1','0','0','25','‌大家都明白影响筛分过程的因素主要有以下三大类： 一是入筛物料的性质；二是筛分分设备的性能 三是电磁振动器的操作条件，包括处理能力的大小和给料的均匀性等。今天我们就说一下这第三点电磁振动器的操作条件。为了找出影响电磁振动器激振频率、偏心块厚度、处理量对筛分效率影响的主次地位和因素水平的最佳搭配以及因素间是否存在交互作用，为此选用正交试验设计','0','','','','','','1736850117','1736850124','1');
INSERT INTO `cms_show` VALUES ('116','15','振动流化床干燥机运作模式','','0','','[]','','0','1','0','0','0','大家平时都有听说过振动流化床干燥机吗，今天气动振动器就给大家来介绍一下振动流化床干燥机的运作模式。振动源采用振动电机驱动，运转平稳，维修方便，噪音低，寿命长。流态化稳定，','0','','','','','','1457017012','1737339245','1');
INSERT INTO `cms_show` VALUES ('117','15','直流电磁振动器怎样交替工作','','0','','[]','','0','1','0','0','0','大家对于直流电磁振动器都了解多少呢，相信很多朋友并不是非常熟悉吧，不要紧，下面电磁振动器就给大家来介绍一下直流电磁振动器怎样交替工作。设备上的配件象两个电磁铁交替工作，控','0','','','','','','1457017012','1737339246','1');
INSERT INTO `cms_show` VALUES ('118','15','使用气动锤的时候要注意什么','','0','','[]','','0','1','0','0','0','气动锤涉及的行业还是蛮广泛的，所以它在使用时有不少注意事项，以下是气动敲击锤厂家的介绍：1、气动锤有防爆装置，这样我就就可以放心使用，不会害怕气动锤会产生危险；2、气动锤的','0','','','','','','1457017012','1737339247','1');
INSERT INTO `cms_show` VALUES ('119','15','沙子烘干机烘干功率包含几方面','','0','','[]','','0','1','0','0','0','沙子烘干机是一种处置很多物料的干燥器。因为运转牢靠、操作弹性大、适应性强、处置量大，广泛使用于建材、冶金、食物、化工、煤炭、医药矿工业中。沙子烘干机属转筒烘干机。接下来转','0','','','','','','1457017012','1737339248','1');
INSERT INTO `cms_show` VALUES ('120','15','气动敲击锤的优点及安装注意事项','','0','','[]','','0','1','0','0','0','气动敲击锤的优点在于；其敲击力度通过是通过调节供气压力来调整。 若敲击力度过小无法排堵便可加大气压，相反敲击力度过大则降压使用。若 客户由于型号选择不妥出现冲击力过强或不足','0','','','','','','1457017012','1737339248','1');
INSERT INTO `cms_show` VALUES ('121','15','怎样安全安装气动敲击锤','','0','','[]','','0','1','0','0','0','安装振动器时，要加配高弹性的垫圈，以防松动。对钢架结构梁进行振动时效时，钢架梁要加橡胶垫，便于产生共振，使焊接残余应力进行松弛，另外，不要安在节点上。通过压缩空气为动力，','0','','','','','','1457017012','1737339250','1');
INSERT INTO `cms_show` VALUES ('122','15','安阳市卓易机械电子你值得选用','','0','','[]','','0','1','0','0','0','本公司致力料位开关工业自动化控制技术研发、生产和销售料位开关的高新技术企业，公司主要技术及管理人员从事料位开关自动化控制工作多年，在引进国外先进料位开关技术及自主开发的过','0','','','','','','1457017012','1737339250','1');
INSERT INTO `cms_show` VALUES ('123','15','一流品质-安阳卓易机械','','0','','[]','','0','1','0','0','0','面对当前激烈的全球市场竞争和能源短缺问题，面向流程工业的过程自动化系统的地位已经变得越来越重要。过程自动化系统不仅包括各类现场仪表、执行机构、DCS（集散控制系统）、PLC（逻辑','0','','','','','','1457017012','1737339251','1');
INSERT INTO `cms_show` VALUES ('124','15','电磁敲击锤的使用范围','','0','','[]','','0','1','0','0','0','电磁敲击锤的使用范围&nbsp; 电磁敲击锤采用的是二位三通电磁阀，高压气体通过通道5进入活塞下腔，推动活塞上行，活塞上腔气体被挤压通过排气孔排出。当活塞上行至终点时，气体通过槽和','0','','','','','','1457017012','1737339252','1');
INSERT INTO `cms_show` VALUES ('125','15','敲击锤厂家对气动敲击锤使用时的一些状态的解','/upfile/2025/01/1737339897657.jpg','1','','[]','','0','1','0','0','0','在气动敲击锤没有通入压缩空气(3Kg/cm以上)的状态下，磁性活塞借助强磁力贴紧固定在基板 上。三通电磁阀通电时，压缩空气流入气动敲击锤本体，本体内的压力增高，当大于磁力时， 磁性活','0','','','','','','1457017012','1737339899','1');
INSERT INTO `cms_show` VALUES ('126','15','敲击锤厂家的进口技术','/upfile/2025/01/1737339888411.jpg','1','','[]','','0','1','0','0','0','敲击锤厂家生产的气动敲击锤采用进口技术、碳钢结构、使用寿命长。专业生产气动振动器、气敲动击锤、电动振动器、电动敲击锤、小型电磁振动器、零速开关、振动器控制箱、电磁阀箱等产','0','','','','','','1457017012','1737339891','1');
INSERT INTO `cms_show` VALUES ('127','15','气动敲击锤与传统震动器相比较的优势','/upfile/2025/01/1737339879445.jpg','1','','[]','','0','1','0','0','0','据了解，国内从事气动工具生意的商铺数量正在不断的攀升，这表明气动工具产品具有优越的市场环境，也具有可观的发展前景。气动敲击锤与传统震动器比较的好处：通过压缩空气为动力，瞬','0','','','','','','1457017012','1737339882','1');
INSERT INTO `cms_show` VALUES ('128','15','敲击锤厂家的工作效率明显','/upfile/2025/01/1737339871777.jpg','1','','[]','','0','1','0','0','1','内从事气动工具生意的商铺数量正在不断的攀升，这表明气动工具产品具有优越的市场环境，也具有可观的发展前景。在气动敲击锤没有通入压缩空气(3Kg/cm以上)的状态下，磁性活塞借助强磁力','0','','','','','','1457017012','1737339873','1');
INSERT INTO `cms_show` VALUES ('129','15','空气锤多种型号应用广泛','/upfile/2025/01/1737339861516.jpg','1','','[]','','0','1','0','0','0','空气锤，即气动敲击锤，其特点是撞击力大，结构简单，使用方便。可有效解决粉体物料粘壁、挂料、堵塞、架桥等情况。冲击力大，噪音小，多种型号可供选择。冲击力和动作时间可控制，安','0','','','','','','1457017012','1737339864','1');
INSERT INTO `cms_show` VALUES ('130','15','气动锤为何受人青睐','/upfile/2025/01/1737339851621.jpg','1','','[]','','0','1','0','0','0','在气动敲击锤没有通入压缩空气的状态下，磁性活塞借助强磁力贴紧固定在基板上。三通电磁阀通电时，压缩空气流入气动敲击锤本体，本体内的压力增高，当大于磁力时，磁性活塞高速脱离基','0','','','','','','1457017012','1737339854','1');
INSERT INTO `cms_show` VALUES ('131','15','电磁敲击锤小百科','','0','','[]','','0','1','0','0','0','一、分类分为单作用式与连续作业式两大类。单作用式：电磁阀控制连续作业：自动控制连续作业二、原理在电磁敲击锤没有通入压缩空气(3Kg/cm以上)的状态下，磁性活塞借助强磁力贴紧固定在','0','','','','','','1457017012','1737339257','1');
INSERT INTO `cms_show` VALUES ('132','15','安装使用说明','','0','','[]','','0','1','0','0','0','方锥形桶槽比圆锥形桶槽振动传播效率差，建议对边安装两台效果较好。这边气动敲击锤厂家给简单说明一下安装时的注意点：使用槽型钢固定架，可提升振动器的振动力，有助于桶槽或管道中','0','','','','','','1457017012','1737339258','1');
INSERT INTO `cms_show` VALUES ('133','15','气动敲击锤接力串联方法的介绍','','0','','[]','','0','1','0','0','0','气动敲击锤是许多行业生产过程中必备的辅助设备之一，它能够防止生产时物料在运输的过程中出现粘连或是堵塞在设备中，从而导致生产效率的下降甚至设备的损坏。下面就来介绍气动敲击锤','0','','','','','','1457017012','1737339259','1');
INSERT INTO `cms_show` VALUES ('134','15','电磁敲击锤介绍','','0','','[]','','0','1','0','0','1','电磁敲击锤是什么呢？又是怎么运作的呢？下面由小编为大家简单介绍吧。电磁敲击锤是出色的料仓清堵装置，能有效的处理料仓堵塞，架桥等现象，是市场上最常见的疏通装置之一，与电磁敲','0','','','','','','1736503078','1737339259','1');
INSERT INTO `cms_show` VALUES ('135','15','气动敲击锤与传统震动器的比较','','0','','[]','','0','1','0','0','0','安阳市卓易机械电子有限公司专业生产气动振动器、气动敲击锤、电动振动器、电动敲击锤、小型电磁振动器、零速开关、振动器控制箱、电磁阀箱等产品的气动敲击锤厂家。产品广泛应用于化','0','','','','','','1457017012','1737339260','1');
INSERT INTO `cms_show` VALUES ('136','15','使用气动敲击锤需注意其使用范围','/upfile/2025/01/1737339842578.jpg','1','','[]','','0','1','0','0','0','气动敲击锤行业在国内发展不断上升，这不仅说明了国内的市场环境优越，也反映了气动敲击锤的竞争压力越来越大。在未来的几年内，气动敲击锤的发展趋势是：小型化，精密化，自动化，整','0','','','','','','1457017012','1737339844','1');
INSERT INTO `cms_show` VALUES ('137','15','传统气动式敲击锤的工作原理解析','/upfile/2025/01/1737339833971.jpg','1','','[]','','0','1','0','0','1','气动敲击锤又叫做强力振动器，在传统意义上讲，强力振动器就是气动敲击锤。在气动敲击锤没有通入压缩空气（3-6kg/cm2）的状态下，磁性活塞借助强磁力贴紧固定在基板上。电磁阀通电时，压','0','','','','','','1457017012','1737339835','1');
INSERT INTO `cms_show` VALUES ('138','15','气动锤的工作机理是怎样的','/upfile/2025/01/1737339819673.jpg','1','','[]','','0','1','0','0','0','气动敲击锤锤是一种靠气体运动产生压强促使物体运动的产品。作为专业的生产商，我们对气动锤有多年的研究。在气锤没有通入压缩空气（3-6kg/cm2）的状态下，磁性活塞借助强磁力贴紧固定在','0','','','','','','1457017012','1737339821','1');
INSERT INTO `cms_show` VALUES ('139','15','如何更好地使用电磁敲击锤工作','/upfile/2025/01/1737339810677.jpg','1','','[]','','0','1','0','0','0','敲击锤是研制国外最先进技术并升级改造的先进落粉装置，产品新颖、独特。用以自动防止粉体在管路、料斗、料仓输送中产生的粘附、堵塞和架桥，而对设备的器壁均不会产生操作和变形。电','0','','','','','','1457017012','1737339812','1');
INSERT INTO `cms_show` VALUES ('140','15','浅谈如何认识好敲击锤厂家的产品性能','/upfile/2025/01/1737339802365.jpg','1','','[]','','0','1','0','0','0','敲击锤单作用冲击，电磁阀控制,力量极大，远超振动器的效果；铝合金外壳重量轻，碳钢外壳强度高，适应恶劣条件；采用超强磁性元件，精心设计，蓄能后，冲击力大，所以敲击锤厂家对于','0','','','','','','1457017012','1737339804','1');
INSERT INTO `cms_show` VALUES ('141','15','优质敲击空气锤对料仓无损伤和变形','/upfile/2025/01/1737339793193.jpg','1','','[]','','0','1','0','0','1','敲击锤可有效防止粉体在管道、料斗料仓输送中产生的粘附和堵塞、架桥，而对设备的均不会产生损伤和变形。近年来，敲击锤厂家随着技术的发展，其产品质量也不断提升，撞击力大，结构简','0','','','','','','1457017012','1737339796','1');
INSERT INTO `cms_show` VALUES ('142','15','敲击锤厂家提醒气源一定要干净','','0','','[]','','0','1','0','0','1','我们常用的敲击锤锤头內部有一强力磁铁，在未动作前磁性锤头与磁片紧紧相吸，当进气之空气压力大过两者吸力，磁性锤头便与磁片脱离，向下冲击而产生强大的冲击力量；冲击后复归弹簧会','0','','','','','','1457017012','1737339266','1');
INSERT INTO `cms_show` VALUES ('143','15','为什么气动击锤工作效率这么高','','0','','[]','','0','1','0','0','2','气动敲击锤磁力冲击力大，落粉效果好；敲击间隔时间可以调整；结构简单，拆卸方便；质量可靠，故障降低；运行成本低、节能效果好；采用高强度铝合金硬化处理，重量轻。作为本公司引进','0','','','','','','1457017012','1737339267','1');
INSERT INTO `cms_show` VALUES ('144','15','浅析电磁敲击锤是如何有效工作的','','0','','[]','','0','1','0','0','1','电磁敲击锤可有效地防止粉体在管路、料仓、料斗输送中产生的粘附和堵塞、架桥，而对设备的器壁均不产生损伤和变形。设计独特的磁性活塞，使气锤具有更大的冲击力，外壳为优质的铸造铝','0','','','','','','1457017012','1737339267','1');
INSERT INTO `cms_show` VALUES ('145','16','振动流化床干燥机运作模式','','0','','[]','','0','1','0','0','0','大家平时都有听说过振动流化床干燥机吗，今天气动振动器就给大家来介绍一下振动流化床干燥机的运作模式。振动源采用振动电机驱动，运转平稳，维修方便，噪音低，寿命长。流态化稳定，','0','','','','','','1457016741','1737339393','1');
INSERT INTO `cms_show` VALUES ('146','16','直流电磁振动器怎样交替工作','','0','','[]','','0','1','0','0','0','大家对于直流电磁振动器都了解多少呢，相信很多朋友并不是非常熟悉吧，不要紧，下面电磁振动器就给大家来介绍一下直流电磁振动器怎样交替工作。设备上的配件象两个电磁铁交替工作，控','0','','','','','','1457016741','1737339393','1');
INSERT INTO `cms_show` VALUES ('147','16','使用气动锤的时候要注意什么','','0','','[]','','0','1','0','0','0','气动锤涉及的行业还是蛮广泛的，所以它在使用时有不少注意事项，以下是气动敲击锤厂家的介绍：1、气动锤有防爆装置，这样我就就可以放心使用，不会害怕气动锤会产生危险；2、气动锤的','0','','','','','','1457016741','1737339394','1');
INSERT INTO `cms_show` VALUES ('148','16','沙子烘干机烘干功率包含几方面','','0','','[]','','0','1','0','0','0','沙子烘干机是一种处置很多物料的干燥器。因为运转牢靠、操作弹性大、适应性强、处置量大，广泛使用于建材、冶金、食物、化工、煤炭、医药矿工业中。沙子烘干机属转筒烘干机。接下来转','0','','','','','','1457016741','1737339395','1');
INSERT INTO `cms_show` VALUES ('149','16','气动敲击锤的优点及安装注意事项','','0','','[]','','0','1','0','0','0','气动敲击锤的优点在于；其敲击力度通过是通过调节供气压力来调整。 若敲击力度过小无法排堵便可加大气压，相反敲击力度过大则降压使用。若 客户由于型号选择不妥出现冲击力过强或不足','0','','','','','','1457016741','1737339395','1');
INSERT INTO `cms_show` VALUES ('150','16','怎样安全安装气动敲击锤','','0','','[]','','0','1','0','0','0','安装振动器时，要加配高弹性的垫圈，以防松动。对钢架结构梁进行振动时效时，钢架梁要加橡胶垫，便于产生共振，使焊接残余应力进行松弛，另外，不要安在节点上。通过压缩空气为动力，','0','','','','','','1457016741','1737339396','1');
INSERT INTO `cms_show` VALUES ('151','16','安阳市卓易机械电子你值得选用','','0','','[]','','0','1','0','0','0','本公司致力料位开关工业自动化控制技术研发、生产和销售料位开关的高新技术企业，公司主要技术及管理人员从事料位开关自动化控制工作多年，在引进国外先进料位开关技术及自主开发的过','0','','','','','','1457016741','1737339397','1');
INSERT INTO `cms_show` VALUES ('152','16','一流品质-安阳卓易机械','','0','','[]','','0','1','0','0','0','面对当前激烈的全球市场竞争和能源短缺问题，面向流程工业的过程自动化系统的地位已经变得越来越重要。过程自动化系统不仅包括各类现场仪表、执行机构、DCS（集散控制系统）、PLC（逻辑','0','','','','','','1457016741','1737339398','1');
INSERT INTO `cms_show` VALUES ('153','16','电磁敲击锤的使用范围','','0','','[]','','0','1','0','0','0','电磁敲击锤的使用范围&nbsp; 电磁敲击锤采用的是二位三通电磁阀，高压气体通过通道5进入活塞下腔，推动活塞上行，活塞上腔气体被挤压通过排气孔排出。当活塞上行至终点时，气体通过槽和','0','','','','','','1457016741','1737339399','1');
INSERT INTO `cms_show` VALUES ('154','16','敲击锤厂家对气动敲击锤使用时的一些状态的解度','/upfile/2025/01/1737339610915.jpg','1','','[]','','0','1','0','0','0','在气动敲击锤没有通入压缩空气(3Kg/cm以上)的状态下，磁性活塞借助强磁力贴紧固定在基板 上。三通电磁阀通电时，压缩空气流入气动敲击锤本体，本体内的压力增高，当大于磁力时， 磁性活','0','','','','','','1457016741','1737339711','1');
INSERT INTO `cms_show` VALUES ('155','16','敲击锤厂家的进口技术有哪些','/upfile/2025/01/1737339696262.jpg','1','','[]','','0','1','0','0','0','敲击锤厂家生产的气动敲击锤采用进口技术、碳钢结构、使用寿命长。专业生产气动振动器、气敲动击锤、电动振动器、电动敲击锤、小型电磁振动器、零速开关、振动器控制箱、电磁阀箱等产','0','','','','','','1457016741','1737339698','1');
INSERT INTO `cms_show` VALUES ('156','16','气动敲击锤与传统震动器相比较的优势对比','/upfile/2025/01/1737339673442.jpg','1','','[]','','0','1','0','0','0','据了解，国内从事气动工具生意的商铺数量正在不断的攀升，这表明气动工具产品具有优越的市场环境，也具有可观的发展前景。气动敲击锤与传统震动器比较的好处：通过压缩空气为动力，瞬','0','','','','','','1457016741','1737339680','1');
INSERT INTO `cms_show` VALUES ('157','16','敲击锤厂家的工作效率明显!','/upfile/2025/01/1737339586714.jpg','1','','[]','','0','1','0','0','0','内从事气动工具生意的商铺数量正在不断的攀升，这表明气动工具产品具有优越的市场环境，也具有可观的发展前景。在气动敲击锤没有通入压缩空气(3Kg/cm以上)的状态下，磁性活塞借助强磁力','0','','','','','','1457016741','1737339595','1');
INSERT INTO `cms_show` VALUES ('158','16','空气锤多种型号应用广泛!','/upfile/2025/01/1737339564993.jpg','1','','[]','','0','1','0','0','0','空气锤，即气动敲击锤，其特点是撞击力大，结构简单，使用方便。可有效解决粉体物料粘壁、挂料、堵塞、架桥等情况。冲击力大，噪音小，多种型号可供选择。冲击力和动作时间可控制，安','0','','','','','','1457016741','1737339576','1');
INSERT INTO `cms_show` VALUES ('159','16','气动锤为何受人青睐?','/upfile/2025/01/1737339529408.jpg','1','','[]','','0','1','0','0','0','在气动敲击锤没有通入压缩空气的状态下，磁性活塞借助强磁力贴紧固定在基板上。三通电磁阀通电时，压缩空气流入气动敲击锤本体，本体内的压力增高，当大于磁力时，磁性活塞高速脱离基','0','','','','','','1457016741','1737339546','1');
INSERT INTO `cms_show` VALUES ('160','16','混凝土振捣如何正确使用振动器','','0','','[]','','0','1','0','0','0','混凝土振捣正确使用振动器在浇筑混凝土时，采用正确的振捣方法，可以避免蜂窝麻面通病，必须认真对待，精心操作。对楼板浇筑混凝土时，当板厚大于150mm时，采用插入式振动器；但棒要斜','0','','','','','','1457016741','1737339404','1');
INSERT INTO `cms_show` VALUES ('54','4','01','/upfile/2025/01/1737171200299.jpg','1','','[]','','0','1','0','0','0','‌','0','','','','','','1737171189','1737171206','1');
INSERT INTO `cms_show` VALUES ('55','4','02','/upfile/2025/01/1737171246662.jpg','1','','[]','','0','1','0','0','0','‌','0','','','','','','1737171189','1737171280','1');
INSERT INTO `cms_show` VALUES ('56','4','03','/upfile/2025/01/1737171293299.jpg','1','','[]','','0','1','0','0','0','‌','0','','','','','','1737171286','1737171296','1');
INSERT INTO `cms_show` VALUES ('57','4','04','/upfile/2025/01/1737171308431.jpg','1','','[]','','0','1','0','0','0','‌','0','','','','','','1737171299','1737171311','1');
INSERT INTO `cms_show` VALUES ('58','4','05','/upfile/2025/01/1737171478826.jpg','1','','[]','','0','1','0','0','0','‌','0','','','','','','1737171420','1737171482','1');
INSERT INTO `cms_show` VALUES ('59','4','06','/upfile/2025/01/1737171494119.jpg','1','','[]','','0','1','0','0','0','‌','0','','','','','','1737171485','1737171497','1');
INSERT INTO `cms_show` VALUES ('60','4','07','/upfile/2025/01/1737171508487.jpg','1','','[]','','0','1','0','0','1','‌','0','','','','','','1737171499','1737171511','1');
INSERT INTO `cms_show` VALUES ('61','4','08','/upfile/2025/01/1737171519388.jpg','1','','[]','','0','1','0','0','0','‌','0','','','','','','1737171514','1737171522','1');
INSERT INTO `cms_show` VALUES ('62','4','09','/upfile/2025/01/1737171530417.jpg','1','','[]','','0','1','0','0','0','‌','0','','','','','','1737171524','1737171534','1');
INSERT INTO `cms_show` VALUES ('63','4','10','/upfile/2025/01/1737171542726.jpg','1','','[]','','0','1','0','0','0','‌','0','','','','','','1737171536','1737171545','1');
INSERT INTO `cms_show` VALUES ('64','4','11','/upfile/2025/01/1737171553328.jpg','1','','[]','','0','1','0','0','0','‌','0','','','','','','1737171547','1737171555','1');
INSERT INTO `cms_show` VALUES ('65','4','12','/upfile/2025/01/1737171562825.jpg','1','','[]','','0','1','0','0','0','‌','0','','','','','','1737171557','1737171565','1');
INSERT INTO `cms_show` VALUES ('66','8','ZY系列气动敲击锤','/upfile/2025/01/1737181720802.jpg','1','','[]','','0','1','0','0','75','‌sssssssssss','0','','','','','','1737176537','1737182573','1');
INSERT INTO `cms_show` VALUES ('67','8','K20气动敲击锤','/upfile/2025/01/1737182659620.jpg','1','','[]','','0','1','0','0','22','产品特点1、单作用冲击，不连续，需电磁阀控制保证持续作业，每秒敲击约5次。 2、重量轻，碳钢外壳强度高，适应恶劣条件。 3、采用超强磁性元件，精心设计，蓄能后，冲击力大。 4、耗气量少。5，采用气锤领域最新技术，冲击力与寿命远高于传统压缩铝气锤。6、在空间任意方向安装使用。 7、敲击作用时，活塞直接作用在目标上。8、使用方便，只需用一根通气管即可,频','0','','','','','','1737176549','1737182667','1');
INSERT INTO `cms_show` VALUES ('68','14','ZYPT振动平台','/upfile/2025/01/1737183378725.jpg','1','','[]','','0','1','0','0','4','工作原理ZYPT振动平台是由电动和气动两部分组成，专门用于物料振实打包之用。 电动部分将物料下部分振实，气动部分从侧面将粘在袋上的物料抖下去。通过两部分的组合振动，使物料快速振实，便于封口。结构及参数主体结构见图 型号电压功率激振力压缩空气压力ZYPT380V1.5KW1600N4-7kg/cm²使用方法1、连接电源：采用三相四线制连接。三相开关为3根火线，单向开关为零线。2、接通','0','','','','','','1737183280','1737192841','1');
INSERT INTO `cms_show` VALUES ('69','13','ZYLS零速开关','/upfile/2025/01/1737183479138.jpg','1','','[]','','0','1','0','0','12','产品型号输入电压额定频率接点容量ZYLS220V50/60Hz3A/220VAC原理零速开关安装在旋转设备的轴头上，对旋转设备进行转速监控。两个微型继电器，可根据监控设备的实际转速，分别调整时间常数和脉冲个数，来实现转速设定。当监控设备出现异常时，两组继电器动作并给出信号。使工作人员能及时发现故障，能够对旋转设备运行进行有效的安全监控，实现plc自动化控制。采用进口微型继电','0','','','','','','1737183399','1737192799','1');
INSERT INTO `cms_show` VALUES ('70','12','电磁锤控制器','/upfile/2025/01/1737186342967.jpg','1','','[]','','0','1','0','0','2','基本参数型号输入电压（V）频率(Hz)电源DZ-122050二相应用范围DC-1型控制器是电动敲击锤的控制设备产品特点1、实现循环控制：单锤循环和多锤循环，1-10台可任意设定打击次数及停顿时间2、实现单点控制：单锤及多锤单点控制，1-10台可任意设定打击次数及停顿时间3、打击1-10次且次数可调，然后停顿30秒至10分钟可调。4、实现液晶显示运行状态。5、通过RS-232及通讯卡进行计算机联网','0','','','','','','1737186215','1737186350','1');
INSERT INTO `cms_show` VALUES ('71','12','时序控制器','/upfile/2025/01/1737186431729.jpg','1','','[]','','0','1','0','0','4','技术参数型 号SXFB02、SXFB04、SXFB06、SXFB08~SXFB20输入电压(V)AC220V 50Hz输出电压(V)DC24V输出电流0.8A输出回路1-20脉冲间隔时间3—60秒连续可调脉冲宽度时间0.2-2秒连续可调工作温度-20℃～50℃使用环境1、温度-20℃～50℃2、空气相对湿度≤85%3、无严重腐蚀气体和导电尘埃4、无剧烈震动或冲击安装方式壁挂式结构原理SXFB系列气锤控制器由数控、显示、电子开关、电源四大部分组成。1、数控部分','0','','','','','','1737186353','1737192744','1');
INSERT INTO `cms_show` VALUES ('72','12','电磁振动器控制器','/upfile/2025/01/1737186527831.jpg','1','','[]','','0','1','0','0','3','产品参数型号输入电压（V）输出电压（V）输入电流（A）工作方式工作温度DZ-S型控制器22010-220(可调节)10连续-30℃-70℃工作原理DZ-S型控制器是电磁振动器的控制设备。 它能调整输出电压，改变振动力的大小，从而达到改变振幅、调节给料、送料的目的。','0','','','','','','1737186445','1737186531','1');
INSERT INTO `cms_show` VALUES ('73','11','ZYDZ系列电动振动器','/upfile/2025/01/1737186872653.jpg','1','','[]','','0','1','0','0','1','工作原理ZYDZ系列电动振动器由振动体、弹性系统、电磁线圈、机座等部件组成。铁芯和衔铁分别固定在机座和振动体上，振动体等部件构成质点M1、机座等部件构成质点M2。M1和M2由弹性系统联系在一起。由于机座紧固在料仓壁上，这样就构成了单质点定向强迫振动系统。根据机械振动的共振原理，电磁铁的激振频率为W，弹性系统自振频率为W0，使其比值W/W0＝0.9左右，处于低临界状态','0','','','','','','1737186598','1737186873','1');
INSERT INTO `cms_show` VALUES ('74','11','ZYX－5电动振动器','/upfile/2025/01/1737186784125.jpg','1','','[]','','0','1','0','0','2','工作原理本产品是采用德国技术制造的一种产品。 它的工作原理是利用通电线圈和磁铁产生的脉冲电磁力与转子铁芯之间相互吸引，使弹簧变形储存势能，在电流的运行中释放能量，以交流电频率作往复直线振动工作过程的新型机电产品。性能及参数电压电流频率阻值振幅振动强度工作温度重量220V0.26A50Hz310Ω1~5mm1~1.5Kg-30~70℃2.1公斤产品特点具有体积小，重量轻，方便灵活，经久耐用','0','','','','','','1737186604','1737186787','1');
INSERT INTO `cms_show` VALUES ('75','11','防爆电动振动器','/upfile/2025/01/1737186720266.jpg','1','','[]','','0','1','0','0','12','隔爆型电磁振动器广泛应用在化工厂，矿山，火药制造等一些防爆场所，振动频率高，安全性能好等特点。产品参数型号振动力(Kg)功率(W)电压(V)电流(A)振频(Hz)振幅(mm)DZFB2525182200.6501-5DZFB5050402200.9501-5','0','','','','','','1737186631','1737186723','1');
INSERT INTO `cms_show` VALUES ('76','11','电磁仓壁振动器','/upfile/2025/01/1737186649420.jpg','1','','[]','','0','1','0','0','12','ZYDZ250电磁仓壁振动器：电磁振动器是高效、节能振动器，广泛在化工、建材、矿产等粉体机械上使用。电磁振动器安装在粉料仓下部缩口处的外侧，电磁振动器产生的高频振动，可有效地消除粉料因内摩擦、潮解、带电和成份偏析等原因而引起的堵塞、搭拱现象。使用电磁振动器作疏料装置，结构简单，下料流畅，能稳定给料系统。电磁振动器也可用在其它需振动源的机械上。电磁','0','','','','','','1737186643','1737186679','1');
INSERT INTO `cms_show` VALUES ('77','8','ZYSC-25手持敲击锤','/upfile/2025/01/1737186951561.jpg','1','','[]','','0','1','0','0','6','产品参数重量(Kg)活塞尺寸（mm）锤打次数(次)工具长度(mm)使用压力1252500-70002002-6kg/cm2适用范围：解决物料严重粘壁、堵塞的情况。适用于料仓、管道不便安装固定式的振动器。改变锤头可用作电焊除渣锤，或用在薄板整形锤。结构及工作原理气体通过通道进入活塞下腔，推动活塞上行，活塞上腔气体被挤压通过排气孔排出。当活塞上行到终点时，气体通过槽和气道自动换向使气体进入','0','','','','','','1737186909','1737186954','1');
INSERT INTO `cms_show` VALUES ('78','8','K系列气动敲击锤','/upfile/2025/01/1737187019496.jpg','1','','[]','','0','1','0','0','12','工作原理在气动敲击锤锤没有通入压缩空气（3-7kg/cm2）的状态下，磁性活塞借助强磁力贴紧固定在基板上。电磁阀通电时，压缩空气流入气锤本体，在体内压力增高，当大于磁力时，磁性活塞高速脱离基板，由于强磁力的反作用力产生很强的反击力，高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘，电磁阀停止通电时，压缩空气排出，于是借助返','0','','','','','','1737186957','1737192582','1');
INSERT INTO `cms_show` VALUES ('79','8','XK系列气动敲击锤','/upfile/2025/01/1737187097448.png','1','','[]','','0','1','0','0','28','外形尺寸及参数尺寸性能参数型号φ1φ2n-dH使用压力Mpa冲击力&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kg.m/s冲击能量&nbsp;&nbsp;&nbsp; N.M重量kgXK3082674-φ91350.3-0.71.2-1.95.5-13.11.3XK4098774-φ91750.3-0.72.7-4.29.2-232.2XK601431104-φ132200.3-0.77.0-11.220.6-495.6XK801701404-φ132750.4-0.715.5-24.245.1-109.011.5XK1001951504-φ133100.5-0.730.2-48.560.5-220.218工作原理在气动敲击锤锤没有通入压缩空气（3-7kg/cm2）的状态下，磁性活塞借助强磁力贴紧固定在','0','','','','','','1737187036','1737187101','1');
INSERT INTO `cms_show` VALUES ('80','10','ZYDC系列电动敲击锤','/upfile/2025/01/1737187216595.jpg','1','','[]','','0','1','0','0','15','产品参数​型号结构冲击力（kg.m/SEC）尺寸重量（kg）输入电流（A）AC220VAC220V锤（磅）DdLZYDC-05A型完全密闭型4.511307622671.3ZYDC-1A型12.82165102284131.8ZYDC-2A型204190114318223.4ZYDC-3A型328226146341363.7ZYDC-4A型4110255165384523.9 产品特点1、没有空气压缩机，防尘、防油。2、使用寿命长，高达5,000,000次的撞击3、撞击力度、撞击频率与停顿时间可通过控制盘来调节。4、可以通过控制盘来调试为自动撞击频','0','','','','','','1737187145','1737192637','1');
INSERT INTO `cms_show` VALUES ('81','9','SK20气动振动器','/upfile/2025/01/1737187303516.jpg','1','','[]','','0','1','0','0','6','产品简介在自动化生产过程中，常会使用各种料仓、管路、集尘器等设备。这些设备因为原料特性或装置设计问题，常会造成原料阻塞。在此情况下要解决此问题最有效的方法，就是在设备的阻塞处安装振动器，利用振动力将阻塞原料振落，顺利完成工艺过程。除了以上功能，也可以设计运用在水平输送机械、筛选机械、整列机械等，在自动化生产过程中，振动器是一种物美价廉的产','0','','','','','','1737187246','1737187306','1');
INSERT INTO `cms_show` VALUES ('82','9','SK30/40/60气动振动器','/upfile/2025/01/1737187372345.jpg','1','','[]','','0','1','0','0','4','外形尺寸型号DN(mm)Φ1Φ2n-dHSK-30Φ44Φ80Φ604-Φ9132SK-40Φ52Φ90Φ714-Φ11144SK-60Φ70Φ120Φ954-Φ14206产品简介在自动化生产过程中，常会使用各种料仓、管路、集尘器等设备。这些设备因为原料特性或装置设计问题，常会造成原料阻塞。在此情况下要解决此问题最有效的方法，就是在设备的阻塞处安装振动器，利用振动力将阻塞原料振落，顺利完成工艺过程。除了以上功能，也可以设计运用在水平','0','','','','','','1737187309','1737187375','1');
INSERT INTO `cms_show` VALUES ('83','9','SK80气动振动器','/upfile/2025/01/1737187434928.jpg','1','','[]','','0','1','0','0','7','型号和参数型号频率（VPM）振动力（N）空气消耗量（l/min）重量（kg）&nbsp;2kg/cm24kg/cm26kg/cm22kg/cm24kg/cm26kg/cm2&nbsp;&nbsp;SK80128016102080252548825119-2955.9工作原理气动直线振动器，利用空气压缩机排出的高压气体，通过气管接入产品进气孔。当气体推动活塞上行，活塞上气室内气体受到挤压，受挤压的气体通过排气孔排出。当活塞上行至终点时，气体通过槽和气道自动切换通气方向，使气体进','0','','','','','','1737187386','1737187437','1');
INSERT INTO `cms_show` VALUES ('84','9','ZYFP系列气动振动器','/upfile/2025/01/1737187492715.jpg','1','','[]','','0','1','0','0','40','工作原理打开二位三通电磁阀，高压气体通过通道进入活塞下腔，推动活塞上行，活塞上腔气体被挤压通过排气孔排出。当活塞上行到终点时，气体通过槽和气道自动换向使气体进入活塞上腔，高压气体压活塞下行至终端，第一循环结束，第二循环开始。依次不断的往复循环使激振器产生平动和晃动，从而产生振动力。活塞两端是低压区产生背压，故而不撞击。性能参数型号HΦ1Φ2Φ3dZ','0','','','','','','1737187440','1737187494','1');
INSERT INTO `cms_show` VALUES ('85','8','重击型气动敲击锤','/upfile/2025/01/1737288017461.jpg','1','','[]','heavy-impact-pneumatic-hammer','0','1','0','0','39','‌11','0','','','','','','1737201766','1737344503','1');
INSERT INTO `cms_show` VALUES ('161','16','电动机的一般选择','','0','','[]','','0','1','0','0','0','选择电机，首先要确定电机工作点的力矩有多大，及在这个力矩下需要的电机转速（即 额定转速）是多少。依此可以确定需要多大尺寸的电性能满足这个要求。电机的额定转速和额定力矩决定','0','','','','','','1457016741','1737339405','1');
INSERT INTO `cms_show` VALUES ('162','16','气动敲击锤与传统震动器的特点对比','','0','','[]','','0','1','0','0','0','气动敲击锤是一种经过多次改良的先进的落粉装置，主要用于预防粉体在管道、料斗的输送中产生粘附与堵塞的现象。同时并不会对设备的产生变形。在各类加工行业当中都得到了广泛的使用。','0','','','','','','1457016741','1737339406','1');
INSERT INTO `cms_show` VALUES ('163','16','影响筛分过程的因素','','0','','[]','','0','1','0','0','0','&nbsp; &nbsp; &nbsp; 我想各位都不想自己的设备处出问题，那么就让气动敲击锤厂家教你怎样防止设备出问题吧：一是入筛物料的性质，包括物料的粒度特性、物料的水分、含泥量和物料颗粒的形状','0','','','','','','1457016741','1737339407','1');
INSERT INTO `cms_show` VALUES ('164','16','活塞性能的提升能使气动锤更高效','/upfile/2025/01/1737339521826.jpg','1','','[]','','0','1','0','0','0','气动敲击锤通过压缩空气为动力，瞬间释放，推动内部的锤头打击底部，将强力冲力传递给料斗壁面，有效地击破物料所构成的拱桥，使积料松动，所以气动敲击锤能达到卸灰顺畅的目的。由于','0','','','','','','1457016741','1737339523','1');
INSERT INTO `cms_show` VALUES ('165','16','气动锤两大分类的异同','/upfile/2025/01/1737339509410.jpg','1','','[]','','0','1','0','0','0','由于敲击锤全铝结构强度高，单击式冲击力度大，重量轻，冲击间隔时间可调整，所以气动敲击锤撞击力大，结构简单，使用方便.可有效解决粉体物料粘壁、挂料、堵塞、架桥等情况。可以分','0','','','','','','1457016741','1737339513','1');
INSERT INTO `cms_show` VALUES ('166','16','说说市场需求下气动锤的发展趋势','/upfile/2025/01/1737339495529.jpg','1','','[]','','0','1','0','0','0','国内从事敲击锤工具生意的商铺数量正在不断的攀升，这表明气动工具产品具有优越的市场环境，也具有可观的发展前景。气动敲击锤就是其中的佼佼者，广受人们好评。随着越来越多的经营商','0','','','','','','1457016741','1737339500','1');
INSERT INTO `cms_show` VALUES ('167','16','谈谈气动敲击锤恢复初始状态的过程','','0','','[]','','0','1','0','0','0','敲击锤的冲击力，传递到管道或桶仓壁，使物料能够顺利流动。冲击力和动作时间可控制，安装方便。可在防爆、多粉尘、潮湿等环境中使用。在气动敲击锤没有通入压缩空气的状态下，磁性活','0','','','','','','1457016741','1737339422','1');
INSERT INTO `cms_show` VALUES ('168','16','敲击锤厂家连续敲打性强','','0','','[]','','0','1','0','0','1','当通电后，敲击锤厂家产品压缩空气进入气动敲击锤本体，本体内的压力增高，当压力大于磁力时活塞就会高速的脱离基板，由于强磁力产生的反作用力产生很强的反抗力。敲击锤厂家产品无需','0','','','','','','1457016741','1737339422','1');
INSERT INTO `cms_show` VALUES ('169','16','浅析敲击用锤冲击力大小要适宜','','0','','[]','','0','1','0','0','0','安阳市卓易机械电子有限公司是国内生产敲击锤品种最全、型号最大的生产企业。该品种为碳钢结构、耐高温使用寿命长等特点。气动锤有防爆装置，这样我就就可以放心使用，不会害怕气动锤','0','','','','','','1457016741','1737339423','1');
INSERT INTO `cms_show` VALUES ('170','16','气动敲击锤的工作原理','','0','','[]','','0','1','0','0','0','&nbsp; &nbsp; 气动敲击锤是国内外通用的先进落粉装置，被多次改良，派生出很多新品种。产品新颖、独特。用以自动防止粉体在管路、料斗、料仓输送中产生的粘附、堵塞和架桥，而对设备的器','0','','','','','','1457016741','1737339424','1');
INSERT INTO `cms_show` VALUES ('171','16','厂家气动击器十分环保','','0','','[]','','0','1','0','0','0','&nbsp; &nbsp; 气动敲击锤是国内外通用的先进落粉装置，被多次改良，派生出很多新品种。产品新颖、独特。用以自动防止粉体在管路、料斗、料仓输送中产生的粘附、堵塞和架桥，而对设备的器','0','','','','','','1457016741','1737339425','1');
INSERT INTO `cms_show` VALUES ('172','16','敲击锤原理','','0','','[]','','0','1','0','0','0','空气敲击锤其特点是撞击力大,结构简单,使用方便. 可有效解决粉体物料生产过程中的粘壁、挂料、堵塞、架桥等情况且对料仓无损伤和变形。冲击力大，噪音小，多种型号可供选择。冲击力和','0','','','','','','1457016741','1737339426','1');
INSERT INTO `cms_show` VALUES ('173','16','电磁铁的技术与应用','','0','','[]','','0','1','0','0','0','为了消除漏斗滑槽、管道、罐体等发生的粉末附着、堵塞、鼠洞、拱形架空、桥形架空等现象而制造的装置。活塞杆在冲击时靠磁力浮起，因此耐久性超群。可以集中连续冲击，对除去粘附物发','0','','','','','','1457016741','1737339427','1');
INSERT INTO `cms_show` VALUES ('174','16','你对气动敲锤都有什么样的认识','','0','','[]','','0','1','0','0','3','在气动敲击锤没有通入压缩空气(3Kg/cm以上)的状态下，磁性活塞借助强磁力贴紧固定在基板上。三通电磁阀通电时，压缩空气流入气动敲击锤本体，本体内的压力增高，当大于磁力时，磁性活塞','0','','','','','','1457016741','1737339427','1');
INSERT INTO `cms_show` VALUES ('175','16','敲击锤产品的作用特点','','0','','[]','','0','1','0','0','0','敲击锤是国内外通用的先进落粉装置，被多次改良，派生出很多新品种。产品新颖、独特。用以自动防止粉体在管路、料斗、料仓输送中产生的粘附、堵塞和架桥，而对设备的器壁均不会产生操','0','','','','','','1457016741','1737339428','1');
INSERT INTO `cms_show` VALUES ('176','16','气动敲击锤的主要运行原理','','0','','[]','','0','1','0','0','3','气动敲击锤的安装位置要合理：不合理的安装位置，既削弱了振动力，又损害了气锤本身。如图1，也就是不要对称安装，要交叉安装，另外不要少于L/3，否则影响振动力。在气动敲击锤没有通','0','','','','','','1457024901','1737339429','1');
INSERT INTO `cms_show` VALUES ('177','16','敲击锤产品主要的功能应用','','0','','[]','','0','1','0','0','16','敲击锤由于强磁力的反作用力产生很强的反击力。高速落下的磁性活塞撞击基板，其冲击力传给料仓，并且用强的冲击力击落附着的粉尘。敲击锤产品广泛应用于化工、机械、食品、饲料、水泥','0','','','','','','1457016741','1737339429','1');
-- -----------------------------
-- Records of `cms_sitelink`
-- -----------------------------
-- -----------------------------
-- Records of `cms_tags`
-- -----------------------------
