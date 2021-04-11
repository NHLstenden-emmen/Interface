<?php

$user->Redirect(false);

const TeamPages = 'tpl/team/';
ob_start();


if(file_exists(TeamPages.$_GET['Path_1'].'/dashboard.php'))
{
	$page = $_GET['Path_1'];

	$this->Set("extraCSS", "<link rel='stylesheet' href='../tpl/assets/css/team/".$page."/dashboard.css'>");
	if ($user->level >= 3 || $user->team == $page) {
		require(TeamPages.$page.'/dashboard.php');
	}
	else 
	{
		$core->Redirect('/');
	}
}
else
{
	$core->Redirect("/");
}

define('TeamContent', ob_get_clean());

