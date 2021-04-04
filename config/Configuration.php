<?php
if(!defined('Start')) exit('403');

class Config {
	static $siteName 		= 'Robo TV';

	## Server Connect Settings
	static $serverIP 		= '194.171.181.139';
	static $serverPort 		=  49153;

	## MySQL Connect Settings
	static $DB = Array(
		'hostname'		=> 'localhost',
		'username'		=> 'root',
		'password'		=> '',
		//	'password'		=> 'Welkom10!',
		'database'		=> 'battlebots'
	);
	
	## Mail Connect Settings
	static $mail = Array(
		'hostname'		=> 'mail.feikefalkena.nl',
		'port'			=> 587,
		'username'		=> 'projecten@feikefalkena.nl',
		'password'		=> 'T2q!u19h',
		'displayemail'	=> 'projecten@feikefalkena.nl',
		'displayname'	=> 'RoboTV Moderator'
	);
	
	static $errorfile		= 'error';

	static $loginStartpage 	= 'start';

	static $cookie_time		= 216000;

}
?>