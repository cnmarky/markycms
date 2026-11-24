<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit;?>
<div class="sub_products">
    <div class="left-bar-title">产品分类 / PRODUCT LIST</div>
    <div class="promenu">
        <ul>
            <?php $array_rp=$this->db->load("select * from cms_class  where followid=2 and ismenu=1  order by cate_order,cateid limit 10",0,false,0);$total_rp=count($array_rp);if($total_rp==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rp as $rp){ $i++;?>
            <?php $cateid=$rp['cateid'];?>
	            <li class="<?php echo is_active($rp['cateid'],$parentid,'active',1);?>"><span><a href="<?php echo cateurl($rp['cateid']);?>"><?php echo $rp['cate_name'];?></a></span> 
                    <ul class="sub">
                        <?php $array_rg=$this->db->load("select * from cms_show  where classid=$cateid and isshow=1  order by ordnum desc,id desc limit 10",0,false,0);$total_rg=count($array_rg);if($total_rg==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rg as $rg){ $i++;?><li><a class="<?php echo is_active($rg['id'],$id,'active',1);?>" href="<?php echo link_url($rg['id'],$rg['alias'],$rg['classid']);?>"><?php echo $rg['title'];?></a></li>
                        <?php } if($total_rg>0){ ?>
<?php }?>
                    </ul>
			    </li>
            <?php } if($total_rp>0){ ?>
<?php }?>
		</ul>
	</div>
</div>
<div class="sub_news">
    <div class="left-bar-title">新闻动态 / NEWS</div>
    <ul>
        <?php $array_rs=$this->db->load("select * from cms_show  where isshow=1 and classid=15  order by ordnum desc,id desc limit 10",0,false,0);$total_rs=count($array_rs);if($total_rs==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rs as $rs){ $i++;?>
            <li><a href="<?php echo link_url($rs['id'],$rs['alias'],$rs['classid']);?>" title="<?php echo $rs['title'];?>"><i></i><?php echo cut($rs['title'],50,1);?></a></li>
        <?php } if($total_rs>0){ ?>
<?php }?>
    </ul>
</div>
<div class="sub_contact">
    <div class="left-bar-title">联系我们 / CONTACT US</div>
    <ul>
        <li>联系人:  <?php echo C(strtoupper('contact_name'));?></li>
        <li>电话:  <?php echo C(strtoupper('ct_tel'));?></li>
        <li>传真:  <?php echo C(strtoupper('ct_fax'));?></li>
        <li>手机号: <?php echo C(strtoupper('ct_mobile'));?></li>
        <li>邮箱: <?php echo C(strtoupper('ct_email'));?></li>
        <li>地址: <?php echo C(strtoupper('ct_address'));?></li>
    </ul>
</div>
<div class="sub_contact_wx">
    <span>扫一扫添加工程师微信</span>
    <img><img src="<?php echo C(strtoupper('ct_weixin'));?>" width="260"/></img>
</div>