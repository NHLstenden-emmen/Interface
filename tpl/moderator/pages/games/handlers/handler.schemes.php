<?php 

    if(isset($_POST['submitButton'])) { 
        $this->Set("statusResponse", $socket->generateSchemes()->server);
        $this->Set("extraJS", '<script>toastShow("default", "0", "Server | Response", "'.$this->Get("statusResponse").'")</script>');
    }
?>