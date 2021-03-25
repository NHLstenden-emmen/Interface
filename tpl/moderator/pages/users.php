<?php 
    $this->Set("pageTitle", $this->Get("ADMIN_GEBRUIKERBEHEER"));
 
    $this->Set("updateError", "");
	$errors = [];
    //Handler
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
								$voorNaam = $filter->sanatizeInput($_POST['voorNaam'], 'string');
								$achterNaam = $filter->sanatizeInput($_POST['achterNaam'], 'string');
								$regEmail = $filter->sanatizeInput($_POST['regEmail'], 'email');
								$regPass1 =  $filter->sanatizeInput($_POST['regPass1'], 'string');
								$regPass2 =  $filter->sanatizeInput($_POST['regPass2'], 'string');
								$regSelect = $filter->sanatizeInput($_POST['levelSelect'], 'int');
								$gebruikerID = $filter->sanatizeInput($_POST['gebruikerID'], 'int');
					
								$regAntwoord = $user->Edit($voorNaam, $achterNaam, $regEmail, $regPass1, $regPass2, $regSelect, $gebruikerID);
						
								if($regAntwoord == 2)
								{
									$this->Set("updateError", $this->Get("GEBRUIKERBEHEER_WACHTWOORDEN_OVEREEN"));
								}
								else if($regAntwoord == 3)
								{
									$this->Set("updateError",  $this->Get("GEBRUIKERBEHEER_INVOEGEN_VERKEERDE_EMAIL"));
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

	//Laat de weergave pagina zien
	if(!isset($_GET['Path_2']) && !isset($_GET['Path_3']))
	{

		$gebuikerResult = $DB->Select("SELECT * FROM users WHERE user_id != ? ORDER BY level ASC ", [2]);

		echo '<table>
				<thead>
					<tr>
						<th>Level</th>
						<th>Naam</th>
						<th>Email</th>
						<th><i class="fa fa-pencil-square-o" aria-hidden="true"></i></th>
						<th><i class="fa fa-times" aria-hidden="true"></i></th>
					</tr>
				</thead>
				<tbody>';

		foreach($gebuikerResult as $key => $value) 
		{
			echo "<tr>";
				echo "<td>{$user->userLevel($value['user_id'])}</td>";
				echo "<td>".$value['voornaam']." ".$value['achternaam']. "</td>";
				echo "<td>".$value['email']."</td>";
				echo "<td class='link' data-link='/moderator/users/edit/".$value['user_id']."'>
				<i class='fa fa-pencil-square-o' aria-hidden='true'></i>
				</td>";
				echo "<td class='link' data-link='/moderator/users/delete/".$value['user_id']."'>
						<i class='fa fa-times' aria-hidden='true'></i>
					</td>";
			echo "</tr>";
		}

		echo "</tbody>
		</table>";

	}

	//Laat de delete pagina zien
	else if(isset($_GET['Path_2']) && $_GET['Path_2'] == 'delete')
	{
		$gebruikerID = $filter->sanatizeInput($_GET['Path_3'], 'int');
		$DB->Delete("UPDATE gebruiker SET delete_at = CURRENT_TIMESTAMP WHERE gebruiker_id = ?", [$gebruikerID]);

		$core->Redirect("/moderator/users");
	}
	//Laat de edit pagina zien
	else if(isset($_GET['Path_2']) && $_GET['Path_2'] == 'edit' && isset($_GET['Path_3']) && $user->rank >= 2)
	{
		$gebruikerID = $filter->sanatizeInput($_GET['Path_3'], 'int');
		$gebruikerResult = $DB->Select("SELECT * FROM gebruiker WHERE gebruiker_id = ? LIMIT 1 ", [$gebruikerID]); 

		echo '<div class="sectionTitle">{VIDEOBEHEER_AANPASSEN_TITEL}</div>
			<form method="post">{updateError}<br />
			<label>{GEBRUIKERBEHEER_INVOEGEN_VOORNAAM}: <input type="text" name="voorNaam" placeholder="{GEBRUIKERBEHEER_INVOEGEN_VOORNAAM}" value="'.$gebruikerResult[0]['voornaam'].'" required></label><br />
			<label>{GEBRUIKERBEHEER_INVOEGEN_ACHTERNAAM}: <input type="text" name="achterNaam" placeholder="{GEBRUIKERBEHEER_INVOEGEN_ACHTERNAAM}" value="'.$gebruikerResult[0]['achternaam'].'" required></label><br />
			<label>Email: <input type="email" name="regEmail" placeholder="Emailadres" value="'.$gebruikerResult[0]['email'].'" required></label><br />
			<label>{PROFIEL_AANPASSEN_WACHTWOORD}: <input type="password" name="regPass1" placeholder="{PROFIEL_AANPASSEN_WACHTWOORD}" required></label><br />
			<label>{GEBRUIKERBEHEER_INVOEGEN_HERHAAL_WACHTWOORD}: <input type="password" name="regPass2" placeholder="{GEBRUIKERBEHEER_INVOEGEN_HERHAAL_WACHTWOORD}" required></label><br />
			<input type="hidden" value="'.$gebruikerResult[0]['gebruiker_id'].'" name="gebruikerID">
			<label>Level: <select name="levelSelect">';

			for( $i=1; $i < 3; $i++) 
			{
				echo '<option ' . ($gebruikerResult[0]['level'] == $i ? 'selected="selected"' : '') . ' value="'.$i.'">' . $user->userLevelName($i) . '</option>';
			}
			
		echo '</select>
				<br />
			<button type="submit" name="submitEdit" required>{BEHEER_OPSLAAN}</button>
		</form>';
	}
    ?>