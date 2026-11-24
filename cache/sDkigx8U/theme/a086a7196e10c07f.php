<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>模板管理</title>
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/css/ui.css">
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/admin/css/layout.css">
<script src="<?php echo WEB_ROOT;?>public/js/jquery.js"></script>
<script src="<?php echo WEB_ROOT;?>public/js/ui.js"></script>
</head>
<body>
    <div class="position">当前位置：模板插件 > <a href="<?php echo U('index');?>">模板管理</a><?php echo $position;?> > <a href="<?php echo THIS_LOCAL;?>">模板列表</a></div>
    <div class="border">
        <div class="ui-table-wrap">
    	<table class="ui-table ui-table-border ui-table-hover ui-table-striped ui-mb">
            <thead class="ui-thead-gray">
                <tr>
                	<th width="20"></th>
                    <th>名称</th>
                    <th width="300">说明</th>
                    <th width="150">大小</th>
                    <th width="180">修改时间</th>
                </tr>
            </thead>
            <tbody>
            <?php foreach($folder as $key=>$val) { ?>
            <?php if (!(in_array($val[0],['block']))) { ?>
            <tr>
                <td><span class="ui-icon-folder ui-text-yellow"></span></td>
                <td class="ui-text-left"><a href="<?php echo U('lists','root='.$val[2].'');?>"><?php echo $val[0];?></a></td>
                <td></td>
                <td></td>
                <td><?php echo date('Y-m-d H:i:s',$val[1]);?></td>
            </tr>
            <?php }?>
            <?php }?>
            <?php foreach($file as $key=>$val) { ?>
            <?php $n=$dir.'/'.$val[0];?>
            <?php $a=$note.$val[0];?>
            <?php if (!(in_array($val[0],['_config.php','_note.php','_theme.php']))) { ?>
            <tr>
                <td><span class="ui-icon-file-text ui-text-blue"></span></td>
                <td class="ui-text-left"><a href="<?php echo U('edit','root='.$val[3].'');?>"><?php echo $val[0];?></a></td>
                <td><?php if (isset($name[$a])) {  echo $name[$a]; }?></td>
                <td><?php echo $val[2];?></td>
                <td><?php echo date('Y-m-d H:i:s',$val[1]);?></td>
            </tr>
            <?php }?>
            <?php }?>
            </tbody>
        </table>
        </div>
    </div>
</body>
</html>