<div class="container topPadding">

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
						<th>Aanpassen</th>
						<th>Verwijderen</th>
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
				<i class='far fa-edit'></i>
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
	else if(isset($_GET['Path_2']) && $_GET['Path_2'] == 'edit' && isset($_GET['Path_3']) && $user->level >= 2)
	{
		$gebruikerID = $filter->sanatizeInput($_GET['Path_3'], 'int');
		$gebruikerResult = $DB->Select("SELECT * FROM users WHERE user_id = ? LIMIT 1 ", [$gebruikerID]); 
		$teamResult = $DB->Select("SELECT * FROM teams"); 

		echo '
			<form method="post">{updateError}<br />
			<label>{VOORNAAM}: <input type="text" name="voorNaam" placeholder="{VOORNAAM}" value="'.$gebruikerResult[0]['voornaam'].'" required></label><br />
			<label>{ACHTERNAAM}: <input type="text" name="achterNaam" placeholder="{ACHTERNAAM}" value="'.$gebruikerResult[0]['achternaam'].'" required></label><br />
			<label>Email: <input type="email" name="regEmail" placeholder="Emailadres" value="'.$gebruikerResult[0]['email'].'" required></label><br />
			<label>{WACHTWOORD}: <input type="password" name="regPass1" placeholder="{WACHTWOORD}" required></label><br />
			<label>{HERHAAL_WACHTWOORD}: <input type="password" name="regPass2" placeholder="{HERHAAL_WACHTWOORD}" required></label><br />
			<input type="hidden" value="'.$gebruikerResult[0]['user_id'].'" name="gebruikerID">
			<label>Level: <select class="" name="levelSelect">';

			for( $i=0; $i <= 2; $i++) 
			{
				echo '<option ' . ($gebruikerResult[0]['level'] == $i ? 'selected="selected"' : '') . ' value="'.$i.'">' . $user->userLevelName($i) . '</option>';
			}
			
		echo '</select>

		<label>Team: <select class="" name="teamSelect">';

		foreach ($teamResult as $key => $value) 
		{
			echo '<option ' . ($gebruikerResult[0]['team'] == $value['TeamID'] ? 'selected="selected"' : '') . ' value="'.$value['TeamID'].'">' . $value['TeamID'] . '</option>';
		}

		echo '</select>
				<br />
			<button type="submit" name="submitEdit" required>{BEHEER_OPSLAAN}</button>
		</form>';
	}
    ?>


</div>
<link rel="stylesheet" href="/tpl/assets/css/page/moderator.css">