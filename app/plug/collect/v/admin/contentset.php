<?php if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>内容采集</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/layout.css">
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js"></script>
<script>
$(function()
{
	$("#t4_0").click(function(){
        $(".c_content_page").addClass("dis");
    });
    $("#t4_1").click(function(){
        $(".c_content_page").removeClass("dis");
    });
	$("#t9_0").click(function(){
        $(".c_date").addClass("dis");
    });
    $("#t9_1").click(function(){
        $(".c_date").removeClass("dis");
    });
	$("#t15_0").click(function(){
        $(".c_keyword").addClass("dis");
    });
    $("#t15_1").click(function(){
        $(".c_keyword").removeClass("dis");
    });
	$("#t18_0").click(function(){
        $(".c_description").addClass("dis");
    });
    $("#t18_1").click(function(){
        $(".c_description").removeClass("dis");
    });
	$("#t21_0").click(function(){
        $(".c_hits").addClass("dis");
    });
    $("#t21_1").click(function(){
        $(".c_hits").removeClass("dis");
    });
	{if $c_content_page==1}
		 $(".c_content_page").removeClass("dis");
	{else}
		$(".c_content_page").addClass("dis");
	{/if}
	{if $c_date==1}
		 $(".c_date").removeClass("dis");
	{else}
		$(".c_date").addClass("dis");
	{/if}
	{if $c_keyword==1}
		 $(".c_keyword").removeClass("dis");
	{else}
		$(".c_keyword").addClass("dis");
	{/if}
	{if $c_description==1}
		 $(".c_description").removeClass("dis");
	{else}
		$(".c_description").addClass("dis");
	{/if}
	{if $c_hits==1}
		 $(".c_hits").removeClass("dis");
	{else}
		$(".c_hits").addClass("dis");
	{/if}
})
</script>
</head>

