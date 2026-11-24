<?php
/**
 * 插件：网站地图
 * By IT平民
**/

class Admin extends PlugController
{
	public function __construct()
	{
		parent::__construct();
		if(!C('plug_sitemap'))
		{
			die('插件未安装');
		}
		$this->check_admin();
	}

	public function Index()
	{
		if(IS_POST)
		{
			$project=F('project');
			$speed=F('speed');
			$order=F('order');
			$content=getint(F('content'),0);

			$str_head='<?xml version="1.0" encoding="utf-8"?>';
			$str_head.='<urlset> ';
			$str_foot='</urlset>';
			echo '<style>*{font-size:14px;font-family:microsoft yahei;}a{color:#333;text-decoration:none;}a:hover{color:#f30;}p{color:#999;margin:5px 0;}</style>';
			if(!is_array($project))
			{
				echo '未勾选任何项目';
				return;
			}
			if(APP_DEMO)
			{
				echo '账户只读，无法生成';
				return;
			}
			$str='';
			$weburl=WEB_URL;
			if(in_array(0,$project))
			{
				$str.="<url>\n";
			    $str.="    <loc>{$weburl}</loc>\n";
			    $str.="    <lastmod>".date('Y-m-d')."</lastmod>\n";
			    $str.="    <changefreq>{$speed}</changefreq>\n";
			    $str.="    <priority>{$order}</priority>\n";
			    $str.="</url>\n";
			}
			if(in_array(1,$project))
			{
				$rs=$this->db->load("select cateid,cate_url from cms_class where ismenu=1");
				if($rs)
				{
					foreach($rs as $key=>$val)
					{
						$str.="<url>\n";
						$curl=cateurl($val['cateid']);
						if(strpos($curl,"://"))
						{
							$str.="    <loc>".$curl."</loc>\n";
						}
					    else
					    {
					    	$str.="    <loc>{$weburl}".$curl."</loc>\n";
					    }
					    $str.="    <lastmod>".date('Y-m-d')."</lastmod>\n";
					    $str.="    <changefreq>{$speed}</changefreq>\n";
					    $str.="    <priority>{$order}</priority>\n";
					    $str.="</url>\n";
					}
				}
			}
			if(in_array(2,$project))
			{
				$limit="";
				if($content>0)
				{
					$limit=" limit $content";
				}
				$rs=$this->db->load("select id,classid,alias from cms_show where isshow=1 order by id desc $limit");
				if($rs)
				{
					foreach($rs as $key=>$val)
					{
						$str.="<url>\n";
					    $str.="    <loc>{$weburl}".link_url($val['id'],$val['alias'],$val['classid'])."</loc>\n";
					    $str.="    <lastmod>".date('Y-m-d')."</lastmod>\n";
					    $str.="    <changefreq>{$speed}</changefreq>\n";
					    $str.="    <priority>{$order}</priority>\n";
					    $str.="</url>\n";
					}
				}
			}
			
			$str=str_replace('&p=sitemap','',$str);
			$str=str_replace('&','&amp;',$str);
			$str=$str_head.$str.$str_foot;
			if(savefile('sitemap.xml',$str))
			{
				echo '<a href="'.$weburl.WEB_ROOT.'sitemap.xml" target="_blank">【sitemap.xml】生成成功</a>';
				echo '<p>生成日期：'.date('Y-m-d H:i:s').'</p>';
			}
			else
			{
				$this->error('sitemap.xml写权限不足，请检查');
			}
			
		}
		else
		{
			$this->display("index.php");
		}
	}

}