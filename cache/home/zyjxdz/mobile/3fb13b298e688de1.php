<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit;?>
<div class="douyin_info">
            <h3>关注我们抖音了解更多</h3>
            <a href=" <?php echo C(strtoupper('douyin_url'));?>" target="_blank">点击前往抖音查看</a>
            <img src="<?php echo C(strtoupper('douyin_qcode'));?>" alt="">
        </div>
<div class="index06">
        <div class="intitle03">
            <span>产品中心</span>
            <a href="/product.html" class="more">查看更多</a>
        </div>
        <div class="tejia_cc0" style="height:340px;background:#fff;" id="tejia_con0">
            <div class="tejia_con0" style="height:340px;">
                <ul>
                <?php $array_rp=$this->db->load("select * from cms_class  where followid=2  order by cate_order,cateid limit 10",0,false,0);$total_rp=count($array_rp);if($total_rp==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rp as $rp){ $i++;?>
                <li>
                    <a href="<?php echo cateurl($rp['cateid']);?>" title="<?php echo $rp['cate_name'];?>">
                            <div class="img"><img src="<?php echo $rp['mycat_thumb'];?>" alt="<?php echo $rp['cate_name'];?>" /></div>
                            <span><?php echo $rp['cate_name'];?></span>
                        </a>
                    </li>
            <?php } if($total_rp>0){ ?>
<?php }?>
                </ul>
            </div>
            <a class="bbtn aleft" href="#left"></a> <a class="bbtn aright" href="#right"></a>
        </div>
        <script type="text/javascript" src="<?php echo WEB_THEME;?>mobile/js/Xslider.js"></script>
        <script type="text/javascript">
            $(function () {
                $("#tejia_con0").Xslider({
                    unitdisplayed: 2,
                    numtoMove: 2,
                    loop: "cycle",
                    autoscroll: 3000
                });
            })
        </script>
    </div>