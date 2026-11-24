<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit; include $this->tp->parse_include_twos("include/head.php");?><div class="banner">
    <div class="banner_show" id="banner_show">
        <?php $array_rs=$this->db->load("select * from cms_ad  where cid=1 and isshow=1  order by ordnum,id limit 10",0,false,0);$total_rs=count($array_rs);if($total_rs==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rs as $rs){ $i++;?>
        <a href="<?php echo $rs['url'];?>" class="bannger_inbox"><img src="<?php echo $rs['pic'];?>" alt="<?php echo $rs['name'];?>" width="1920"
                height="500" /></a>
        <?php } if($total_rs>0){ ?>
<?php }?>
        <div class="yq_banner_list" id="yq_banner_list">
            <?php $array_rs=$this->db->load("select * from cms_ad  where cid=1 and isshow=1  order by ordnum,id limit 10",0,false,0);$total_rs=count($array_rs);if($total_rs==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rs as $rs){ $i++;?>
            <?php $id=$rs['id']-2;?>
            <a href="javascript:;" rel="<?php echo $id;?>" <?php if (($id)==0) { ?> class="hover" <?php }?>></a>
            <?php } if($total_rs>0){ ?>
<?php }?>
        </div>
        <div class="banner_pre_next" style="display: none; ">
            <a href="javascript:;" class="banner_btn_left"><</a>
            <a href="javascript:;" class="banner_btn_right">></a>
        </div>
    </div>
</div><div class="content">
    <div class="c_box01">
        <div class="wrapper">
            <div class="title">
                <h2>专业的振动器产品制造商</h2>
                <p>致力于振动器的研制与开发，专注于解决物料堵塞的各种问题</p>
            </div>
            <div class="rollBox">
                <div class="product-type">
                    <span>产品分类</span>
                    <?php $array_rp=$this->db->load("select * from cms_class  where followid=2  order by cate_order,cateid limit 10",0,false,0);$total_rp=count($array_rp);if($total_rp==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rp as $rp){ $i++;?>
                    <a href="<?php echo cateurl($rp['cateid']);?>"><?php echo $rp['cate_name'];?></a>
                    <?php } if($total_rp>0){ ?>
<?php }?>
                </div>
                <div class="btn"><a id="next" href="#" class="btn01"></a> <a id="prev" href="#" class="btn02"></a></div>
                <div id="cpzsm">
                    <ul>
                        <?php $array_rp=$this->db->load("select * from cms_class  where followid=2  order by cate_order,cateid limit 10",0,false,0);$total_rp=count($array_rp);if($total_rp==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rp as $rp){ $i++;?>
                        <li>
                            <a href="<?php echo cateurl($rp['cateid']);?>" title="<?php echo $rp['cate_name'];?>">
                                <p class="pic"><img src="<?php echo $rp['mycat_thumb'];?>" width="216" alt="<?php echo $rp['cate_name'];?>" /></p>
                                <p class="text"><?php echo $rp['cate_name'];?></p>
                            </a>
                        </li>
                        <?php } if($total_rp>0){ ?>
<?php }?>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="c_box03">
        <div class="wrapper">
            <?php $data_block=include("theme/zyjxdz/block/homeaboutus.php");echo $data_block[0];?>
        </div>
    </div>
    <div class="c_box04">
        <div class="wrapper">
            <div class="index_news">
                <div class="tetle">新闻中心 <a href="/news.html">查看更多＋</a></a></div>
                <ul>
                    <?php $array_rs=$this->db->load("select * from cms_show  where isshow=1 and classid=15  order by ordnum desc,id desc limit 14",0,false,0);$total_rs=count($array_rs);if($total_rs==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rs as $rs){ $i++;?>
                    <li><a href="<?php echo link_url($rs['id'],$rs['alias'],$rs['classid']);?>"
                            title="<?php echo $rs['title'];?>"><i></i><?php echo cut($rs['title'],50,1);?><span><?php echo date('Y-m-d',$rs['createdate']);?></span></a>
                    </li>
                    <?php } if($total_rs>0){ ?>
<?php }?>
                </ul>
            </div>
            <div class="index_gallery">
                <div class="tetle">工程案例 <a href="/project.html">查看更多＋</a></a></div>
                <div class="aside-parts-slide">
                    <ul id="aside-parts-slide">
                        <li style="display:block;">
                            <?php $array_rs=$this->db->load("select * from cms_show  where isshow=1 and classid=4  order by ordnum desc,id                             desc limit 0,4",0,false,0);$total_rs=count($array_rs);if($total_rs==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rs as $rs){ $i++;?>
                            <div class="left"><a href="/project.html"><img src="<?php echo $rs['pic'];?>" width="330" /></a></div>
                            <?php } if($total_rs>0){ ?>
<?php }?>
                        </li>
                        <li>
                            <?php $array_rs=$this->db->load("select * from cms_show  where isshow=1 and classid=4  order by ordnum desc,id                             desc limit 2,4",0,false,0);$total_rs=count($array_rs);if($total_rs==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rs as $rs){ $i++;?>
                            <div class="left"><a href="/project.html"><img src="<?php echo $rs['pic'];?>" width="330" /></a></div>
                            <?php } if($total_rs>0){ ?>
<?php }?>
                        </li>
                        <li>
                            <?php $array_rs=$this->db->load("select * from cms_show  where isshow=1 and classid=4  order by ordnum desc,id                             desc limit 4,4",0,false,0);$total_rs=count($array_rs);if($total_rs==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rs as $rs){ $i++;?>
                            <div class="left"><a href="/project.html"><img src="<?php echo $rs['pic'];?>" width="330" /></a></div>
                            <?php } if($total_rs>0){ ?>
<?php }?>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include $this->tp->parse_include_twos("include/foot.php");?><script type="text/javascript" src="<?php echo WEB_THEME;?>js/focus.js"></script>
<script type="text/javascript" src="<?php echo WEB_THEME;?>js/jcarousellite.min.js"></script>
<script type="text/javascript" src="<?php echo WEB_THEME;?>js/jquery.soChange-min.js"></script>
</body>
</html>