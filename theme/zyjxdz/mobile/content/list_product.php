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
        <ul class="piclist">
            {cms:rs pagesize="$cate_page" table="$table" where="$where" order="$order"}
            <li>
                <a href="{$rs[link]}" title="{$rs[title]}"><img src="{$rs[pic]}" alt="{$rs[title]}"></a>
                <a href="{$rs[link]}" title="Z{$rs[title]}"><span>{$rs[title]}</span></a>
                <!-- <span class="short-con">{cut($rs[intro],120,1)}</span> -->
                <a href="tel:{cms[ct_tel]}" class="xunjia">电话询价</a>
                <a href="{cms[ct_work_time]}" class="zixun">在线咨询</a>
            </li>
            {/cms:rs}
        </ul>
        <style>
            .piclist li {
    width: 320px;
    height: 450px;
    text-align: center;
    line-height: 126px;
    margin: 0 27px;
    overflow: hidden;
    float: left;
    position: relative;
}
            .piclist li img {
    width: auto;
    max-width: 306px;
    height: 240px;
    background: #f5f5f5;
    display: block;
    margin: 0 auto;
    position: relative;
    z-index: 9;
}
        </style>
        {if $pg->totalpage>1}
        <div class="page">
            <ul>{$showpage}</ul>
        </div>
        {/if}
    </div>
    {include file="mobile/include/page_bottom.php"}
</div>
{include file="mobile/include/foot.php"}
</body>

</html>