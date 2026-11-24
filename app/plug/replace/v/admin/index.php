<?php if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>内容替换</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/layout.css">
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js"></script>
<script>
$(function(){
	$("#t0").change(function(){
		switch ($(this).val())
		{
			case "content":
				$("#t1").html('<option value="">请选择替换字段</option><option value="1">标题</option><option value="2">缩略图</option><option value="3">简介</option>');
				break;
			case "pro":
				$("#t1").html('<option value="">请选择替换字段</option><option value="5">组图</option><option value="3">内容</option>');
				break;
			default:
				$("#t1").html('<option value="4">内容</option>');
				break;
		}
	});
})
</script>
</head>

<body>
    <div class="position">当前位置：插件管理 > <a href="{U('index')}">内容替换</a></div>
    <div class="borders">
        <!---->
        
            <div class="ui-tabs ui-tabs-white" data-href="1">
                <ul class="ui-tabs-nav">
                  <li class="active"><a href="{THIS_LOCAL}">内容替换</a></li>
                </ul>
                <div class="ui-tabs-content">
                    <div class="ui-tabs-pane active">
                    	<!--1111111111-->
                        <form class="ui-form mt-20" method="post">
                            <div class="ui-form-group ui-row">
                                <label class="col-left ui-col-form-label">数据表：</label>
                                <div class="col-right">
                                    <select name="t0" id="t0" class="ui-form-ip" data-rule="数据表:required;">
                                        <option value="">请选择数据表</option>
                                        <option value="content">主表（cms_show）</option>
                                        <option value="data">副表（cms_data）</option>
                                        <option value="page">单页（cms_page）</option>
                                    </select>
                                </div>
                            </div>
                            <div class="ui-form-group ui-row">
                                <label class="col-left ui-col-form-label">替换字段：</label>
                                <div class="col-right">
                                    <select name="t1" id="t1" class="ui-form-ip" data-rule="替换字段:required;">
                                        <option value="">请选择替换字段</option>
                                    </select>
                                </div>
                            </div>
                            <div class="ui-form-group ui-row">
                                <label class="col-left ui-col-form-label">将字符：</label>
                                <div class="col-right">
                                    <textarea name="t2" rows="2" class="ui-form-ip" cols="50" data-rule="要替换的字符:required;"></textarea>
                                </div>
                            </div>
                            <div class="ui-form-group ui-row">
                                <label class="col-left ui-col-form-label">替换为：</label>
                                <div class="col-right">
                                    <textarea name="t3" rows="2" cols="50" class="ui-form-ip"></textarea>
                                </div>
                            </div>
                            <div class="ui-form-group ui-row">
                                <label class="col-left ui-col-form-label"></label>
                                <div class="col-right">
                                    <input type="hidden" name="token" value="{$token}">
                                    <button type="submit" class="ui-btn ui-btn-info ui-mr-sm">开始替换</button>
                                </div>
                            </div>
                        </form>
                        <!--1111111111-->
                    </div>
                </div>
            </div>
        
        <!---->
    </div>    
    
<script>
$(function()
{
	$(".ui-form").form(
	{
		type:2,
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