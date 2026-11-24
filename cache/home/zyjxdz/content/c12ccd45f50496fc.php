<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit; include $this->tp->parse_include_twos("include/head.php");?>
<div class="sub_banner">
    <img src="<?php echo get_cate_self($mycat_banner,$topid,'mycat_banner',WEB_ROOT.'theme/20170102/images/b1.jpg');?>">
</div>
<div class="sub_content">
    <div class="sub_main">
        <div class="wrapper">
            <div class="sub_main_left">
                <?php include $this->tp->parse_include_twos("include/left.php");?>
            </div>
            <div class="sub_main_right">
            <?php include $this->tp->parse_include_twos("include/bread.php");?>
                <div class="main-content">
                    <h1><?php echo $title;?></h1>
                        <div class="article-info">信息来自：安阳卓易机械电子有限公司_气动敲击锤_气动振动器</div>
                            <?php echo $content;?>
                        </div>
                    <?php include $this->tp->parse_include_twos("include/show_bottom.php");?>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include $this->tp->parse_include_twos("include/foot.php");?>
</body>
</html>