<?php
final class cms_http
{
	public static function check()
	{
		if(!function_exists('curl_init'))
	    {
			exit('curl_init函数未开启，请检查');
	    }
	}
	
	public static function get($url,$type=0,$timeout=10000,$head='')
	{
		self::check();
		$ch=curl_init();
		curl_setopt($ch,CURLOPT_TIMEOUT,$timeout);
		curl_setopt($ch,CURLOPT_URL,$url);
		curl_setopt($ch,CURLOPT_SSL_VERIFYPEER,FALSE);
		curl_setopt($ch,CURLOPT_SSL_VERIFYHOST,FALSE);
		curl_setopt($ch,CURLOPT_HEADER,false);
		$header=['User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.54 nicemb.com '];
		if(empty($head))
		{
			$head=$header;
		}
		#设置header
		curl_setopt($ch,CURLOPT_HTTPHEADER,$head);
		curl_setopt($ch,CURLOPT_RETURNTRANSFER,TRUE);
		#301
		@curl_setopt($ch,CURLOPT_FOLLOWLOCATION,true);
		$result=curl_exec($ch);
		$code=curl_getinfo($ch,CURLINFO_HTTP_CODE);
		curl_close($ch);
		return ($type==1)?['state'=>$code,'msg'=>$result]:$result;
	}

	public static function post($url,$data='',$type=0,$timeout=10000,$head=[])
	{
		$ch=curl_init();
		curl_setopt($ch,CURLOPT_TIMEOUT,$timeout);
		curl_setopt($ch,CURLOPT_URL,$url);
		curl_setopt($ch,CURLOPT_SSL_VERIFYPEER,FALSE);
		curl_setopt($ch,CURLOPT_SSL_VERIFYHOST,FALSE);
		#设置header

		#curl_setopt($ch,CURLOPT_HEADER,$head);
		curl_setopt($ch,CURLOPT_HTTPHEADER,$head);
		curl_setopt($ch,CURLOPT_RETURNTRANSFER,TRUE);
		#301
		@curl_setopt($ch,CURLOPT_FOLLOWLOCATION,true);
		curl_setopt($ch,CURLOPT_POST,TRUE);
		curl_setopt($ch,CURLOPT_POSTFIELDS,$data);
		$result=curl_exec($ch);
		$code=curl_getinfo($ch,CURLINFO_HTTP_CODE);
		curl_close($ch);
		return ($type==1)?['state'=>$code,'msg'=>$result]:$result;
	}

}