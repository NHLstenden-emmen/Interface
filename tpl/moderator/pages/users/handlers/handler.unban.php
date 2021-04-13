<?php 
		$DB->Update("UPDATE users SET deleted_at = NULL WHERE UserID = ?", [ModeratorPageAction]);
		$core->Redirect("/moderator/users");
?>