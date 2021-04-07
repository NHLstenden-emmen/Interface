<?php 
    $this->Set("pageTitle", "Lapcounter"); 
    $this->Set("pageError", "");

    ob_start();


	require(ModeratorPageHandlers.'handler.overview.php');

    switch (ModeratorPageRoute) 
    {
        case "overview":
        default:
            require(ModeratorPageView."overview.php");
        break;
    }

    define('ModeratorPageViewContent', ob_get_clean());

?>