<?php if(!defined('IN_CMS')) exit;?>{include file="mobile/include/head.php"}
<div id="wrap">
    <div class="intitle">
        <span>{$cate_name}</span>
        <div class="right">当前位置：<a href='{WEB_ROOT}' class='cumbhome'>首页</a>
        {foreach $position as $key=>$val}
                <a href="{$val['url']}" title="{$val['name']}">{$val['name']}</a>
            {/foreach}
    </div>
    </div>
    <div id="mid" width="750px">
    <div id="right_content">
                <p id="infoImage"><img src="{$pic}"></p>
                <h2 id="newTitle"><strong>{$title}</strong></h2>
                <div id="newsContent">
                    <div class="info-tit"><span>产品特点</span></div>
                    <div class="info-con">
                    　　{$myfeatures}</div>
                    <div class="shell-con">{cms[ct_mobile]}<a href="tel:{cms[ct_mobile]}">点击拨打</a></div>
                    <div class="info-tit"><span>应用范围：</span></div>
                    <p class="desc">{$myapplication}</p>
                    <div class="info-tit"><span>产品详情</span></div>
                    {$content}
                </div>
            </div>
    </div>
    {include file="mobile/include/page_bottom.php"}
</div>
	{include file="mobile/include/foot.php"}
</body>
</html>