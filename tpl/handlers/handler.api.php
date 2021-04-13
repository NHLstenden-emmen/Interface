<?php 

if(isset($_GET['data'])){
    /** @var $filter */
    $type = $filter->sanatizeInput($_GET['data'], 'string');
	if($type == 'bannedWords'){

            $data = $DB->Select("SELECT Value FROM security WHERE Type = 'ban_word'");
        echo json_encode($data);
	} else if($type == 'bracket') {
        $bracket = @$DB->Select("SELECT * FROM livedata WHERE type = ? LIMIT 1", ["leaderboard"])[0];
        if(!empty($bracket)) {
        } else {
            $bracket = ["phase" => 0];
        }

        echo json_encode($bracket);

    }
}


// Stop loading page
die();	

