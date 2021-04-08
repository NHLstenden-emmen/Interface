<?php 
    
	$this->Set("pageTitle", "Send Data"); 
	
	if(isset($_POST['data']) && isset($_POST['bot'])){
		$byte = strtolower($_POST['data']);
		$bot = $_POST['bot'];
		print_r($socket->sendToBot($bot, $byte));
	}
	
	$botList = $socket->getBotList();
	print_r($botList);
?>