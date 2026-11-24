<?php if(!defined('IN_CMS')) exit;?>
<div class="pro_detail03">
    <h3 class="proinfo-title"> 相关产品 </h3>
        <ul>
            {cms:rp table="cms_class" where="followid=2" order="cate_order,cateid"}
                <li>
                    <a href="{cateurl($rp[cateid])}" title="{$rp[cate_name]}">
                        <p class="pic">
                            <img src="{$rp[mycat_thumb]}" width="216" alt="{$rp[cate_name]}" />
                        </p>
                        <span>{$rp[cate_name]}</span>
                    </a>
                </li>
            {/cms:rp}
        </ul>
</div>