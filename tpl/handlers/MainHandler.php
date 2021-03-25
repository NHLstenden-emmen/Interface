<?php
$this->Set("extraCSS", "");
$this->Set("extraJS", "");
$this->Set("extraCSS", '<link rel="stylesheet" href="'.$this->Get("assetsFolder").'/css/page/teams.css">');

if ($user->logged_in)
{
	$this->Set('email', $user->email);
	$this->Set('id', $user->data('id'));
	$this->Set('username', $user->naam);
}
?>