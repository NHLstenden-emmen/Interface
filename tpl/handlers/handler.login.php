<?php 

$user->Redirect(true);

$this->Set("extraCSS", '<link rel="stylesheet" href="'.$this->Get("assetsFolder").'/css/page/login.css">');
$this->Set("pageTitle", $this->Get("LOGIN_INLOGGEN"));
$this->Set("loginError", "");
$resetForm = false;



if(isset($_GET['verificationKey'])){
	$verificationKey = $filter->sanatizeInput($_GET['verificationKey'], "string");
    try {
        $getUser = $DB->Select("SELECT UserID FROM users WHERE verificationKey = ? LIMIT 1", [$verificationKey]);
    } catch (Exception $e) {
		
    }
	
    if(isset($_GET['type'])){
        if($_GET['type'] == 'pwreset'){
			$resetForm = true;
			$this->Set("resetForm", "
			<form method=\"POST\" id=\"resetForm\" autocomplete=\"off\">
				<input type=\"password\" id=\"loginPassword\" name=\"passFirst\" placeholder=\"Wachtwoord\" required><br>
				<input type=\"password\" id=\"loginPassword\" name=\"passSecond\" placeholder=\"Herhaal wachtwoord\" required><br>
				<button class=\"button\" name=\"resetSubmit\" type=\"submit\">Reset</button>
			</form>
			");
			if(isset($_POST['resetSubmit']) && isset($_POST['passFirst']) && isset($_POST['passSecond'])){
				$passwordFirst 	= $filter->sanatizeInput($_POST['passFirst'], 'string');
				$passwordSecond 	= $filter->sanatizeInput($_POST['passSecond'], 'string');
				if($passwordFirst == $passwordSecond){
					$passwordNew = password_hash($passwordFirst, PASSWORD_DEFAULT);
					foreach ($getUser as $details) {
						$userID = $details['UserID'];
						$DB->Update("UPDATE users SET Password = ?, verificationKey = NULL WHERE UserID = ?", [$passwordNew, $userID]);
						echo "<script>alert('Wachtwoord is veranderd!');</script>";
						$core->Redirect("/login");
					}
				} else{
					echo "<script>alert('Deze 2 wacthwoorden zijn niet gelijk!');</script>";
				}
			}
        }
    } else {
        // verify account
        $var_check = false;
        foreach ($getUser as $details) {
            $userID = $details['UserID'];
            try {
                $DB->Update("UPDATE users SET verificationKey = NULL WHERE UserID = ?", [$userID]);
            } catch (Exception $e) {
            }
            $var_check = true;
        }
        if ($var_check) {
            echo "<script>alert('Verified!');</script>";
        } else {
            echo "<script>alert('Error!');</script>";
        }
    }
}

if(isset($_POST['loginSubmit']))
{
     if(isset($_POST['loginEmail']))
     {
         if(isset($_POST['loginPassword']))
         {
            
            if (isset($_POST['g-recaptcha-response'])) {
                $captcha = $_POST['g-recaptcha-response'];
            } else {
                $captcha = false;
            }
            
            if (!$captcha) {
                die();
            } else {
                $secret   = '6Lf47ZUaAAAAAPPcD_xn7L_qsBDV9iRfVZpFq6BI';
                $response = file_get_contents(
                    "https://www.google.com/recaptcha/api/siteverify?secret=" . $secret . "&response=" . $captcha . "&remoteip=" . $_SERVER['REMOTE_ADDR']
                );
                $response = json_decode($response);
            }
            if ($response->success==true && $response->score <= 0.5) {
                // Dit is een bot
				echo "<script>alert('Het vermoeden gaat dat je een robot bent, ben je het hier niet mee eens? Probeer het opnieuw!');</script>";
				header('Location: login');
            }

            $loginEmail     =  strtolower($filter->sanatizeInput($_POST['loginEmail'], "string"));
            $loginPassword  =  $filter->sanatizeInput($_POST['loginPassword'], "string");
			
			$ban_ip = $DB->Select("SELECT * FROM security WHERE Type = ? AND Value = ?", ["ban_ip", $core->getUserIP()]);
			foreach($ban_ip as $bannedIp){
				$core->Redirect("/?check=banned");
			}

            switch ($user->Login($loginEmail, $loginPassword)) 
            {
                case 1:
                    $this->Set("loginError", $this->Get("LOGIN_VERKEERDE_EMAIL"));
                 break;
                case 2:
					$core->Redirect("?check=verifyaccount");
                break;
                case 4:
                case 3:
                    $this->Set("loginError", $this->Get("LOGIN_GEBAND"));
                break;
                case 5:
					$loginKey = time();
					$core->setCookie("loginKey", $loginKey);
					$DB->Update("UPDATE users SET loginKey = ?, lastIp = ? WHERE email = ?", [$loginKey, $core->getUserIP(), $loginEmail]);
					$core->Redirect("/");
                break;
            }
         }
     }
}

?>