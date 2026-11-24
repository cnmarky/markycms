<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>广告管理</title>
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/css/ui.css">
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/admin/css/layout.css">
<script src="<?php echo WEB_ROOT;?>public/js/jquery.js"></script>
<script src="<?php echo WEB_ROOT;?>public/js/ui.js"></script>
</head>
<body>
    <div class="position">当前位置：扩展管理 > <a href="<?php echo THIS_LOCAL;?>">广告管理</a></div>
    <div class="border">
        <a href="javascript:;" data-url="<?php echo U('add');?>" class="ui-btn ui-btn-info add-iframe"><i class="ui-icon-plus"></i>添加广告组</a>
        <form method="post" class="ui-form">
        <div class="ui-table-wrap">
        <table class="ui-table ui-table-border ui-table-hover ui-table-striped ui-mb ui-mt-20">
            <thead class="ui-thead-gray">
                <tr>
                    <th width="100">排序</th>
                    <th width="80">ID</th>
                    <th>广告组名称</th>
                    <th width="280">操作</th>
                </tr>
            </thead>
            <tbody>
            <?php $array_rs=$this->db->load("select * from cms_ad_group  where 1=1   order by gnum,gid ",0,false,0);$total_rs=count($array_rs);if($total_rs==0){ ?>
            <tr>
                <td colspan="4">暂无资料</td>
            </tr>
<?php } else{ ?>
<?php $i=0;} foreach($array_rs as $rs){ $i++;?>
            <tr>
                <td><input type="hidden" name="mid[]" value="<?php echo $rs['gid'];?>"><input type="text" class="ui-form-ip" name="ordnum[]" id="ordnum_<?php echo $rs['gid'];?>" value="<?php echo $rs['gnum'];?>" data-rule="required;int;"></td>
                <td><?php echo $rs['gid'];?></td>
                <td class="ui-text-left"><?php echo $rs['gname'];?></td>
                <td><a href="<?php echo U('lists',"cid=".$rs['gid']."");?>"><span class="ui-icon-edit"></span> 广告管理</a>　<a href="javascript:;" data-url="<?php echo U('edit',"id=".$rs['gid']."");?>" class="edit-iframe"><span class="ui-icon-edit"></span> 编辑</a>　<a href="javascript:;" class="del" data-url="<?php echo U('del','id='.$rs['gid'].'');?>"><span class="ui-icon-delete"></span> 删除</a></td>
            </tr>
            <?php } if($total_rs>0){ ?>
<?php }?>
            </tbody>
        </table>
        </div>
        <?php if ($total_rs!=0) { ?>
        <input type="hidden" name="token" value="<?php echo $token;?>">
        <button type="submit" class="ui-btn ui-btn-yellow">保存排序</button>
        <?php }?>
        </form>
    </div>
<script>
$(function()
{
	$(".add-iframe").click(function()
	{
		var url=$(this).data("url");
		$.dialogbox(
		{
			title:"添加广告组",
			text:url,
			width:'500px',
			height:'210px',
			type:3,
			oktheme:'ui-btn-info',
			ok:function(e)
			{
				e.iframe().contents().find("#sdcms-submit").click();
			},
			cancel:function(){location.href=location.href;}
		});
	});
	$(".edit-iframe").click(function()
	{
		var url=$(this).data("url");
		$.dialogbox(
		{
			title:"编辑广告组",
			text:url,
			width:'500px',
			height:'210px',
			type:3,
			oktheme:'ui-btn-info',
			ok:function(e)
			{
				e.iframe().contents().find("#sdcms-submit").click();
			},
			cancel:function(){location.href=location.href;}
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