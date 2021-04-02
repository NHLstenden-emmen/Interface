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

        function sendPoll($question, $length, $options)
        {
                if($response = $this->write(json_encode(["CMD" => "SEND_POLL", "LENGTH" => $length, "OPTIONS" => $options, "QUESTION" => $question]))) return $response;
        }
        
        function changeScene($scene)
        {
                if($response = $this->write(json_encode(["CMD" => "CHANGE_SCENE", "SCENE" => $scene]))) return $response;
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

$socket = new Socket(49153, "77.162.30.112");

if(isset($_POST['sendButton']))
{
        var_dump($socket->startSPS());
}
else if(isset($_POST['readyButton']))
{
        $socket->sendStartToBot("BrokkoBot");
        $socket->sendStartToBot("Lennart");
        $socket->sendStartToBot("Wall-D");
        $socket->sendStartToBot("RoBOT Jetten");
        $socket->sendStartToBot("BumbleBert");
}
else if(isset($_POST['generateSchemes']))
{
        var_dump($socket->generateSchemes());
}
else if(isset($_POST['stopButton']))
{
        if($socket->sendStoptoBot($bot) == "not_your_turn")
        {
                var_dump($socket->sendStoptoBot("BOT2"));  
        }
}
else if(isset($_POST['sendPoll']))
{
        if(isset($_POST['optionsInput']))
        {
                if(isset($_POST['pollLength']))
                {       if(isset($_POST['questionInput']))
                        {
                                $length = $_POST['pollLength'];
                                $options = json_encode(explode(",", $_POST['optionsInput']));
                                $question = $_POST['questionInput'];
                                var_dump($socket->sendPoll($question, $length, $options));
                       } 
                }
        }
}
else if(isset($_POST['sceneSubmit']))
{
        if(isset($_POST['sceneInput']))
        {
                $scene = $_POST['sceneInput'];

                var_dump($socket->changeScene($scene));
        }
}



?>


<form method="POST">
        <input type="submit" name="sendButton" value="Maze start">
        <input type="submit" name="readyButton" value="Ready/Start">
        <input type="submit" name="stopButton" value="Stop">

        <input type="submit" name="generateSchemes" value="Speelschema genereren">

        <hr />
        <input type="text" name="questionInput" placeholder="Vraag">

        <input type="text" name="optionsInput" placeholder="Keuzes (scheidt met een komma)">
        <input type="number" name="pollLength" placeholder="Polllengte">
        <input type="submit" name="sendPoll" value="Send poll">

        <hr />
        <select name="sceneInput">
                <option value="stoplicht">Stoplicht</option>
                <option value="stop">Confetti stop</option>
                <option value="confetti">Confetti</option>

        </select>
        <input type="submit" name="sceneSubmit" value="Send scene">


</form>
