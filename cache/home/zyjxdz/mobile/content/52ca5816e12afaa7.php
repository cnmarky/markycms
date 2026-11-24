<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit; include $this->tp->parse_include_twos("mobile/include/head.php");?>
<div id="wrap">
    <div class="intitle">
        <span><?php echo $page_name;?></span>
        <div class="right">当前位置：<a href='<?php echo WEB_ROOT;?>' class='cumbhome'>首页</a>
            <?php foreach($position as $key=>$val) { ?>
            <a href="<?php echo $val['url'];?>" title="<?php echo $val['name'];?>"><?php echo $val['name'];?></a>
            <?php }?>
        </div>
    </div>
    <div id="mid">
        <div id="right_content">
            　　<?php echo $content;?>
        </div>
        <style>
            #right_content h2 { text-align:left}
        </style>
    </div>
</div>
<?php include $this->tp->parse_include_twos("mobile/include/page_bottom.php");?>
</div>
</div>
<?php include $this->tp->parse_include_twos("mobile/include/foot.php");?>
</body>
</html>