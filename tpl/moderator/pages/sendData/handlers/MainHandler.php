<?php 
    $this->Set("updateError", "");

    ob_start();

    if(file_exists(ModeratorPageHandlers.'handler.overview.php') && empty($page)) {
		require(ModeratorPageHandlers.'handler.overview.php');
	} else if(file_exists(ModeratorPageHandlers.'/handler.sendData.php')) {
		require(ModeratorPageHandlers.'/handler.sendData.php');
	}

    require(ModeratorPageView."sendData.php");

    define('ModeratorPageViewContent', ob_get_clean());

?>