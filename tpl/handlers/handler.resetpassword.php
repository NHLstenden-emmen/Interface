<?php

$this->Set("extraCSS", '<link rel="stylesheet" href="'.$this->Get("assetsFolder").'/css/page/resetpassword.css">');

if(isset($_POST['email'])){
    if(trim($_POST['email']) != ""){
        $email = $filter->sanatizeInput($_POST['email'], 'email');
        $mailAdresses = $DB->Select("SELECT UserID, Email FROM users WHERE Email = ? LIMIT 1",[$email])[0];
        if(count($mailAdresses) > 0){

//            $verificationKey = $user->generateVerificationKey();
//            try {
//                $DB->Update("UPDATE users SET Password = NULL, verificationKey = ? WHERE UserID = ?", [$verificationKey, $mailAdresses['UserID']]);
//            }
//            catch (Exception $e) {
//                return false;
//            }

            $user->resetPassword($mailAdresses['UserID']);

        } else {
            // Geen mailadres gevonden
        }
    }
}