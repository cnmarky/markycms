<?php if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>AI写作</title>
<link rel="stylesheet" href="{WEB_ROOT}public/css/ui.css">
<link rel="stylesheet" href="{WEB_ROOT}public/admin/css/layout.css">
<script src="{WEB_ROOT}public/js/jquery.js"></script>
<script src="{WEB_ROOT}public/js/ui.js"></script>
</head>

<body>

    <div class="position">当前位置：应用管理 > <a href="{U('index')}">智谱Ai写作</a> > <a href="{U('config')}">参数设置</a></div>
    <div class="borders">
        <!---->
        <form class="ui-form" method="post" data-top="0">
            <div class="ui-tabs ui-tabs-white" data-href="1">
                <ul class="ui-tabs-nav">
                	<li><a href="{U('index')}">智谱Ai写作</a></li>
                    <li class="active"><a href="{U('config')}">参数设置</a></li>
                </ul>
                <div class="ui-tabs-content">
                
                    <div class="ui-tabs-pane active">
                        <!---->
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">ApiKey：<div class="ui-mt ui-mr-sm"><a href="javascript:;" class="ui-btn ui-btn-blue ui-btn-lt ui-btn-outline addkey">新增</a></div></label>
                            <div class="col-right">
                                <div class="ui-table-wrap">
                                    <table class="ui-table ui-table-border ui-table-hover ui-table-blue">
                                    	<thead class="ui-thead-gray">
                                        <tr>
                                        	<th>ApiKey</th>
                                            <th width="80">操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        {foreach jsdecode($keylist) as $key=>$val}
                                        <tr>
                                            <td><input name="keylist[]" class="ui-form-ip" value="{$val}"></td>
                                            <td class="ui-font-14"><a href="javascript:;" class="delkey ui-btn ui-btn-lt ui-btn-outline ui-btn-red">删除</a></td>
                                        </tr>
                                        {/foreach}
                                        </tbody>
                                    </table>
                            	</div>
                                <span class="ui-text-gray">接口申请地址：<a href="https://open.bigmodel.cn" target="_blank" class="ui-text-blue">https://open.bigmodel.cn</a></span>
                                
                            </div>
                        </div>

                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">语言模型：</label>
                            <div class="col-right">
                                <select name="model" class="ui-form-ip">
                                    <option value="glm-4" {if $model=='glm-4'} selected{/if}>GLM-4（单价：0.1元 / 千tokens）</option>
                                    <option value="glm-4v" {if $model=='glm-4v'} selected{/if}>GLM-4V（单价：0.1元 / 千tokens）</option>
                                    <option value="glm-3-turbo" {if $model=='glm-3-turbo'} selected{/if}>GLM-3-Turbo （单价：0.001元 / 千tokens）</option>
                                </select>
                                <span class="input-tips">单价越高、质量越高、写作速度越慢</span>
                            </div>
                        </div>

                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">字数限制：</label>
                            <div class="col-right">
                                <input type="text" name="max" class="ui-form-ip" value="{$max}" data-rule="字数限制:required;int">
                                <span class="input-tips">建议500-800，不限制则设置为0即可</span>
                            </div>
                        </div>
                        
                        <div class="ui-form-group ui-row">
                            <label class="col-left ui-col-form-label">段落縮进：</label>
                            <div class="col-right ui-pt">
                                <label class="ui-radio"><input type="radio" name="space" value="1" {if $space==1} checked{/if}><i></i>空格缩进</label>
                                <label class="ui-radio"><input type="radio" name="space" value="2" {if $space==2} checked{/if}><i></i>样式缩进</label>
                                <label class="ui-radio"><input type="radio" name="space" value="0" {if $space==0} checked{/if}><i></i>不缩进</label>
                            </div>
                        </div>
                        
                        <!---->
 
                    </div>
                    <div class="ui-form-group ui-row ui-mt">
                        <label class="col-left ui-col-form-label"></label>
                        <div class="col-right">
                        	<input type="hidden" name="token" value="{$token}">
                            <button type="submit" class="ui-btn ui-btn-blue ui-mr-sm">保存设置</button>
                        </div>
                    </div>
                    
                </div>
            </div>
        </form>
        <!---->
    </div>

<script>
$(function()
{	
	$(document).on("click",".addkey",function()
	{
		var html='';
		html+='<tr>';
		html+='	<td><input name="keylist[]" class="ui-form-ip" value=""></td>';
		html+='	<td class="ui-font-14"><a href="javascript:;" class="delkey ui-btn ui-btn-lt ui-btn-outline ui-btn-red">删除</a></td>';
		html+='</tr>';
		$(".ui-table").find("tbody").append(html);
	});
	
	$(document).on("click",".delkey",function()
	{
		$(this).parent().parent().remove();
	});
	
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
						setTimeout(function(){location.href='{THIS_LOCAL}'},1000);
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