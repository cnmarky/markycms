<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit; include $this->tp->parse_include_twos("mobile/include/head.php");?>
    <div class="ui-mwidth box">
        <div class="ui-menu ui-menu-color">
            <div class="ui-menu-name"><?php echo $page_name;?></div>
        </div>
        <div class="ui-pt-20">
            <div class="ui-timeline">
                <?php $array_rp=$this->db->load("select * from cms_class  where followid=0 and ismenu=1  order by cate_order,cateid ",0,false,0);$total_rp=count($array_rp);if($total_rp==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rp as $rp){ $i++;?>
                <?php $map_sonid=$rp['cateid'];?>
                <div class="ui-timeline-item">
                    <div class="ui-timeline-dot"></div>
                    <div class="ui-timeline-title"><a href="<?php echo cateurl($rp['cateid']);?>" title="<?php echo $rp['cate_name'];?>" target="_blank"><?php echo $rp['cate_name'];?></a></div>
                    <div class="ui-timeline-text">
                        <?php $array_rs=$this->db->load("select * from cms_class  where followid=$map_sonid and ismenu=1  order by cate_order,cateid ",0,false,0);$total_rs=count($array_rs);if($total_rs==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rs as $rs){ $i++;?>
                        <a href="<?php echo cateurl($rs['cateid']);?>" title="<?php echo $rs['cate_name'];?>" target="_blank" class="ui-btn ui-mr ui-mb"><?php echo $rs['cate_name'];?></a>
                        <?php } if($total_rs>0){ ?>
<?php }?>
                    </div>
                </div>
                <?php } if($total_rp>0){ ?>
<?php }?>
            </div>
        </div>
    </div>
	<?php include $this->tp->parse_include_twos("mobile/include/foot.php");?>
</body>
</html>