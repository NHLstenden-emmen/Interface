<?php
	$message = '';
    if(isset($_POST['userName']) && isset($_POST['password']) && isset($_POST['passwordrepeat'])){

        $userName = $_POST['userName'];
        $password = $_POST['password'];
        $passwordr = $_POST['passwordrepeat'];
        $team = $_POST['team'];
        $userLnag = $_POST['lang'];
		if ($team == "selectATeam") {
			$message = "selecteer een team";
		} else {
			if (strlen($password) < 8) {
				$message = "Password too short!";
			} else{
				if (!preg_match("#[0-9]+#", $password)) {
					$message = "Password must include at least one number!";
				} else{
					if (!preg_match("#[a-zA-Z]+#", $password)) {
						$message = "Password must include at least one letter!";
					} else{
						if(!empty($userName) && !empty($password) && !empty($passwordr)){
							if($password === $passwordr && empty($message)){
								$options = [ 'cost' => 12, ];
								$newpass = $password;
								$password = password_hash($newpass, PASSWORD_BCRYPT, $options);

								// het mysql block
									// include the env file pagina
									$host = $env['DB_HOST'];
									$user = $env['DB_USERNAME'];
									$pass = $env['DB_PASSWORD'];
									$table = $env['DB_TABLE'];
									$conn = @mysqli_connect($host,$user,$pass, $table);
									if(!$conn)
									{
										DIE("could not connect". mysqli_connect_error($conn));
									}
									
									$userName = htmlspecialchars($userName);
									$password = htmlspecialchars($password);
									$team = htmlspecialchars($team);
									$userLnag = htmlspecialchars($userLnag);

									// this query gets all the users form the table
									if ($stmt = $conn->prepare("SELECT `username` FROM `users`")) {
										$stmt->execute();
										$result = $stmt->get_result();
										$stmt->free_result();
										$stmt->close();
									}
									// this loops trough all the users and checks if userName is unique
									while ($checkIfUserNameIsUnique = $result->fetch_array(MYSQLI_ASSOC)) {
										//this checks if the userName is allready in use
										if ($checkIfUserNameIsUnique['username'] == $userName) {
											$message = "User name in use.";
										}
									}
									if ($stmt = $conn->prepare("INSERT INTO `users`( `username`, `password`, `team`, `lang`) VALUES (?,?,?,?)")) {
										$stmt->bind_param("ssss", $userName, $password, $team, $userLnag);
										$stmt->execute();
										$stmt->close();
										$message = "User Added";
									}else{
										$message = mysqli_error($conn);
									}
								// het mysql block

							} else{
								$message = $lang['PASSWORDSDONTMATCH'];
							}
						} else{
							$message = $lang['FILLINFIELDS'];
						}
					}
				}
			}
		} 
    }
?>

<div id="neoBlockContainer">
    <div class="neonBlock Content">
        <h1 class="blockTitle"><?php echo $lang["ADD_USER"];?></h1>
		<h2 class="errorMessage"><?php echo $message ?></h2>
		<form method="POST" autocomplete="off">
			<label for="team">Team:</label><br>  
			<select name="team" id="team">
				<option value="selectATeam"><?php echo $lang["SELECT_TEAM"];?></option>
				<option value="1A">1A</option>
				<option value="1B">1B</option>
				<option value="1C">1C</option>
				<option value="1D">1D</option>
				<option value="1E">1E</option>
			</select><br>
			
			<label for="lang">Taal:</label><br>  
			<input type="radio" name="lang" id="langNL" value="nl" checked>
			<label for="langNL">Nederlands</label>
			<input type="radio" name="lang" id="langEN" value="en">
			<label for="langEN">engels</label>

			<input type="text" name="userName" required class="textInputGebruiker" placeholder="<?=$lang['USERNAME'];?>"><br>
			<input type="password" name="password" required min="8" class="textInputGebruiker" placeholder="<?php echo $lang["PASSWORD"];?>"><br>
			<input type="password" name="passwordrepeat" required min="8" class="textInputGebruiker" placeholder="<?php echo $lang["REPEAT_PASSWORD"];?>"><br>
			<button class="inloggen" type="submit"><?php echo $lang["ADD"];?></button><br>
		</form>
	</div>
</div>
