<?php if(!defined('IN_CMS')) exit;?><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=750,user-scalable=no, target-densitydpi=device-dpi">
<meta name="renderer" content="webkit">
<title>{$seo_title}</title>
<meta name="keywords" content="{$seo_key}">
<meta name="description" content="{$seo_desc}">
<link href="{WEB_THEME}mobile/css/css.css" rel="stylesheet" />
<script src="{WEB_THEME}mobile/js/jquery.js"></script>
<script src="{WEB_THEME}mobile//js/all.js"></script>
{if cms[other_favicon]}
<link rel="shortcut icon" href="{cms[other_favicon]}"/>
<link rel="bookmark" href="{cms[other_favicon]}"/>
{/if}
</head>

<body>
<div id="header">
    <div class="topbox">
        <div class="topphone">
                <div class="slogo">专业的振动器产品制造商</div>
                <a class="map">
                    <div class="changebtn"></div>
                </a>
        </div>
        <div class="logo"><a href="{WEB_ROOT}"><img src="{cms[mobile_logo]}" alt="{cms[web_name]}"></a></div>
        <div class="nav_map">
            <ul>
                <li><a id="close"><i class="fa-close"></i></a></li>
                <li><a href="{WEB_ROOT}" title="网站首页">网站首页</a></li>
                {cms:rp table="cms_class"
                where="followid=0 and ismenu=1" order="cate_order,cateid"} {php $head_id=$rp[cateid]}
                <li{is_active($rp[cateid],$parentid)}><a href="{cateurl($rp[cateid])}">{$rp[cate_name]}</a> </li> {/cms:rp}
            </ul>
        </div>
        <script>
            $(document).ready(function () {
                $(".map").click(function () {
                    $('.nav_map').animate({ marginRight: '0' });
                });

                $("#close").click(function () {
                    $('.nav_map').animate({ marginRight: '-30vw' });
                });
            });
        </script>
    </div>
    <div id="wrap">
        <div class="index01">
            <ul>
				<a href="{WEB_ROOT}" title="网站首页"><li>网站首页</li></a>
                {cms:rp table="cms_class"
                where="followid=0 and ismenu=1" order="cate_order,cateid"} {php $head_id=$rp[cateid]}
                <a {is_active($rp[cateid],$parentid)} href="{cateurl($rp[cateid])}"><li>{$rp[cate_name]}</li></a> {/cms:rp}
            </ul>
        </div>
    </div>
</div>
<div style="clear: both;"></div>