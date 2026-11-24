<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit; include $this->tp->parse_include_twos("include/head.php");?>
<div class="sub_banner"><img src="<?php echo get_cate_self($mycat_banner,$topid,'mycat_banner',WEB_ROOT.'theme/20170102/images/b1.jpg');?>"></div>
        <div class="sub_content">
            <div class="sub_main">
                <div class="wrapper">
                    <div class="sub_main_left">
                    <?php include $this->tp->parse_include_twos("include/left.php");?>
                    </div>
                    <div class="sub_main_right">
                        <?php include $this->tp->parse_include_twos("include/bread.php");?>
                        <div class="main">
                        <?php echo $content;?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	<?php include $this->tp->parse_include_twos("include/foot.php");?>
</body>
</html>