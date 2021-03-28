<?php 
		$DB->Update("UPDATE users SET deleted_at = CURRENT_TIMESTAMP() WHERE user_id = ?", [ModeratorPageAction]);
		$core->Redirect("/moderator/users");
?>