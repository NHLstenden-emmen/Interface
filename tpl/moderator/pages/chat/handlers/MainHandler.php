<?php 
    $this->Set("updateError", "");

    ob_start();

    if(file_exists(ModeratorPageHandlers.'handler.overview.php') && empty($page)) {
		require(ModeratorPageHandlers.'handler.overview.php');
	} else if(file_exists(ModeratorPageHandlers.'/handler.chat.php')) {
		require(ModeratorPageHandlers.'/handler.chat.php');
	}

    require(ModeratorPageView."chat.php");

    define('ModeratorPageViewContent', ob_get_clean());

?>