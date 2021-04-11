<?php 
    $gebruikerResult = $DB->Select("SELECT * FROM users WHERE user_id = ? LIMIT 1 ", [ModeratorPageAction])[0];

    foreach ($gebruikerResult as $key => $value) $this->Set($key, $value);


    if(isset($_POST['submitEdit']))
	{
		if(isset($_POST['voorNaam']))
		{
			if(isset($_POST['achterNaam']))
			{
				if(isset($_POST['regEmail']))
				{
					if(isset($_POST['regPass1']))
					{
						if(isset($_POST['regPass1']))
						{
							if(isset($_POST['levelSelect']))
							{
								if(isset($_POST['teamSelect']))
								{
									$voorNaam = $filter->sanatizeInput($_POST['voorNaam'], 'string');
									$achterNaam = $filter->sanatizeInput($_POST['achterNaam'], 'string');
									$Email = $filter->sanatizeInput($_POST['regEmail'], 'email');
									$Pass1 =  $filter->sanatizeInput($_POST['regPass1'], 'string');
									$Pass2 =  $filter->sanatizeInput($_POST['regPass2'], 'string');
									$levelSelect = $filter->sanatizeInput($_POST['levelSelect'], 'int');
									$teamSelect = $filter->sanatizeInput($_POST['teamSelect'], 'string');

                                    $regPass2 = password_hash($Pass2, PASSWORD_DEFAULT);

									$gebruikerID = $filter->sanatizeInput($_POST['gebruikerID'], 'int');

									$regAntwoord = $user->Edit($teamSelect, $voorNaam, $achterNaam, $Email, $Pass1, $Pass2, $levelSelect, $gebruikerID);
									if($regAntwoord == 2)
									{
										$this->Set("updateError", $this->Get("GEBRUIKERBEHEER_WACHTWOORDEN_OVEREEN"));
									}
									else if($regAntwoord == 3)
									{
										$this->Set("updateError", $this->Get("GEBRUIKERBEHEER_INVOEGEN_VERKEERDE_EMAIL"));
									}
									else 
									{
									    echo $regAntwoord;
                                        //$core->Refresh();
									}
								}
							}
						}
					}
				}
			}
		}
    } 
?>