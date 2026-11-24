<?php
return [
  'title'    =>    '蜘蛛来访',
  'author'   =>    '官方',
  'url'      =>    'https://www.sdcms.cn',
  'install'  =>    "DROP TABLE IF EXISTS cms_plug_spider@@@@CREATE TABLE cms_plug_spider (id int(10) NOT NULL AUTO_INCREMENT,name varchar(50) DEFAULT '',viewtimes int(10) DEFAULT '0',comedate int(10) DEFAULT '0',PRIMARY KEY (id)) ENGINE=MyISAM DEFAULT CHARSET=utf8",
  'delete'   =>    'DROP TABLE cms_plug_spider',
  'admin'    =>    '1',
  'version'  =>    '1.0'
];