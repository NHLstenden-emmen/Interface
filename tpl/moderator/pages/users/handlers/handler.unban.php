<?php 
		$DB->Update("UPDATE users SET deleted_at = NULL WHERE user_id = ?", [ModeratorPageAction]);
		$core->Redirect("/moderator/users");
?>