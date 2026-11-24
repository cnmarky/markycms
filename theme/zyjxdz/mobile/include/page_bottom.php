<?php if(!defined('IN_CMS')) exit;?>
<div class="douyin_info">
            <h3>关注我们抖音了解更多</h3>
            <a href=" {cms[douyin_url]}" target="_blank">点击前往抖音查看</a>
            <img src="{cms[douyin_qcode]}" alt="">
        </div>
<div class="index06">
        <div class="intitle03">
            <span>产品中心</span>
            <a href="/product.html" class="more">查看更多</a>
        </div>
        <div class="tejia_cc0" style="height:340px;background:#fff;" id="tejia_con0">
            <div class="tejia_con0" style="height:340px;">
                <ul>
                {cms:rp table="cms_class" where="followid=2" order="cate_order,cateid"}
                <li>
                    <a href="{cateurl($rp[cateid])}" title="{$rp[cate_name]}">
                            <div class="img"><img src="{$rp[mycat_thumb]}" alt="{$rp[cate_name]}" /></div>
                            <span>{$rp[cate_name]}</span>
                        </a>
                    </li>
            {/cms:rp}
                </ul>
            </div>
            <a class="bbtn aleft" href="#left"></a> <a class="bbtn aright" href="#right"></a>
        </div>
        <script type="text/javascript" src="{WEB_THEME}mobile/js/Xslider.js"></script>
        <script type="text/javascript">
            $(function () {
                $("#tejia_con0").Xslider({
                    unitdisplayed: 2,
                    numtoMove: 2,
                    loop: "cycle",
                    autoscroll: 3000
                });
            })
        </script>
    </div>
