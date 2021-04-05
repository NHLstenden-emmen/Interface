<?php 

if(isset($_GET['data'])){
	$type = $filter->sanatizeInput($_GET['data'], 'string');
	if($type == 'bannedWords'){
		$data = $DB->Select("SELECT Value FROM security WHERE Type = 'ban_word'");
		$count = 0;
		echo "[";
		foreach($data as $key => $value){
			$word = "\"".trim($value['Value'])."\"";
			echo $word . ",\n";
		}
		echo "\"BANNEDWORDS\"";
		echo "]";
	}
}	

// Stop loading page
die();	

?>