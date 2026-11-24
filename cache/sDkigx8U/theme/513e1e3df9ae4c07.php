<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>编辑模板</title>
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/css/ui.css">
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/admin/css/layout.css">
<script src="<?php echo WEB_ROOT;?>public/js/jquery.js"></script>
<script src="<?php echo WEB_ROOT;?>public/js/ui.js"></script>
</head>
<body>
    <div class="position">当前位置：模板插件 > <a href="<?php echo U('index');?>">模板管理</a><?php echo $position;?> > <a href="<?php echo THIS_LOCAL;?>">编辑模板</a></div>
    <div class="borders">
        <div class="ui-tabs ui-tabs-white" data-href="1">
            <ul class="ui-tabs-nav">
              <li class="active"><a href="<?php echo THIS_LOCAL;?>">编辑模板</a></li>
            </ul>
            <div class="ui-tabs-content">
                <div class="ui-tabs-pane active">
                <form class="ui-form" method="post">
                    <div class="ui-form-group ui-row">
                        <label class="col-left ui-col-form-label">文件名：</label>
                        <div class="col-right">
                            <input type="text" name="file" class="ui-form-ip" value="<?php echo $file;?>" readonly>
                            <input type="hidden" name="t0" class="ui-form-ip" value="<?php echo $file_code;?>">
                        </div>
                    </div>
                    <div class="ui-form-group ui-row">
                        <label class="col-left ui-col-form-label">注释：</label>
                        <div class="col-right">
                            <input type="text" name="t1" class="ui-form-ip" value="<?php echo $remark;?>">
                        </div>
                    </div>
                    <div class="ui-form-group ui-row">
                        <label class="col-left ui-col-form-label">内容：</label>
                        <div class="col-right col-right-full">
                            <textarea name="t2" rows="20" class="ui-form-ip"><?php echo theme_html($data);?></textarea> 
                            <span class="input-tips">友情提示：<span class="text-red">如无法在线保存，请通过FTP修改模板文件</span></span>
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
                        setTimeout(function(){location.href='<?php echo U("lists","root=".$old."");?>';},1500);
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