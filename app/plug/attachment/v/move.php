<?php if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>内容管理</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/layout.css">
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js"></script>
<script>
$(function()
{
	$(".gname").click(function()
	{
		var gid=$(this).val();
		$("#go").val(gid);
	})
})
</script>
</head>

<body class="bg_white">
    <div class="border_iframe">
        <p class="ui-mb"><strong>分组选择：</strong></p><input type="hidden" name="go" id="go" value="">
        <ul class="ztree">
        	<li><label class="ui-radio"><input type="radio" name="gid" class="gname" value="0"><i></i>未分组</label></li>
            {cms:rs top="0" table="cms_file_group" where="isshow=1" order="ordnum,aid"}
            <li><label class="ui-radio"><input type="radio" name="gid" class="gname" value="{$rs[aid]}"><i></i>{$rs[gname]}</label></li>
            {/cms:rs}
        </ul>
    </div>
</body>
</html>