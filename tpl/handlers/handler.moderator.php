<?php

$user->Redirect(false);

define('ModeratorPages', 'tpl/moderator/pages/');
ob_start();

if ($user->level < 2)
{
	$core->Redirect('/');
}

if(empty($_GET['Path_1']))
{
	require(ModeratorPages.'start.php');
}
else if(file_exists(ModeratorPages.$_GET['Path_1'].'.php'))
{
	$page = $_GET['Path_1'];
	require(ModeratorPages.$page.'.php');
}
else
{
	require('tpl/pages/error.php');
}

define('ModeratorContent', ob_get_clean());

?>