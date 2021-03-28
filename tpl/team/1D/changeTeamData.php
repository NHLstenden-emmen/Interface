<?php    
    // Zorgen voor een connectie en selecteren van database
    if($conn = mysqli_connect("localhost", "root", "")) {
        if(mysqli_select_db($conn, "battlebots")) {
            // Updaten van wijzigingen
            if(isset($_POST["veranderenTeam"])) {
                // Ophalen team
                $team = filter_input(INPUT_POST, "team", FILTER_SANITIZE_SPECIAL_CHARS);
                
                if(!empty($_POST["teamDescription"])) {
                    // Ophalen input
                    $teamDescription = filter_input(INPUT_POST, "teamDescription", FILTER_SANITIZE_SPECIAL_CHARS);

                    // Uitvoeren van query
                    $sql = "UPDATE team SET teamBeschrijving = ? WHERE team = ?";
                    if($stmt = mysqli_prepare($conn, $sql)) {
                        mysqli_stmt_bind_param($stmt, "ss", $teamDescription, $team);
                        if(mysqli_stmt_execute($stmt)) {
                            mysqli_stmt_close($stmt);
                        }
                    }
                } else {
                    echo "Het veld voor de beschrijving was leeg.";
                }
            }
                
            // Uitvoeren van query
            $sql = "SELECT teamBeschrijving FROM team WHERE team = D";
            if($stmt = mysqli_prepare($conn, $sql)) {
                mysqli_stmt_bind_param($stmt, "s", $team);
                if(mysqli_stmt_execute($stmt)) {
                    mysqli_stmt_bind_result($stmt, $description);
                    mysqli_stmt_store_result($stmt); 
                    // Kijken of er resultaat is
                    if(mysqli_stmt_num_rows($stmt) != 0) {
                        // Weergeven van wijzigingsveld
                        mysqli_stmt_fetch($stmt);
                        echo "<div class='edit'>";
                        echo "<h3>Team ".$team."</h3>";
                        echo "<form id='changeTeamData' action='moderator.php' method='post'>";
                        echo "<textarea name='teamDescription'>".$description."</textarea>";
                        echo "<input type='hidden' name='team' value='".$team."'>";
                        echo "<button type='submit' name='veranderenTeam' value='wijzig' class='button'>Wijzig</button>";
                        echo "</form>";
                        echo "</div>";
                    }
                    mysqli_stmt_close($stmt);
                }
            }
        }
        // Closen van de connectie
        mysqli_close($conn);
    }
?>