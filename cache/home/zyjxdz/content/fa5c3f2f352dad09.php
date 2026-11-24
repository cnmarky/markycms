<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit; include $this->tp->parse_include_twos("include/head.php");?><div class="sub_banner"><img src="<?php echo get_cate_self($mycat_banner,$topid,'mycat_banner',WEB_ROOT.'theme/20170102/images/b1.jpg');?>"></div>
<div class="wrapper page_404">
    <img src="<?php echo WEB_THEME;?>images/404.png" alt="" class="img-responsive">
    <div class="returnn">
        哎呀~ 此路不通！别担心 <span class="text-red" id="timeout"></span> 秒后将自动返回首页......
    </div>
    <div class="oper">
        <a href="/"><span class="icon-home"></span> 回首页</a>
        <a href="javascript:history.go(-1)"><span class=" icon-reply"></span> 上一步</a>
        <a onclick="javascript:location.href='location.href'"><span class=" icon-refresh"></span> 刷新</a>
    </div>
</div><div class="wrapper">
    <h3>您也可以直接查看我们的产品</h3>
<?php $array_rp=$this->db->load("select * from cms_class  where followid=2  order by cate_order,cateid limit 10",0,false,0);$total_rp=count($array_rp);if($total_rp==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rp as $rp){ $i++;?>
                    <div class="pro_cover">
                    <?php $head_id=$rp['cateid'];?>
                        <div class="sub_pro_title">
                        <h2><?php echo $rp['cate_name'];?></h2>
                        <p>化工、食品、金属铸造、水泥、饲料工业、制药、化学、肥料、橡塑胶工业、矿业.运输设备、仓储业、污染防治等工业。</p>
                        <a href="<?php echo cateurl($rp['cateid']);?>">查看更多＋</a>
                        </div>
                        <ul class="pro_show">
                        <?php $array_rs=$this->db->load("select * from cms_show  where classid=$head_id and isshow=1  order by id desc limit 10",0,false,0);$total_rs=count($array_rs);if($total_rs==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rs as $rs){ $i++;?>
                        <?php $show_id=$rs['id'];?>
                    <li>
                                <a href="<?php echo link_url($rs['id'],$rs['alias'],$rs['classid']);?>" title="<?php echo $rs['title'];?>">
                                <p class="pic"><img src="<?php echo $rs['pic'];?>" width="300" alt="<?php echo $rs['title'];?>" /></p>
                                <dl>
                                    <dt><?php echo $rs['title'];?></dt>
                                    <!-- <?php $array_rg=$this->db->load("select * from cms_data left join cms_show on cms_data.cid=cms_show.id where dataid=$show_id  order by dataid limit 10",0,false,0);$total_rg=count($array_rg);if($total_rg==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rg as $rg){ $i++;?>
                                    <dd><?php echo $rg['myfeatures'];?></dd>
                                    <?php } if($total_rg>0){ ?>
<?php }?> -->
                                </dl>
                                </a>
                            </li>
                            <?php } if($total_rs>0){ ?>
<?php }?>                        </ul>
                    </div>
                    <?php } if($total_rp>0){ ?>
<?php }?>
</div>
<style>
    .page_404{
        text-align: center; 
        border-radius: 20px;
        margin:20px auto;
        padding: 40px 0 10px;
    }
    .page_404 .returnn {
        margin-top: 20px;
        text-align: center;
    }
    .page_404 .oper {
        margin-top: 20px;
        text-align: center;
    }
    .page_404 .oper a{
        display: inline-block;
        margin: 0 15px;
        padding: 5px 20px;
        background: #ffffff;
        border-radius: 3px
    }
    .text-red {
        color: red;
    }
    h3 {
        font-size: 24px;
        text-align:center;
        margin: 40px auto -20px;
    }
</style>
<script type="text/javascript">  
    var t = 5;  
    function showTime(){  
        t -= 1;  
        document.getElementById('timeout').innerHTML= t;  
        if(t==0){  
            location.href='/index.php';  
        }  
        setTimeout("showTime()",1000);  
    }  
    showTime();  
</script>  
<?php include $this->tp->parse_include_twos("include/foot.php");?></body>
</html>