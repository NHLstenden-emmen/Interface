<?php
if(!defined('Start')) exit('403');

class Config {
	static $siteName 		= 'Robo TV';

	static $serverIP 		= '77.162.30.112';
	static $serverPort 		=  49153;

	## MySQL Connect Settings
	static $DB = Array(
		'hostname'		=> 'localhost',
		'username'		=> 'root',
		'password'		=> 'Welkom10!',
		'database'		=> 'battlebots'
	);
	
	## Mail Connect Settings
	static $mail = Array(
		'hostname'		=> 'smtp.gmail.com',
		'port'			=> 587,
		'username'		=> 'robotv.serverict@gmail.com',
		'password'		=> 'T2q!u19h',
		'displayemail'	=> 'robotv.serverict@gmail.com',
		'displayname'	=> 'RoboTV Moderator'
	);
	
	static $errorfile		= 'error';

	static $loginStartpage 	= 'start';

	static $cookie_time		= 216000;

}
?>