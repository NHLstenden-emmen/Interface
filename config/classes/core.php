<?php
class Core
{

	function __construct()
	{		
		define('URL', 'http://'.$_SERVER['SERVER_NAME']);
		define('WebStyle', "/". styleFolder.'assets');

		session_start();
	}

	function Redirect($link)
	{
		header('Location: '.$link);
		exit;
	}

	function Refresh()
	{
		header("Refresh:0");
		exit;
	}

	function cleanServerResponse($str) {
		return ucwords(str_replace("_", " ", $str));
	}

	function listArray($input)
	{
		return array_map('trim', explode(',', $input));
	}

	function SetCookie($key, $value)
	{
		return setcookie($key, $value, time() + Config::$cookie_time, '/');
	}

	function CleanCookies()
	{
		foreach ($_COOKIE as $key => $value)
		{
			setcookie($key, '', time() - 3600, '/');
		}
	}

	function getUserIP()
	{
		if (isset($_SERVER["HTTP_CF_CONNECTING_IP"])) {
				$_SERVER['REMOTE_ADDR'] = $_SERVER["HTTP_CF_CONNECTING_IP"];
				$_SERVER['HTTP_CLIENT_IP'] = $_SERVER["HTTP_CF_CONNECTING_IP"];
		}
		$client  = @$_SERVER['HTTP_CLIENT_IP'];
		$forward = @$_SERVER['HTTP_X_FORWARDED_FOR'];
		$remote  = $_SERVER['REMOTE_ADDR'];

		if(filter_var($client, FILTER_VALIDATE_IP))
		{
			$ip = $client;
		}
		elseif(filter_var($forward, FILTER_VALIDATE_IP))
		{
			$ip = $forward;
		}
		else
		{
			$ip = $remote;
		}

		return $ip;
	}

}
?>