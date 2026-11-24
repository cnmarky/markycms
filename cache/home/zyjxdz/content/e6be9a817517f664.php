<?php defined('IN_CMS') or die(); if(!defined('IN_CMS')) exit; include $this->tp->parse_include_twos("include/head.php");?>
<div class="sub_banner"><img
        src="<?php echo get_cate_self($mycat_banner,$topid,'mycat_banner',WEB_ROOT.'theme/20170102/images/b1.jpg');?>"></div>
<div class="sub_content">
    <div class="sub_main">
        <div class="wrapper">
            <?php include $this->tp->parse_include_twos("include/bread.php");?>
            <div class="pro_detail01">
                <div class="main01">
                    <div id="preview">
                        <div class="jqzoom" id="spec-n1"><img src="<?php echo $pic;?>" width="600" jqimg="<?php echo $pic;?>" /></div>
                    </div>
                    <div style="clear:both;"></div>
                </div>
                <div class="main02">
                    <p class="title"><?php echo $title;?></p>
                    <span>产品特点</span>
                    <p class="desc"><?php echo $myfeatures;?></p><br />
                    <span>应用范围</span>
                    <p class="desc"><?php echo $myapplication;?></p>
                    <div class="sub-proinner-help">
                        <p class="help"> 对产品有兴趣？快通过下方与我们取得联系</p>
                        <a href="<?php echo C(strtoupper('ct_work_time'));?>" target="_blank"><i></i>产品说明书下载</a>
                    </div>
                    <div class="btn">
                        <a href="<?php echo C(strtoupper('ct_work_time'));?>" class="button btn-blue" title="联系方式" target="_blank">在线解疑</a>
                        <a href="<?php echo C(strtoupper('ct_work_time'));?>" class="button btn-green" title="联系方式" target="_blank">在线询价</a>
                    </div>
                </div>
            </div>
            <div class="sub_main">
                <div class="wrapper">
                    <div class="sub_main_left">
                        <?php include $this->tp->parse_include_twos("include/left.php");?>
                    </div>
                    <div class="pro_detail02">
                        <h3 class="proinfo-title"> 产品详情 </h3>
                        <div class="main">
                            <?php echo $content;?>
                        </div>
                        <?php include $this->tp->parse_include_twos("include/show_bottom.php");?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include $this->tp->parse_include_twos("include/foot.php");?>
    <script type="text/javascript" src="<?php echo WEB_THEME;?>/js/productZoom.js"></script>
    </body>
    </html>