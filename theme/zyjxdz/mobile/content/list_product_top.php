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
    {cms:rp table="cms_class" where="followid=2" order="cate_order,cateid"}
                    <div class="pro_cover">
                    {php $head_id=$rp[cateid]}
                        <div class="sub_pro_title">
                        <h2>{$rp[cate_name]}</h2>
                        <p>化工、食品、金属铸造、水泥、饲料工业、制药、化学、肥料、橡塑胶工业、矿业.运输设备、仓储业、污染防治等工业。</p>
                        <a href="{cateurl($rp[cateid])}">查看更多＋</a>
                        </div>
                        <ul class="pro_show">
                        {cms:rs table="cms_show" where="classid=$head_id and isshow=1" order="id desc"}
                        {php $show_id=$rs[id]}
                    <li>
                                <a href="{$rs[link]}" title="{$rs[title]}">
                                <p class="pic"><img src="{$rs[pic]}" width="285" alt="{$rs[title]}" /></p>
                                <dl>
                                    <dt>{$rs[title]}</dt>
                                    <!-- {cms:rg table="cms_data" where="dataid=$show_id" order="dataid"}
                                    <dd>{$rg[myfeatures]}</dd>
                                    {/cms:rg} -->
                                </dl>
                                </a>
                            </li>
                            {/cms:rs}

                        </ul>
                    </div>
                    {/cms:rp}
    </div>
</div>
	{include file="mobile/include/foot.php"}
</body>
</html>