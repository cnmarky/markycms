<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>附件管理</title>
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/css/ui.css">
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/admin/css/layout.css">
<script src="<?php echo WEB_ROOT;?>public/js/jquery.js"></script>
<script src="<?php echo WEB_ROOT;?>public/js/ui.js"></script>
</head>
<body>
    <div class="position">当前位置：插件管理 > <a href="<?php echo U('index');?>">附件管理</a></div>
    <div class="border">
        <div class="ui-tabs" data-href="1" style="margin-top:-15px;">
            <div class="ui-tabs-header-nav">
                <ul class="ui-tabs-nav">
                    <li<?php if ($type==0) { ?> class="active"<?php }?>><a href="<?php echo U('index','type=0');?>">全部文件</a></li>
                    <li<?php if ($type==1) { ?> class="active"<?php }?>><a href="<?php echo U('index','type=1');?>">图片文件</a></li>
                    <li<?php if ($type==2) { ?> class="active"<?php }?>><a href="<?php echo U('index','type=2');?>">视频文件</a></li>
                    <li<?php if ($type==3) { ?> class="active"<?php }?>><a href="<?php echo U('index','type=3');?>">其他文件</a></li>
                </ul>
                <?php if (C(strtoupper('thumb_auto'))==1) { ?>
                <div class="ui-tabs-header-more"><a href="javascript:;" class="clear btn btn-info mb-sm">一键清理缩略图</a></div>
                <?php }?>
            </div>
        </div>
        <div class="ui-row ui-mt-15 ui-mb">
        	<div class="filelist-left">
            	<ul>
                	<li<?php if ($gid==0) { ?> class="actice"<?php }?>><a href="<?php echo U('index','type='.$type.'');?>"><span><?php echo $total;?></span>未分组</a></li>
                    <?php $array_rs=$this->db->load("select aid,gname,(select count(1) from cms_file where gid=a.aid $where_query) as num from cms_file_group a  where isshow=1  order by ordnum,aid ",0,false,0);$total_rs=count($array_rs);if($total_rs==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rs as $rs){ $i++;?>
                    <li<?php if ($gid==$rs['aid']) { ?> class="actice"<?php }?>><a href="<?php echo U('index','type='.$type.'&gid='.$rs['aid'].'');?>"><span><?php echo $rs['num'];?></span><?php echo $rs['gname'];?></a></li>
                    <?php } if($total_rs>0){ ?>
<?php }?>
                </ul>
                <div class="addgroup">
                	<div class="ui-btn-group ui-btn-group-sm">
                        <a class="ui-btn-group-item add_iframe">添加分组</a>
                        <a class="ui-btn-group-item list_iframe">分组管理</a>
                    </div>
                </div>
            </div>
            <div class="filelist-right">
            	<form method="post" class="ui-form">
            	<?php $total_rs=$this->db->count("select count(1) from cms_file  where $where ");$pagesize=20;$totalpage=ceil($total_rs/$pagesize);if($page>$totalpage){
$page=1;}$offset=($page-1)*$pagesize;$way=0;if($offset>1000 && $total_rs>2000 && $offset>$total_rs/2){	$offset=$total_rs-$offset-$pagesize;	$way=1;}if($offset<0){	$pagesize+=$offset;	$offset=0;}$key_="id";$table_="cms_file";$join_="";$where_="where $where";$group_="";$order_="order by $order";$field_="*";$type_="0";$keylist=$this->db->getkeylist($key_,$table_,$join_,$where_,$order_,$offset,$pagesize,$way,$type_);$array_rs=$this->db->load("select $field_ from $table_ $join_ $keylist $group_ $order_");$pg=new cms_page($total_rs,$totalpage,$pagesize,$page);$showpage=$pg->showpage(5);if($total_rs==0){ ?>
                        <div class="ui-pt ui-pl ui-font-14">暂无文件</div>
                    <?php } else{ ?>
                <div class="ui-row ui-align-items-center">
                	<label class="ui-checkbox"><input type="checkbox" class="checkall" value=""><i></i>全选/取消</label>
                    <div class="ui-btn-group ui-ml">
                        <a class="ui-btn-group-item move">批量修改分组</a>
                        <a class="ui-btn-group-item btach">批量删除</a>
                    </div>
                </div>
                 <div class="ui-piclist ui-piclist-16-9 ui-piclist-col-4 ui-mt-20">
                 <?php $i=0;} foreach($array_rs as $rs){ $i++;?>
                    <div class="ui-piclist-item">
                        <div class="ui-piclist-image<?php if ($rs['file_type']>1) { ?> file-preview file-type-<?php echo trim($rs['file_ext'],"."); }?>">
                        <?php if ($rs['file_type']==1) { ?>
                            <a href="<?php echo $rs['file_url'];?>" class="ui-lightbox" data-title="<?php echo $rs['file_name'];?>"><img src="<?php echo $rs['file_url'];?>" /></a>
                        <?php } else { ?>
                        	<a href="<?php echo $rs['file_url'];?>"<?php if (trim($rs['file_ext'],".")=="mp4") { ?> class="ui-lightbox" data-mode="video" data-title="<?php echo $rs['file_name'];?>"<?php } else { ?> target="_blank"<?php }?>></a>
                        <?php }?>
                        </div>
                        <div class="ui-piclist-body">
                            <div class="ui-piclist-title ui-text-hide"><label class="ui-checkbox"><input type="checkbox" name="id" value="<?php echo $rs['id'];?>"><i></i><?php echo $rs['file_name'];?></label></div>
                            <div class="ui-btn-group ui-btn-group-full ui-mt">
                                <a class="ui-btn-group-item group" data-id="<?php echo $rs['id'];?>">分组</a>
                                <a class="ui-btn-group-item ui-dropdown-show" data-val="<?php echo WEB_URL; echo $rs['file_url'];?>" data-target="#dropdown-link" data-align="bottom">链接</a>
                                <a class="ui-btn-group-item del" data-url="<?php echo U('del','id='.$rs['id'].'');?>">删除</a>
                            </div>
                        </div>
                    </div>
                <?php } if($total_rs>0){ ?>  
                </div>
                <?php }?>    
            	</form>
           		<div class="ui-dropdown" id="dropdown-link" style="width:400px;">
                    <div class="ui-input-group ui-pl ui-pr">
                        <input type="text" id="outurl" class="ui-form-ip radius-right-none" readonly value="">
                        <a href="javascript:;" class="after ui-icon-file-copy ui-copy" data-target="#outurl">复制</a>
                    </div>
                </div>
            </div>
        </div>
        <?php if ($total_rs!=0) { ?>
        <div class="ui-page ui-page-center ui-page-info ui-mt">
            <ul><?php echo $showpage;?></ul>
        </div>
        <?php }?>
    </div>
