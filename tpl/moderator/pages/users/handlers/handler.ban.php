<?php 

		if(isset($_GET['var'])){
			if($_GET['var'] == 'ip'){
				$data = $DB->Select("SELECT lastIp FROM users WHERE user_id = ?", [ModeratorPageAction]);
				foreach($data as $ip){
					$DB->Insert("INSERT INTO security (Type, Value) values ('ban_ip', ?)", [$ip['lastIp']]);
					$core->Redirect("/moderator/users");
				}
			} else {
				$core->Redirect("/moderator/users");
			}
		}

		$DB->Update("UPDATE users SET deleted_at = CURRENT_TIMESTAMP() WHERE user_id = ?", [ModeratorPageAction]);
		$core->Redirect("/moderator/users");
?>