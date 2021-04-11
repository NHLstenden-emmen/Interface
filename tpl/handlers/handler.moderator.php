<?php

$user->Redirect(false);

$this->Set("extraCSS", '<link rel="stylesheet" href="/tpl/assets/css/page/moderator.css">');

@$route 	= $filter->sanatizeInput($_GET['Path_1'], "url");
@$page 		= $filter->sanatizeInput($_GET['Path_2'], "url");
@$action 	= $filter->sanatizeInput($_GET['Path_3'], "url");

const ModeratorPages = 'tpl/moderator/pages/';
const ModeratorMainHandlers = 'tpl/moderator/handlers/';

define("ModeratorPageHandlers", ModeratorPages.$route."/handlers/");

define("ModeratorPageRoute", $page);
define("ModeratorPageView", ModeratorPages.$route."/views/");
define("ModeratorPageAction", $action);

$this->Set("assetsFolderMOD", "/".ModeratorPages.$route."/assets");

ob_start();

if ($user->level < 3) $core->Redirect('/');

if ($user->level == 4) $this->Set("title", "Administrator");
else if($user->level == 3) $this->Set("title", "Moderator");

if(empty($route)) require(ModeratorPages.'start.php');
else if(file_exists(ModeratorPages.$route.'/'.$route.'.php'))
{

	if(file_exists(ModeratorPageHandlers.'MainHandler.php')) {
		require(ModeratorPageHandlers.'MainHandler.php');
	}

	if(file_exists(ModeratorPageHandlers.'/'.$route.'.php')) {
		require(ModeratorPageHandlers.'/'.$route.'.php');
	}

	require(ModeratorPages.$route.'/'.$route.'.php');
}
else require('tpl/pages/error.php');

define('ModeratorContent', ob_get_clean());

?>