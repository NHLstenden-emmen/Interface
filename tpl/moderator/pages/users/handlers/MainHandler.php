<?php 
    $this->Set("pageTitle", $this->Get("ADMIN_GEBRUIKERBEHEER")); 
    $this->Set("updateError", "");

    ob_start();

    if(file_exists(ModeratorPageHandlers.'handler.overview.php') && empty($page)) {
		require(ModeratorPageHandlers.'handler.overview.php');
	} else if(file_exists(ModeratorPageHandlers.'/handler.'.$page.'.php')) {
		require(ModeratorPageHandlers.'/handler.'.$page.'.php');
	}

    switch (ModeratorPageRoute) 
    {
        case "overview":
        default:
            require(ModeratorPageView."overview.php");
        break;
        case 'ban':
        case 'unban':
        case 'edit':
            require(ModeratorPageView.ModeratorPageRoute.".php");
        break;
    }

    define('ModeratorPageViewContent', ob_get_clean());

?>