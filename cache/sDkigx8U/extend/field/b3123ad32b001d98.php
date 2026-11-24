<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>字段管理</title>
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/css/ui.css">
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/admin/css/layout.css">
<script src="<?php echo WEB_ROOT;?>public/js/jquery.js"></script>
<script src="<?php echo WEB_ROOT;?>public/js/ui.js"></script>
</head>
<body>
    <div class="position">当前位置：扩展管理 > <a href="<?php echo U('index');?>">字段管理</a></div>
    <div class="borders">
        <div class="ui-tabs ui-tabs-white" data-href="1">
        	<div class="ui-tabs-header-nav">
                <ul class="ui-tabs-nav">
                    <li<?php if ($mid==0) { ?> class="active"<?php }?>><a href="<?php echo U('index');?>">全部字段</a></li>
                    <li<?php if ($mid==1) { ?> class="active"<?php }?>><a href="<?php echo U('index','mid=1');?>">栏目表</a></li>
                    <li<?php if ($mid==2) { ?> class="active"<?php }?>><a href="<?php echo U('index','mid=2');?>">内容表</a></li>
                    <li<?php if ($mid==3) { ?> class="active"<?php }?>><a href="<?php echo U('index','mid=3');?>">广告表</a></li>
                </ul>
                <div class="ui-tabs-header-more"><a href="<?php echo U('add',"mid=".$mid."");?>" class="ui-btn ui-btn-info"><i class="ui-icon-plus"></i>添加字段</a></div>
            </div>
            <div class="ui-tabs-content" style="margin-top:-1px;">
                <div class="ui-tabs-pane active">
                <form method="post" class="ui-form">
                <div class="ui-table-wrap">
                <table class="ui-table ui-table-border ui-table-hover ui-table-striped ui-mt ui-mb">
                    <thead class="ui-thead-gray">
                        <tr>
                            <th width="100">排序</th>
                            <th width="80">字段ID</th>
                            <th>字段名称</th>
                            <th width="120">Key</th>
                            <th width="120">类型</th>
                            <th width="100">用途</th>
                            <th width="80">状态</th>
                            <th width="150">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php $total_rs=$this->db->count("select count(1) from cms_field  where $where ");$pagesize=20;$totalpage=ceil($total_rs/$pagesize);if($page>$totalpage){
$page=1;}$offset=($page-1)*$pagesize;$way=0;if($offset>1000 && $total_rs>2000 && $offset>$total_rs/2){	$offset=$total_rs-$offset-$pagesize;	$way=1;}if($offset<0){	$pagesize+=$offset;	$offset=0;}$key_="id";$table_="cms_field";$join_="";$where_="where $where";$group_="";$order_="order by ordnum,id";$field_="*";$type_="0";$keylist=$this->db->getkeylist($key_,$table_,$join_,$where_,$order_,$offset,$pagesize,$way,$type_);$array_rs=$this->db->load("select $field_ from $table_ $join_ $keylist $group_ $order_");$pg=new cms_page($total_rs,$totalpage,$pagesize,$page);$showpage=$pg->showpage(5);if($total_rs==0){ ?><tr>
                        <td colspan="8">暂无资料</td>
                    </tr>
                    <?php } else{  $i=0;} foreach($array_rs as $rs){ $i++;?>
                    <tr>
                        <td><input type="hidden" name="mid[]" value="<?php echo $rs['id'];?>"><input type="text" class="ui-form-ip" name="ordnum[]" id="ordnum_<?php echo $rs['id'];?>" value="<?php echo $rs['ordnum'];?>" data-rule="required;int;"></td>
                        <td><?php echo $rs['id'];?></td>
                        <td class="ui-text-left"><?php echo $rs['field_title'];?></td>
                        <td><?php echo $rs['field_key'];?></td>
                        <td>
                        <?php switch ($rs['field_type']){ case 1: ?>普通文本<?php break; ?>                        <?php case 2: ?>普通文本-日期<?php break; ?>                        <?php case 3: ?>普通文本-整数<?php break; ?>                        <?php case 4: ?>普通文本-价格<?php break; ?>                        <?php case 5: ?>普通文本-上传<?php break; ?>                        <?php case 6: ?>普通文本-密码<?php break; ?>                        <?php case 7: ?>普通文本-隐藏域<?php break; ?>                        <?php case 8: ?>多行文本框<?php break; ?>                        <?php case 9: ?>单选按钮<?php break; ?>                        <?php case 10: ?>复选框<?php break; ?>                        <?php case 11: ?>下拉菜单<?php break; ?>                        <?php case 12: ?>编辑器<?php break; ?>                        <?php case 13: ?>图集<?php break; ?>                        <?php case 14: ?>数据集<?php break; ?>                        <?php case 15: ?>下载集<?php break; ?>                        <?php }?></td>
                        <td>
                        <?php switch ($rs['mid']){ case 1: ?>栏目<?php break; ?>                        <?php case 2: ?>内容<?php break; ?>                        <?php case 3: ?>广告<?php break; ?>                        <?php }?></td>
                        <td><label class="ui-switch ui-switch-info"><input type="checkbox" <?php if ($rs['isshow']==1) { ?> checked<?php }?> data-url="<?php echo U('switchs','id='.$rs['id'].'');?>"><span class="ui-switch-checkbox ui-switch-text"></span></label></td>
                        <td><a href="<?php echo U('edit',"id=".$rs['id']."&mid=$mid");?>"><span class="ui-icon-edit"></span> 编辑</a>　<a href="javascript:;" class="del" data-url="<?php echo U('del','id='.$rs['id'].'');?>"><span class="ui-icon-delete"></span> 删除</a></td>
                    </tr>
                    <?php } if($total_rs>0){  }?>
                    </tbody>
                </table>
                </div>
                <?php if ($total_rs!=0) { ?>
                <div class="ui-page ui-page-right ui-page-info">
                    <div class="ui-page-other"><input type="hidden" name="token" value="<?php echo $token;?>"><button type="submit" class="ui-btn ui-btn-yellow">保存排序</button></div>
                    <div class="ui-page-list"><ul><?php echo $showpage;?></ul></div>
                </div>
                <?php }?>
                </form>
                </div>
            </div>
        </div>
    </div>
<script>
$(function()
{
	$('.ui-switch input[type=checkbox]').on('click',function()
	{
		var url=$(this).data("url");
		var result=($(this).is(':checked'))?1:0;
		$.ajax(
		{
			url:url,
			type:"post",
			dataType:'json',
			data:"token=<?php echo $token;?>&state="+result,
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
                url:'<?php echo THIS_LOCAL;?>',
                data:$(form).serialize(),
                error:function(e){alert(e.responseText);},
                success:function(d)
                {
                    if(d.state=='success')
                    {
                        sdcms.success(d.msg);
                        setTimeout(function(){location.href='<?php echo THIS_LOCAL;?>';},1500);
                    }
                    else
                    {
                        sdcms.error(d.msg);
                    }
                }
            });
		}
	});
	$(".del").click(function()
	{
		var url=$(this).data("url");
		$.dialog(
		{
			title:"操作提示",
			text:"确定要删除？不可恢复！",
			oktheme:'ui-btn-info',
			ok:function(e)
			{
				$.ajax(
				{
                    url:url,
					type:'post',
					dataType:'json',
					data:'token=<?php echo $token;?>',
					error:function(e){alert(e.responseText);},
                    success:function(d)
                    {
                        e.close();
                        if(d.state=='success')
                        {
                            sdcms.success(d.msg);
                            setTimeout(function(){location.href='<?php echo THIS_LOCAL;?>';},1000);
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