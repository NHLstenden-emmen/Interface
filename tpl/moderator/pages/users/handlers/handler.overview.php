<?php 
    $gebuikerResult = $DB->Select("SELECT * FROM users WHERE user_id != ? ORDER BY level ASC ", [2]);

    $gebuikerResultView = "";
    foreach($gebuikerResult as $key => $value)  {
        $gebuikerResultView .= "<tr>
                <td>{$user->userLevel($value['user_id'])}</td>
                <td>".$value['voornaam']." ".$value['achternaam']. "</td>
                <td>".$value['email']."</td>
                <td class='link' data-link='/moderator/users/edit/".$value['user_id']."'>
                    <i class='far fa-edit'></i>
                </td>";
            if(empty($value['deleted_at'])) $gebuikerResultView .= "<td class='link' data-link='/moderator/users/ban/".$value['user_id']."'>Ban <i class='far fa-caret-square-right'></i></td>";
            else $gebuikerResultView .= "<td class='link' data-link='/moderator/users/unban/".$value['user_id']."'>Unban <i class='far fa-caret-square-right' aria-hidden='true'></i></td>"; 
            $gebuikerResultView .= "</tr>";
    }
    
    $this->Set("usersOverview", $gebuikerResultView);

?>