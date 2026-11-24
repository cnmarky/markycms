<?php if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>分页设置</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/layout.css">
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js"></script>
<script>
$(function()
{
	$("#t0_1").click(function(){
		$("#list_data").removeClass("dis");
		$("#list_rule,#list_min,#list_max").addClass("dis");
	});
	$("#t0_2").click(function(){
		$("#list_data").addClass("dis");
		$("#list_rule,#list_min,#list_max").removeClass("dis");
	});
    $("#t9_0").click(function(){
        $("#list_pic_begin,#list_pic_over").addClass("dis");
    });
    $("#t9_1").click(function(){
        $("#list_pic_begin,#list_pic_over").removeClass("dis");
    });
	{if $listtype==1}
		$("#list_data").removeClass("dis");
		$("#list_rule,#list_min,#list_max").addClass("dis");
	{else}
		$("#list_data").addClass("dis");
		$("#list_rule,#list_min,#list_max").removeClass("dis");
	{/if}
    {if $list_pic==0}
        $("#list_pic_begin,#list_pic_over").addClass("dis");
    {else}
         $("#list_pic_begin,#list_pic_over").removeClass("dis");
    {/if}
})
</script>
</head>

<body>
    <div class="position">当前位置：插件管理 > <a href="{U('index')}">采集管理</a> > <a href="{THIS_LOCAL}">网址采集</a></div>
    <div class="borders">
        <!---->
        <div class="ui-tabs ui-tabs-white" data-href="1">
            <ul class="ui-tabs-nav">
                <li><a href="{U('edit','id='.$id.'')}">基本设置</a></li>
                <li class="active"><a href="{U('pageset','id='.$id.'')}">网址采集</a></li>
                <li><a href="{U('contentset','id='.$id.'')}">内容采集</a></li>
            </ul>
            
            <div class="ui-tabs-content">
                <div class="ui-tabs-pane active">
                    <!---->
                    <form method="post" class="ui-form">
                    <div class="ui-form-group ui-row">
                        <label class="col-left ui-col-form-label">分页获取：</label>
                        <div class="col-right col-right-top">
                            <label class="ui-radio"><input type="radio" name="t0" id="t0_1" value="1"{if $listtype==1} checked{/if}><i></i>手工输入</label>
                            <label class="ui-radio"><input type="radio" name="t0" id="t0_2" value="2"{if $listtype==2} checked{/if}><i></i>批量生成</label>
                        </div>
                    </div>
                    <div class="ui-form-group ui-row" id="list_data">
                        <label class="col-left ui-col-form-label-top">分页网址：</label>
                        <div class="col-right">
                            <textarea name="t1" class="ui-form-ip" rows="6" cols="80" data-rule="分页网址:required;">{$listdata}</textarea>
                            <span class="input-tips">每行一条网址，示范如下：<br>http://www.baidu.com/share-page-1.html<br>http://www.baidu.com/share-page-2.html</span>
                        </div>
                    </div>
                    <div class="ui-form-group ui-row dis" id="list_rule">
                        <label class="col-left ui-col-form-label">网址规则：</label>
                        <div class="col-right">
                            <input type="text" name="t2" class="ui-form-ip" value="{$listrule}" data-rule="网址规则:required;"><span class="input-tips">格式参考：http://www.baidu.com/share-page-{no}{$id}{/no}.html<br>说明：{no}{$id}{/no}是固定格式，不可修改</span>
                        </div>
                    </div>
                    <div class="ui-form-group ui-row dis" id="list_min">
                        <label class="col-left ui-col-form-label">{no}{$id}{/no}最小值：</label>
                        <div class="col-right">
                            <input type="text" name="t3" class="ui-form-ip" value="{if $listmin!=0}{$listmin}{/if}" data-rule="最小值:required;int;range(1~100000)">
                        </div>
                    </div>
                    <div class="ui-form-group ui-row dis" id="list_min">
                        <label class="col-left ui-col-form-label">{no}{$id}{/no}最大值：</label>
                        <div class="col-right">
                            <input type="text" name="t4" class="ui-form-ip" value="{if $listmax!=0}{$listmax}{/if}" data-rule="最大值:required;int;range(2~100000)">
                        </div>
                    </div>
                    <div class="ui-form-group ui-row">
                        <label class="col-left ui-col-form-label-top">列表开始代码：</label>
                        <div class="col-right">
                            <textarea name="t5" class="ui-form-ip" rows="3" cols="80" data-rule="列表开始代码:required;">{$list_loop_begin}</textarea>
                            <span class="input-tips">如果代码中含有单引号，请替换为双引号，以下同。</span>
                        </div>
                    </div>
                    <div class="ui-form-group ui-row">
                        <label class="col-left ui-col-form-label-top">列表结束代码：</label>
                        <div class="col-right">
                            <textarea name="t6" class="ui-form-ip" rows="3" cols="80" data-rule="列表结束代码:required;">{$list_loop_over}</textarea>
                        </div>
                    </div>
                    <div class="ui-form-group ui-row">
                        <label class="col-left ui-col-form-label-top">链接正则代码：</label>
                        <div class="col-right">
                            <textarea name="t7" class="ui-form-ip" rows="3" cols="80" data-rule="链接正则代码:required;">{$list_a_begin}</textarea>
                            <span class="input-tips">示范：&lt;a href=&quot;(.*?)&quot;&gt;(.*?)&lt;/a&gt;</span>
                        </div>
                    </div>
                    <div class="ui-form-group ui-row dis">
                        <label class="col-left ui-col-form-label-top">链接结束代码：</label>
                        <div class="col-right">
                            <textarea name="t8" class="ui-form-ip" rows="3" cols="80">{$list_a_over}</textarea>
                        </div>
                    </div>
                    <div class="ui-form-group ui-row">
                        <label class="col-left ui-col-form-label">缩略图：</label>
                        <div class="col-right col-right-top">
                            <label class="ui-radio"><input type="radio" name="t9" id="t9_0" value="0"{if $list_pic==0} checked{/if}><i></i>不作设置</label>
                            <label class="ui-radio"><input type="radio" name="t9" id="t9_1" value="1"{if $list_pic==1} checked{/if}><i></i>指定设置</label>
                        </div>
                    </div>
                    <div class="ui-form-group ui-row dis" id="list_pic_begin">
                        <label class="col-left ui-col-form-label-top">缩略图开始代码：</label>
                        <div class="col-right">
                            <textarea name="t10" class="ui-form-ip" rows="3" cols="80" data-rule="缩略图开始代码:required;">{$list_pic_begin}</textarea>
                        </div>
                    </div>
                    <div class="ui-form-group ui-row dis" id="list_pic_over">
                        <label class="col-left ui-col-form-label-top">缩略图结束代码：</label>
                        <div class="col-right">
                            <textarea name="t11" class="ui-form-ip" rows="3" cols="80" data-rule="缩略图结束代码:required;">{$list_pic_over}</textarea>
                        </div>
                    </div>
                    <div class="ui-form-group ui-row">
                        <label class="col-left ui-col-form-label"></label>
                        <div class="col-right">
                        	<input type="hidden" name="token" value="{$token}">
                            <button type="submit" class="ui-btn ui-btn-info ui-mr">下一步</button>
                            <button type="button" class="ui-btn ui-back">返回</button>
                        </div>
                    </div>
                    </form>
                    <!---->
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
                        sdcms.success('保存成功');
                        setTimeout(function(){location.href='{U("contentset","id=$id")}';},1500);
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