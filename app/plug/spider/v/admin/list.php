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
    <div class="position">当前位置：插件管理 > <a href="{U('index')}">蜘蛛来访</a> > <a href="{U('lists','name='.$name.'')}">查看明细</a></div>
    <div class="border">
        <!---->
        <form method="post" class="ui-form">
        <div class="ui-table-wrap">
        <table class="ui-table ui-table-border ui-table-hover ui-table-striped ui-mb ui-mt">
            <thead class="ui-thead-gray">
                <tr>
                    <th width="30" height="30"><label class="ui-checkbox ui-tips" data-align="right-top" data-title="全选/取消"><input type="checkbox" class="checkall" value=""><i></i></label></th>
                    <th>蜘蛛名称</th>
                    <th width="150">访问页面</th>
                    <th width="150">来访日期</th>
                </tr>
            </thead>
            <tbody>
            {cms:rs pagesize="20" table="cms_plug_spider" where="name='$name'" order="comedate desc,id desc"}
            {rs:eof}
            <tr>
                <td colspan="5">暂无数据</td>
            </tr>
            {/rs:eof}
            <tr>
            	<td><label class="ui-checkbox"><input type="checkbox" name="id" value="{$rs[id]}"><i></i></label></td>
                <td class="ui-text-left">{$rs[name]}</td>
                <td>{$rs[viewtimes]}</td>
                <td>{date('Y-m-d',$rs[comedate])}</td>
            </tr>
            {/cms:rs}
            </tbody>
        </table>
        </div>
        </form>
        {if $total_rs!=0}
        <div class="ui-page ui-page-center ui-page-info">
            <div class="ui-page-list"><ul>{$showpage}</ul></div>
        </div>
        {/if}
        <!---->
    </div>

</body>
</html>