<?php if(!defined('IN_CMS')) exit;?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <title>{$seo_title}</title>
    <meta name="keywords" content="{$seo_key}">
    <meta name="description" content="{$seo_desc}">
    <link href="{WEB_THEME}css/style.css" rel="stylesheet" type="text/css" />
    <!--<script type="text/javascript" src="{WEB_THEME}js/jquery-1.7.2.min.js"></script>-->
    <script type="text/javascript" src="{WEB_THEME}js/jquery.min.js"></script>
    <script type="text/javascript" src="{WEB_THEME}js/common.js"></script>
    {if cms[other_favicon]}
    <link rel="shortcut icon" href="{cms[other_favicon]}" />
    <link rel="bookmark" href="{cms[other_favicon]}" />
    {/if}
    {cms[count_code]}
</head>

<body>
    <div class="header">
        <div class="wrapper">
            <div class="logo">
                <a href="/"><h1>{cms[seo_title]}</h1></a>
            </div>
            <div class="slogan"></div>
            <div class="telphone">全国服务热线：{cms[ct_tel]}</div>
        </div>
    </div>
    <div class="nav-box">
        <div class="wrapper">
            <div class="nav">
                <ul>
                    <li><a href="{WEB_ROOT}">首页</a></li> {cms:rp table="cms_class"
                        where="followid=0 and ismenu=1" order="cate_order,cateid"} {php $head_id=$rp[cateid]}
                        <li{is_active($rp[cateid],$parentid)}><a href="{cateurl($rp[cateid])}" {if $rp[isnew]==1}
                                target="_blank" {/if}>{$rp[cate_name]}</a> {cms:rs table="cms_class"
                            where="followid=$head_id and ismenu=1" order="cate_order,cateid"} {rs:head}<ul
                                class="subcat">{/rs:head} <li><a href="{cateurl($rs[cateid])}" {if $rs[isnew]==1}
                                        target="_blank" {/if}>{$rs[cate_name]}</a></li> {rs:foot} </ul>{/rs:foot}
                            {/cms:rs} </li> {/cms:rp}
                </ul>
            </div>
        </div>
    </div>