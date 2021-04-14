<?php 

    if(isset($_POST['gameSubmit'])) {
        $statusResponse = $socket->startGame($filter->sanatizeInput($_POST['gameSubmit'], "string"))->server;
        header("response: " . json_encode($statusResponse));
    }

    if(isset($_POST['secondChance'])) {
        $statusResponse =  $core->cleanServerResponse($socket->retryMatch()->server);
        header("response: " . json_encode($statusResponse));
    }

    if(isset($_POST['disqualifyButton'])) {
        $this->Set("statusResponse", $core->cleanServerResponse($socket->generateSchemes()->server));
        $this->Set("extraJS", '<script>toastShow("default", "0", "Server", "'.$this->Get("statusResponse").'")</script>');
        $core->Refresh();
    }



?>
