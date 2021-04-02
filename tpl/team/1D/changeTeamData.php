<?php
    // Wijzigen teamdata
    if(isset($_POST["veranderenTeam"]) && !empty($_POST["teamDescription"]))
    {
        $newDescription = $filter->sanatizeInput($_POST["teamDescription"], "string");
        $DB->Update("UPDATE teams SET TeamDesc = ? WHERE TeamID = ?", [$newDescription, "1D"]);
    }
    
    // Ophalen teamdata
    $teamData = $DB->Select("SELECT TeamDesc FROM teams WHERE TeamID = ?", ["1D"]);
    $description = $teamData[0]["TeamDesc"];
?>