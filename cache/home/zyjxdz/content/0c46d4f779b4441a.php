<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit; include $this->tp->parse_include_twos("include/head.php");?><div class="sub_banner"><img src="<?php echo get_cate_self($mycat_banner,$topid,'mycat_banner',WEB_ROOT.'theme/20170102/images/b1.jpg');?>"></div>
<div class="contact_main">
    <div class="wrapper">
      <div class="cm_left">
        <div class="sub_inquiry">
          <p class="title">在线留言</p>
          <div class="inquirymain">
            <p>如果您有任何关于产品的疑问或其他问题，都可以通过下方的在线留言提交给我们的工作人员，我们会在最短的时间内与您取得联系，您也可以通过右方的联系方式直接与我们取得联系！</p><br>
            <div class="pro_detail01">
                <div class="btn"><a href="<?php echo C(strtoupper('ct_work_time'));?>" class="button btn-blue" title="联系方式" target="_blank">在线解疑</a>
                     <a href="<?php echo C(strtoupper('ct_work_time'));?>" class="button btn-green" title="联系方式" target="_blank">在线询价</a>
                            </div>
            </div>
          </div>
        </div>
      </div>
      <div class="cm_right">
        <dl>
          <dt>联系我们</dt>
          <dd><i class="contact"> </i>联系人: <?php echo C(strtoupper('contact_name'));?></dd>
          <dd><i class="tel"> </i>手机: <?php echo C(strtoupper('ct_mobile'));?></dd>
          <dd><i class="tel"> </i>电话: <?php echo C(strtoupper('ct_tel'));?></dd>
          <dd><i class="fax"> </i>传真: <?php echo C(strtoupper('ct_fax'));?></dd>
          <dd><i class="mail"> </i>邮箱: <?php echo C(strtoupper('ct_email'));?></dd>
          <dd><i class="address"> </i>地址: <?php echo C(strtoupper('ct_address'));?></dd>
        </dl>
        <div style="width:520px;height:300px;">
            <div style="font-weight:bold;font-size:16px;margin:30px 0 10px 10px">扫一扫添加工程师微信</div>
      <div><img src="<?php echo C(strtoupper('ct_weixin'));?>" width="200"></div>
        </div>
      </div>
    </div>
  </div>
	<?php include $this->tp->parse_include_twos("include/foot.php");?></body>
</html>