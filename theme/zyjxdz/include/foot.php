<?php if(!defined('IN_CMS')) exit;?>
<div class="footer">
    <div class="wrapper">
        <div class="fnav">
            <a href="{WEB_ROOT}">首页</a>
            {cms:rp table="cms_class" where="followid=0 and ismenu=1" order="cate_order,cateid"}
                <a href="{cateurl($rp[cateid])}">{$rp[cate_name]}</a>
            </li>
            {/cms:rp}
        </div>
        <div class="copyright">
            版权所有：{cms[ct_company]}　<a href="{cms[other_beian]}" target="_blank">{cms[web_icp]}</a>　<a href="{cms[beian_url]}" target="_blank">{cms[beian_num]}</a> 
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
<script type="text/javascript" src="{WEB_THEME}js/gotop.js"></script>