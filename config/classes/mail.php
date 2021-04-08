<?php

require_once 'config/_lib/phpmailer/Exception.php';
require_once 'config/_lib/phpmailer/PHPMailer.php';
require_once 'config/_lib/phpmailer/SMTP.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class Mailer {
	private $PHPMailer; 
	
	function __construct()
	{
		$s=& Config::$mail;
		
		$this->PHPMailer = new PHPMailer;
		$this->PHPMailer->isSMTP(); 
		$this->PHPMailer->SMTPDebug = 0; //set 2 for debug
		$this->PHPMailer->Host = $s['hostname']; 
		$this->PHPMailer->Port = $s['port'];
		$this->PHPMailer->SMTPSecure = 'STARTTLS';
		$this->PHPMailer->SMTPAuth = true;
		$this->PHPMailer->Username = $s['username'];
		$this->PHPMailer->Password = $s['password'];
		$this->PHPMailer->setFrom($s['displayemail'], $s['displayname']);
	}
	
	function send($email, $subject, $message, $username = '')
	{

		$this->PHPMailer->addAddress($email, $username);
		$this->PHPMailer->Subject = $subject;
		$this->PHPMailer->msgHTML($message);
		$this->PHPMailer->AltBody = 'HTML messaging not supported';
		
		if(!$this->PHPMailer->send()) return $this->PHPMailer->ErrorInfo;
		else return true;
	}	
}

?>