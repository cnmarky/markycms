<?php if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>百度Xml地图</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/layout.css">
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js"></script>
</head>

<body>
    <div class="position">当前位置：插件管理 > <a href="{THIS_LOCAL}">百度Xml地图</a></div>
    <div class="borders">
        <!---->
        <div class="ui-tabs ui-tabs-white">
            <ul class="ui-tabs-nav">
                <li class="active"><a href="javascript:;">百度Xml地图</a></li>
            </ul>
            <div class="ui-tabs-content">
                <div class="ui-tabs-pane active">
                    <!--1111-->
                    <form class="ui-form" method="post" action="{THIS_LOCAL}" target="sitemap">
                    	<div class="ui-form-group ui-row">
                        	<label class="col-left ui-col-form-label">项目选择：</label>
                            <div class="col-right col-right-top">
                                <label class="ui-checkbox"><input type="checkbox" name="project[0]" value="0" checked><i></i>网站首页</label>
                                <label class="ui-checkbox"><input type="checkbox" name="project[1]" value="1" checked><i></i>网站分类</label>
                                <label class="ui-checkbox"><input type="checkbox" name="project[2]" value="2" checked><i></i>网站内容</label>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                        	<label class="col-left ui-col-form-label">更新频率：</label>
                            <div class="col-right">
                                <select name="speed" class="ui-form-ip">
                                    <option value="always">always</option>
                                    <option value="hourly">hourly</option>
                                    <option value="daily" selected>daily</option>
                                    <option value="weekly">weekly</option>
                                    <option value="monthly">monthly</option>
                                    <option value="yearly">yearly</option>
                                    <option value="never">never</option>
                                </select>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                        	<label class="col-left ui-col-form-label">优先权：</label>
                            <div class="col-right">
                                <select name="order" class="ui-form-ip">
                                    <option value="0.1">0.1</option>
                                    <option value="0.2">0.2</option>
                                    <option value="0.3">0.3</option>
                                    <option value="0.4">0.4</option>
                                    <option value="0.5">0.5</option>
                                    <option value="0.6">0.6</option>
                                    <option value="0.7">0.7</option>
                                    <option value="0.8" selected>0.8</option>
                                    <option value="0.9">0.9</option>
                                    <option value="1.0">1.0</option>
                                </select>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                        	<label class="col-left ui-col-form-label">内容数量：</label>
                            <div class="col-right">
                                <input type="text" name="content" class="ui-form-ip" value="1000">
                                <span class="input-tips">为0时候，生成全部</span>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                        	<label class="col-left ui-col-form-label"></label>
                            <div class="col-right">
                            	<input type="hidden" name="token" value="{$token}">
                            	<button type="submit" class="ui-btn ui-btn-info">生成</button>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label-top">生成结果：</label>
                            <div class="col-right ui-bd ui-pl ui-pt">
                                <iframe src="about:blank" name="sitemap" class="w-100" height="70" frameborder="0" scrolling="auto"></iframe>
                            </div>
                        </div>
                    </form>
                    <!--1111-->
                </div>
                
            </div>
        </div>
        <!---->
    </div>

</body>
</html>