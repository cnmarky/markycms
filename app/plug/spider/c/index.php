<?php
/**
 * 首页
 * By IT平民
**/

class Index extends PlugController
{
	public function __construct()
	{
		parent::__construct();
		if(!C('plug_spider'))
		{
			die('插件未安装');
		}
	}

	public function Index()
	{
		if(isset($_SERVER['HTTP_USER_AGENT']))
		{
			$agent=strtolower($_SERVER['HTTP_USER_AGENT']);
			if(strpos($agent,'spider') || strpos($agent,'bot') || strpos($agent,'ia_archiver'))
			{
				$name=self::getspider($agent);
				$time=strtotime(date('Ymd'));
				if($name)
				{
					$rs=$this->db->row("select id,name,viewtimes from cms_plug_spider where name='$name' and comedate=$time order by id desc limit 1");
					if($rs)
					{
						$id=$rs['id'];
						$viewtimes=$rs['viewtimes'];
						$this->db->update("cms_plug_spider","id=$id",['viewtimes'=>$viewtimes+1]);
					}
					else
					{
						$this->db->add("cms_plug_spider",['name'=>$name,'viewtimes'=>1,'comedate'=>$time]);
					}
				}
			}
		}
	}

	public function getspider($agent)
	{
		if(strpos($agent,'baiduspider'))
		{
			return 'baidu';
		}
		if(strpos($agent,'googlebot'))
		{
			return 'google';
		}
		if(strpos($agent,'360spider'))
		{
			return '360';
		}
		if(strpos($agent,'sosospider'))
		{
			return 'soso';
		}
		if(strpos($agent,'youdaospider') || strpos($agent,'yodaospider'))
		{
			return 'youdao';
		}
		if(strpos($agent,'sogouspider'))
		{
			return 'sogou';
		}
		if(strpos($agent,'msnbot'))
		{
			return 'msn';
		}
		if(strpos($agent,'bingbot'))
		{
			return 'bing';
		}
		if(strpos($agent,'yisouspider'))
		{
			return 'yisou';
		}
		if(strpos($agent,'ia_archiver'))
		{
			return 'alexa';
		}
		if(strpos($agent,'easouspider'))
		{
			return 'easou';
		}
		if(strpos($agent,'jikespider'))
		{
			return 'jike';
		}
		if(strpos($agent,'etaospider'))
		{
			return 'etao';
		}
		return '';
	}
	
}