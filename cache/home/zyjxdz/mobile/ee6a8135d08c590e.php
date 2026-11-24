<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=750,user-scalable=no, target-densitydpi=device-dpi">
<meta name="renderer" content="webkit">
<title><?php echo $seo_title;?></title>
<meta name="keywords" content="<?php echo $seo_key;?>">
<meta name="description" content="<?php echo $seo_desc;?>">
<link href="<?php echo WEB_THEME;?>mobile/css/css.css" rel="stylesheet" />
<script src="<?php echo WEB_THEME;?>mobile/js/jquery.js"></script>
<script src="<?php echo WEB_THEME;?>mobile//js/all.js"></script>
<?php if (C(strtoupper('other_favicon'))) { ?>
<link rel="shortcut icon" href="<?php echo C(strtoupper('other_favicon'));?>"/>
<link rel="bookmark" href="<?php echo C(strtoupper('other_favicon'));?>"/>
<?php }?>
</head>
<body>
<div id="header">
    <div class="topbox">
        <div class="topphone">
                <div class="slogo">专业的振动器产品制造商</div>
                <a class="map">
                    <div class="changebtn"></div>
                </a>
        </div>
        <div class="logo"><a href="<?php echo WEB_ROOT;?>"><img src="<?php echo C(strtoupper('mobile_logo'));?>" alt="<?php echo C(strtoupper('web_name'));?>"></a></div>
        <div class="nav_map">
            <ul>
                <li><a id="close"><i class="fa-close"></i></a></li>
                <li><a href="<?php echo WEB_ROOT;?>" title="网站首页">网站首页</a></li>
                <?php $array_rp=$this->db->load("select * from cms_class  where followid=0 and ismenu=1  order by cate_order,cateid limit 10",0,false,0);$total_rp=count($array_rp);if($total_rp==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rp as $rp){ $i++;?> <?php $head_id=$rp['cateid'];?>
                <li<?php echo is_active($rp['cateid'],$parentid);?>><a href="<?php echo cateurl($rp['cateid']);?>"><?php echo $rp['cate_name'];?></a> </li> <?php } if($total_rp>0){ ?>
<?php }?>
            </ul>
        </div>
        <script>
            $(document).ready(function () {
                $(".map").click(function () {
                    $('.nav_map').animate({ marginRight: '0' });
                });
                $("#close").click(function () {
                    $('.nav_map').animate({ marginRight: '-30vw' });
                });
            });
        </script>
    </div>
    <div id="wrap">
        <div class="index01">
            <ul>
				<a href="<?php echo WEB_ROOT;?>" title="网站首页"><li>网站首页</li></a>
                <?php $array_rp=$this->db->load("select * from cms_class  where followid=0 and ismenu=1  order by cate_order,cateid limit 10",0,false,0);$total_rp=count($array_rp);if($total_rp==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rp as $rp){ $i++;?> <?php $head_id=$rp['cateid'];?>
                <a <?php echo is_active($rp['cateid'],$parentid);?> href="<?php echo cateurl($rp['cateid']);?>"><li><?php echo $rp['cate_name'];?></li></a> <?php } if($total_rp>0){ ?>
<?php }?>
            </ul>
        </div>
    </div>
</div>
<div style="clear: both;"></div>