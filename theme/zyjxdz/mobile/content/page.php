<?php if(!defined('IN_CMS')) exit;?>{include file="mobile/include/head.php"}
<div id="wrap">
    <div class="intitle">
        <span>{$page_name}</span>
        <div class="right">当前位置：<a href='{WEB_ROOT}' class='cumbhome'>首页</a>
            {foreach $position as $key=>$val}
            <a href="{$val['url']}" title="{$val['name']}">{$val['name']}</a>
            {/foreach}
        </div>
    </div>
    <div id="mid">
        <div id="right_content">
            　　{$content}
        </div>
        <style>
            #right_content h2 { text-align:left}
        </style>
    </div>
</div>
{include file="mobile/include/page_bottom.php"}
</div>
</div>
{include file="mobile/include/foot.php"}
</body>

</html>