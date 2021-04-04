<?php 

    switch (ModeratorPageAction) 
    {
        case 'SPS':
            $this->Set("statusResponse", $core->cleanServerResponse($socket->startSPS()->server));
            $this->Set("extraJS", '<script>toastShow("default", "0", "Server", "'.$this->Get("statusResponse").'")</script>');
            $core->Refresh();
        break;
        case 'maze':
            $this->Set("statusResponse", $core->cleanServerResponse($socket->startMaze()->server));
            $this->Set("extraJS", '<script>toastShow("default", "0", "Server", "'.$this->Get("statusResponse").'")</script>');
            $core->Refresh();
        break;               
        case 'race':
            $this->Set("statusResponse", $core->cleanServerResponse($socket->startRace()->server));
            $this->Set("extraJS", '<script>toastShow("default", "0", "Server", "'.$this->Get("statusResponse").'")</script>');
            $core->Refresh();
        break;                
        case 'draw':
            $this->Set("statusResponse", $core->cleanServerResponse($socket->startDrawing()->server));
            $this->Set("extraJS", '<script>toastShow("default", "0", "Server", "'.$this->Get("statusResponse").'")</script>');
            $core->Refresh();
        break; 
        default: 
            $this->Set("statusResponse", "");
        break;
    }

    if(isset($_POST['schemesButton'])) { 
        $this->Set("statusResponse", $core->cleanServerResponse($socket->generateSchemes()->server));
        $this->Set("extraJS", '<script>toastShow("default", "0", "Server", "'.$this->Get("statusResponse").'")</script>');
    }

?>
