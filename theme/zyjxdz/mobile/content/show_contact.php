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
    <dl class="contact_info">
          <dd><i class="contact"> </i>联系人: {cms[contact_name]}</dd>
          <dd><i class="tel"> </i>手机: {cms[ct_mobile]}</dd>
          <dd><i class="tel"> </i>电话: {cms[ct_tel]}</dd>
          <dd><i class="fax"> </i>传真: {cms[ct_fax]}</dd>
          <dd><i class="mail"> </i>邮箱: {cms[ct_email]}</dd>
          <dd><i class="address"> </i>地址: {cms[ct_address]}</dd>
          <dd style="text-align:center;font-size:32px;font-weight:bold">扫一扫添加工程师微信</dd>
          <dd><img src="{cms[ct_weixin]}" width="500" style="border-radius:20px;margin:0 auto"></dd>
        </dl>
    {include file="mobile/include/page_bottom.php"}
</div>
	{include file="mobile/include/foot.php"}
</body>
</html>