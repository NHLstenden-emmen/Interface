<?php 
$user->Redirect(true);

$this->Set("extraCSS", '<link rel="stylesheet" href="'.$this->Get("assetsFolder").'/css/page/login.css">');
$this->Set("pageTitle", $this->Get("LOGIN_INLOGGEN"));
$this->Set("loginError", "");

if(isset($_POST['loginSubmit']))
{
     if(isset($_POST['loginEmail']))
     {
         if(isset($_POST['loginPassword']))
         {
            /*
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
                die();
            }*/

            $loginEmail     =  $filter->sanatizeInput($_POST['loginEmail'], "string");
            $loginPassword  =  $filter->sanatizeInput($_POST['loginPassword'], "string");;

            switch ($user->Login($loginEmail, $loginPassword)) 
            {
                case 1:
                    $this->Set("loginError", $this->Get("LOGIN_VERKEERDE_EMAIL"));
                 break;
                case 2:
                    $this->Set("loginError", $this->Get("LOGIN_VERKEERDE_WACHTWOORD"));
                break; 
                case 3:
                    $this->Set("loginError", $this->Get("LOGIN_GEBAND"));
                break; 
                case 4:
                     $core->Redirect("/");
                break;
            }
         }
     }
}

?>