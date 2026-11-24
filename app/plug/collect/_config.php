<?php
return [
  'title'    =>    '采集插件',
  'author'   =>    '官方',
  'url'      =>    'https://www.sdcms.cn',
  'version'  =>    '1.1',
  'install'  =>    "DROP TABLE IF EXISTS cms_plug_collect@@@@DROP TABLE IF EXISTS cms_plug_collect_history@@@@CREATE TABLE cms_plug_collect(id int(10) NOT NULL AUTO_INCREMENT,title varchar(50) DEFAULT '',cid int(10) DEFAULT 0,ordnum int(10) DEFAULT 0,isshow int(10) DEFAULT 0,paramter varchar(50) DEFAULT '',replacetext text,picdata text,listtype int(10) DEFAULT 1,listrule varchar(255) DEFAULT '',listmin int(10) DEFAULT 0,listmax int(10) DEFAULT 0,listdata text,list_loop_begin text,list_loop_over text,list_a_begin text,list_a_over text,list_pic int(10) DEFAULT 0,list_pic_begin text,list_pic_over text,c_title_begin text,c_title_over text,c_content_begin text,c_content_over text,c_content_page int(10) DEFAULT 0,c_content_page_begin text,c_content_page_over text,c_content_page_a_begin text,c_content_page_a_over text,c_date int(10) DEFAULT 0,c_date_begin text,c_date_over text,c_keyword int(10) DEFAULT 0,c_keyword_begin text,c_keyword_over text,c_description int(10) DEFAULT 0,c_description_begin text,c_description_over text,c_hits int(10) DEFAULT 0,c_hits_begin text,c_hits_over text,c_key_data text,c_key_default text,PRIMARY KEY (id)) ENGINE=MyISAM DEFAULT CHARSET=utf8@@@@CREATE TABLE cms_plug_collect_history (id int(10) NOT NULL AUTO_INCREMENT,title varchar(255) DEFAULT '',url varchar(255) DEFAULT '',createdate int(10) DEFAULT '0',PRIMARY KEY (id)) ENGINE=MyISAM DEFAULT CHARSET=utf8",
  'delete'   =>    'DROP TABLE cms_plug_collect@@@@DROP TABLE cms_plug_collect_history',
  'admin'    =>    '1',
];