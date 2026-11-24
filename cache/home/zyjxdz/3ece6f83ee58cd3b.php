<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit;?>
<div class="footer">
    <div class="wrapper">
        <div class="fnav">
            <a href="<?php echo WEB_ROOT;?>">首页</a>
            <?php $array_rp=$this->db->load("select * from cms_class  where followid=0 and ismenu=1  order by cate_order,cateid limit 10",0,false,0);$total_rp=count($array_rp);if($total_rp==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rp as $rp){ $i++;?>
                <a href="<?php echo cateurl($rp['cateid']);?>"><?php echo $rp['cate_name'];?></a>
            </li>
            <?php } if($total_rp>0){ ?>
<?php }?>
        </div>
        <div class="copyright">
            版权所有：<?php echo C(strtoupper('ct_company'));?>　<a href="<?php echo C(strtoupper('other_beian'));?>" target="_blank"><?php echo C(strtoupper('web_icp'));?></a>　<a href="<?php echo C(strtoupper('beian_url'));?>" target="_blank"><?php echo C(strtoupper('beian_num'));?></a> 
        </div>
    </div>
</div>
<script type="text/javascript">
var _mvq = window._mvq || [];
window._mvq = _mvq;
_mvq.push(['$setAccount', 'm-285484-0']);
_mvq.push(['$logConversion']);
(function() {
	var mvl = document.createElement('script');
	mvl.type = 'text/javascript'; mvl.async = true;
	mvl.src = ('https:' == document.location.protocol ? 'https://static-ssl.mediav.com/mvl.js' : 'http://static.mediav.com/mvl.js');
	var s = document.getElementsByTagName('script')[0];
	s.parentNode.insertBefore(mvl, s);
})();
</script>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?dccba6d16c32f439bb2e223f9cf1167f";
  var s = document.getElementsByTagName("script")[0];
  s.parentNode.insertBefore(hm, s);
})();
</script>
<script type="text/javascript" src="<?php echo WEB_THEME;?>js/gotop.js"></script>