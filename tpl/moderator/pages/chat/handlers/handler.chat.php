<?php 
    
	$this->Set("pageTitle", "Chat"); 
	
	$bannedWords = "";
	$data = $DB->Select("SELECT * FROM security WHERE Type = 'ban_word'");
	foreach($data as $key => $value){
		$bannedWords.= '<tr>
							<td data-label="word">'.$value['Value'].'</td>
						</tr>';
	}

	$this->Set("wordList", $bannedWords); 
	
	if(isset($_POST['ban_word'])){
		$DB->Insert("INSERT INTO security (Type, Value) VALUES ('ban_word', ?)", [$_POST['ban_word']]);
	}
	
?>