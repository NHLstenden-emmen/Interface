<?php 

if(isset($_GET['data'])){
    /** @var $filter */
    $type = $filter->sanatizeInput($_GET['data'], 'string');
	if($type == 'bannedWords'){

            $data = $DB->Select("SELECT Value FROM security WHERE Type = 'ban_word'");
        echo json_encode($data);
	}
}	

// Stop loading page
die();	

