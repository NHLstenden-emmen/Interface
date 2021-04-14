<?php 
		$DB->Update("UPDATE users SET verificationKey = NULL WHERE UserID = ?", [ModeratorPageAction]);
		$core->Redirect("/moderator/users");
?>