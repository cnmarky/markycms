<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>百度推送</title>
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/css/ui.css">
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/admin/css/layout.css">
<script src="<?php echo WEB_ROOT;?>public/js/jquery.js"></script>
<script src="<?php echo WEB_ROOT;?>public/js/ui.js"></script>
</head>
<body>
    <div class="position">当前位置：插件管理 > <a href="<?php echo THIS_LOCAL;?>">百度推送</a></div>
    <div class="border">
        <div class="navbar">
            <div class="lefter">
                <a href="javascript:;" class="btach ui-btn ui-btn-info ui-mr-sm">批量推送</a>
                <a href="<?php echo U('config');?>" class="ui-btn ui-btn-yellow">参数配置</a>
            </div>
        </div>
        <form method="post" class="ui-form">
        <div class="ui-table-wrap">
        <table class="ui-table ui-table-border ui-table-hover ui-table-striped ui-mb ui-mt">
            <thead class="ui-thead-gray">
                <tr>
                    <th width="30" height="30"><label class="ui-checkbox ui-tips" data-align="right-top" data-title="全选/取消"><input type="checkbox" class="checkall" value=""><i></i></label></th>
                    <th>标题</th>
                    <th width="500">网址</th>
                    <th width="80">状态</th>
                    <th width="80">操作</th>
                </tr>
            </thead>
            <tbody>
            <?php $total_rs=$this->db->count("select count(1) from cms_show a left join cms_plug_push b on a.id=b.cid  where isshow=1 ");$pagesize=20;$totalpage=ceil($total_rs/$pagesize);if($page>$totalpage){
$page=1;}$offset=($page-1)*$pagesize;$way=0;if($offset>1000 && $total_rs>2000 && $offset>$total_rs/2){	$offset=$total_rs-$offset-$pagesize;	$way=1;}if($offset<0){	$pagesize+=$offset;	$offset=0;}$key_="id";$table_="cms_show a left join cms_plug_push b on a.id=b.cid";$join_="";$where_="where isshow=1";$group_="";$order_="order by ordnum desc,id desc";$field_="*";$type_="0";$keylist=$this->db->getkeylist($key_,$table_,$join_,$where_,$order_,$offset,$pagesize,$way,$type_);$array_rs=$this->db->load("select $field_ from $table_ $join_ $keylist $group_ $order_");$pg=new cms_page($total_rs,$totalpage,$pagesize,$page);$showpage=$pg->showpage(5);if($total_rs==0){ ?>
            <tr>
                <td colspan="5">暂无数据</td>
            </tr>
            <?php } else{  $i=0;} foreach($array_rs as $rs){ $i++;?>
            <tr>
            	<td><label class="ui-checkbox"><input type="checkbox" name="id" value="<?php echo $rs['id'];?>"><i></i></label></td>
                <td class="ui-text-left"><?php echo $rs['title'];?></td>
                <td class="ui-text-left"><?php echo WEB_URL; echo link_url($rs['id'],$rs['alias'],$rs['classid']);?></td>
                <td><?php if (getint($rs['cid'])==0) { ?><span class="ui-text-gray">未推送</span><?php } else { ?>已推送<?php }?></td>
                <td><a href="javascript:;" class="push" data-url="<?php echo U('push','id='.$rs['id'].'');?>"><span class="ui-icon-link"></span> 推送</a></td>
            </tr>
            <?php } if($total_rs>0){  }?>
            </tbody>
        </table>
        </div>
        </form>
        <?php if ($total_rs!=0) { ?>
        <div class="ui-page ui-page-center ui-page-info">
            <div class="ui-page-list"><ul><?php echo $showpage;?></ul></div>
        </div>
        <?php }?>
    </div>
<script>
$(function()
{
    $(".btach").click(function()
	{
		var data=[];
		$(".ui-form").find("input[type=checkbox]:checked").each(function()
		{
			if($(this).attr("class")!='checkall' && !$(this).closest("label").hasClass("ui-switch"))
			{
				data.push($(this).val());
			}
		});
        if(data.length==0)
        {
            sdcms.error('至少选择一条内容');
        }
        else
        {
            $.ajax(
			{
                type:'post',
                cache:false,
                dataType:'json',
                url:'<?php echo U("btach");?>',
                data:"token=<?php echo $token;?>&id="+data.join(","),
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
	$(".push").click(function()
	{
		var url=$(this).attr("data-url");
		$.dialog(
		{
			'title':"操作提示",
			'text':"确定要推送？",
			'oktheme':'ui-btn-info',
			'ok':function(e)
			{
				$.ajax(
				{
                    url:url,
					type:'post',
					data:'token=<?php echo $token;?>',
					dataType:'json',
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