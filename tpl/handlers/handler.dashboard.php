<?php

//$user->Redirect(false);

define('TeamPages', 'tpl/team/');
ob_start();

// if ($user->rank < 2)
// {
// 	$core->Redirect('/');
// }

if(file_exists(TeamPages.$_GET['Path_1'].'/dashboard.php'))
{
	$page = $_GET['Path_1'];

	$this->Set("extraCSS", "<link rel='stylesheet' href='../tpl/assets/css/team/".$page."/dashboard.css'>");

	require(TeamPages.$page.'/dashboard.php');
}
else
{
	$core->Redirect("/");
}

define('TeamContent', ob_get_clean());

?>