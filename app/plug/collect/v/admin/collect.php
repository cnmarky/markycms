<?php if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>添加任务</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/layout.css">
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js"></script>
<style>
.red{color:#f30;padding:0 5px;}
.blue{color:#06f;padding:0 5px;}
</style>
</head>

<body>
    <div class="position">当前位置：插件管理 > <a href="{U('index')}">采集管理</a> > <a href="{THIS_LOCAL}">采集任务</a></div>
    <div class="borders">
        <!---->
        
        <div class="ui-tabs ui-tabs-white" data-href="1">
            <ul class="ui-tabs-nav">
              <li class="active"><a href="{THIS_LOCAL}">采集任务</a></li>
            </ul>
            <div class="ui-tabs-content">
                <div class="ui-tabs-pane active">
                    <!--loop-->
                    <form method="post" class="ui-form">
                        <div class="ui-form-group">
                            {if $result==0}
                            <p>共计<span class="red">{$total_list}</span>个列表需要采集，详细如下：</p>
                            <p>当前列表网址：<a href="{$list_url}" target="_blank" class="blue">{$list_url}</a></p>
                            <p>正在采集，第<span class="red">{$listnum}</span>个列表，共计<span class="red">{$total_num}</span>条，已处理<span class="blue">{$idnum}</span>条
                            {if $msg!=''}
                            <fieldset>
                                <legend>失败提示</legend>
                                <div>原 因：<span class="ui-text-red">{$msg}</span><br>网 址：{$show_url}</div>
                            </fieldset>
                            {/if}
                            <script>setTimeout("location.href='{$nexturl}'",300)</script>
                            {else}
                            <p>采集已完成，成功：<span class="red">{$success}</span>条，失败：<span class="blue">{$fail}</span>条</p>
                            <p><span class="red" id="timer">60</span>秒后返回，<a href="{U('index')}">等不及了，立刻返回</a></p>
                            <script>
                            function sms(t0)
                            {
                                $("#timer").html(t0);
                                t0=t0-1;
                                if(t0>0){window.setTimeout("sms('"+t0+"')",1000);}
                            }
                            sms(60);
                            setTimeout("location.href='{U('index')}'",60000)
                            </script>
                            {/if}
                        </div>
                    </form>
                    <!--loop-->
                </div>
            </div>
        </div>
        
        <!---->
    </div>


</body>
</html>