<?php defined('IN_CMS') or die();?><!DOCTYPE html>
<html lang="zh-CN"><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>产品说明书-安阳卓易机械电子有限公司</title>
    <link href="https://lf3-cdn-tos.bytecdntp.com/cdn/expire-1-M/bootstrap/5.1.3/css/bootstrap.min.css"
        rel="stylesheet">
    <style>
        /* 全局样式 */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            transition: background-color 0.3s, color 0.3s;
        }        /* 默认浅色模式 */
        body.light-mode {
            background-color: #f8f9fa;
            color: #212529;
        }        /* 深色模式 */
        body.dark-mode {
            background-color: #212529;
            color: #ffffff;
        }        /* 头部样式 */
        .header {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem;
            border-bottom: 1px solid #ddd;
            background-color: #ffffff;
        }        .header img {
            height: 40px;
        }        /* 搜索框样式 */
        .search-box {
            margin: 2rem auto;
            max-width: 600px;
        }        .title {
            text-align: center;
            font-size: 1.6rem;
            margin-top: 2rem;
            font-weight: bold;
            color: #000000;
        }        /* 产品卡片样式 */
        .product-card {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 1rem;
            border: 1px solid #ddd;
            border-radius: 8px;
            transition: transform 0.2s, box-shadow 0.2s;
            background-color: #ffffff;
        }        .product-card:hover {
            transform: scale(1.02);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }        .product-card img {
            width: 80px;
            height: 80px;
            object-fit: cover;
            margin-right: 1rem;
        }        /* 底部版权信息 */
        .footer {
            text-align: center;
            padding: 1rem;
            font-size: 0.9rem;
            opacity: 0.7;
        }        /* 深色模式下的调整 */
        body.dark-mode .header,
        body.dark-mode .product-card {
            border-color: #444;
        }        body.dark-mode .product-card:hover {
            box-shadow: 0 4px 6px rgba(255, 255, 255, 0.1);
        }
    </style>
</head><body class="light-mode">
    <header class="header container">
        <div>
            <img src="https://www.zyjxdz.com/theme/zyjxdz/images/logo.jpg">
        </div>
    </header>
    <main class="container">
        <div class="title">
            产品说明书
        </div>
        <div class="search-box">
            <input type="text" class="form-control" placeholder="输入关键词或型号搜索产品..." id="searchInput">
        </div>
        <div class="row g-4">
            <?php $total_rs=$this->db->count("select count(1) from $table  where $where ");$pagesize=$cate_page;$totalpage=ceil($total_rs/$pagesize);if($page>$totalpage){
$page=1;}$offset=($page-1)*$pagesize;$way=0;if($offset>1000 && $total_rs>2000 && $offset>$total_rs/2){	$offset=$total_rs-$offset-$pagesize;	$way=1;}if($offset<0){	$pagesize+=$offset;	$offset=0;}$key_="id";$table_="$table";$join_="";$where_="where $where";$group_="";$order_="order by $order";$field_="*";$type_="0";$keylist=$this->db->getkeylist($key_,$table_,$join_,$where_,$order_,$offset,$pagesize,$way,$type_);$array_rs=$this->db->load("select $field_ from $table_ $join_ $keylist $group_ $order_");$pg=new cms_page($total_rs,$totalpage,$pagesize,$page);$showpage=$pg->showpage(3);if($total_rs==0){  } else{  $i=0;} foreach($array_rs as $rs){ $i++;?>
            <div class="col-md-6 col-lg-4 product-item">
                <a href="<?php echo link_url($rs['id'],$rs['alias'],$rs['classid']);?>" class="product-card text-decoration-none text-dark">
                    <img src="<?php echo $rs['pic'];?>" loading="lazy">
                    <div>
                        <h5><?php echo $rs['title'];?></h5>
                        <p><?php echo cut($rs['intro'],160,1);?></p>
                    </div>
                    <div>
                        <span class="btn btn-sm btn-primary">查看说明书</span>
                    </div>
                </a>
            </div>
            <?php } if($total_rs>0){  }?>
        </div>
    </main>
    <footer class="footer">
        &copy; 2025 安阳卓易机械电子有限公司 版权所有
    </footer>
    <script src="https://lf3-cdn-tos.bytecdntp.com/cdn/expire-1-M/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    <script>
        // 主题切换逻辑
        const themeToggle = document.getElementById('theme-toggle');
        const body = document.body;        // 根据系统设置初始化主题
        if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
            body.classList.add('dark-mode');
            body.classList.remove('light-mode');
        } else {
            body.classList.add('light-mode');
            body.classList.remove('dark-mode');
        }        // 点击切换主题
        themeToggle.addEventListener('click', () => {
            if (body.classList.contains('light-mode')) {
                body.classList.remove('light-mode');
                body.classList.add('dark-mode');
            } else {
                body.classList.remove('dark-mode');
                body.classList.add('light-mode');
            }
        });        // 搜索功能
        document.getElementById('searchInput').addEventListener('input', function () {
            const searchTerm = this.value.toLowerCase();
            document.querySelectorAll('.product-item').forEach(item => {
                const cardText = item.textContent.toLowerCase();
                item.style.display = cardText.includes(searchTerm) ? 'block' : 'none';
            });
        });
    </script>
</body></html>