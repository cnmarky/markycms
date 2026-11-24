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
    <div class="position">当前位置：插件管理 > <a href="{U('index')}">蜘蛛来访</a></div>
    <div class="border">
        <!---->
        <div class="navbar">
            <div class="lefter">
                <a href="javascript:;" data-url="{U('clear')}" class="clear ui-btn ui-btn-info ui-mr-sm">一键清理</a>
				<a href="javascript:;" data-url="{U('code')}" class="code ui-btn ui-btn-yellow">调用代码</a>
            </div>
        </div>
        <form method="post" class="ui-form">
        <div class="ui-table-wrap">
        <table class="ui-table ui-table-border ui-table-hover ui-table-striped ui-mb ui-mt">
            <thead class="ui-thead-gray">
                <tr>
                    <th width="30" height="30"><label class="ui-checkbox ui-tips" data-align="right-top" data-title="全选/取消"><input type="checkbox" class="checkall" value=""><i></i></label></th>
                    <th>蜘蛛名称</th>
                    <th width="100">次数</th>
                    <th width="140">最后访问</th>
                    <th width="80">操作</th>
                </tr>
            </thead>
            <tbody>
            {cms:rs top="0" sql="select name,count(1) as times,comedate from (select * from cms_plug_spider order by comedate desc) as t group by name"}
            {rs:eof}
            <tr>
                <td colspan="5">暂无数据</td>
            </tr>
            {/rs:eof}
            <tr>
            	<td><label class="ui-checkbox"><input type="checkbox" name="id" value="{$rs[id]}"><i></i></label></td>
                <td class="ui-text-left">{$rs[name]}</td>
                <td>{$rs[times]}</td>
                <td>{date('Y-m-d',$rs[comedate])}</td>
                <td><a href="{U('lists','name='.$rs[name].'')}"><span class="ui-icon-link"></span> 明细</a></td>
            </tr>
            {/cms:rs}
            </tbody>
        </table>
        </div>
        </form>
        <!---->
    </div>

<script>
$(function()
{
    $(".clear").click(function()
	{
		var url=$(this).attr("data-url");
		$.dialog(
		{
			'title':"操作提示",
			'text':"确定要清理？不可恢复！",
			'oktheme':'ui-btn-info',
			'ok':function(e)
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
	$(".code").click(function()
		{
			var url=$(this).data('url');
			$.dialogbox(
			{
				'title':"调用代码",
				'text':url,
				'width':'600px',
				'height':'230px',
				'type':3,
				'footer':false
			});
		});
})
</script>
</body>
</html>