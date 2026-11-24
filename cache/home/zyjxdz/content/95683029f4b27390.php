<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit; include $this->tp->parse_include_twos("include/head.php");?>
<div class="sub_banner"><img src="<?php echo get_cate_self($mycat_banner,$topid,'mycat_banner',WEB_ROOT.'theme/20170102/images/b1.jpg');?>"></div>
<div class="sub_content">
            <div class="sub_main">
                <div class="wrapper">
                    <div class="sub_main_left">
                        <?php include $this->tp->parse_include_twos("include/left.php");?>
                    </div>
                    <div class="sub_main_right">
                        <?php include $this->tp->parse_include_twos("include/bread.php");?>
                        <div class="news_main">
                            <div class="nm_bottom">
                                <ul>
                <?php $total_rs=$this->db->count("select count(1) from $table  where $where ");$pagesize=$cate_page;$totalpage=ceil($total_rs/$pagesize);if($page>$totalpage){
$page=1;}$offset=($page-1)*$pagesize;$way=0;if($offset>1000 && $total_rs>2000 && $offset>$total_rs/2){	$offset=$total_rs-$offset-$pagesize;	$way=1;}if($offset<0){	$pagesize+=$offset;	$offset=0;}$key_="id";$table_="$table";$join_="";$where_="where $where";$group_="";$order_="order by $order";$field_="*";$type_="0";$keylist=$this->db->getkeylist($key_,$table_,$join_,$where_,$order_,$offset,$pagesize,$way,$type_);$array_rs=$this->db->load("select $field_ from $table_ $join_ $keylist $group_ $order_");$pg=new cms_page($total_rs,$totalpage,$pagesize,$page);$showpage=$pg->showpage(5);if($total_rs==0){  } else{  $i=0;} foreach($array_rs as $rs){ $i++;?>
                                    <li> <a href="<?php echo link_url($rs['id'],$rs['alias'],$rs['classid']);?>" title="<?php echo $rs['title'];?>">
                                        <p class="date"><span class="day"><?php echo date('d',$rs['createdate']);?></span> <span class="month"><?php echo date('Y-m',$rs['createdate']);?></span></p>
                                        <?php if ($rs['ispic']==1) { ?>
                                        <p class="pic"><img src="<?php echo $rs['pic'];?>" alt="<?php echo $rs['title'];?>" /></p>
                                        <?php }?>
                                        <dl>
                                            <dt><?php echo $rs['title'];?></dt>
                                            <dd><?php echo cut($rs['intro'],300,1);?></dd>
                                        </dl>
                                    </a> </li>
                                    <?php } if($total_rs>0){  }?>
                                </ul>
                            </div>
                            <div class="page">
                                <?php if ($pg->totalpage>1) { ?>
                                <?php echo $showpage;?>
                                <?php }?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php include $this->tp->parse_include_twos("include/foot.php");?>
    </body>
</html>