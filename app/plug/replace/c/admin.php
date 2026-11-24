<?php
/**
 * 插件：内容替换插件
 * By IT平民
**/

class Admin extends PlugController
{
	public function __construct()
	{
		parent::__construct();
		if(!C('plug_replace'))
		{
			die('插件未安装');
		}
		$this->check_admin();
	}

	public function Index()
	{
		if(IS_POST)
		{
			$t0=F('t0');
			$t1=F('t1');
			$t2=self::deal_html(F('t2'));
			$t3=self::deal_html(F('t3'));
			switch($t0)
			{
				case 'content':
					$table="cms_show";
					break;
				case 'page':
					$table="cms_page";
					break;
				default:
					$table="cms_data";
					break;
			}
			$id='id';
			switch($t1)
			{
				case '1':
					$field='title';
					break;
				case '2':
					$field='pic';
					break;
				case '3':
					$field='intro';
					break;
				case '4':
					$id='cid';
					$field='content';
					break;
				case '5':
					$id='cid';
					$field='piclist';
					break;
			}
			if(isempty($t2))
			{
				$this->error("要替换的字符不能为空");
				return;
			}
			$sql="select $id,$field from $table where $field like '%$t2%'";
			$rs=$this->db->load($sql);
			if(!$rs)
			{
				$this->error("没有内容可替换");
				return;
			}
			else
			{
				foreach($rs as $key=>$val)
				{
					$val[$field]=str_replace($t2,$t3,$val[$field]);
					$this->db->update($table,"$id=$val[$id]",[$field=>trim($val[$field])]);
				}
				$this->success("替换成功，共计".count($rs)."条内容");
			}
		}
		else
		{
			$this->display("admin/index.php");
		}
	}

	#字符转换
	public function deal_html($a)
	{
		#单引号转换
		$a=str_replace("&#039;","'",$a);
		#双引号转换
		$a=str_replace("&quot;",'"',$a);
		$a=htmlspecialchars_decode($a);
		return $a;
	}

}