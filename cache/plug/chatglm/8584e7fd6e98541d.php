<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>创作进度</title>
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/css/ui.css">
<link rel="stylesheet" href="<?php echo WEB_ROOT;?>public/admin/css/layout.css">
<script src="<?php echo WEB_ROOT;?>public/js/jquery.js"></script>
<script src="<?php echo WEB_ROOT;?>public/js/ui.js"></script>
<style>
.ui-disabled,button:disabled{cursor:not-allowed !important;filter:grayscale(100%)}
</style>
</head>
<body class="bg_white">
<div class="border_iframe">
	<?php if ($num>0) { ?>
    <div class="ui-form-group">
        <div class="ui-pt">
            <div class="msg">共<span class="ui-text-blue ui-ml-sm ui-mr-sm"><?php echo $num;?></span>个标题，正在进行第<span class="num ui-text-red ui-ml-sm ui-mr-sm">0</span>个标题创作。</div>
            <div class="ui-progress ui-progress-big ui-progress-radius ui-progress-striped ui-mt-20">
                <div class="ui-progress-bar" style="min-width:13%;">0.00%</div>
            </div>
            <div class="ui-text-center ui-mt-15"><button type="button" class="ui-btn ui-btn-blue">开始创作</button></div>
        </div>
    </div>
    <div class="ui-write"><p style="font-size:13px;line-height:22px;color:#999;">每篇文章大约需要<span style="color:#f30;margin:0 5px;">30-50</span>秒左右，具体速度取决于文章字数限制，如果需要最快速度，设置为0即可。</p></div>
    <?php } else { ?>
    <div class="ui-text-red">没有需要写作的标题，请先添加。</div>
    <?php }?>
</div>
<?php if ($num>0) { ?>
<script>
function over()
{
	setTimeout(function(){parent.location.reload();},3000);
}
$(function()
{
	$(".ui-btn").click(function()
	{
		if(!$(this).hasClass("ui-disabled"))
		{
			$(this).addClass("ui-disabled").html('正在写作');
			$(".num").html("1");
			$(".ui-write").html('<iframe src="/app/plug/chatglm/c/begin.php?total=<?php echo $num;?>" width="100%" height="80" frameborder="0"></iframe>');
		}
	})	
})
</script>
<?php }?>
</body>
</html>