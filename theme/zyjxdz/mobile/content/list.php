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
    <div id="mid">
        <ul class="newslist">
            {cms:rs pagesize="$cate_page" num="3" table="$table" where="$where" order="$order"}
            <a href="{$rs[link]}" title="{$rs[title]}">
                <li style="border-bottom: 1px #ddd dashed">
                    <span>{$rs[title]}</span>
                    {cut($rs[intro],160,1)}
                </li>
            </a>
            {/cms:rs}
        </ul>
        {if $pg->totalpage>1}
        <div class="page"><ul>{$showpage}</ul></div>
        {/if}
    </div>
    {include file="mobile/include/page_bottom.php"}
</div>

	{include file="mobile/include/foot.php"}
</body>
</html>