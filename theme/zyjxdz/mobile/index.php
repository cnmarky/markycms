<?php if(!defined('IN_CMS')) exit;?>{include file="mobile/include/head.php"}
<div class="flash">
    <link rel="stylesheet" href="{WEB_THEME}mobile/css/flexslider.css" type="text/css" />
    <script type="text/javascript" src="{WEB_THEME}mobile/js/jquery.flexslider-min.js"></script>
    <div class="block_home_slider">
        <div id="home_slider" class="flexslider">
            <ul class="slides">
                {cms:rs table="cms_ad" where="cid=2 and isshow=1" order="ordnum,id"}
                <li>
                    <a href="{$rs[url]}">
                        <div class="slide">
                            <img src="{$rs[pic]}" alt="{$rs[name]}" />
                        </div>
                    </a>
                </li>
                {/cms:rs}
            </ul>
        </div>
        <script type="text/javascript">
            $(function () {
                $('#home_slider').flexslider({
                    animation: 'slide',
                    controlNav: true,
                    directionNav: true,
                    animationLoop: true,
                    slideshow: true,
                    useCSS: false
                });
            });
        </script>
    </div>
</div>
<div class="welcome">
    <h1>专业的振动器产品制造商</h1>
    <p>专注于全行业物料堵塞解决方案</p>
    <p>致力于振动器的研制与开发</p>
</div>
<div class="inproduct" style="margin-top:20px;">
    <div class="intitle01">
        <span><b>产品中心</b>
        </span>
        <a href="/product.html" class="more">更多</a>
    </div>
    <ul class="piclist">
        {cms:rp table="cms_class" where="followid=2" order="cate_order,cateid"}
        <li>
            <a class="aimg" href="{cateurl($rp[cateid])}" title="{$rp[cate_name]}"><img src="{$rp[mycat_thumb]}"
                    alt="{$rp[cate_name]}" /></a>
            <a href="{cateurl($rp[cateid])}"><span>{$rp[cate_name]}</span></a>
            <a href="tel:{cms[ct_tel]}" class="xunjia">电话询价</a>
            <a href="{cms[ct_work_time]}" class="zixun">在线咨询</a>
        </li>
        {/cms:rp}
    </ul>
    <style>
        .piclist li {
            float: left;
        }
        .piclist li .aimg {
            width: 330px;
            height: 260px;
        }
        .piclist li span {
            text-align: center;
        }
    </style>
</div>
<span class="xiaoshoutel">全国销售热线：<b>{cms[ct_tel]}</b>　<a href="tel:{cms[ct_tel]}"><b>点击拨打</b></a></span>
<hr />
<div class="company-div">
    <h2 style="margin-bottom:20px;">公司简介</h2>
    <div style="width:710px;padding:0 20px;font-size:1.5rem;">
        <p>安阳市卓易机械电子有限公司，致力于振动器的研制与开发，专注于解决物料堵塞的各种问题。</p>
        <p>专业生产气动振动器、气动敲击锤、电动振动器、电动敲击锤、小型电磁振动器、零速开关、振动器控制箱、电磁阀箱等产品。产品广泛应用于化工、机械、食品、饲料、水泥、制药、矿业等所有加工粉体的行业。</p>
        <p>公司拥有一支具有丰富的研发和生产经验的技术人员构成的团队，凭借雄厚的技术力量，严谨的工作态度和热诚的服务，得到了众多用户的信赖。</p>
    </div>
    <p class="pic" style="margin:15px"> <img src="{WEB_THEME}mobile/images/pro03.jpg" width="100%" height="auto" /> </p>
</div>
<hr />
<div class="index011">
    <div class="intitle03">
        <span>工程案例</span>
        <a href="/project.html" class="more">查看更多</a>
    </div>
    <div class="tejia_cc0" style="height:240px;background:#fff;" id="tejia_con0">
        <div class="tejia_con0" style="height:240px;">
            <ul>
                {cms:rs top="0,10" table="cms_show" where="isshow=1 and classid=4" order="ordnum desc,id desc"}
                <li>
                    <a href="/project.html">
                        <div class="img"><img src="{$rs[pic]}" /></div>
                    </a>
                </li>
                {/cms:rs}
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
<hr />
<div class="index04">
    <div class="intitle02">
        <span>新闻动态</span>
        <a href="/news/" class="more">查看更多</a>
    </div>
    <ul class="newslist">
        {cms:rs top="14" table="cms_show" where="isshow=1 and classid=15" order="ordnum desc,id desc"}
        <a href="/{$rs[link]}" title="{$rs[title]}">
            <li>
                <span>{$rs[title]}</span>
                {cut($rs[intro],160,1)}
            </li>
        </a>
        {/cms:rs}
    </ul>
</div>
</div>
<div style="clear: both;"></div>
{include file="mobile/include/foot.php"}
</body>

</html>