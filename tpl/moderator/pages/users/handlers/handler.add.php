<?php


if(isset($_POST['submitAdd']))
{
    if(isset($_POST['voorNaam']))
    {
        if(isset($_POST['achterNaam']))
        {
            if(isset($_POST['regEmail']))
            {
                $voorNaam = $_POST['voorNaam'];
                $achterNaam = $_POST['achterNaam'];
                $regEmail = strtolower($_POST['regEmail']);
                $verificationKey = $user->generateVerificationKey();
                $randomPassword = $core->random_str(15);

                $regAntwoord = $user->Register($voorNaam, $achterNaam, $regEmail, $randomPassword, $randomPassword, $verificationKey);

                if($regAntwoord == 1)
                {
                    $this->Set("regError", $this->Get("GEBRUIKER_BESTAAT"));
                }
                else if($regAntwoord == 2)
                {
                    $this->Set("regError", $this->Get("WACHTWOORD_NIETOVEREEN"));
                }
                else if($regAntwoord == 3)
                {
                    $this->Set("regError", $this->Get("GELDIGE_MAIL"));
                }
                else if($regAntwoord == 4)
                {
                    $verificationLink = "http://robotv.serverict.nl/login?verificationKey=".$verificationKey;
                    $message = "<html lang='NL'><body>";
                    $message .= 'Hello '.$voorNaam.' '.$achterNaam.',<br><br>';
                    $message .= 'RoboTV is a platform for NHL Stenden Students build by NHL Stenden Students to track an project event.<br>';
                    $message .= 'Lookup the livestream and interact with other users to support the Teams!<br>';
                    $message .= '<br><br>In order to keep our platform safe read the following message: <br>';
                    $message .= '<br><br>You can login with this emailadress. Your generated password is: <strong>'.$randomPassword.'</strong> <br>';
                    $message .= 'Please activate your account by pressing this link: <a href="'.$verificationLink.'">Verify me!</a><br><br>';
                    $message .= 'Greetings from the <br><a style="color: black;" href="https://youtu.be/dQw4w9WgXcQ">RoboTV Team</a>';
                    $message .= "</body></html>";
                    if($mailer->send($regEmail, 'Verification RoboTV', $message, $username = '')){
                        $core->Redirect("/moderator/users");
                    } else {
                        $core->Refresh();
                    }
                }
            }
        }
    }
}
