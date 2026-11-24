<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit; include $this->tp->parse_include_twos("mobile/include/head.php");?>
<div id="wrap">
    <div class="intitle">
        <span><?php echo $cate_name;?></span>
        <div class="right">当前位置：<a href='<?php echo WEB_ROOT;?>' class='cumbhome'>首页</a>
        <?php foreach($position as $key=>$val) { ?>
                <a href="<?php echo $val['url'];?>" title="<?php echo $val['name'];?>"><?php echo $val['name'];?></a>
            <?php }?>
    </div>
    </div>
    <div id="mid" width="750px">
    <div id="right_content">
    <dl class="contact_info">
          <dd><i class="contact"> </i>联系人: <?php echo C(strtoupper('contact_name'));?></dd>
          <dd><i class="tel"> </i>手机: <?php echo C(strtoupper('ct_mobile'));?></dd>
          <dd><i class="tel"> </i>电话: <?php echo C(strtoupper('ct_tel'));?></dd>
          <dd><i class="fax"> </i>传真: <?php echo C(strtoupper('ct_fax'));?></dd>
          <dd><i class="mail"> </i>邮箱: <?php echo C(strtoupper('ct_email'));?></dd>
          <dd><i class="address"> </i>地址: <?php echo C(strtoupper('ct_address'));?></dd>
          <dd style="text-align:center;font-size:32px;font-weight:bold">扫一扫添加工程师微信</dd>
          <dd><img src="<?php echo C(strtoupper('ct_weixin'));?>" width="500" style="border-radius:20px;margin:0 auto"></dd>
        </dl>
    <?php include $this->tp->parse_include_twos("mobile/include/page_bottom.php");?>
</div>
	<?php include $this->tp->parse_include_twos("mobile/include/foot.php");?>
</body>
</html>