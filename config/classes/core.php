<?php
class Core
{

	function __construct()
	{		
		define('URL', 'http://'.$_SERVER['SERVER_NAME']);
		define('WebStyle', '/'.styleFolder.'assets');

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

}
?>