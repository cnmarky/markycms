<?php if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>蜘蛛来访</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/layout.css">
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js"></script>
</head>

<body>

<div class="ui-pr-20 ui-pt-20">
	<form>
    <div class="ui-form-group ui-row">
        <label class="ui-col-2 ui-col-form-label">代码：</label>
        <div class="ui-col-10">
        	<textarea class="ui-form-ip" id="code" readonly><script src="{U('index/index')}"></script></textarea>
			<span class="input-tips">请将代码粘贴到底部模板中</span>
        </div>
    </div>
    <div class="ui-form-group ui-row">
        <label class="ui-col-2 ui-col-form-label"></label>
        <div class="ui-col-10">
        	<button type="button" class="ui-btn ui-btn-info ui-copy" data-target="#code">复制代码</button>
        </div>
    </div>
    </form>
</div>

</body>
</html>