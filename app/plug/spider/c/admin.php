<?php
/**
 * 插件：内容推送
 * By IT平民
**/

class Admin extends PlugController
{
	public function __construct()
	{
		parent::__construct();
		if(!C('plug_spider'))
		{
			die('插件未安装');
		}
		$this->check_admin();
	}

	public function Index()
	{
		$this->display("admin/index.php");
	}

	public function code()
	{
		$this->display("admin/code.php");
	}

	public function lists()
	{
		$name=F('name');
		$this->assign("name",$name);
		$this->display("admin/list.php");
	}

	public function clear()
	{
		if(IS_POST)
		{
			$this->db->del("cms_plug_spider","1=1");
			$this->success('清理成功');
		}
	}

}