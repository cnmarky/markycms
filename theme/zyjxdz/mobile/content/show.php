<?php if(!defined('IN_CMS')) exit;?>{include file="mobile/include/head.php"}
<div id="wrap">
        
    <div class="intitle">
        <span>行业资讯</span>
        <div class="right">当前位置：<a href='{WEB_ROOT}' class='cumbhome'>首页</a>
        {foreach $position as $key=>$val}
                <a href="{$val['url']}" title="{$val['name']}">{$val['name']}</a>
            {/foreach}</div>
    </div>
    <div id="mid">
            <div id="right_content">
                    <h2 id="newTitle">{$title}</h2>
                    <div id="newsInfo">信息来自：安阳卓易机械电子</div>
                    <div class="newsContent">
                    {$content}
                    </div>
                          </div>
              </div>
    </div>
    {include file="mobile/include/page_bottom.php"}
</div>
</div>
{include file="mobile/include/foot.php"}
</body>
</html>