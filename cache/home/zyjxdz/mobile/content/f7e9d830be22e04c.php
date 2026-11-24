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
    <ul class="piclist">
    <?php $total_rs=$this->db->count("select count(1) from $table  where $where ");$pagesize=$cate_page;$totalpage=ceil($total_rs/$pagesize);if($page>$totalpage){
$page=1;}$offset=($page-1)*$pagesize;$way=0;if($offset>1000 && $total_rs>2000 && $offset>$total_rs/2){	$offset=$total_rs-$offset-$pagesize;	$way=1;}if($offset<0){	$pagesize+=$offset;	$offset=0;}$key_="id";$table_="$table";$join_="";$where_="where $where";$group_="";$order_="order by $order";$field_="*";$type_="0";$keylist=$this->db->getkeylist($key_,$table_,$join_,$where_,$order_,$offset,$pagesize,$way,$type_);$array_rs=$this->db->load("select $field_ from $table_ $join_ $keylist $group_ $order_");$pg=new cms_page($total_rs,$totalpage,$pagesize,$page);$showpage=$pg->showpage(3);if($total_rs==0){  } else{  $i=0;} foreach($array_rs as $rs){ $i++;?>
                        <li>
                        <a href="<?php echo $rs['pic'];?>" title="<?php echo $rs['title'];?>"><img src="<?php echo $rs['pic'];?>" alt="<?php echo $rs['title'];?>" /></a>                              
                            </li> <?php } if($total_rs>0){  }?>
                     </ul>
        <?php if ($pg->totalpage>1) { ?>
        <div class="page"><ul><?php echo $showpage;?></ul></div>
        <?php }?>
        <div class="douyin_info">
            <h3>更多工程视频案例关注我们抖音查看</h3>
            <a href=" https://v.douyin.com/ifBUawun/" target="_blank">点击前往抖音查看</a>
            <img src="https://www.zyjxdz.com/upfile/2025/01/1737468952976.jpg" alt="">
        </div>
        <style>
            .piclist li img {
                width: 48%;
                margin: 1%;
                float: left;
            }
        </style>
    </div>
    <?php include $this->tp->parse_include_twos("mobile/include/page_bottom.php");?>
</div>
	<?php include $this->tp->parse_include_twos("mobile/include/foot.php");?>
</body>
</html>