<script>
$(function()
{
	$(".ui-dropdown-show").click(function()
	{
		var val=$(this).data("val");
		$("#outurl").val(val);
	});
	$(".add_iframe").click(function()
	{
		$.dialogbox(
		{
			title:"添加分组",
			inputval:"",
			inputholder:"请输入分组名称",
			type:1,
			ok:function(e)
			{
				var val=e.inputval();
				if(val=='')
				{
					sdcms.error("分组名称不能为空");
				}
				else
				{
					$.ajax(
					{
						url:'<?php echo U("addgroup");?>',
						type:'post',
						dataType:'json',
						data:"token=<?php echo $token;?>&name="+encodeURIComponent(val),
						success:function(d)
						{
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
			}
		});
	});
	$(".list_iframe").click(function()
	{
		$.dialogbox(
		{
			title:"分组管理",
			text:'<?php echo U("lists");?>',
			width:'700px',
			height:'50%',
			type:3,
			oktheme:'ui-btn-info',
			footer:false
		});
	});
	$(".clear").click(function()
	{
		$.dialog(
		{
			title:"操作提示",
			text:"确定要清理？",
			ok:function(e)
			{
				$.ajax(
				{
                    url:'<?php echo U('clear');?>',
					type:'post',
					dataType:'json',
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
	$(".del").click(function()
	{
		var url=$(this).attr("data-url");
		$.dialog(
		{
			title:"操作提示",
			text:"确定要删除？不可恢复！",
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
	$(".btach").click(function()
	{
		var type=$(this).attr("type");
		var data=[];
		$(".ui-form").find("input[type=checkbox]:checked").each(function()
		{
			if($(this).attr("class")!='checkall' && !$(this).closest("label").hasClass("switch"))
			{
				data.push($(this).val());
			}
		});
        if(data.length==0)
        {
            sdcms.error('至少选择一条');
        }
        else
        {
			$.dialog(
			{
				title:"操作提示",
				text:"确定要删除？不可恢复！",
				ok:function(e)
				{
					e.close();
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
        }
    });
	$(".group").click(function()
	{
		var id=$(this).data("id");
		$.dialogbox(
		{
			title:"修改分组",
			text:'<?php echo U("move","token=$token");?>',
			width:'500px',
			height:'370px',
			type:3,
			oktheme:'ui-btn-info',
			ok:function(e)
			{
				var gid=e.iframe().contents().find("#go").val();
				if(gid=='')
				{
					sdcms.error('请选择分组');
					return false;
				}
				$.ajax(
				{
					 type:'post',
					 url:'<?php echo U("move");?>',
					 dataType:'json',
					 data:'token=<?php echo $token;?>&id='+id+'&gid='+gid,
					 error:function(e){alert(e.responseText);},
					 success:function(d)
					 {
						if(d.state=='success')
						{
							e.close();
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
	$(".move").click(function()
	{
        var type=$(this).attr("type");
		var data=[];
		$(".ui-form").find("input[type=checkbox]:checked").each(function()
		{
			if($(this).attr("class")!='checkall' && !$(this).closest("label").hasClass("switch"))
			{
				data.push($(this).val());
			}
		});
        if(data.length==0)
        {
            sdcms.error('至少选择一条');
        }
        else
        {
			var list=data.join(",");
			$.dialogbox(
			{
				title:"批量修改分组",
				text:'<?php echo U("move","token=$token");?>',
				width:'500px',
				height:'370px',
				type:3,
				oktheme:'ui-btn-info',
				ok:function(e)
				{
					var gid=e.iframe().contents().find("#go").val();
					if(gid=='')
                    {
                        sdcms.error('请选择分组');
                        return false;
                    }
					$.ajax(
					{
                         type:'post',
                         url:'<?php echo U("move");?>',
                         dataType:'json',
                         data:'token=<?php echo $token;?>&id='+list+'&gid='+gid,
                         error:function(e){alert(e.responseText);},
                         success:function(d)
						 {
                            if(d.state=='success')
                            {
								e.close();
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
        }
    });
})
</script>
</body>
</html>