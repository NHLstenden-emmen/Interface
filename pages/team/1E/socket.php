<?php
class Socket
{
        private $port;
        private $host;
        private $socketHost;
        private $error = [];

        function __construct($port, $host)
        {
                $this->port = $port;
                $this->host = $host;
        }

        function create() {
                if($this->socketHost = socket_create(AF_INET, SOCK_STREAM, 6))
                {
                        $this->connect();
                        return true;
                }
                else 
                {
                        $this->error .= "Could not create socket \n";
                        return false;
                }
        }

        function connect() 
        {
                if(!$this->socketClient = socket_connect($this->socketHost, $this->host, $this->port))  $this->error .= "Could not connect to socket \n";  
        }

        function sendToBot($bot, $command) 
        {
                if($response = $this->write(json_encode(["BOT" => $bot, "CMD" => $command]))) return $response->server;
        }

        function sendStartToBot($bot) 
        {
                if($response = $this->write(json_encode(["BOT" => $bot, "CMD" => "START"]))) return $response->server;
        }

        function sendStoptoBot($bot) 
        {
                if($response = $this->write(json_encode(["BOT" => $bot, "CMD" => "STOP"]))) return $response->server;
        }

        function sendToAll($command)
        {
                if($response = $this->write(json_encode(["BOT" => "ALL", "CMD" => $command]))) return $response->server;
        }

        function getBotList()
        {
                if($response = $this->write(json_encode(["CMD" => "BOTLIST"]))) return $response;
        }

        function startSPS()
        {
                if($response = $this->write(json_encode(["CMD" => "START_SPS"]))) return $response;
        }

        function startMaze()
        {
                if($response = $this->write(json_encode(["CMD" => "START_MAZE"]))) return $response;
        }

        function startDrawing()
        {
                if($response = $this->write(json_encode(["CMD" => "START_DRAW"]))) return $response;
        }

        function startRace()
        {
                if($response = $this->write(json_encode(["CMD" => "START_RACE"]))) return $response;
        }

        function generateSchemes()
        {
                if($response = $this->write(json_encode(["CMD" => "GENERATE_SCHEME"]))) return $response;
        }

        function customCommand($command)
        {
                if($response = $this->write(json_encode(["CMD" => $command]))) return $response;
        }

        function write($message)
        {
                if($this->create())
                {
                        if(socket_write($this->socketHost, $message . "\n", strlen($message) + 1))
                        {
                                if($response = socket_read($this->socketHost, 10000, PHP_NORMAL_READ))
                                {
                                        return json_decode($response);
                                }
                        }
                }

                return false;
        }

}

$socket = new Socket(49153, "194.171.181.139");
// if(isset($_POST['sendButton']))
// {
//         var_dump($socket->startMaze());
// }
// else if(isset($_POST['readyButton']))
// {
//         var_dump($socket->sendStartToBot($bot));
//         if($socket->sendStartToBot($bot) == "not_your_turn")
//         {
//                 var_dump($socket->sendStartToBot("BOT2"));  
//         }
// }
// else if(isset($_POST['generateSchemes']))
// {
//         var_dump($socket->generateSchemes());
// }
// else if(isset($_POST['stopButton']))
// {
//         var_dump($socket->sendStoptoBot($bot));
//         if($socket->sendStoptoBot($bot) == "not_your_turn")
//         {
//                 var_dump($socket->sendStoptoBot("BOT2"));  
//         }
// }




if(isset($_POST['sendCustom'])){
        $bot = "INF1E";
        $command = $_POST['custom'];
        var_dump($socket->sendToBot($bot, $command));
}

?>
<meta name="color-scheme" content="dark light">
<form method="POST">

        <!-- <input type="submit" name="sendButton" value="Maze start">
        <input type="submit" name="readyButton" value="Ready/Start">
        <input type="submit" name="stopButton" value="Stop">

        <input type="submit" name="generateSchemes" value="Speelschema genereren"> -->



        <input type="text" name="custom">
        <input type="submit" name="sendCustom">
</form>
