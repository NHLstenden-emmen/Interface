<?php
    $this->Set("updateError", "");

    if(ModeratorPageAction !== null) {
       @$gebruikerResult = $user->getData(ModeratorPageAction);
    }

    $teamResult = $DB->Select("SELECT * FROM teams");

    $rankResult = '<select name="levelSelect" id="levelSelect">';
    for( $i=0; $i <= 2; $i++)
    {
        $rankResult .= '<option ' . (ModeratorPageAction !== null ? @$gebruikerResult['level'] == $i ? 'selected="selected"' : "" : ""). ' value="'.$i.'">' . $user->userLevelName($i) . '</option>';
    }
    $rankResult .= '</select></br ><br />';

    $teamResultView =  '<select name="teamSelect" id="teamSelect">';
    foreach ($teamResult as $key => $value)
    {
        $teamResultView .= '<option ' . (ModeratorPageAction !== null ? @$gebruikerResult['team'] == $value['TeamID'] ? 'selected="selected"' : "" : "").'>'  . $value['TeamID'] . '</option>';
    }
    $teamResultView .= '</select></br ><br />';

    $this->Set("rankResult", $rankResult);
    $this->Set("teamResult", $teamResultView);

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
		case 'activate':
        case 'ban':
        case 'unban':
        case 'edit':
        case 'add':
            require(ModeratorPageView.ModeratorPageRoute.".php");
        break;
    }

    define('ModeratorPageViewContent', ob_get_clean());

?>