<?php 

    $gebruikerResult = $DB->Select("SELECT * FROM users WHERE user_id = ? LIMIT 1 ", [ModeratorPageAction])[0]; 

    foreach ($gebruikerResult as $key => $value) $this->Set($key, $value);

    $teamResult = $DB->Select("SELECT * FROM teams"); 

    $rankResult = '<select name="levelSelect">';
    for( $i=0; $i <= 2; $i++) $rankResult .= '<option ' . ($gebruikerResult['level'] == $i ? 'selected="selected"' : '') . ' value="'.$i.'">' . $user->userLevelName($i) . '</option>';
    $rankResult .= '</select></br ><br />';

    $teamResultView =  '<select name="teamSelect">';
    foreach ($teamResult as $key => $value)  $teamResultView .= '<option ' . ($gebruikerResult['team'] == $value['TeamID'] ? 'selected="selected"' : '') . ' value="'.$value['TeamID'].'">' . $value['TeamID'] . '</option>';
    $teamResultView .= '</select></br ><br />';

    $this->Set("rankResult", $rankResult);
    $this->Set("teamResult", $teamResultView);

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
										$core->Refresh();
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