<?php
if(!defined('Start')) exit('403');

class Config {
	static $siteName 		= 'Robo TV';

	static $serverIP 		= '194.171.181.139';
	static $serverPort 		=  49153;

	## MySQL Connect Settings
	static $DB = Array(
		'hostname'		=> 'localhost',
		'username'		=> 'root',
		'password'		=> 'Welkom10!',
		'database'		=> 'battlebots'
	);

	static $errorfile		= 'error';

	static $loginStartpage 	= 'start';

	static $cookie_time		= 216000;

}
?>