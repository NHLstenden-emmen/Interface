<?php 

if(isset($_GET['data'])){
    /** @var $filter */
    $type = $filter->sanatizeInput($_GET['data'], 'string');
	if($type == 'bannedWords'){

            $data = $DB->Select("SELECT Value FROM security WHERE Type = 'ban_word'");
        echo json_encode($data);
	} else if($type == 'bracket') {
        $bracket = @$DB->Select("SELECT * FROM livedata WHERE type = ? LIMIT 1", ["leaderboard"])[0]['json'];
        if(empty($bracket)) {
            $bracket = ["phase" => 0, "scoreboard" => []];
        }

        $overallBracket = json_encode($bracket);
        header("bracket:  {$overallBracket}");

        for ($i = 0; $i < 6; $i++) {
            @$bracket = json_encode($DB->Select("SELECT * FROM livedata WHERE type = ? LIMIT 1", ["leaderboard-{$i}"])[0]['json']);
            header("bracket-{$i}: {$bracket}");
        }
    } else if($type == 'playlist') {
        $playlist = json_encode(@$DB->Select("SELECT * FROM playlist ORDER BY RAND()"));
        header("playlist:  {$playlist}");
    }
}


// Stop loading page
die();	

