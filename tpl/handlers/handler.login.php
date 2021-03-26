<?php 
$user->Redirect(true);

$this->Set("loginError", "");

$this->Set("extraCSS", '<link rel="stylesheet" href="'.$this->Get("assetsFolder").'/css/page/login.css">');
$this->Set("pageTitle", $this->Get("LOGIN_INLOGGEN"));

if(isset($_POST['loginSubmit']))
{
     if(isset($_POST['loginEmail']))
     {
         if(isset($_POST['loginPassword']))
         {
            $loginEmail = $_POST['loginEmail'];
            $loginPassword = $_POST['loginPassword'];

            $loginAntwoord = $user->Login($loginEmail, $loginPassword);

            if($loginAntwoord == 1)
            {
                $this->Set("loginError", $this->Get("LOGIN_VERKEERDE_EMAIL"));
            }
            else if($loginAntwoord == 2)
            {
                $this->Set("loginError", $this->Get("LOGIN_VERKEERDE_WACHTWOORD"));
            }
            else 
            {
                $core->Refresh();
            }
         }
     }
}
?>