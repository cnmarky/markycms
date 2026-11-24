<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit; include $this->tp->parse_include_twos("mobile/include/head.php");?>
<div id="wrap">
    <div class="intitle">
        <span><?php echo $cate_name;?></span>
        <div class="right">当前位置：<a href='<?php echo WEB_ROOT;?>' class='cumbhome'>首页</a>
        <?php foreach($position as $key=>$val) { ?>
                <a href="<?php echo $val['url'];?>" title="<?php echo $val['name'];?>"><?php echo $val['name'];?></a>
            <?php }?>
    </div>
    </div>
    <div id="mid" width="750px">
    <div id="right_content">
                <p id="infoImage"><img src="<?php echo $pic;?>"></p>
                <h2 id="newTitle"><strong><?php echo $title;?></strong></h2>
                <div id="newsContent">
                    <div class="info-tit"><span>产品特点</span></div>
                    <div class="info-con">
                    　　<?php echo $myfeatures;?></div>
                    <div class="shell-con"><?php echo C(strtoupper('ct_mobile'));?><a href="tel:<?php echo C(strtoupper('ct_mobile'));?>">点击拨打</a></div>
                    <div class="info-tit"><span>应用范围：</span></div>
                    <p class="desc"><?php echo $myapplication;?></p>
                    <div class="info-tit"><span>产品详情</span></div>
                    <?php echo $content;?>
                </div>
            </div>
    </div>
    <?php include $this->tp->parse_include_twos("mobile/include/page_bottom.php");?>
</div>
	<?php include $this->tp->parse_include_twos("mobile/include/foot.php");?>
</body>
</html>