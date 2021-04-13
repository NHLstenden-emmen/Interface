<?php
class User
{
	public $logged_in = false;
	public $email, $naam, $id = 0, $team = "", $level = 0, $lastIp = "Unknown";

	private $data;

	function data($field)
	{
		return ((isset($this->data[$field]) && $this->logged_in) ? $this->data[$field] : '');
	}

	function __construct()
	{
		global $DB;

		if (isset($_SESSION['email']))
		{
			$this->email = $_SESSION['email'];
			$this->logged_in = true;

            try {
                $this->data = $DB->Select("SELECT * FROM users WHERE Email = ?", [$this->email])[0];
            }
            catch (Exception $e) {
                $this->Logout();
            }

            if ($this->data === false)
			{
				$this->Logout();
			}

			// Last known IP
			if ($this->data('lastIp') == "")
			{
				$this->lastIp = "Unknown";
			} else {
				$this->lastIp = $this->data('lastIp');
			}

			$this->id = intval($this->data('UserID'));
			$this->team = $this->data('Team');
			$this->level = intval($this->data('Level'));
			$this->naam = $this->data('firstName').'&nbsp;'.$this->data('lastName');
		} 
	}

	function Login($email, $password): int
    {
		global $DB, $filter;

		$email 		= strtolower($filter->sanatizeInput($email, 'email'));
		$password 	= $filter->sanatizeInput($password, 'string');

        try {
            $userInfo = $DB->Select("SELECT * FROM users WHERE Email = ? LIMIT 1",
                [$email]);
        }
        catch (Exception $e) {
            return 0;
        }

        if (empty($userInfo)) return 1;
		
		if (!empty($userInfo[0]['verificationKey'])) return 2;

		if (!password_verify($password, $userInfo[0]['Password'])) return 3;

		$_SESSION['email'] = $email;

		return 5;
	}
	
	function generateVerificationKey($randomString = '')
	{			
		$length = 64;
		$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
		$charactersLength = strlen($characters);
		
		for ($i = 0; $i < $length; $i++) {
			$randomString .= $characters[rand(0, $charactersLength - 1)];
		}		

		return $randomString;
	}
	
	function Register($voorNaam, $achterNaam, $regEmail, $regPass1, $regPass2, $verificationKey, $level = 0): int
    {
		global $DB, $filter;

		$voorNaam 			= $filter->sanatizeInput($voorNaam, 'string');
		$achterNaam 		= $filter->sanatizeInput($achterNaam, 'string');
		$regEmail 			= $filter->sanatizeInput($regEmail, 'email');
		$regPass1 			= $filter->sanatizeInput($regPass1, 'string');
		$regPass2 			= $filter->sanatizeInput($regPass2, 'string');
		$verificationKey 	= $filter->sanatizeInput($verificationKey, 'string');

		$emailLijst = [
			'student.nhlstenden.com',
			'nhlstenden.com',
			'srv1.mail-tester.com'
		];
		
		$emailDomein = explode("@", $regEmail)[1];
		
		if (!in_array($emailDomein, $emailLijst)) return 3;

        try {
            $userInfo = $DB->Select("SELECT * FROM users WHERE Email = ?", [$regEmail]);
        } catch (Exception $e) {
            return 0;
        }

        if (!empty($userInfo)) return 1;

		if($regPass1 != $regPass2) return 2;

		if(!empty($userInfo['deleted_at'])) return 3;

		$regPass2 = password_hash($regPass2, PASSWORD_DEFAULT);

        try {
            $DB->Insert("INSERT INTO users (Email, firstName, lastName, Password, Level, verificationKey) VALUES (?, ?, ?, ?, ?, ?)",
                [$regEmail, $voorNaam, $achterNaam, $regPass2, $level, $verificationKey]);
        } catch (Exception $e) {
            return 0;
        }

        return 4;
	}

	function Edit($team, $voorNaam, $achterNaam, $regEmail, $level, $userID): int
    {
		global $DB, $filter;

		$voorNaam 		= $filter->sanatizeInput($voorNaam, 'string');
		$achterNaam 	= $filter->sanatizeInput($achterNaam, 'string');
		$regEmail 		= $filter->sanatizeInput($regEmail, 'email');
		$team 			= $filter->sanatizeInput($team, 'string');

		$emailLijst = array(
			'student.nhlstenden.com',
			'nhlstenden.com'
		);
		
		$emailDomein = explode("@", $regEmail)[1];
		
		if (!in_array($emailDomein, $emailLijst)) return 1;

        try
        {
            $DB->Update("UPDATE users SET Email = ?, Team = ?, firstName = ?, lastName = ?, Level = ? WHERE UserID = ?", [$regEmail, $team, $voorNaam, $achterNaam, $level, $userID]);
            return 3;
        }
        catch (Exception $e) {
            return 2;
        }
	}
	
	function userLevelName($type): string
    {
		switch ($type) 
		{
			default:
				return 'Gast';
            case 1:
				return 'Teamlid';
            case 2:
				return 'Docent';
            case 3:
                return 'Moderator';
            case 4:
                return 'Administrator';
        }
	}

	function resetPassword($userID): bool
    {
	    global $mailer, $DB, $filter;
        $userID = $filter->sanatizeInput($userID, "int");
        $verificationKey = $this->generateVerificationKey();
        $userData =  $this->getData($userID);

        try {
            $DB->Update("UPDATE users SET Password = NULL, verificationKey = ? WHERE UserID = ?", [$userID, $verificationKey]);
        }
        catch (Exception $e) {
            return false;
        }

        $passwordResetLink = "http://robotv.serverict.nl/login?type=pwreset&verificationKey=".$verificationKey;

        $message = "<html lang='NL'><body>";
        $message .= 'Hello '.$userData['firstName'].' '.$userData['lastName'].',<br><br>';
        $message .= 'You requested to change your password!<br>';
        $message .= '<br><br>In order to keep change your password please follow these instructions: <br>';
        $message .= 'Please reset your password by pressing this link: <a href="'.$passwordResetLink.'">Verify me!</a><br><br>';
        $message .= 'Greetings from the <br><a style="color: black;" href="https://youtu.be/dQw4w9WgXcQ">RoboTV Team</a>';
        $message .= "</body></html>";

        if(!$mailer->send($userData['Email'], 'Verification RoboTV', $message)){
            return false;
        }

        return true;
    }

	function userLevel($id): string
    {
		global $DB;

		$gebruikerResult = $DB->Select("SELECT Level, Team FROM users WHERE UserID = ? LIMIT 1", [$id])[0];

		return $this->userLevelName($gebruikerResult['Level']);
	}

	function lastUserIP($id): array
    {
		global $DB;

        try {
            $gebruikerResult = $DB->Select("SELECT lastIp FROM users WHERE UserID = ? LIMIT 1", [$id])[0];
        } catch (Exception $e) {
            return [];
        }

        return $this->lastUserIP($gebruikerResult['lastIp']);
	}

	function Redirect($if_logged_in)
	{
		global $core;

		if ($this->logged_in == $if_logged_in)
		{
			$core->Redirect('/'.Config::$loginStartpage);
		}
	}

	function getData($user_id) {
	    global $DB;
        try {
            return $DB->Select("SELECT * FROM users WHERE UserID = ? LIMIT 1 ", [$user_id])[0];
        } catch (Exception $e) {
            return [];
        }
    }

    function generateRandomPassword($rnd_string) {
	    return password_hash($rnd_string, PASSWORD_DEFAULT);
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