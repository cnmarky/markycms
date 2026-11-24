<?php if(!defined('IN_CMS')) exit;?>{include file="include/head.php"}
<div class="banner">
    <div class="banner_show" id="banner_show">
        {cms:rs table="cms_ad" where="cid=1 and isshow=1" order="ordnum,id"}
        <a href="{$rs[url]}" class="bannger_inbox"><img src="{$rs[pic]}" alt="{$rs[name]}" width="1920"
                height="500" /></a>
        {/cms:rs}
        <div class="yq_banner_list" id="yq_banner_list">
            {cms:rs table="cms_ad" where="cid=1 and isshow=1" order="ordnum,id"}
            {php $id=$rs[id]-2}
            <a href="javascript:;" rel="{$id}" {if ($id)==0} class="hover" {/if}></a>
            {/cms:rs}
        </div>
        <div class="banner_pre_next" style="display: none; ">
            <a href="javascript:;" class="banner_btn_left"><</a>
            <a href="javascript:;" class="banner_btn_right">></a>
        </div>
    </div>
</div>
<!--bannerEnding-->
<div class="content">
    <div class="c_box01">
        <div class="wrapper">
            <div class="title">
                <h2>专业的振动器产品制造商</h2>
                <p>致力于振动器的研制与开发，专注于解决物料堵塞的各种问题</p>
            </div>
            <div class="rollBox">
                <div class="product-type">
                    <span>产品分类</span>
                    {cms:rp table="cms_class" where="followid=2" order="cate_order,cateid"}
                    <a href="{cateurl($rp[cateid])}">{$rp[cate_name]}</a>
                    {/cms:rp}
                </div>
                <div class="btn"><a id="next" href="#" class="btn01"></a> <a id="prev" href="#" class="btn02"></a></div>
                <div id="cpzsm">
                    <ul>
                        {cms:rp table="cms_class" where="followid=2" order="cate_order,cateid"}
                        <li>
                            <a href="{cateurl($rp[cateid])}" title="{$rp[cate_name]}">
                                <p class="pic"><img src="{$rp[mycat_thumb]}" width="216" alt="{$rp[cate_name]}" /></p>
                                <p class="text">{$rp[cate_name]}</p>
                            </a>
                        </li>
                        {/cms:rp}
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="c_box03">
        <div class="wrapper">
            {block("homeaboutus")}
        </div>
    </div>
    <div class="c_box04">
        <div class="wrapper">
            <div class="index_news">
                <div class="tetle">新闻中心 <a href="/news.html">查看更多＋</a></a></div>
                <ul>
                    {cms:rs top="14" table="cms_show" where="isshow=1 and classid=15" order="ordnum desc,id desc"}
                    <li><a href="{$rs[link]}"
                            title="{$rs[title]}"><i></i>{cut($rs[title],50,1)}<span>{date('Y-m-d',$rs[createdate])}</span></a>
                    </li>
                    {/cms:rs}
                </ul>
            </div>
            <div class="index_gallery">
                <div class="tetle">工程案例 <a href="/project.html">查看更多＋</a></a></div>
                <div class="aside-parts-slide">
                    <ul id="aside-parts-slide">
                        <li style="display:block;">
                            {cms:rs top="0,4" table="cms_show" where="isshow=1 and classid=4" order="ordnum desc,id
                            desc"}
                            <div class="left"><a href="/project.html"><img src="{$rs[pic]}" width="330" /></a></div>
                            {/cms:rs}
                        </li>
                        <li>
                            {cms:rs top="2,4" table="cms_show" where="isshow=1 and classid=4" order="ordnum desc,id
                            desc"}
                            <div class="left"><a href="/project.html"><img src="{$rs[pic]}" width="330" /></a></div>
                            {/cms:rs}
                        </li>
                        <li>
                            {cms:rs top="4,4" table="cms_show" where="isshow=1 and classid=4" order="ordnum desc,id
                            desc"}
                            <div class="left"><a href="/project.html"><img src="{$rs[pic]}" width="330" /></a></div>
                            {/cms:rs}
                        </li>
                    </ul>
                    <!--<ul id="aside-parts-nav">-->
                    <!--    <li></li>-->
                    <!--    <li></li>-->
                    <!--    <li></li>-->
                    <!--</ul>-->
                </div>
            </div>
        </div>
    </div>
</div>
{include file="include/foot.php"}
<script type="text/javascript" src="{WEB_THEME}js/focus.js"></script>
<script type="text/javascript" src="{WEB_THEME}js/jcarousellite.min.js"></script>
<script type="text/javascript" src="{WEB_THEME}js/jquery.soChange-min.js"></script>
</body>
</html>