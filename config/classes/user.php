<?php
class User
{
	public $logged_in = false;
	public $email, $naam, $id = 0, $team = "", $level = 0;

	private $data;

	function data($field)
	{
		return ((isset($this->data[$field]) && $this->logged_in) ? $this->data[$field] : '');
	}

	function __construct()
	{
		global $core, $DB;

		if (isset($_SESSION['email']))
		{
			$this->email = $_SESSION['email'];
			$this->logged_in = true;

			$this->data = $DB->Select("SELECT * FROM users WHERE email = ?", [$this->email])[0];

			if ($this->data === false)
			{
				$this->Logout();
			}

			$this->id = intval($this->data('user_id'));
			$this->team = $this->data('team');
			$this->level = intval($this->data('level'));
			$this->naam = $this->data('voornaam').'	&nbsp;'.$this->data('achternaam');
		} 
	}

	function Login($email, $password)
	{
		global $DB, $filter;

		$email 		= $filter->sanatizeInput($email, 'email');
		$password 	= $filter->sanatizeInput($password, 'string');

		$userInfo 	= $DB->Select("SELECT * FROM users WHERE email = ? LIMIT 1",[$email]);

		if (empty($userInfo)) return 1;

		if (!password_verify($password, $userInfo[0]['password'])) return 2;

		$_SESSION['email'] = $email;

		return false;
	}

	function Register($voorNaam, $achterNaam, $regEmail, $regPass1, $regPass2, $level = 0)
	{
		global $DB, $filter;

		$voorNaam 		= $filter->sanatizeInput($voorNaam, 'string');
		$achterNaam 	= $filter->sanatizeInput($achterNaam, 'string');
		$regEmail 		= $filter->sanatizeInput($regEmail, 'email');
		$regPass1 		= $filter->sanatizeInput($regPass1, 'string');
		$regPass2 		= $filter->sanatizeInput($regPass2, 'string');

		$emailLijst = [
			'student.nhlstenden.com',
			'nhlstenden.com'
		];
		
		$emailDomein = explode("@", $regEmail)[1];
		
		if (!in_array($emailDomein, $emailLijst)) return 3;

		$userInfo 	= $DB->Select("SELECT * FROM users WHERE email = ?", [$regEmail]);

		if (!empty($userInfo)) return 1;

		if($regPass1 != $regPass2) return 2;

		if(!empty($userInfo['deleted_at'])) return 3;

		$regPass2 = password_hash($regPass2, PASSWORD_DEFAULT);

		$DB->Insert("INSERT INTO users (email, voornaam, achternaam, password, level) 
							VALUES (?, ?, ?, ?, ?)", 
							[$regEmail, $voorNaam, $achterNaam, $regPass2, $level]);

		return false;
	}

	function Edit($team, $voorNaam, $achterNaam, $regEmail, $regPass1, $regPass2, $level, $userID)
	{
		global $DB, $filter;

		$voorNaam 		= $filter->sanatizeInput($voorNaam, 'string');
		$achterNaam 	= $filter->sanatizeInput($achterNaam, 'string');
		$regEmail 		= $filter->sanatizeInput($regEmail, 'email');
		$regPass1 		= $filter->sanatizeInput($regPass1, 'string');
		$regPass2 		= $filter->sanatizeInput($regPass2, 'string');
		$teamSelect 	= $filter->sanatizeInput($teamSelect, 'string');

		$emailLijst = array(
			'student.nhlstenden.com',
			'nhlstenden.com'
		);
		
		$emailDomein = explode("@", $regEmail)[1];
		
		if (!in_array($emailDomein, $emailLijst)) return 3;

		if($regPass1 != $regPass2) return 2;
		
		$regPass2 = password_hash($regPass2, PASSWORD_DEFAULT);

		$DB->Update("UPDATE users SET email = ?, team = ?, voornaam = ?, achternaam = ?, password = ?, level = ?
						WHERE user_id = ?", 
							[$regEmail, $team, $voorNaam, $achterNaam, $regPass2, $level, $userID]);

		return false;
	}

	function userLevelName($type, $team = "") 
	{
		switch ($type) 
		{
			default:
				return 'Gast';
			break;
			case 1:
				return 'Teamlid';
			break;			
			case 2:
				return 'Moderator';
			break;		
		}
	}

	function userLevel($id) {
		global $DB;

		$gebruikerResult = $DB->Select("SELECT level, team FROM users WHERE user_id = ? LIMIT 1", [$id])[0];

		return $this->userLevelName($gebruikerResult['level'], $gebruikerResult['team']);
		
	}


	function Redirect($if_logged_in)
	{
		global $core;

		if ($this->logged_in == $if_logged_in)
		{
			$core->Redirect('/'.Config::$loginStartpage);
		}
	}

	function LoginCheck()
	{
		global $core;

		if (!$this->logged_in)
		{
			$core->Redirect('/start');
		}
	}

	function Logout()
	{
		global $core;

		session_destroy();
		$core->Redirect('/start');
	}
}
?>