<body>
    <div class="position">当前位置：插件管理 > <a href="{U('index')}">采集管理</a> > <a href="{THIS_LOCAL}">内容采集</a></div>
    <div class="borders">
        <!---->
        <div class="ui-tabs ui-tabs-white" data-href="1">
            <ul class="ui-tabs-nav">
                <li><a href="{U('edit','id='.$id.'')}">基本设置</a></li>
                <li><a href="{U('pageset','id='.$id.'')}">网址采集</a></li>
                <li class="active"><a href="{U('contentset','id='.$id.'')}">内容采集</a></li>
            </ul>
            
            <div class="ui-tabs-content">
                <div class="ui-tabs-pane active">
                    <!---->
                        <form method="post" class="ui-form">
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label-top">标题开始代码：</label>
                            <div class="col-right">
                                <textarea name="t0" class="ui-form-ip" rows="3" cols="80" data-rule="标题开始代码:required;">{$c_title_begin}</textarea>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label-top">标题结束代码：</label>
                            <div class="col-right">
                                <textarea name="t1" class="ui-form-ip" rows="3" cols="80" data-rule="标题结束代码:required;">{$c_title_over}</textarea>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label-top">正文开始代码：</label>
                            <div class="col-right">
                                <textarea name="t2" class="ui-form-ip" rows="3" cols="80" data-rule="正文开始代码:required;">{$c_content_begin}</textarea>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label-top">正文结束代码：</label>
                            <div class="col-right">
                                <textarea name="t3" class="ui-form-ip" rows="3" cols="80" data-rule="正文结束代码:required;">{$c_content_over}</textarea>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">正文分页：</label>
                            <div class="col-right col-right-top">
                                <label class="ui-radio"><input type="radio" name="t4" id="t4_0" value="0"{if $c_content_page==0} checked{/if}><i></i>不作设置</label>
                                <label class="ui-radio"><input type="radio" name="t4" id="t4_1" value="1"{if $c_content_page==1} checked{/if}><i></i>指定设置</label>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row dis c_content_page">
                            <label class="col-left ui-col-form-label-top">分页开始代码：</label>
                            <div class="col-right">
                                <textarea name="t5" class="ui-form-ip" rows="3" cols="80" data-rule="分页开始代码:required;">{$c_content_page_begin}</textarea>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row dis c_content_page">
                            <label class="col-left ui-col-form-label-top">分页结束代码：</label>
                            <div class="col-right">
                                <textarea name="t6" class="ui-form-ip" rows="3" cols="80" data-rule="分页开始代码:required;">{$c_content_page_over}</textarea>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row dis c_content_page">
                            <label class="col-left ui-col-form-label-top">分页链接开始代码：</label>
                            <div class="col-right">
                                <textarea name="t7" class="ui-form-ip" rows="3" cols="80" data-rule="分页链接开始代码:required;">{$c_content_page_a_begin}</textarea>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row dis c_content_page">
                            <label class="col-left ui-col-form-label-top">分页链接结束代码：</label>
                            <div class="col-right">
                                <textarea name="t8" class="ui-form-ip" rows="3" cols="80" data-rule="分页链接结束代码:required;">{$c_content_page_a_over}</textarea>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">日期设置：</label>
                            <div class="col-right col-right-top">
                                <label class="ui-radio"><input type="radio" name="t9" id="t9_0" value="0"{if $c_date==0} checked{/if}><i></i>不作设置</label>
                                <label class="ui-radio"><input type="radio" name="t9" id="t9_1" value="1"{if $c_date==1} checked{/if}><i></i>指定设置</label>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row dis c_date">
                            <label class="col-left ui-col-form-label-top">日期开始代码：</label>
                            <div class="col-right">
                                <textarea name="t10" class="ui-form-ip" rows="3" cols="80" data-rule="日期开始代码:required;">{$c_date_begin}</textarea>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row dis c_date">
                            <label class="col-left ui-col-form-label-top">日期结束代码：</label>
                            <div class="col-right">
                                <textarea name="t11" class="ui-form-ip" rows="3" cols="80" data-rule="日期结束代码:required;">{$c_date_over}</textarea>
                            </div>
                        </div>
						<div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">关键字设置：</label>
                            <div class="col-right col-right-top">
                                <label class="ui-radio"><input type="radio" name="t15" id="t15_0" value="0"{if $c_keyword==0} checked{/if}><i></i>不作设置</label>
                                <label class="ui-radio"><input type="radio" name="t15" id="t15_1" value="1"{if $c_keyword==1} checked{/if}><i></i>指定设置</label>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row dis c_keyword">
                            <label class="col-left ui-col-form-label-top">关键字开始代码：</label>
                            <div class="col-right">
                                <textarea name="t16" class="ui-form-ip" rows="3" cols="80" data-rule="关键字开始代码:required;">{$c_keyword_begin}</textarea>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row dis c_keyword">
                            <label class="col-left ui-col-form-label-top">关键字结束代码：</label>
                            <div class="col-right">
                                <textarea name="t17" class="ui-form-ip" rows="3" cols="80" data-rule="关键字结束代码:required;">{$c_keyword_over}</textarea>
                            </div>
                        </div>
						
						<div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">描述设置：</label>
                            <div class="col-right col-right-top">
                                <label class="ui-radio"><input type="radio" name="t18" id="t18_0" value="0"{if $c_description==0} checked{/if}><i></i>不作设置</label>
                                <label class="ui-radio"><input type="radio" name="t18" id="t18_1" value="1"{if $c_description==1} checked{/if}><i></i>指定设置</label>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row dis c_description">
                            <label class="col-left ui-col-form-label-top">描述开始代码：</label>
                            <div class="col-right">
                                <textarea name="t19" class="ui-form-ip" rows="3" cols="80" data-rule="描述开始代码:required;">{$c_description_begin}</textarea>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row dis c_description">
                            <label class="col-left ui-col-form-label-top">描述结束代码：</label>
                            <div class="col-right">
                                <textarea name="t20" class="ui-form-ip" rows="3" cols="80" data-rule="描述结束代码:required;">{$c_description_over}</textarea>
                            </div>
                        </div>
						<div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">人气设置：</label>
                            <div class="col-right col-right-top">
                                <label class="ui-radio"><input type="radio" name="t21" id="t21_0" value="0"{if $c_hits==0} checked{/if}><i></i>不作设置</label>
                                <label class="ui-radio"><input type="radio" name="t21" id="t21_1" value="1"{if $c_hits==1} checked{/if}><i></i>指定设置</label>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row dis c_hits">
                            <label class="col-left ui-col-form-label-top">人气开始代码：</label>
                            <div class="col-right">
                                <textarea name="t22" class="ui-form-ip" rows="3" cols="80" data-rule="人气开始代码:required;">{$c_hits_begin}</textarea>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row dis c_hits">
                            <label class="col-left ui-col-form-label-top">人气结束代码：</label>
                            <div class="col-right">
                                <textarea name="t23" class="ui-form-ip" rows="3" cols="80" data-rule="人气结束代码:required;">{$c_hits_over}</textarea>
                            </div>
                        </div>
						
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">普通自定义字段截取：</label>
                            <div class="col-6">
                                <input type="button" class="ui-btn ui-btn-info ui-replace mb" value="添加自定义字段截取规则">
                                <p>
                                可用字段Key：{if is_array($fielddata)}
                                {foreach $fielddata as $key=>$val}
                                <a class="ui-badge ui-badge-green">{$val}</a>
                                {/foreach}
                                {/if}
                                </p>
                                <table class="ui-table ui-table-border ui-table-hover ui-table-striped ui-mb ui-mt">
                                    <thead class="ui-thead-gray">
                                    <tr>
                                    	<th width="130">字段Key</th>
                                        <th>标识开始代码</th>
                                        <th>标识结束代码</th>
                                        <th width="80">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="key_list">
                                    {php $c_key_data=str_replace(["\r\n","\n","\t"],['\r\n','\n','\t'],$c_key_data)}
                                    {php $data=jsdecode($c_key_data)}
                                    {if is_array($data)}
                            		{foreach $data as $num=>$val}
                                    <tr num="{$num}">
                                    	<td><input type="text" name="t12[{$num}][name]" class="ui-form-ip" id="key_{$num}" size="10" value="{$val['name']}" data-rule="字段Key:required;"></td>
                                    	<td><textarea name="t12[{$num}][begin]" class="ui-form-ip" id="begin_{$num}" rows="3" data-rule="标识开始代码:required;">{$val['begin']}</textarea></td>
                                    	<td><textarea name="t12[{$num}][over]" class="ui-form-ip" id="over_{$num}" rows="3" data-rule="标识结束代码:required;">{$val['over']}</textarea></td>
                                    	<td><a href="javascript:;" class="del"><span class="ui-icon-delete"></span> 删除</a></td>
                                    </tr>
                                    {/foreach}
                            		{/if}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row ui-hide">
                            <label class="col-left ui-col-form-label">自定义字段初始值：</label>
                            <div class="col-right">
                                <input type="button" class="ui-btn ui-btn-info ui-value mb" value="添加自定义字段初始值设置">
                                <p>
                                可用字段Key：{if is_array($fielddata)}
                                {foreach $fielddata as $key=>$val}
                                <a class="ui-badge ui-badge-green">{$val}</a>
                                {/foreach}
                                {/if}
                                </p>
                                <table class="ui-table ui-table-border ui-table-hover ui-table-striped ui-mb ui-mt">
                                    <thead class="ui-thead-gray">
                                    <tr>
                                    	<th width="130">字段Key</th>
                                        <th>初始值</th>
                                        <th width="80">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="key_value">
                                    {php $data=jsdecode($c_key_default)}
                                    {if is_array($data)}
                            		{foreach $data as $num=>$val}
                                    <tr num="{$num}">
                                    	<td><input type="text" name="t13[{$num}][name]" class="ui-form-ip" id="skey_{$num}" size="10" value="{$val['name']}" data-rule="字段Key:required;"></td>
                                    	<td><input type="text" name="t13[{$num}][value]" class="ui-form-ip" id="value_{$num}" size="20" value="{$val['value']}" data-rule="初始值:required;"></td>
                                    	<td><a href="javascript:;" class="del"><span class="ui-icon-delete"></span> 删除</a></td>
                                    </tr>
                                    {/foreach}
                            		{/if}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">组图字段截取：</label>
                            <div class="col-6">
                            	<input type="button" class="ui-btn ui-btn-info ui-pic ui-mb" value="添加组图字段截图规则">
                                <p>
                                可用字段Key：{if is_array($mdata)}
                                {foreach $mdata as $key=>$val}
                                <a class="ui-badge ui-badge-green">{$val}</a>
                                {/foreach}
                                {/if}
                                </p>
                                <div id="pic_list">
                                {php $data=jsdecode($picdata)}
                                {if is_array($data)}
                                {foreach $data as $num=>$val}
                                <table class="ui-table ui-table-border ui-table-hover ui-table-striped ui-mb ui-mt" num="{$num}">
                                    <thead class="ui-thead-gray">
                                    <tr>
                                    	<th width="130">字段Key</th>
                                        <th>标识开始代码</th>
                                        <th>标识结束代码</th>
                                        <th width="80">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                    	<td><input type="text" name="t14[1][name]" class="ui-form-ip" id="pkey_{$num}" size="10" value="{$val['name']}" data-rule="字段Key:required;"></td>
                                    	<td><textarea name="t14[1][begin]" class="ui-form-ip" id="pbegin_{$num}" rows="3" data-rule="标识开始代码:required;">{$val['begin']}</textarea></td>
                                    	<td><textarea name="t14[1][over]" class="ui-form-ip" id="pover_{$num}" rows="3" data-rule="标识结束代码:required;">{$val['over']}</textarea></td>
                                    	<td rowspan="3"><a href="javascript:;" class="del"><span class="ui-icon-delete"></span> 删除</a></td>
                                    </tr>
                                    <tr>
                                    	<td>组图</td>
                                    	<td>组图开始代码<textarea name="t14[1][pic_begin]" class="ui-form-ip" id="pic_begin_{$num}" rows="3" data-rule="组图开始代码:required;">{$val['pic_begin']}</textarea></td>
                                    	<td>组图结束代码<textarea name="t14[1][pic_over]" class="ui-form-ip" id="pic_over_{$num}" rows="3" data-rule="组图结束代码:required;">{$val['pic_over']}</textarea></td>
                                    </tr>
                                    <tr>
                                    	<td>简介</td>
                                    	<td>简介开始代码<textarea name="t14[1][intro_begin]" class="ui-form-ip" rows="3">{$val['intro_begin']}</textarea></td>
                                    	<td>简介结束代码<textarea name="t14[1][intro_over]" class="ui-form-ip" rows="3">{$val['intro_over']}</textarea></td>
                                    </tr>
                                    </tbody>
                                </table>
                                {/foreach}
                            	{/if}
                                </div>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label"></label>
                            <div class="col-right">
                            	<input type="hidden" name="token" value="{$token}">
                                <button type="submit" class="ui-btn ui-btn-info ui-mr">保存</button>
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
                        sdcms.success(d.msg);
                        setTimeout(function(){location.href='{U("index")}';},1500);
                    }
                    else
                    {
                        sdcms.error(d.msg);
                    }
                }
            });
		}
	});

	$(document).on("click","#key_list .del",function(){
		$(this).parent().parent().remove();
	});
	$(document).on("click","#key_value .del",function(){
		$(this).parent().parent().remove();
	});
	$(document).on("click","#pic_list .del",function(){
		$(this).parent().parent().parent().parent().remove();
	});
	$(".ui-replace").click(function()
	{
		var num=1;
		$("#key_list tr").each(function()
		{
			var maxnum=parseInt($(this).attr("num"));
			if(maxnum>=num)
			{
				num=maxnum+1;
			}
		});
		var html='';
		html+='<tr num="'+num+'">';
		html+=' <td><input type="text" name="t12['+num+'][name]" class="ui-form-ip" id="key_'+num+'" size="10" value="" data-rule="字段Key:required;">';
		html+='	<td><textarea name="t12['+num+'][begin]" class="ui-form-ip" id="begin_'+num+'" rows="3" data-rule="标识开始代码:required;"></textarea></td>';
		html+='	<td><textarea name="t12['+num+'][over]" class="ui-form-ip" id="over_'+num+'" rows="3" data-rule="标识结束代码:required;"></textarea></td>';
		html+='	<td><a href="javascript:;" class="del"><span class="ui-icon-delete"></span> 删除</a></td>';
		html+='</tr>';
		$("#key_list").append(html);
	});
	$(".ui-value").click(function()
	{
		var num=1;
		$("#key_value tr").each(function()
		{
			var maxnum=parseInt($(this).attr("num"));
			if(maxnum>=num)
			{
				num=maxnum+1;
			}
		});
		var html='';
		html+='<tr num="'+num+'">';
		html+=' <td><input type="text" name="t13['+num+'][name]" class="ui-form-ip" id="skey_'+num+'" size="10" value="" data-rule="字段Key:required;">';
		html+='	<td><input type="text" name="t13['+num+'][value]" class="ui-form-ip" id="value_'+num+'" size="20" value="" data-rule="初始值:required;">';
		html+='	<td><a href="javascript:;" class="del"><span class="ui-icon-delete"></span> 删除</a></td>';
		html+='</tr>';
		
		$("#key_value").append(html);
	});
	
	$(".ui-pic").click(function()
	{
		var num=1;
		$("#pic_list table").each(function()
		{
			var maxnum=parseInt($(this).attr("num"));
			if(maxnum>=num)
			{
				num=maxnum+1;
			}
		});
		var html='';
		html+='<table class="ui-table ui-table-border ui-table-hover ui-table-striped ui-mb ui-mt" num="'+num+'">';
		html+='<thead class="ui-thead-gray">';
		html+='    <tr>';
		html+='        <th width="130">字段Key</th>';
		html+='        <th>标识开始代码</th>';
		html+='        <th>标识结束代码</th>';
		html+='        <th width="80">操作</th>';
		html+='    </tr>';
		html+='</thead>';
		html+='    <tr>';
		html+='        <td><input type="text" name="t14['+num+'][name]" class="ui-form-ip" id="pkey_'+num+'" size="10" value="" data-rule="字段Key:required;"></td>';
		html+='        <td><textarea name="t14['+num+'][begin]" class="ui-form-ip" id="pbegin_'+num+'" rows="3" data-rule="标识开始代码:required;"></textarea></td>';
		html+='        <td><textarea name="t14['+num+'][over]" class="ui-form-ip" id="pover_'+num+'" rows="3" data-rule="标识结束代码:required;"></textarea></td>';
		html+='        <td rowspan="3"><a href="javascript:;" class="del"><span class="ui-icon-delete"></span> 删除</a></td>';
		html+='    </tr>';
		html+='    <tr>';
		html+='        <td>组图</td>';
		html+='        <td>组图开始代码<textarea name="t14['+num+'][pic_begin]" class="ui-form-ip" id="pic_begin_'+num+'" rows="3" data-rule="组图开始代码:required;"></textarea></td>';
		html+='        <td>组图结束代码<textarea name="t14['+num+'][pic_over]" class="ui-form-ip" id="pic_over_'+num+'" rows="3" data-rule="组图结束代码:required;"></textarea></td>';
		html+='    </tr>';
		html+='    <tr>';
		html+='        <td>简介</td>';
		html+='        <td>简介开始代码<textarea name="t14['+num+'][intro_begin]" class="ui-form-ip" rows="3"></textarea></td>';
		html+='        <td>简介结束代码<textarea name="t14['+num+'][intro_over]" class="ui-form-ip" rows="3"></textarea></td>';
		html+='    </tr>';
		html+='</table>';
		
		$("#pic_list").append(html);
	});
})
</script>
</body>
</html>