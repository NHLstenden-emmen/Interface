<?php 
    $this->Set("pageTitle", $this->Get("ADMIN_GEBRUIKERBEHEER")); 
    $this->Set("updateError", "");

    ob_start();

    if(file_exists(ModeratorPageHandlers.'handler.overview.php') && empty($page)) {
		require(ModeratorPageHandlers.'handler.overview.php');
	} else if(file_exists(ModeratorPageHandlers.'/handler.'.$page.'.php')) {
		require(ModeratorPageHandlers.'/handler.'.$page.'.php');
	}

    require(ModeratorPageView."camera.php");

    define('ModeratorPageViewContent', ob_get_clean());

?>