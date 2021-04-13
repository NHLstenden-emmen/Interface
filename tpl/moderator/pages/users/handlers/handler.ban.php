<?php 

		if(isset($_GET['var'])){
			if($_GET['var'] == 'ip'){
				$data = $DB->Select("SELECT lastIp FROM users WHERE UserID = ?", [ModeratorPageAction]);
				foreach($data as $ip){
					$DB->Insert("INSERT INTO security (Type, Value) values ('ban_ip', ?)", [$ip['lastIp']]);
					$core->Redirect("/moderator/users");
				}
			} else {
				$core->Redirect("/moderator/users");
			}
		}

		$DB->Update("UPDATE users SET deleted_at = CURRENT_TIMESTAMP() WHERE UserID = ?", [ModeratorPageAction]);
		$core->Redirect("/moderator/users");
?>