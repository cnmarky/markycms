<?php
/**
 * 插件：数据备份
 * By IT平民
**/

class Admin extends PlugController
{
	public function __construct()
	{
		parent::__construct();
		if(!C('plug_backup'))
		{
			die('插件未安装');
		}
		$this->check_admin();
		mkfolder('data/backup');
	}

	public function Index()
	{
		if(DB_TYPE)
		{
			$rs=$this->db->query('show table status');
			$db=$rs->fetchall();
			$prefix=C('DEFAULT_DB')['DB_PREFIX'];
			foreach($db as $key=>$val)
			{
				if(!strpos("||@@".$val['Name'],$prefix))
				{
					unset($db[$key]);
				}
			}
	        $this->assign('db',$db);
			$this->display("backup.php");
		}
		else
		{
			$root=SYS_PATH.'/data/backup';
			mkfolder($root);
			$data=self::deal_arrs(scandir($root),$root);
			$this->assign('db',$data);
			$this->display("sqlite.php");
		}
	}

	public function deal_arrs($data,$root)
	{
		if(!$data)
		{
			die('【scandir】函数不支持，请在Php.ini中找到去掉限制');
		}
		unset($data[0]);
		unset($data[1]);
		$a=[];
		foreach ($data as $key=>$val)
		{
			if(is_file($root.'/'.$val))
			{
				if($val!='del.txt')
				{
					$a[$key]=['name'=>$val,'date'=>filemtime($root.'/'.$val),'size'=>formatBytes(filesize($root.'/'.$val)),'url'=>urlencode(base64_encode($val))];
				}
			}
			else
			{
				unset($data[$key]);
			}
		}
		return $a;
	}

	public function bfacc()
	{
		if(IS_POST)
		{
			$name=C('DEFAULT_DB')['DB_NAME'];
			$file=uniqid().'-'.date('Ymdhis').'.dat';
			if(@copy(SYS_PATH."/data/$name",SYS_PATH."/data/backup/$file"))
			{
				$this->success('备份成功');
			}
			else
			{
				$this->success('备份失败');
			}
		}
	}

	public function delbf()
	{
		if(IS_POST)
		{
			$key=base64_decode(urldecode(F('get.key')));
			$key=str_replace('..','',$key);
			@unlink('data/backup/'.$key);
			$this->success('删除成功');
		}
	}

	public function reduction()
	{
		set_time_limit(0);
		if(IS_POST)
		{
			$key=F('key');
			$key=str_replace('..','',$key);
			$name='data/backup/'.$key;
			if(!is_file($name) || $key=='del.txt')
			{
				$this->error('备份文件不存在');
			}
			else
			{
				$f=fopen($name,"rb");
		        //创建表缓冲变量
		        $create_table='';
		        while(!feof($f))
		        {
		            $line=fgets($f);
		            // 这一步为了将创建表合成完整的sql语句
		            // 如果结尾没有包含';'(即为一个完整的sql语句，这里是插入语句)，并且不包含'ENGINE='(即创建表的最后一句)
		            if (!preg_match('/;/',$line) || preg_match ( '/ENGINE=/', $line )) 
		            {
		                // 将本次sql语句与创建表sql连接存起来
		                $create_table .= stripslashes($line);
		                // 如果包含了创建表的最后一句
		                if (preg_match ( '/ENGINE=/', $create_table)) 
		                {
		                    //执行sql语句创建表
		                     $this->db->query(stripslashes($create_table),1);
		                    //清空当前，准备下一个表的创建
		                    $create_table = '';
		                }
		                // 跳过本次
		                continue;
		            }
		            $this->db->query($line,1);
		        }
		        fclose($f);
				$this->success('还原成功');
			}
		}
		else
		{
			$root='data/backup';
			$db=self::deal_arr(scandir($root),$root);
			$this->assign('db',$db[0]);
			$this->display("reduction.php");
		}
	}

	public function del()
	{
		if(IS_POST)
		{
			$key=base64_decode(F('get.key'));
			$key=str_replace('..','',$key);
			@unlink('data/backup/'.$key);
			$this->success('删除成功');
		}
	}

	public function btach()
	{
		$type=getint(F('type'),0);
		$id=F('id');
		if(empty($id))
		{
			$this->error('至少选择一个表');
			exit();
		}
		else
		{
			switch ($type)
			{
				case '1':
					self::backup($id);
					break;
				case '2':
					self::optimize($id);
					break;
				case '3':
					self::repair($id);
					break;
			}
		}
		$this->success('操作成功');
	}

	public function optimize($table)
	{
		if(IS_POST)
		{
			$db=explode(',',$table);
			foreach($db as $key)
			{
				$key=enhtml($key);
				$this->db->query("OPTIMIZE TABLE `{$key}`",1);
			}
			return '优化成功';
		}
	}

	public function repair($table)
	{
		if(IS_POST)
		{
			$db=explode(',',$table);
			foreach($db as $key)
			{
				$key=enhtml($key);
				$this->db->query("REPAIR TABLE `{$key}`",1);
			}
			return '修复成功';
		}
	}
	public function backup($table='')
	{
		set_time_limit(0);
		$db=explode(',',$table);
		$name=uniqid().'-'.date('Ymd-his').'.sql';
		$sql  = "-- -----------------------------\n";
        $sql .= "-- SDCMS MySQL Data Transfer \n";
        $sql .= "-- \n";
        $sql .= "-- Date:".date("Y-m-d H:i:s") . "\n";
        $sql .= "-- -----------------------------\n\n";
        $sql .= "SET FOREIGN_KEY_CHECKS = 0;\n\n";

		foreach($db as $key)
		{
			$key=enhtml($key);
			$result=$this->db->query("SHOW CREATE TABLE `{$key}`",1);
			$data=$result->fetchall();
			$sql .= "\n";
            $sql .= "-- -----------------------------\n";
            $sql .= "-- Table structure for `{$key}`\n";
            $sql .= "-- -----------------------------\n";
            $sql .= "DROP TABLE IF EXISTS `{$key}`;\n";
            $sql .= trim($data[0]['Create Table']) . ";\n\n";
		}

		foreach($db as $key)
		{
			$key=enhtml($key);
			$result=$this->db->query("SELECT * FROM `{$key}`",1);
			$data=$result->fetchall(PDO::FETCH_ASSOC);
			$sql .= "-- -----------------------------\n";
	        $sql .= "-- Records of `{$key}`\n";
	        $sql .= "-- -----------------------------\n";
	        foreach($data as $row)
	        {
	        	$row=self::deal_backup($row);
	        	$val=implode("','",$row);
	        	$sql.= "INSERT INTO `{$key}` VALUES ('".$val."');\n";
	        }
		}
		if(!APP_DEMO)
		{
			file_put_contents('data/backup/'.$name,$sql);
		}
		return '备份成功';
	}

	public function deal_backup($data)
	{
		foreach($data as $key=>$val)
		{
			$val=addslashes($val);
        	$val=str_replace(PHP_EOL,'\r\n',$val);
        	$val=str_replace(chr(10),'\n',$val);
			$data[$key]=$val;
		}
		return $data;
	}

	public function deal_arr($data,$root)
	{
		unset($data[0]);unset($data[1]);
		$a=[];
		foreach ($data as $key=>$val)
		{
			if(is_file($root.'/'.$val) && $val!='del.txt')
			{
				$a[$key]=['0'=>iconv("gb2312","utf-8",$val),'1'=>filemtime($root.'/'.$val),'2'=>formatBytes(filesize($root.'/'.$val))];
			}
			else
			{
				unset($data[$key]);
			}
		}
		return ['0'=>$a];
	}

}