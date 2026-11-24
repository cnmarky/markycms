<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit;?>
<div class="right-top">
    <h1><?php echo $page_name;?></h1>
    <div class="crumbs">
        当前位置：<a href='<?php echo WEB_ROOT;?>' class='cumbhome'>网站首页</a>
            <?php foreach($position as $key=>$val) { ?>
                <a href="<?php echo $val['url'];?>" title="<?php echo $val['name'];?>"><?php echo $val['name'];?></a>
            <?php }?>
    </div>
</div>