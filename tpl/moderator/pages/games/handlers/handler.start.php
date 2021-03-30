<?php 
    if(isset($_POST['gameStart']))
    {
        if(isset($_POST['gameSelect']))
        {
            $gameSelect = $_POST['gameSelect'];
            switch ($gameSelect) 
            {
                case 'SPS':
                    $this->Set("statusResponse", $socket->startSPS());
                break;
                case 'maze':
                    $this->Set("statusResponse", $socket->startMaze());
                break;               
                case 'race':
                    $this->Set("statusResponse", $socket->startRace());
                break;                
                case 'draw':
                    $this->Set("statusResponse", $socket->startDrawing());
                break; 
            }
        }
    } else {
        $this->Set("statusResponse", "");
    }
?>