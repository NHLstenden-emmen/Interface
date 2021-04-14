<?php
//Kijk of knop ingedrukt is

$user->Redirect(true);
$this->Set("regError", "");
$this->Set("pageTitle", $this->Get("LOGIN_REGISTREREN"));
$this->Set("extraCSS", '<link rel="stylesheet" href="'.$this->Get("assetsFolder").'/css/page/register.css">');

if(isset($_POST['regSubmit']))
{  
    if(isset($_POST['voorNaam']))
    {    
        if(isset($_POST['achterNaam']))
        {
            if(isset($_POST['regEmail']))
            {
                if(isset($_POST['regPass1']))
                {
                    if(isset($_POST['regPass2']))
                    {
						// Captcha
						
						
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
						header('Location: register');
					}					
											
                        $voorNaam = $_POST['voorNaam'];
                        $achterNaam = $_POST['achterNaam'];
                        $regEmail = strtolower($_POST['regEmail']);
                        $regPass1 = $_POST['regPass1'];
                        $regPass2 = $_POST['regPass2'];
						$verificationKey = $user->generateVerificationKey();

                        $regAntwoord = $user->Register($voorNaam, $achterNaam, $regEmail, $regPass1, $regPass2, $verificationKey);
                                                
                        if($regAntwoord == 1)
                        {
                            $this->Set("regError", $this->Get("GEBRUIKER_BESTAAT"));
							echo "<script>alert('Gebruiker bestaat al.');</script>";
                        }
                        else if($regAntwoord == 2)
                        {
                            $this->Set("regError", $this->Get("WACHTWOORD_NIETOVEREEN"));
							echo "<script>alert('Wachtwoorden komen niet overeen');</script>";
                        }
                        else if($regAntwoord == 3)
                        {
                            $this->Set("regError", $this->Get("GELDIGE_MAIL"));
							echo "<script>alert('Gebruik een NHL Stenden mailadres!');</script>";
                        }
                        else if($regAntwoord == 4)
                        {
							$verificationLink = "http://robotv.serverict.nl/login?verificationKey=".$verificationKey;
							$message = "<html lang='NL'><body>";
							$message .= 'Hello '.$voorNaam.' '.$achterNaam.',<br><br>';
							$message .= 'RoboTV is a platform for NHL Stenden Students build by NHL Stenden Students to track an project event.<br>';
							$message .= 'Lookup the livestream and interact with other users to support the Teams!<br>';
							$message .= '<br><br>In order to keep our platform safe read the following message: <br>';
							$message .= 'Please activate your account by pressing this link: <a href="'.$verificationLink.'">Verify me!</a><br><br>';
							$message .= 'Greetings from the <br><a style="color: black;" href="https://youtu.be/dQw4w9WgXcQ">RoboTV Team</a>';
							$message .= "</body></html>";
 							if($mailer->send($regEmail, 'Verification RoboTV', $message, $username = '')){
								$core->Redirect("/?check=verifyaccount");
							} else {
								$core->Redirect("/register");
							}
                        }
                    }
                }
            }
        }
    }
}

