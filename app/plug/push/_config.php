<?php
return [
  'title'    =>    '百度内容推送',
  'author'   =>    '官方',
  'url'      =>    'https://www.sdcms.cn',
  'install'  =>    "DROP TABLE IF EXISTS cms_plug_push_config@@@@DROP TABLE IF EXISTS cms_plug_push@@@@CREATE TABLE cms_plug_push_config (id int(10) NOT NULL AUTO_INCREMENT,url varchar(500) DEFAULT '',PRIMARY KEY (id)) ENGINE=MyISAM DEFAULT CHARSET=utf8@@@@CREATE TABLE cms_plug_push (aid int(10) NOT NULL AUTO_INCREMENT,cid int(10) DEFAULT 0,pushdate int(10) DEFAULT 0,PRIMARY KEY (aid)) ENGINE=MyISAM DEFAULT CHARSET=utf8",
  'delete'   =>    'DROP TABLE cms_plug_push_config@@@@DROP TABLE cms_plug_push',
  'admin'    =>    '1',
  'version'  =>    '1.0'
];