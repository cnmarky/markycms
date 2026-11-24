<?php if(!defined('IN_CMS')) exit;?>{include file="include/head.php"}
<div class="sub_banner"><img src="{get_cate_self($mycat_banner,$topid,'mycat_banner',WEB_ROOT.'theme/20170102/images/b1.jpg')}"></div>
<div class="wrapper page_404">
    <img src="{WEB_THEME}images/404.png" alt="" class="img-responsive">
    <div class="returnn">
        哎呀~ 此路不通！别担心 <span class="text-red" id="timeout"></span> 秒后将自动返回首页......
    </div>
    <div class="oper">
        <a href="/"><span class="icon-home"></span> 回首页</a>
        <a href="javascript:history.go(-1)"><span class=" icon-reply"></span> 上一步</a>
        <a onclick="javascript:location.href='location.href'"><span class=" icon-refresh"></span> 刷新</a>
    </div>
</div>

<div class="wrapper">
    <h3>您也可以直接查看我们的产品</h3>
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
                                <p class="pic"><img src="{$rs[pic]}" width="300" alt="{$rs[title]}" /></p>
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
<style>
    .page_404{
        text-align: center; 
        border-radius: 20px;
        margin:20px auto;
        padding: 40px 0 10px;
    }
    .page_404 .returnn {
        margin-top: 20px;
        text-align: center;
    }
    .page_404 .oper {
        margin-top: 20px;
        text-align: center;
    }
    .page_404 .oper a{
        display: inline-block;
        margin: 0 15px;
        padding: 5px 20px;
        background: #ffffff;
        border-radius: 3px
        
    }
    .text-red {
        color: red;
    }
    h3 {
        font-size: 24px;
        text-align:center;
        margin: 40px auto -20px;
    }
</style>
<script type="text/javascript">  
    var t = 5;  
    function showTime(){  
        t -= 1;  
        document.getElementById('timeout').innerHTML= t;  
        if(t==0){  
            location.href='/index.php';  
        }  
        setTimeout("showTime()",1000);  
    }  
    showTime();  
</script>  
{include file="include/foot.php"}
</body>
</html>