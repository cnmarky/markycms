<?php if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>测试采集</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/layout.css">
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js"></script>
</head>

<body>
    <div class="position">当前位置：插件管理 > <a href="{U('index')}">采集管理</a> > <a href="{THIS_LOCAL}">测试采集</a></div>
    <div class="borders">
        <!---->
        
        <div class="ui-tabs ui-tabs-white" data-href="1">
            <ul class="ui-tabs-nav">
              <li class="active"><a href="{THIS_LOCAL}">测试采集</a></li>
            </ul>
            <div class="ui-tabs-content">
                <div class="ui-tabs-pane active">
                    <!--loop-->
                    <form method="post" class="ui-form">
                    <div class="ui-form-group ui-row">
                        <label class="ui-col-2">列表网址：</label>
                        <div class="ui-col-6" style="text-align:left;max-height:200px;overflow-y:auto;border:1px solid #ddd;padding:10px;">
                            {foreach $list_urls as $key=> $val}
                            <a href="{$val}" target="_blank">{$val}</a><br>
                            {/foreach}
                        </div>
                    </div>
                    <div class="ui-form-group ui-row">
                        <label class="ui-col-2">内容页网址：</label>
                        <div class="ui-col-6">
                            <a href="{$content_url}" target="_blank">{$content_url}</a>
                        </div>
                    </div>
                    <div class="ui-form-group ui-row">
                        <label class="ui-col-2">标题：</label>
                        <div class="ui-col-6">
                            {$title}
                        </div>
                    </div>
                    <div class="ui-form-group ui-row">
                        <label class="ui-col-2">日期：</label>
                        <div class="ui-col-6">
                            {$createdate}
                        </div>
                    </div>
					<div class="ui-form-group ui-row">
                        <label class="ui-col-2">关键字：</label>
                        <div class="ui-col-6">
                            {$keyword}
                        </div>
                    </div>
					<div class="ui-form-group ui-row">
                        <label class="ui-col-2">描述：</label>
                        <div class="ui-col-6">
                            {$description}
                        </div>
                    </div>
					<div class="ui-form-group ui-row">
                        <label class="ui-col-2">人气：</label>
                        <div class="ui-col-6">
                            {$hits}
                        </div>
                    </div>
                    <div class="ui-form-group ui-row">
                        <label class="ui-col-2">内容：</label>
                        <div class="ui-col-6">
                            {$content}
                        </div>
                    </div>
                    {if is_array($c_key_array)}
                    {foreach $c_key_array as $key=>$val}
                    <div class="ui-form-group ui-row">
                        <label class="ui-col-2">{$key}：</label>
                        <div class="ui-col-6">
                            {$val}
                        </div>
                    </div>
                    {/foreach}
                    {/if}
                    <div class="ui-form-group ui-row">
                        <label class="ui-col-2"></label>
                        <div class="ui-col-6">
                            <button type="button" class="ui-btn ui-back">返回</button>
                        </div>
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