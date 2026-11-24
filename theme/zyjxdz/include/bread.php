<?php if(!defined('IN_CMS')) exit;?>
<div class="right-top">
    <h1>{$page_name}</h1>
    <div class="crumbs">
        当前位置：<a href='{WEB_ROOT}' class='cumbhome'>网站首页</a>
            {foreach $position as $key=>$val}
                <a href="{$val['url']}" title="{$val['name']}">{$val['name']}</a>
            {/foreach}
    </div>
</div>