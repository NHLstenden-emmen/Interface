<?php
class ServerConnection
{
        private $port;
        private $host;
        private $socketHost;

        function __construct($port, $host) {
            $this->port = $port;
            $this->host = $host;
        }

        function create(): bool
        {
                if($this->socketHost = socket_create(AF_INET, SOCK_STREAM, 6)) {
                    if (!socket_set_option($this->socketHost , SOL_SOCKET, SO_REUSEADDR, 1)) {
                        echo 'Unable to set option on socket: '. socket_strerror(socket_last_error()) . PHP_EOL;
                    }
                        $this->connect();
                        return true;
                } else return false;
        }

        function connect(): bool
        {
                if(socket_connect($this->socketHost, $this->host, $this->port)) return true;
                else return false;
        }

        function sendToBot($bot, $command) {
                if($response = $this->write(json_encode(["BOT" => $bot, "CMD" => $command]))) return $response->server;
                else return false;
        }

        function sendStartToBot($bot) {
                if($response = $this->write(json_encode(["BOT" => $bot, "CMD" => "START"]))) return $response->server;
                else return false;
        }

        function sendStoptoBot($bot) {
                if($response = $this->write(json_encode(["BOT" => $bot, "CMD" => "STOP"]))) return $response->server;
                else return false;
        }

        function sendToAll($command) {
                if($response = $this->write(json_encode(["BOT" => "ALL", "CMD" => $command]))) return $response->server;
                else return false;
        }

        function getBotList() {
                if($response = $this->write(json_encode(["CMD" => "BOTLIST"]))) return $response;
                else return false;
        }

        function startGame($game) {
            if($response = $this->write(json_encode(["CMD" => "START_GAME", "GAME" => $game]))) return $response;
            else return false;
        }

        function startSPS() {
                if($response = $this->write(json_encode(["CMD" => "START_SPS"]))) return $response;
                else return false;
        }

        function startMaze() {
                if($response = $this->write(json_encode(["CMD" => "START_MAZE"]))) return $response;
                else return false;
        }

        function startDrawing() {
                if($response = $this->write(json_encode(["CMD" => "START_DRAW"]))) return $response;
                else return false;
        }

        function startRace() {
                if($response = $this->write(json_encode(["CMD" => "START_RACE"]))) return $response;
                else return false;
        }

        function retryMatch() {
                if($response = $this->write(json_encode(["CMD" => "REDO", "BOT" => "CURRENT"]))) return $response;
                else return false;
        }

        function customCommand($command) {
                if($response = $this->write(json_encode(["CMD" => $command]))) return $response;
                else return false;
        }

        function musicControl($action) {
                if($response = $this->write(json_encode(["CMD" => "MUSIC_CONTROL", "ACTION" => $action]))) return $response;
                else return false;
        }

        function customMusic($url) {
                if($response = $this->write(json_encode(["CMD" => "CUSTOM_MUSIC", "URL" => $url]))) return $response;
                else return false;
        }

        function regularPoll($question, $options, $length) {
            $options = explode($options, ",");
            if(!empty($options)) {
                if($response = $this->write(json_encode(["CMD" => "CUSTOM_POLL", "QUESTION" => $question, "OPTIONS" => json_encode($options), "LENGTH" => $length]))) return $response;
            }

            return false;
        }

        function write($message) {
                if($this->create()) {
                    if(socket_write($this->socketHost, $message . "\n", strlen($message) + 1)) {
                        if($response = socket_read($this->socketHost, 10000, PHP_NORMAL_READ)) return json_decode($response);
                    }
                }

                return false;
        }


}

?>