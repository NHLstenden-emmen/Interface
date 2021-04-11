<?php 
    $gebuikerResult = $DB->Select("SELECT * FROM users WHERE UserID != ? ORDER BY level ASC ", [2]);
	$securityResult = $DB->Select("SELECT * FROM security WHERE Type = 'ban_ip'");
    $this->Set("pageTitle", $this->Get("GEBRUIKERS"));

    $gebuikerResultView = "";
    foreach($gebuikerResult as $key => $value)  {
        $gebuikerResultView .= "<tr>";
		if(!empty($value['verificationKey'])) {
			$gebuikerResultView .= "<td data-label='level' class='link' data-link='/moderator/users/activate/{$value["user_id"]}'><i class='fas fa-check'></i></td>";
		} else $gebuikerResultView .= "<td data-label='level'></td>";
 
			$gebuikerResultView .= "
                <td data-label='level'>{$user->userLevel($value['UserID'])}</td>
                <td data-label='naam'>".$value['firstName']." ".$value['lastName']. "</td>
                <td data-label='email'>".$value['Email']."</td>
                <td data-label='aanpassen' class='link' data-link='/moderator/users/edit/".$value['UserID']."'>
                    <i class='far fa-edit'></i>
                </td>";
            if(empty($value['deleted_at'])) $gebuikerResultView .= "<td data-label='ban' class='link' data-link='/moderator/users/ban/".$value['UserID']."'>Ban <i class='far fa-caret-square-right'></i></td>";
            else $gebuikerResultView .= "<td data-label='un-ban' class='link' data-link='/moderator/users/unban/".$value['UserID']."'>Unban <i class='far fa-caret-square-right' aria-hidden='true'></i></td>";
			
			if(!empty($value['lastIp'])){
				$isBanned = false;
				foreach($securityResult as $key => $valueSecurity){
					if ($valueSecurity['Value'] == $value['lastIp']){
						$isBanned = true;
						$gebuikerResultView .= "<td data-label='banIp'>".$valueSecurity['Value']."  is banned</td>";
					}
				}
			}			
			if(!empty($value['lastIp']) && $isBanned == false) $gebuikerResultView .= "<td data-label='banIp' class='link' data-link='/moderator/users/ban/".$value['UserID']."?var=ip'>".$value['lastIp']." <i class='far fa-caret-square-right'></i></td>";
            
			
			$gebuikerResultView .= "</tr>";
			
    }
    
    $this->Set("usersOverview", $gebuikerResultView);
    $this->Set("extraCSS", $this->Get("extraCSS").'<link rel="stylesheet" href="'.$this->Get("assetsFolderMOD").'/overview.css">');

?>