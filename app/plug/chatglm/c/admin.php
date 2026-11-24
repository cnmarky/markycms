<?php
/**
 * 作用：AI写作
 * 官网：Https://www.nicemb.com
 * 作者：IT平民
 * ===========================================================================
 * 未经授权不允许对程序代码以任何形式任何目的的再发布。
 * ===========================================================================
**/

class Admin extends PlugController
{
	function __construct()
	{
		parent::__construct();
		if(!C('plug_chatglm'))
		{
			die('插件未安装');
		}
		$this->check_admin();
	}
	
	function index()
	{
		$rs=$this->db->row("select * from cms_plug_chatglm_config limit 1");
		if(!$rs)
		{
			gourl(U('config'));
			return;
		}
		$type=getint(F('type'));
		$where="1=1";
		switch($type)
		{
			case '1':
				$where='cid=0';
				break;
			case '2':
				$where='cid>0';
				break;
			case "3":
				$where='cid<0';
				break;
		}
		$this->assign("type",$type);
		$this->assign("where",$where);
		$this->display("index.php");
	}

	function add()
	{
		if(IS_POST)
		{
			$title=trim(F('title'));
			$classid=getint(F('classid'));
			$pass=getint(F('pass'));
			if($title=='')
			{
				$this->error('标题不能为空');
				return;
			}
			if($classid<=0)
			{
				$this->error('栏目不能为空');
				return;
			}
			if(!in_array($pass,[0,1]))
			{
				$this->error('状态错误');
				return;
			}
			$arr=explode("\r\n",$title);
			$num=0;
			foreach($arr as $key=>$val)
			{
				$t=trim($val);
				if($t!='')
				{
					$rs=$this->db->row("select id from cms_plug_chatglm where title='$t' limit 1");
					if(!$rs)
					{
						$d=[];
						$d['title']=$t;
						$d['classid']=$classid;
						$d['pass']=$pass;
						$this->db->add("cms_plug_chatglm",$d);
						$num++;
					}
				}
			}
			$this->success("添加{$num}个标题");
		}
		else
		{
			$this->display("add.php");
		}
	}

	function show()
	{
		$id=getint(F('id'));
		$rs=$this->db->row("select * from cms_show where id=$id limit 1");
		if($rs)
		{
			gourl(link_url($rs['id'],$rs['alias'],$rs['classid']));
		}
	}

	function why()
	{
		$id=getint(F('id'));
		$rs=$this->db->row("select remark from cms_plug_chatglm where id=$id and cid<0 limit 1");
		if($rs)
		{
			echo $rs['remark'];
		}
	}

	function del()
	{
		if(IS_POST)
		{
			$id=getint(F('id'));
			$this->db->del("cms_plug_chatglm","id=$id");
			$this->success('删除成功');
		}
	}

	function clear()
	{
		if(IS_POST)
		{
			$this->db->update("cms_plug_chatglm","cid<0",['cid'=>0,'tid'=>'','remark'=>'']);
			$this->success('清理成功');
		}
	}

	function config()
	{
		if(IS_POST)
		{
			$keylist=F('keylist');
			if(is_array($keylist))
			{
				foreach($keylist as $key=>$val)
				{
					if(trim($val)=='')
					{
						unset($keylist[$key]);
					}
				}
			}
			else
			{
				$keylist=[];
			}
			if(count($keylist)==0)
			{
				$this->error('至少添加一个ApiKey');
				return;
			}
			$model=trim(F('model'));
			$max=getint(F('max'));
			$space=getint(F('space'));
			$tags=0;

			$db=['keylist'=>jsencode($keylist),'model'=>$model,'max'=>$max,'space'=>$space,'tags'=>$tags];
			$rs=$this->db->row("select * from cms_plug_chatglm_config limit 1");
			if($rs)
			{
				$this->db->update('cms_plug_chatglm_config','id='.$rs['id'].'',$db);
			}
			else
			{
				$this->db->add('cms_plug_chatglm_config',$db);
			}
			$this->success('保存成功');
		}
		else
		{
			$rs=$this->db->row("select * from cms_plug_chatglm_config limit 1");
			if(!$rs)
			{
				$rs=['keylist'=>'[""]','model'=>'chatglm_lite','max'=>0,'pass'=>1,'space'=>1,'tags'=>0];
			}
			foreach($rs as $key=>$val)
			{
				$this->assign($key,$val);
			}
			$this->display("config.php");
		}
	}

	function action()
	{
		$num=$this->db->count("select count(1) from cms_plug_chatglm where cid<=0 order by id desc");
		$this->assign("num",$num);
		$this->display("action.php");
	}

}