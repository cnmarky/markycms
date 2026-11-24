<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit; include $this->tp->parse_include_twos("mobile/include/head.php");?>
<div class="flash">
    <link rel="stylesheet" href="<?php echo WEB_THEME;?>mobile/css/flexslider.css" type="text/css" />
    <script type="text/javascript" src="<?php echo WEB_THEME;?>mobile/js/jquery.flexslider-min.js"></script>
    <div class="block_home_slider">
        <div id="home_slider" class="flexslider">
            <ul class="slides">
                <?php $array_rs=$this->db->load("select * from cms_ad  where cid=2 and isshow=1  order by ordnum,id limit 10",0,false,0);$total_rs=count($array_rs);if($total_rs==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rs as $rs){ $i++;?>
                <li>
                    <a href="<?php echo $rs['url'];?>">
                        <div class="slide">
                            <img src="<?php echo $rs['pic'];?>" alt="<?php echo $rs['name'];?>" />
                        </div>
                    </a>
                </li>
                <?php } if($total_rs>0){ ?>
<?php }?>
            </ul>
        </div>
        <script type="text/javascript">
            $(function () {
                $('#home_slider').flexslider({
                    animation: 'slide',
                    controlNav: true,
                    directionNav: true,
                    animationLoop: true,
                    slideshow: true,
                    useCSS: false
                });
            });
        </script>
    </div>
</div>
<div class="welcome">
    <h1>专业的振动器产品制造商</h1>
    <p>专注于全行业物料堵塞解决方案</p>
    <p>致力于振动器的研制与开发</p>
</div>
<div class="inproduct" style="margin-top:20px;">
    <div class="intitle01">
        <span><b>产品中心</b>
        </span>
        <a href="/product.html" class="more">更多</a>
    </div>
    <ul class="piclist">
        <?php $array_rp=$this->db->load("select * from cms_class  where followid=2  order by cate_order,cateid limit 10",0,false,0);$total_rp=count($array_rp);if($total_rp==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rp as $rp){ $i++;?>
        <li>
            <a class="aimg" href="<?php echo cateurl($rp['cateid']);?>" title="<?php echo $rp['cate_name'];?>"><img src="<?php echo $rp['mycat_thumb'];?>"
                    alt="<?php echo $rp['cate_name'];?>" /></a>
            <a href="<?php echo cateurl($rp['cateid']);?>"><span><?php echo $rp['cate_name'];?></span></a>
            <a href="tel:<?php echo C(strtoupper('ct_tel'));?>" class="xunjia">电话询价</a>
            <a href="<?php echo C(strtoupper('ct_work_time'));?>" class="zixun">在线咨询</a>
        </li>
        <?php } if($total_rp>0){ ?>
<?php }?>
    </ul>
    <style>
        .piclist li {
            float: left;
        }
        .piclist li .aimg {
            width: 330px;
            height: 260px;
        }
        .piclist li span {
            text-align: center;
        }
    </style>
</div>
<span class="xiaoshoutel">全国销售热线：<b><?php echo C(strtoupper('ct_tel'));?></b>　<a href="tel:<?php echo C(strtoupper('ct_tel'));?>"><b>点击拨打</b></a></span>
<hr />
<div class="company-div">
    <h2 style="margin-bottom:20px;">公司简介</h2>
    <div style="width:710px;padding:0 20px;font-size:1.5rem;">
        <p>安阳市卓易机械电子有限公司，致力于振动器的研制与开发，专注于解决物料堵塞的各种问题。</p>
        <p>专业生产气动振动器、气动敲击锤、电动振动器、电动敲击锤、小型电磁振动器、零速开关、振动器控制箱、电磁阀箱等产品。产品广泛应用于化工、机械、食品、饲料、水泥、制药、矿业等所有加工粉体的行业。</p>
        <p>公司拥有一支具有丰富的研发和生产经验的技术人员构成的团队，凭借雄厚的技术力量，严谨的工作态度和热诚的服务，得到了众多用户的信赖。</p>
    </div>
    <p class="pic" style="margin:15px"> <img src="<?php echo WEB_THEME;?>mobile/images/pro03.jpg" width="100%" height="auto" /> </p>
</div>
<hr />
<div class="index011">
    <div class="intitle03">
        <span>工程案例</span>
        <a href="/project.html" class="more">查看更多</a>
    </div>
    <div class="tejia_cc0" style="height:240px;background:#fff;" id="tejia_con0">
        <div class="tejia_con0" style="height:240px;">
            <ul>
                <?php $array_rs=$this->db->load("select * from cms_show  where isshow=1 and classid=4  order by ordnum desc,id desc limit 0,10",0,false,0);$total_rs=count($array_rs);if($total_rs==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rs as $rs){ $i++;?>
                <li>
                    <a href="/project.html">
                        <div class="img"><img src="<?php echo $rs['pic'];?>" /></div>
                    </a>
                </li>
                <?php } if($total_rs>0){ ?>
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
<hr />
<div class="index04">
    <div class="intitle02">
        <span>新闻动态</span>
        <a href="/news/" class="more">查看更多</a>
    </div>
    <ul class="newslist">
        <?php $array_rs=$this->db->load("select * from cms_show  where isshow=1 and classid=15  order by ordnum desc,id desc limit 14",0,false,0);$total_rs=count($array_rs);if($total_rs==0){ ?>
<?php } else{ ?>
<?php $i=0;} foreach($array_rs as $rs){ $i++;?>
        <a href="/<?php echo link_url($rs['id'],$rs['alias'],$rs['classid']);?>" title="<?php echo $rs['title'];?>">
            <li>
                <span><?php echo $rs['title'];?></span>
                <?php echo cut($rs['intro'],160,1);?>
            </li>
        </a>
        <?php } if($total_rs>0){ ?>
<?php }?>
    </ul>
</div>
</div>
<div style="clear: both;"></div>
<?php include $this->tp->parse_include_twos("mobile/include/foot.php");?>
</body>
</html>