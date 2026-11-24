<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>参数配置</title>
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/css/ui.css">
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/admin/css/layout.css">
<script src="<?php echo WEB_ROOT;?>public/js/jquery.js"></script>
<script src="<?php echo WEB_ROOT;?>public/js/ui.js"></script>
</head>
<body>
    <div class="position">当前位置：插件管理 > <a href="<?php echo U('index');?>">百度推送</a> > <a href="<?php echo THIS_LOCAL;?>">参数配置</a></div>
    <div class="borders">
            <div class="ui-tabs ui-tabs-white" data-href="1">
                <ul class="ui-tabs-nav">
                  <li class="active"><a href="<?php echo THIS_LOCAL;?>">参数配置</a></li>
                </ul>
                <div class="ui-tabs-content">
                    <div class="ui-tabs-pane active">
                        <form class="ui-form mt-20" method="post">
                            <div class="ui-form-group ui-row">
                                <label class="col-left ui-col-form-label">接口调用地址：</label>
                                <div class="col-right">
                                    <input type="text" name="t0" class="ui-form-ip" value="<?php echo $url;?>">
                                    <span class="input-tips">请至百度站长工具平台“链接提交”栏目下获取</span>
                                </div>
                            </div>
                            <div class="ui-form-group ui-row">
                                <label class="col-left ui-col-form-label"></label>
                                <div class="col-right">
                                	<input type="hidden" name="token" value="<?php echo $token;?>">
                                    <button type="submit" class="ui-btn ui-btn-info ui-mr-sm">保存</button>
                                    <button type="button" class="ui-btn ui-back">返回</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
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
                url:'<?php echo THIS_LOCAL;?>',
                data:$(form).serialize(),
                error:function(e){alert(e.responseText);},
                success:function(d)
                {
                    if(d.state=='success')
                    {
                        sdcms.success(d.msg);
                        setTimeout(function(){location.href='<?php echo U("index");?>';},1500);
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