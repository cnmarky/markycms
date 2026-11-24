<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>模板选择</title>
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/css/ui.css">
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/admin/css/layout.css">
<script src="<?php echo WEB_ROOT;?>public/js/jquery.js"></script>
<script src="<?php echo WEB_ROOT;?>public/js/ui.js"></script>
</head>
<body class="bg_tree">
<div class="border_iframe">
    <input type="hidden" name="go" id="go" value="">
    <div class="position">当前位置：<a href="<?php echo U('template');?>">根目录</a><?php echo $position;?>模板列表</div>
    <table class="ui-table ui-mb">
        <thead class="ui-thead-gray">
            <tr>
                <th>名称</th>
                <th width="120">说明</th>
                <th width="180">修改时间</th>
            </tr>
        </thead>
        <tbody>
        <?php foreach($folder as $key=>$val) { ?>
        <?php if (!(in_array($val[0],['block','mobile']))) { ?>
        <tr>
            <td class="ui-text-left"><span class="ui-icon-folder ui-text-yellow"></span>　<a href="<?php echo U('template','root='.$val[2].'');?>"><?php echo $val[0];?></a></td>
            <td></td>
            <td><?php echo date('Y-m-d H:i:s',$val[1]);?></td>
        </tr>
        <?php }?>
        <?php }?>
        <?php foreach($file as $key=>$val) { ?>
        <?php $a=trim($dir.$val[0],"/");?>
        <?php if (!(in_array($val[0],['_config.php','_note.php','_theme.php']))) { ?>
        <tr config="<?php echo ltrim($a,"/");?>" class="choose" title="点击选择此模板">
            <td class="ui-text-left">　<span class="ui-icon-file-text ui-text-blue"></span>　<a href="javascript:;"><?php echo $val[0];?></a></td>
            <td class="ui-text-gray"><?php if (isset($name[$a])) {  echo $name[$a]; }?></td>
            <td><?php echo date('Y-m-d H:i:s',$val[1]);?></td>
        </tr>
        <?php }?>
        <?php }?>
        </tbody>
    </table>
</div>
<script>
$(function()
{
	$(".choose").click(function()
	{
		var val=$(this).attr("config");
		$("table tr").each(function()
		{
			$(this).removeClass("ui-active");
		})
		$(this).addClass("ui-active");
		$("#go").val(val);
	})
})
</script>
</body>
</html>