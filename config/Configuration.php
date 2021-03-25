<?php
if(!defined('Start')) exit('403');

class Config {
	static $siteName 		= 'Robo TV';

	static $serverIP 		= 'Robo TV';
	static $serverPort 		= 'Robo TV';

	## MySQL Connect Settings
	static $DB = Array(
		'hostname'		=> 'localhost',
		'username'		=> 'root',
		'password'		=> '',
		'database'		=> 'battlebots'
	);

	static $errorfile		= 'error';

	static $error_DB 		= true;

	static $error_filter 	= true;

	static $loginStartpage 	= 'start';

	static $cookie_time		= 216000;



}
?>