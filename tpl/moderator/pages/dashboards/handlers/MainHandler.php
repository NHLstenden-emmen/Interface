<?php 
    $this->Set("updateError", "");

    ob_start();

    if(file_exists(ModeratorPageHandlers.'handler.overview.php') && empty($page)) {
		require(ModeratorPageHandlers.'handler.overview.php');
	} else if(file_exists(ModeratorPageHandlers.'/handler.dashboards.php')) {
		require(ModeratorPageHandlers.'/handler.dashboards.php');
	}

    require(ModeratorPageView."dashboards.php");

    define('ModeratorPageViewContent', ob_get_clean());

?>