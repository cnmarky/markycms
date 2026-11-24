<?php
/**
 * 插件：附件管理
 * By IT平民
**/

class Admin extends PlugController
{
	public $num=0;
	public function __construct()
	{
		parent::__construct();
		if(!C('plug_attachment'))
		{
			die('插件未安装');
		}
		$this->check_admin();
	}

	public function Index()
	{
		$type=getint(F('get.type'),0);
		$gid=getint(F('get.gid'),0);
		$where="1=1";
		$where_query='';
		$order="id desc";
		if(in_array($type,[1,2,3]))
		{
			$where.=" and file_type=$type";
			$where_query=" and file_type=$type";
		}
		if($gid>=0)
		{
			$where.=" and gid=$gid";
		}
		$total=$this->db->count("select count(1) from cms_file where gid=0");
		$this->assign('type',$type);
		$this->assign('gid',$gid);
		$this->assign('where',$where);
		$this->assign('where_query',$where_query);
		$this->assign('order',$order);
		$this->assign('total',$total);
		$this->display("index.php");
	}

	public function del()
	{
		if(IS_POST)
		{
			$id=getint(F('get.id'),0);
			$rs=$this->db->row("select file_url from cms_file where id=$id limit 1");
			if($rs)
			{
				$file=$rs['file_url'];
				$this->db->del('cms_file',"id=$id");
				@unlink(SYS_PATH.$file);
			}
			$this->success('删除成功');
		}
	}

	public function clear()
	{
		if(IS_POST)
		{
			self::get_files('upfile');
			$this->success('共清理'.$this->num.'个缩略图');
		}
	}

	public function btach()
	{
		if(IS_POST)
		{
			$id=F('id');
			$arr=explode(',',$id);
			foreach($arr as $key=>$val)
			{
				$val=getint($val,0);
				$rs=$this->db->row("select file_url from cms_file where id=$val limit 1");
				if($rs)
				{
					$file=$rs['file_url'];
					$this->db->del('cms_file',"id=$val");
					@unlink(SYS_PATH.$file);
				}
			}
		}
		$this->success('删除成功');
	}

	public function move()
	{
		if(IS_POST)
		{
			$id=F('id');
			$gid=getint(F('gid'),0);
			if($gid>=0)
			{
				$d=[];
				$d['gid']=$gid;
				$this->db->update("cms_file",'id in('.$id.')',$d);
				$this->success('操作成功');
			}
		}
		else
		{
			$this->display("move.php");
		}
	}

	public function switchs()
	{
		if(IS_POST)
		{
			$id=getint(F('get.id'),0);
			$isshow=F('isshow');
			$rs=$this->db->row("select aid from cms_file_group where aid=".$id." limit 1");
			if($rs)
			{
				$this->db->update('cms_file_group','aid='.$id.'',['isshow'=>$isshow]);
			}
			$this->success('修改成功');
		}
	}


	public function lists()
	{
		if(IS_POST)
		{
			$mid=F('mid');
			$ordnum=F('ordnum');
			foreach($mid as $key=>$val)
			{
				$this->db->update('cms_file_group','aid='.getint($val,0).'',['ordnum'=>getint($ordnum[$key],0)]);
			}
			$this->success('保存成功');
		}
		else
		{
			$this->display("group.php");
		}
	}

	public function addgroup()
	{
		if(IS_POST)
		{
			$data=[[F('name'),'null','分组名称不能为空']];
			$v=new cms_verify($data);
			if($v->result())
			{
				$rs=$this->db->row("select * from cms_file_group where gname='".F('name')."' limit 1");
				if($rs)
				{
					$this->error('分组名称已存在');
				}
				else
				{
					$d=[];
					$d['gname']=F('name');
					$d['ordnum']=0;
					$d['isshow']=1;
					$this->db->add('cms_file_group',$d);
					$this->success('添加成功');
				}
			}
			else
			{
				$this->error($v->msg);
			}
		}
	}

	public function editgroup()
	{
		$id=getint(F('get.id'),0);
		if(IS_POST)
		{
			$data=[[F('t0'),'null','分组名称不能为空']];
			$v=new cms_verify($data);
			if($v->result())
			{
				$d['gname']=F('t0');
				$d['ordnum']=getint(F('t1'),0);
				$d['isshow']=getint(F('t2'),0);
				$this->db->update('cms_file_group','aid='.$id.'',$d);
				$this->success('保存成功');
			}
			else
			{
				$this->error($v->msg);
			}
		}
		else
		{
			$rs=$this->db->row("select * from cms_file_group where aid=".$id." limit 1");
			if($rs)
			{
				foreach($rs as $key=>$val)
				{
					$this->assign($key,$val);
				}
				$this->display("edit.php");
			}
		}
	}

	public function delgroup()
	{
		if(IS_POST)
		{
			$id=getint(F('get.id'),0);
			$this->db->del('cms_file_group','aid='.$id.'');
			$this->db->update('cms_file','gid='.$id.'',['gid'=>0]);
			$this->success('删除成功');
		}
	}

	public function get_files($path)
	{
		foreach(scandir($path) as $afile)
		{
			if($afile=='.'||$afile=='..') continue;
			if(is_dir($path.'/'.$afile))
			{
				self::get_files($path.'/'.$afile);
			}
			else
			{
				if(substr($afile,0,6)=='thumb_')
				{
					@unlink($path.'/'.$afile);
					$this->num=$this->num+1;
				}
			}
		}
	}

}