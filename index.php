<?php

define('Start', microtime(true));
const styleFolder = 'tpl/';
const Handlers = styleFolder . 'handlers/';

require_once 'config/classes/mysql.php';
require_once 'config/classes/core.php';
require_once 'config/classes/template.php';
require_once 'config/classes/user.php';
require_once 'config/classes/filter.php';
require_once 'config/classes/language.php';
require_once 'config/classes/socket.php';
require_once 'config/classes/mail.php';

require_once 'config/Configuration.php';

$DB             = new Database;
$core           = new Core;
$user           = new User;
$TPL            = new Template;
$filter         = new Filter;
$lang           = new Language;
$socket         = new ServerConnection(Config::$serverPort, Config::$serverIP);
$mailer 		= new Mailer;

$TPL->Route($_SERVER['PATH_INFO']);
$TPL->GetHandlers();

$TPL->GetHeader();
$TPL->GetNavigation();
$TPL->GetContent();
$TPL->GetFooter();
$TPL->GetBackground();

$TPL->Output();
