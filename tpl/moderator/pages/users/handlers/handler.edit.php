<?php
    $userData = $user->getData(ModeratorPageAction);

    if(!empty($userData['verificationKey'])) $this->Set("disabled", "disabled");
    else $this->Set("disabled", "");
    foreach ($userData as $key => $value) $this->Set($key, $value);

    if(isset($_POST['submitEdit']))
	{
		if(isset($_POST['voorNaam']))
		{
			if(isset($_POST['achterNaam']))
			{
				if(isset($_POST['regEmail']))
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

                            $regAntwoord = $user->Edit($teamSelect, $voorNaam, $achterNaam, $Email, $levelSelect, $gebruikerID);
                            switch ($user->Edit($teamSelect, $voorNaam, $achterNaam, $Email, $levelSelect, $gebruikerID)) {
                                case 1:
                                    $this->Set("updateError", "verkeerde email");
                                break;
                                case 2:
                                    $this->Set("updateError", "error mysql");
                                break;
                                case 3:
                                    $core->Refresh();
                                break;
                            }
                        }
                    }
                }
            }
        }
    }

    if(isset($_POST['pwReset'])) {
        if(empty($userData['verificationKey'])) {
            $user->resetPassword($_POST['gebruikerID']);
        }
    }
?>