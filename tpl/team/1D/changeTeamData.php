<?php
    // Wijzigen teamdata
    if((isset($_POST["changeTeamNL"]) || isset($_POST["changeTeamEN"])) && !empty($_POST["teamDescription"]))
    {
        $newDescription = $filter->sanatizeInput($_POST["teamDescription"], "string");
        if(isset($_POST["changeTeamNL"]))
        {
            $DB->Update("UPDATE teams SET TeamDesc_NL = ? WHERE TeamID = '1D'", [$newDescription]);
        }
        else
        {
            $DB->Update("UPDATE teams SET TeamDesc_EN = ? WHERE TeamID = '1D'", [$newDescription]);
        }
    }
    
    // Ophalen teamdata
    $teamData = $DB->Select("SELECT TeamDesc_NL, TeamDesc_EN FROM teams WHERE TeamID = '1D'");
    $descriptionNl = $teamData[0]["TeamDesc_NL"];
    $descriptionEn = $teamData[0]["TeamDesc_EN"];
?>