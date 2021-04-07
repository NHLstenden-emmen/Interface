<?php 
		$DB->Update("UPDATE users SET verificationKey = NULL WHERE user_id = ?", [ModeratorPageAction]);
		$core->Redirect("/moderator/users");
?>