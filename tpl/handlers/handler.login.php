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
                default:
                     $core->Refresh();
                break;
            }
         }
     }
}
?>