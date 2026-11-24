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
                <a href="javascript:;" data-url="{U('bfacc')}" class="ui-btn ui-btn-info btach">一键备份</a>
            </div>
            
        </div>

        <form method="post" class="ui-form">
        <table class="ui-table ui-table-border ui-table-hover ui-table-striped ui-mb ui-mt">
            <thead class="ui-thead-gray">
                <tr>
                    <th>文件名</th>
                    <th width="150">大小</th>
                    <th width="200">备份时间</th>
                    <th width="150">操作</th>
                </tr>
            </thead>
            <tbody>
            {foreach $db as $rs}
            <tr>
                <td class="ui-text-left">{$rs['name']}</td>
                <td>{$rs['size']}</td>
                <td>{date('Y-m-d H:i:s',$rs['date'])}</td>
                <td><a href="javascript:;" class="del" data-url="{U('delbf','key='.$rs['url'].'')}"><span class="ui-icon-fileprotect"></span> 删除</a></td>
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
        var url=$(this).data("url");
        $.dialog(
        {
            title:"操作提示",
            text:"确定要备份数据库？",
            oktheme:'ui-btn-info',
            ok:function(e)
            {
                $.ajax(
                {
                    url:url,
                    type:'post',
                    dataType:'json',
                    data:'token={$token}',
                    error:function(e){alert(e.responseText);},
                    success:function(d)
                    {
                        e.close();
                        if(d.state=='success')
                        {
                            sdcms.success(d.msg);
                            setTimeout(function(){location.href='{THIS_LOCAL}';},1000);
                        }
                        else
                        {
                            sdcms.error(d.msg);
                        }
                    }
                });
            }
        });
    });
    $(".del").click(function()
    {
        var url=$(this).data("url");
        $.dialog(
        {
            title:"操作提示",
            text:"确定要删除？不可恢复！",
            oktheme:'ui-btn-info',
            ok:function(e)
            {
                $.ajax(
                {
                    url:url,
                    type:'post',
                    dataType:'json',
                    data:'token={$token}',
                    error:function(e){alert(e.responseText);},
                    success:function(d)
                    {
                        e.close();
                        if(d.state=='success')
                        {
                            sdcms.success(d.msg);
                            setTimeout(function(){location.href='{THIS_LOCAL}';},1000);
                        }
                        else
                        {
                            sdcms.error(d.msg);
                        }
                    }
                });
            }
        });
    });
	 
})
</script>
</body>
</html>