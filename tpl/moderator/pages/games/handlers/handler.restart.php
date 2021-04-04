<?php 
    if($user->level == 2) {
        $socket->customCommand("RESET_SERVER")->server;
        $core->Redirect("/moderator/games/");
    }
?>