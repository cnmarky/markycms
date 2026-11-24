<?php if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>数据备份</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/layout.css">
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js"></script>
</head>

<body>
    <div class="position">当前位置：插件管理 > <a href="{THIS_LOCAL}">数据备份</a></div>
    <div class="border">
        <!---->
        <div class="navbar">
            <div class="lefter">
                <a href="javascript:;" class="ui-btn ui-btn-info ui-dropdown-show ui-mr-sm" data-target="#dropdown-1">批量操作</a>
                <div class="ui-dropdown" id="dropdown-1">
                    <a href="javascript:;" class="ui-dropdown-item btach" type="1">备份数据</a>
                    <a href="javascript:;" class="ui-dropdown-item btach" type="2">优化数据</a>
                    <a href="javascript:;" class="ui-dropdown-item btach" type="3">修复数据</a>
                </div>
                <a href="{U('reduction')}" class="ui-btn ui-btn-yellow">数据还原</a>
            </div>
            
        </div>

        <form method="post" class="ui-form">
        <table class="ui-table ui-table-border ui-table-hover ui-table-striped ui-mb ui-mt">
            <thead class="ui-thead-gray">
                <tr>
                    <th width="30" height="30"><label class="ui-checkbox ui-tips" data-align="right-top" data-title="全选/取消"><input type="checkbox" class="checkall" checked value=""><i></i></label></th>
                    <th>表名</th>
                    <th width="150">数量</th>
                    <th width="150">大小</th>
                    <th width="200">创建时间</th>
                    <th width="150">操作</th>
                </tr>
            </thead>
            <tbody>
            {foreach $db as $rs}
            <tr>
                <td><label class="ui-checkbox"><input type="checkbox" name="id" value="{$rs['Name']}" checked><i></i></label></td>
                <td class="ui-text-left">{$rs['Name']}</td>
                <td>{$rs['Rows']}</td>
                <td>{formatBytes($rs['Data_length'])}</td>
                <td>{$rs['Create_time']}</td>
                <td><a href="javascript:;" class="do" type="2" data-name="{$rs['Name']}"><span class="ui-icon-filedone"></span> 优化表</a>　<a href="javascript:;" class="do" type="3" data-name="{$rs['Name']}"><span class="ui-icon-fileprotect"></span> 修复表</a></td>
            </tr>
            {/foreach}
            </tbody>
        </table>
        </form>
        <!---->
    </div>

<script>
$(function()
{
	$(".btach").click(function()
	{
		var type=$(this).attr("type");
		var data=[];
		$(".ui-form").find("input[type=checkbox]:checked").each(function()
		{
			if($(this).attr("class")!='checkall' && !$(this).closest("label").hasClass("switch"))
			{
				data.push($(this).val());
			}
		});
        if(data.length==0)
        {
            sdcms.error('至少选择一个表');
        }
        else
        {
            $.ajax(
			{
                type:'get',
                cache:false,
                dataType:'json',
                url:'{U("btach")}',
				data:'token={$token}&id='+data.join(",")+'&type='+type,
                error:function(e){alert(e.responseText);},
                success:function(d)
				{
                    if(d.state=='success')
                    {
                        sdcms.success(d.msg);
                        setTimeout(function(){location.href='{THIS_LOCAL}';},1500);
                    }
                    else
                    {
                        sdcms.error(d.msg);
                    }
                }
            });
        }
    });

	$(".do").click(function()
	{
		var type=$(this).attr("type");
		var list=$(this).attr("data-name");
		if(list=="")
		{
			sdcms.error('至少选择一个表');
		}
		else
		{
			$.ajax(
			{
				type:'post',
				cache:false,
				dataType:'json',
				url:'{U("btach")}',
				data:'token={$token}&id='+list+'&type='+type,
				error:function(e){alert(e.responseText);},
				success:function(d)
				{
                    if(d.state=='success')
                    {
                        sdcms.success(d.msg);
                        setTimeout(function(){location.href='{THIS_LOCAL}';},1500);
                    }
                    else
                    {
                        sdcms.error(d.msg);
                    }
				}
			})
		}
	});
})
</script>
</body>
</html>