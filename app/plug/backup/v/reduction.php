<?php if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>数据还原</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/layout.css">
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js"></script>
</head>

<body>
    <div class="position">当前位置：插件管理 > <a href="{U('index')}">数据备份</a> > <a href="{THIS_LOCAL}">数据还原</a></div>
    <div class="border">
        <!---->

        <a href="{U('index')}" class="ui-btn ui-btn-info">数据备份</a>
        <table class="ui-table ui-table-border ui-table-hover ui-table-striped ui-mb ui-mt">
            <thead class="ui-thead-gray">
                <tr>
                    <th>文件名称</th>
                    <th width="150">大小</th>
                    <th width="200">创建时间</th>
                    <th width="150">操作</th>
                </tr>
            </thead>
            <tbody>
            {foreach $db as $rs}
            <tr>
                <td class="ui-text-left">{$rs[0]}</td>
                <td>{$rs[2]}</td>
                <td>{date('Y-m-d H:i:s',$rs[1])}</td>
                <td><a href="javascript:;" class="import" data-name="{$rs[0]}"><span class="ui-icon-rollback"></span> 还原</a>　<a href="javascript:;" class="del" data-url="{U('del','key='.base64_encode($rs[0]).'')}"><span class="ui-icon-delete"></span> 删除</a></td>
            </tr>
            {/foreach}
            </tbody>
        </table>
        <!---->
    </div>

<script>
$(function()
{
	$(".import").click(function()
	{
		var name=$(this).attr("data-name");
		sdcms.warn("正在恢复，请稍等！");
		$.ajax(
		{
			type:'post',
			cache:false,
			dataType:'json',
			url:'{THIS_LOCAL}',
			data:'token={$token}&key='+name,
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
	});
	$(".del").click(function()
	{
		var url=$(this).attr("data-url");
		$.dialog(
		{
			title:"操作提示",
			text:"确定要删除？不可恢复！",
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