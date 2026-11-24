<?php if(!defined('IN_CMS')) exit;?>{include file="include/head.php"}
<div class="sub_banner"><img src="{get_cate_self($mycat_banner,$topid,'mycat_banner',WEB_ROOT.'theme/20170102/images/b1.jpg')}"></div>
<div class="sub_content">
            <div class="sub_main">
                <div class="wrapper">
                    <div class="sub_main_left">
                        {include file="include/left.php"}
                    </div>
                    <div class="sub_main_right">
                        {include file="include/bread.php"}
                        <div class="news_main">
                            <div class="nm_bottom">
                                <ul>
                {cms:rs pagesize="$cate_page" table="$table" where="$where" order="$order"}
                                    <li> <a href="{$rs[link]}" title="{$rs[title]}">
                                        <p class="date"><span class="day">{date('d',$rs[createdate])}</span> <span class="month">{date('Y-m',$rs[createdate])}</span></p>
                                        {if $rs[ispic]==1}
                                        <p class="pic"><img src="{$rs[pic]}" alt="{$rs[title]}" /></p>
                                        {/if}
                                        <dl>
                                            <dt>{$rs[title]}</dt>
                                            <dd>{cut($rs[intro],300,1)}</dd>
                                        </dl>
                                    </a> </li>
                                    {/cms:rs}
                                </ul>
                            </div>
                            <div class="page">
                                {if $pg->totalpage>1}
                                {$showpage}
                                {/if}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--contentEnding-->
        {include file="include/foot.php"}
    </body>
</html>