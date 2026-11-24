<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit;?>
<div class="pro_detail03">
    <h3 class="proinfo-title"> 相关产品 </h3>
        <ul>
            <?php $array_rp=$this->db->load("select * from cms_class  where followid=2  order by cate_order,cateid limit 10",0,false,0);$total_rp=count($array_rp);if($total_rp==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rp as $rp){ $i++;?>
                <li>
                    <a href="<?php echo cateurl($rp['cateid']);?>" title="<?php echo $rp['cate_name'];?>">
                        <p class="pic">
                            <img src="<?php echo $rp['mycat_thumb'];?>" width="216" alt="<?php echo $rp['cate_name'];?>" />
                        </p>
                        <span><?php echo $rp['cate_name'];?></span>
                    </a>
                </li>
            <?php } if($total_rp>0){ ?>
<?php }?>
        </ul>
</div>