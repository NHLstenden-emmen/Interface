<?php
$this->Set("extraCSS", "");
$this->Set("extraJS", "");
$this->Set("extraCSS", '<link rel="stylesheet" href="'.$this->Get("assetsFolder").'/css/page/teams.css">');

/* Language switch */
if(isset($_GET['lang'])) {
	if($_GET['lang'] == "change"){
		$lang->changeLanguage();
		$langURL = "http://". $_SERVER['HTTP_HOST'] . explode('?', $_SERVER['REQUEST_URI'], 2)[0];
	///	header("Location: " . $langURL);
		$core->Redirect($langURL);
	}
}

/* Navigatie menu */
if ($user->logged_in)
{
	$this->Set('email', $user->email);
	$this->Set('id', $user->data('id'));
	$this->Set('username', $user->naam);
	$this->Set('login', '<a class="alternative-button" id="logout" href="/logout"><span><i class="fas fa-user"></i>&nbsp&nbsp' . $user->naam . '</span><span></span></a>');
	$this->Set("team", $user->team);
	$this->Set("disabled", "");

	if(!empty($user->team)) {
		$this->Set('dashboard', '<li><a href="/dashboard/' . $user->team . '">' . $this->Get("NAV_DASHBOARD") . '</a></li>');
	}
	else {
		$this->Set('dashboard', '');
	}
	if($user->level == 2) {
		$this->Set('dashboard', '<li><a href="/moderator/">Moderator</a></li>');
	}
}
else 
{
	$this->Set('login', '<a class="alternative-button" href="/login">' . $this->Get("NAV_LOGIN") . '&nbsp<i class="fas fa-sign-in-alt"></i></a>');
	$this->Set('dashboard', '');
	$this->Set("disabled", "disabled");

	$monitor = "Guest";
}
?>