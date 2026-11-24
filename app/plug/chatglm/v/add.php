<?php if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>批量添加</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/layout.css">
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js"></script>
<script src="{WEB_ROOT}public/admin/js/base.js"></script>
</head>

<body class="bg_white">
<div class="border_iframe">
    <form class="ui-form" method="post">
        <div class="ui-form-group ui-row">
            <label class="ui-col-2 ui-col-form-label">标题：</label>
            <div class="ui-col-10">
                <textarea name="title" class="ui-form-ip" rows="9" data-rule="标题:required;" placeholder="一行一个标题"></textarea>
            </div>
        </div>
        
        <div class="ui-form-group ui-row">
            <label class="ui-col-2 ui-col-form-label">内容分类：</label>
            <div class="ui-col-10">
                <select name="classid" class="ui-form-ip" data-rule="类别选择:required;">
                    <option value="">请选择类别</option>
                    {foreach C('class') as $rs}
                    <option value="{$rs['cateid']}"{if $rs['cate_type']<0 || strpos($rs['sonid'],',')} disabled{/if}>{str_repeat("　",$rs['depth'])}{$rs['cate_name']}</option>
                    {/foreach}
                </select>
            </div>
        </div>
        
        <div class="ui-form-group ui-row ui-mb-0">
            <label class="ui-col-2 ui-col-form-label">内容状态：</label>
            <div class="col-10 ui-mt">
                <label class="ui-radio"><input type="radio" name="pass" value="1" checked><i></i>直接发布</label>
                <label class="ui-radio"><input type="radio" name="pass" value="0"><i></i>存为草稿</label>
            </div>
        </div>
        <div class="ui-form-group ui-hide"><input type="hidden" name="token" value="{$token}"><button type="submit" id="sdcms-submit">保存</button></div>
    </form>
    <!---->
</div>

<script>
$(function()
{
	var backurl=window.parent.location;
	$(".ui-form").form(
	{
		type:2,
		align:'center',
		result:function(form)
		{
			$.ajax(
			{
				type:'post',
				cache:false,
				dataType:'json',
				url:'{THIS_LOCAL}',
				data:$(form).serialize(),
				error:function(e){alert(e.responseText);},
				success:function(d)
				{
					if(d.state=='success')
					{
						sdcms.success(d.msg);
						setTimeout(function(){parent.location.href=backurl;},1000);
					}
					else
					{
						sdcms.error(d.msg);
					}  
				}
			});
		}
	});
})
</script>
</body>
</html>