<?php
    // Bepalen van kleur op basis van de kansen
    function determinePossibilityGroup($value) {
        if($value >= 0) {
            if($value == 0) {
                return "impossible";
            } elseif($value < 10) {
                return "veryHard";
            } elseif($value < 15) {
                return "hard";
            } elseif($value < 25) {
                return "possible";
            } elseif($value < 40) {
                return "goodChance";
            } elseif($value < 100) {
                return "veryGoodChance";
            } elseif($value == 100) {
                return "guaranteed";
            }
        }
    }

    // Array die frequenties van de posities opslaat
    $possiblePositions = array(0, 0, 0, 0, 0);

    // Varieer in het aantal teams met een 0-score
    for($aantalNul = 0; $aantalNul <= 5; $aantalNul++) {
        // Array met uit te delen punten
        $initialPossiblePoints = array(10, 8, 6, 4, 2);
        $nullen = array_fill(0, $aantalNul, 0);
        array_splice($initialPossiblePoints, (5 - $aantalNul), $aantalNul, $nullen);
        // Verdeel de punten (alle mogelijke scenario's)
        for($i = 0; $i < 5; $i++) {
            $a = $initialA;
            $possiblePoints = $initialPossiblePoints;
            $a += $possiblePoints[$i];
            array_splice($possiblePoints, $i, 1);
            $copyA = $possiblePoints;
            
            for($j = 0; $j < 4; $j++) {
                $b = $initialB;
                $possiblePoints = $copyA;
                $b += $possiblePoints[$j];
                array_splice($possiblePoints, $j, 1);
                $copyB = $possiblePoints;
                
                for($k = 0; $k < 3; $k++) {
                    $c = $initialC;
                    $possiblePoints = $copyB;
                    $c += $possiblePoints[$k];
                    array_splice($possiblePoints, $k, 1);
                    $copyC = $possiblePoints;
                    
                    for($l = 0; $l < 2; $l++) {
                        $d = $initialD;
                        $e = $initialE;
                        $possiblePoints = $copyC;
                        $d += $possiblePoints[$l];
                        array_splice($possiblePoints, $l, 1);
                        $e += $possiblePoints[0];

                        // Bepaal plek van team D
                        $plek = 4;
                        if($d >= $a) {
                            $plek--;
                        }
                        if($d >= $b) {
                            $plek--;
                        }
                        if($d >= $c) {
                            $plek--;
                        }
                        if($d >= $e) {
                            $plek--;
                        }

                        // Verhoog frequentie van de plek van team D bij dit scenario
                        $possiblePositions[$plek]++;
                    }
                }
            }
        }
    }

    // Bepaal kansen in percentages
    $positionChances = array();
    $total = array_sum($possiblePositions);
    foreach($possiblePositions as $possiblePosition) {
        $positionChances[] = $possiblePosition / $total;
    }

    // Geef de kansen weer
    echo "<div><div>";
    for($p = 1; $p <= 5; $p++) {
        echo "<p>Positie ".$p."</p>";
    }
    echo "</div>";
    echo "<div class='chancePercentage'>";
    foreach($positionChances as $chance) {
        echo "<p class='".determinePossibilityGroup($chance * 100)."'>".round(($chance * 100), 2)."%";
    }
    echo "</div></div>";
?>