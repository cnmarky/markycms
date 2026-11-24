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
                        <div class="faq_main">
                <ul>
                {cms:rs pagesize="$cate_page" table="$table" where="$where" order="$order"}
                    <li>
                        <dl>
                            <a href="{$rs[link]}" title="{$rs[title]}">
                            <dt><i class="wen"></i><span>{$rs[title]}
                            </span></dt>
                            <dd><i class="da"></i><span>{cut($rs[intro],300,1)}</span></dd>
                            <dd class="detail">查看更多&gt;&gt;</dd>
                            </a>
                        </dl>
                    </li>
                    {/cms:rs}
                    <span></span>
                </ul>
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
        {include file="include/foot.php"}
    </body>
</html>