<?php 

    switch (ModeratorPageAction) 
    {
        case 'SPS':
            $this->Set("statusResponse", $socket->startSPS()->server);
            $this->Set("extraJS", '<script>toastShow("default", "0", "Server | Response", "'.$this->Get("statusResponse").'")</script>');
        break;
        case 'maze':
            $this->Set("statusResponse", $socket->startMaze()->server);
            $this->Set("extraJS", '<script>toastShow("default", "0", "Server | Response", "'.$this->Get("statusResponse").'")</script>');
        break;               
        case 'race':
            $this->Set("statusResponse", $socket->startRace()->server);
            $this->Set("extraJS", '<script>toastShow("default", "0", "Server | Response", "'.$this->Get("statusResponse").'")</script>');
        break;                
        case 'draw':
            $this->Set("statusResponse", $socket->startDrawing()->server);
            $this->Set("extraJS", '<script>toastShow("default", "0", "Server | Response", "'.$this->Get("statusResponse").'")</script>');
        break; 
        default: 
            $this->Set("statusResponse", "");
        break;
    }

?>
