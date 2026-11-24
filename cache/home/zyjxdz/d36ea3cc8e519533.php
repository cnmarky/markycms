<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit;?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title><?php echo $seo_title;?></title>
    <meta name="keywords" content="<?php echo $seo_key;?>">
    <meta name="description" content="<?php echo $seo_desc;?>">
    <link href="<?php echo WEB_THEME;?>css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<?php echo WEB_THEME;?>js/jquery.min.js"></script>
    <script type="text/javascript" src="<?php echo WEB_THEME;?>js/common.js"></script>
    <?php if (C(strtoupper('other_favicon'))) { ?>
    <link rel="shortcut icon" href="<?php echo C(strtoupper('other_favicon'));?>" />
    <link rel="bookmark" href="<?php echo C(strtoupper('other_favicon'));?>" />
    <?php }?>
    <?php echo C(strtoupper('count_code'));?>
</head><body>
    <div class="header">
        <div class="wrapper">
            <div class="logo">
                <a href="/"><h1><?php echo C(strtoupper('seo_title'));?></h1></a>
            </div>
            <div class="slogan"></div>
            <div class="telphone">全国服务热线：<?php echo C(strtoupper('ct_tel'));?></div>
        </div>
    </div>
    <div class="nav-box">
        <div class="wrapper">
            <div class="nav">
                <ul>
                    <li><a href="<?php echo WEB_ROOT;?>">首页</a></li> <?php $array_rp=$this->db->load("select * from cms_class  where followid=0 and ismenu=1  order by cate_order,cateid limit 10",0,false,0);$total_rp=count($array_rp);if($total_rp==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rp as $rp){ $i++;?> <?php $head_id=$rp['cateid'];?>
                        <li<?php echo is_active($rp['cateid'],$parentid);?>><a href="<?php echo cateurl($rp['cateid']);?>" <?php if ($rp['isnew']==1) { ?>
                                target="_blank" <?php }?>><?php echo $rp['cate_name'];?></a> <?php $array_rs=$this->db->load("select * from cms_class  where followid=$head_id and ismenu=1  order by cate_order,cateid limit 10",0,false,0);$total_rs=count($array_rs);if($total_rs==0){ ?>
<?php } else{ ?><ul
                                class="subcat">
<?php $i=0;} foreach($array_rs as $rs){ $i++;?>  <li><a href="<?php echo cateurl($rs['cateid']);?>" <?php if ($rs['isnew']==1) { ?>
                                        target="_blank" <?php }?>><?php echo $rs['cate_name'];?></a></li> 
                            <?php } if($total_rs>0){ ?> </ul>
<?php }?> </li> <?php } if($total_rp>0){ ?>
<?php }?>
                </ul>
            </div>
        </div>
    </div>