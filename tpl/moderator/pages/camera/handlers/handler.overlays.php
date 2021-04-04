<?php 
    if(isset($_POST['nextTrack'])) 
    {
        $socket->musicControl("NEXT");
    } 

    if(isset($_POST['prevTrack'])) 
    {
        $socket->musicControl("PREV");
    } 

    if(isset($_POST['urlSubmit'])) 
    {
        if(!empty($_POST['urlInput'])) {
            $socket->customMusic($_POST['urlInput']);
        }
    }

?>