<?php if(!defined('IN_CMS')) exit;?>
<div class="sub_products">
    <div class="left-bar-title">产品分类 / PRODUCT LIST</div>
    <div class="promenu">
        <ul>
            {cms:rp table="cms_class" where="followid=2 and ismenu=1" order="cate_order,cateid"}
            {php $cateid=$rp[cateid]}
	            <li class="{is_active($rp[cateid],$parentid,'active',1)}"><span><a href="{cateurl($rp[cateid])}">{$rp[cate_name]}</a></span> 
                    <ul class="sub">
                        {cms:rg table="cms_show" where="classid=$cateid and isshow=1" order="ordnum desc,id desc"}<li><a class="{is_active($rg[id],$id,'active',1)}" href="{$rg[link]}">{$rg[title]}</a></li>
                        {/cms:rg}
                    </ul>
			    </li>
            {/cms:rp}
		</ul>
	</div>
</div>
<div class="sub_news">
    <div class="left-bar-title">新闻动态 / NEWS</div>
    <ul>
        {cms:rs top="10" table="cms_show" where="isshow=1 and classid=15" order="ordnum desc,id desc"}
            <li><a href="{$rs[link]}" title="{$rs[title]}"><i></i>{cut($rs[title],50,1)}</a></li>
        {/cms:rs}
    </ul>
</div>
<div class="sub_contact">
    <div class="left-bar-title">联系我们 / CONTACT US</div>
    <ul>
        <li>联系人:  {cms[contact_name]}</li>
        <li>电话:  {cms[ct_tel]}</li>
        <li>传真:  {cms[ct_fax]}</li>
        <li>手机号: {cms[ct_mobile]}</li>
        <li>邮箱: {cms[ct_email]}</li>
        <li>地址: {cms[ct_address]}</li>
    </ul>
</div>
<div class="sub_contact_wx">
    <span>扫一扫添加工程师微信</span>
    <img><img src="{cms[ct_weixin]}" width="260"/></img>
</div>