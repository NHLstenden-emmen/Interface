<?php
$this->Set("extraCSS", "");
$this->Set("extraJS", "");
$this->Set("extraCSS", '<link rel="stylesheet" href="'.$this->Get("assetsFolder").'/css/page/teams.css">');

/* Language switch */
if(isset($_GET['lang'])) {
	if($_GET['lang'] == "change"){
		$lang->changeLanguage();
		$langURL = "http://". $_SERVER['HTTP_HOST'] . explode('?', $_SERVER['REQUEST_URI'], 2)[0];
		$core->Redirect($langURL);
	}
}

/* Check if is logged in on other ip or device or browser*/
if($user->logged_in){	
	$loginKey = $DB->Select("SELECT loginKey FROM users WHERE email = ? LIMIT 1",[$user->email]);
	if ($core->getUserIP() != $user->lastIp){
		$user->Logout();
	} else if ($loginKey[0]['loginKey'] != $_COOKIE['loginKey']){
		$user->Logout();
	}
	
	// Check if ip is banned
	$bannedIPList = $DB->Select("SELECT * FROM security WHERE type = 'ban_ip' AND Value = ? LIMIT 1",[$core->getUserIP()]);
	if(!empty($bannedIPList)){
		$user->Logout();
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