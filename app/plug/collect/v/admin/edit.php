<?php if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>编辑任务</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/layout.css">
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js"></script>
</head>

<body>
    <div class="position">当前位置：插件管理 > <a href="{U('index')}">采集管理</a> > <a href="{THIS_LOCAL}">编辑任务</a></div>
    <div class="borders">
        <!---->
         <div class="ui-tabs ui-tabs-white" data-href="1">
            <ul class="ui-tabs-nav">
                <li class="active"><a href="{U('edit','id='.$id.'')}">基本设置</a></li>
                <li><a href="{U('pageset','id='.$id.'')}">网址采集</a></li>
                <li><a href="{U('contentset','id='.$id.'')}">内容采集</a></li>
            </ul>
            
            <div class="ui-tabs-content">
                <div class="ui-tabs-pane active">
                    <!---->
                    <form method="post" class="ui-form">
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">任务名称：</label>
                            <div class="col-right">
                                <input type="text" name="t0" class="ui-form-ip" value="{$title}" placeholder="请输入任务名称" data-rule="任务名称:required;">
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">类别选择：</label>
                            <div class="col-right">
                                <select name="t1" class="ui-form-ip" data-rule="类别选择:required;">
                                    <option value="">请选择类别</option>
                                    {foreach C('class') as $rs}
                                    <option value="{$rs['cateid']}"{if $rs['cate_type']<0||strpos($rs['sonid'],',')} disabled{/if}{if $rs['cateid']==$cid} selected{/if}>{str_repeat("　",$rs['depth'])}{$rs['cate_name']}</option>
                                    {/foreach}
                                </select>
                            </div>
                        </div>
                        {php $t4=jsdecode($paramter)}
                        {if !is_array($t4)}
                        {php $t4=[]}
                        {/if}
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">属性设置：</label>
                            <div class="col-right col-right-top">
                            	<label class="ui-checkbox"><input type="checkbox" name="t4[]" value="1" {if in_array(1,$t4)} checked{/if}><i></i>倒序采集</label>
                                <label class="ui-checkbox"><input type="checkbox" name="t4[]" value="2" {if in_array(2,$t4)} checked{/if}><i></i>保存远程图片</label>
                                <label class="ui-checkbox"><input type="checkbox" name="t4[]" value="8" {if in_array(8,$t4)} checked{/if}><i></i>内容存为草稿</label>
                                <label class="ui-checkbox"><input type="checkbox" name="t4[]" value="9" {if in_array(9,$t4)} checked{/if}><i></i>自动截取简介</label>
                                <label class="ui-checkbox"><input type="checkbox" name="t4[]" value="10" {if in_array(10,$t4)} checked{/if}><i></i>提取第一张图为缩略图</label>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">内容过滤：</label>
                            <div class="col-right col-right-top">
                                <label class="ui-checkbox"><input type="checkbox" name="t4[]" value="3" {if in_array(3,$t4)} checked{/if}><i></i>Iframe</label>
                                <label class="ui-checkbox"><input type="checkbox" name="t4[]" value="4" {if in_array(4,$t4)} checked{/if}><i></i>Js</label>
                                <label class="ui-checkbox"><input type="checkbox" name="t4[]" value="5" {if in_array(5,$t4)} checked{/if}><i></i>A</label>
                                <label class="ui-checkbox"><input type="checkbox" name="t4[]" value="6" {if in_array(6,$t4)} checked{/if}><i></i>Style</label>
                                <label class="ui-checkbox"><input type="checkbox" name="t4[]" value="7" {if in_array(7,$t4)} checked{/if}><i></i>Object</label>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">字符替换：</label>
                            <div class="col-6">
                                <input type="button" class="ui-btn ui-btn-info ui-replace" value="添加替换规则">
                                <table class="ui-table ui-table-border ui-table-hover ui-table-striped ui-mb ui-mt">
                                    <thead class="ui-thead-gray">
                                    <tr>
                                        <th width="120">类型</th>
                                        <th>需要替换的字符</th>
                                        <th>替换为</th>
                                        <th width="80">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="replace_list">
                                    {php $replacetext=str_replace(["\r\n","\n","\t"],['\r\n','\n','\t'],$replacetext)}
                                    {php $data=jsdecode($replacetext)}
                                    {if is_array($data)}
                            		{foreach $data as $num=>$val}
                                    <tr num="{$num}">
                                    	<td><select name="t5[{$num}][type]" class="ui-form-ip"><option value="1"{if $val['type']=="1"} selected{/if}>标题</option><option value="2"{if $val['type']=="2"} selected{/if}>正文</option></select></td>
                                    	<td><textarea name="t5[{$num}][before]" class="ui-form-ip" id="{$num}" rows="3" data-rule="需要替换的字符:required;">{$val['before']}</textarea></td>
                                    	<td><textarea name="t5[{$num}][after]" class="ui-form-ip" rows="3">{$val['after']}</textarea></td>
                                    	<td><a href="javascript:;" class="del"><span class="ui-icon-delete"></span> 删除</a></td>
                                    </tr>
                                    {/foreach}
                            		{/if}
                                    </tbody>
                                </table>

                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">排序：</label>
                            <div class="col-right">
                                <input type="text" name="t2" class="ui-form-ip" value="{$ordnum}">
                                <span class="input-tips">数字越小越靠前</span>
                            </div>
                        </div>
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">状态：</label>
                            <div class="col-right col-right-top">
                                <label class="ui-radio"><input type="radio" name="t3" value="1"{if $isshow==1} checked{/if}><i></i>启用</label>
                                <label class="ui-radio"><input type="radio" name="t3" value="0"{if $isshow==0} checked{/if}><i></i>锁定</label>
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
                        setTimeout(function(){location.href='{U("pageset","id=$id")}';},1500);
                    }
                    else
                    {
                        sdcms.error(d.msg);
                    }
                }
            });
		}
	});
	$(document).on("click","#replace_list .del",function(){
		$(this).parent().parent().remove();
	});
	$(".ui-replace").click(function()
	{
		var num=1;
		$("#replace_list tr").each(function()
		{
			var maxnum=parseInt($(this).attr("num"));
			if(maxnum>=num)
			{
				num=maxnum+1;
			}
		});
		var html='';
		html+='<tr num="'+num+'">';
		html+=' <td><select name="t5['+num+'][type]" class="ui-form-ip"><option value="1">标题</option><option value="2">正文</option></select></td>';
		html+='	<td><textarea name="t5['+num+'][before]" class="ui-form-ip" id="'+num+'" rows="3" data-rule="需要替换的字符:required;"></textarea></td>';
		html+='	<td><textarea name="t5['+num+'][after]" class="ui-form-ip" rows="3"></textarea></td>';
		html+='	<td><a href="javascript:;" class="del"><span class="ui-icon-delete"></span> 删除</a></td>';
		html+='</tr>';
		$("#replace_list").append(html);
	});
})
</script>
</body>
</html>