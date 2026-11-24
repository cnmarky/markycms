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
    <ul class="piclist">
    {cms:rs pagesize="$cate_page" num="3" table="$table" where="$where" order="$order"}
                        <li>
                        <a href="{$rs[pic]}" title="{$rs[title]}"><img src="{$rs[pic]}" alt="{$rs[title]}" /></a>                              
                            </li> {/cms:rs}
                     </ul>
        {if $pg->totalpage>1}
        <div class="page"><ul>{$showpage}</ul></div>
        {/if}
        <div class="douyin_info">
            <h3>更多工程视频案例关注我们抖音查看</h3>
            <a href=" https://v.douyin.com/ifBUawun/" target="_blank">点击前往抖音查看</a>
            <img src="https://www.zyjxdz.com/upfile/2025/01/1737468952976.jpg" alt="">
        </div>
        <style>
            .piclist li img {
                width: 48%;
                margin: 1%;
                float: left;
            }
        </style>
    </div>
    {include file="mobile/include/page_bottom.php"}
</div>
	{include file="mobile/include/foot.php"}
</body>
</html>