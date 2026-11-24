<?php
return [
  'title'    =>    '智谱Ai智能写作',
  'author'   =>    '官方',
  'url'      =>    'https://www.sdcms.cn',
  'version'  =>    '1.2',
  'install'  =>    "DROP TABLE IF EXISTS cms_plug_chatglm@@@@CREATE TABLE cms_plug_chatglm (id int(10) NOT NULL AUTO_INCREMENT,title varchar(255) default '',classid int(10) DEFAULT 0,pass smallint(1) DEFAULT 0,cid int(10) DEFAULT 0,tid varchar(100)  DEFAULT '',createdate int(10) DEFAULT 0,remark text,PRIMARY KEY (id)) ENGINE=MyISAM DEFAULT CHARSET=utf8@@@@DROP TABLE IF EXISTS cms_plug_chatglm_config@@@@CREATE TABLE cms_plug_chatglm_config (id int(10) NOT NULL AUTO_INCREMENT,keylist text,model varchar(50) DEFAULT '',max int(10) DEFAULT 0,space smallint(1) DEFAULT 0,tags smallint(1) DEFAULT 0,PRIMARY KEY (id)) ENGINE=MyISAM DEFAULT CHARSET=utf8",
  'delete'   =>    'DROP TABLE cms_plug_chatglm@@@@DROP TABLE cms_plug_chatglm_config',
  'admin'    =>    '1',
];