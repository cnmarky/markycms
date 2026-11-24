<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>产品说明书-安阳卓易机械电子有限公司</title>
    <!-- 引入Bootstrap CSS -->
    <link href="https://lf3-cdn-tos.bytecdntp.com/cdn/expire-1-M/bootstrap/5.1.3/css/bootstrap.min.css"
        rel="stylesheet">
    <style>
        /* 全局样式 */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            transition: background-color 0.3s, color 0.3s;
        }

        /* 默认浅色模式 */
        body.light-mode {
            background-color: #f8f9fa;
            color: #212529;
        }

        /* 深色模式 */
        body.dark-mode {
            background-color: #212529;
            color: #ffffff;
        }

        /* 头部样式 */
        .header {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem;
            border-bottom: 1px solid #ddd;
            background-color: #ffffff;
        }

        .header img {
            height: 40px;
        }

        /* 搜索框样式 */
        .search-box {
            margin: 2rem auto;
            max-width: 600px;
        }

        .title {
            text-align: center;
            font-size: 1.6rem;
            margin-top: 2rem;
            font-weight: bold;
            color: #000000;
        }

        /* 产品卡片样式 */
        .product-card {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 1rem;
            border: 1px solid #ddd;
            border-radius: 8px;
            transition: transform 0.2s, box-shadow 0.2s;
            background-color: #ffffff;
        }

        .product-card:hover {
            transform: scale(1.02);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .product-card img {
            width: 80px;
            height: 80px;
            object-fit: cover;
            margin-right: 1rem;
        }

        /* 底部版权信息 */
        .footer {
            text-align: center;
            padding: 1rem;
            font-size: 0.9rem;
            opacity: 0.7;
        }

        /* 深色模式下的调整 */
        body.dark-mode .header,
        body.dark-mode .product-card {
            border-color: #444;
        }

        body.dark-mode .product-card:hover {
            box-shadow: 0 4px 6px rgba(255, 255, 255, 0.1);
        }
    </style>
</head>

<body class="light-mode">
    <!-- 头部 -->
    <header class="header container">
        <div>
            <img src="https://www.zyjxdz.com/theme/zyjxdz/images/logo.jpg">
        </div>
        <!-- <button id="theme-toggle" class="btn btn-outline-secondary">切换主题</button> -->
    </header>

    <!-- 主体内容 -->
    <main class="container">
        <div class="title">
            产品说明书
        </div>
        <!-- 搜索框 -->
        <div class="search-box">
            <input type="text" class="form-control" placeholder="输入关键词或型号搜索产品..." id="searchInput">
        </div>

        <!-- 产品列表 -->
        <div class="row g-4">
            {cms:rs pagesize="$cate_page" num="3" table="$table" where="$where" order="$order"}
            <div class="col-md-6 col-lg-4 product-item">
                <a href="{$rs[link]}" class="product-card text-decoration-none text-dark">
                    <img src="{$rs[pic]}" loading="lazy">
                    <div>
                        <h5>{$rs[title]}</h5>
                        <p>{cut($rs[intro],160,1)}</p>
                    </div>
                    <div>
                        <span class="btn btn-sm btn-primary">查看说明书</span>
                    </div>
                </a>
            </div>
            {/cms:rs}
        </div>
    </main>

    <!-- 底部版权信息 -->
    <footer class="footer">
        &copy; 2025 安阳卓易机械电子有限公司 版权所有
    </footer>

    <!-- 引入Bootstrap JS和Popper.js -->
    <script src="https://lf3-cdn-tos.bytecdntp.com/cdn/expire-1-M/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    <script>
        // 主题切换逻辑
        const themeToggle = document.getElementById('theme-toggle');
        const body = document.body;

        // 根据系统设置初始化主题
        if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
            body.classList.add('dark-mode');
            body.classList.remove('light-mode');
        } else {
            body.classList.add('light-mode');
            body.classList.remove('dark-mode');
        }

        // 点击切换主题
        themeToggle.addEventListener('click', () => {
            if (body.classList.contains('light-mode')) {
                body.classList.remove('light-mode');
                body.classList.add('dark-mode');
            } else {
                body.classList.remove('dark-mode');
                body.classList.add('light-mode');
            }
        });

        // 搜索功能
        document.getElementById('searchInput').addEventListener('input', function () {
            const searchTerm = this.value.toLowerCase();
            document.querySelectorAll('.product-item').forEach(item => {
                const cardText = item.textContent.toLowerCase();
                item.style.display = cardText.includes(searchTerm) ? 'block' : 'none';
            });
        });
    </script>
</body>

</html>