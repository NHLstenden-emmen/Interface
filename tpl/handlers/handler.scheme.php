<?php 

$this->Set("extraCSS", '<link rel="stylesheet" href="'.$this->Get("assetsFolder").'/css/page/scheme.css">');
$speelSchema = "";

foreach ($DB->Select("SELECT speelschema.*, resultaat.score FROM speelschema 
                    LEFT JOIN resultaat ON speelschema.robot_1 = resultaat.robot 
                    ORDER BY speelschema.match_id") 
                    as $key => $value) {
   $speelSchema .= '<tr class="gameRow" id="'.$value['match_id'].'">
                        <td>'.strtolower($value['spel_naam']).'</td>';


                        $speelSchema .= '<td>'. str_replace("[", "", str_replace("]", "",$value['robot_1'])).'</td>';
                       
                        $score = $DB->Select("SELECT score FROM resultaat WHERE robot = ? AND game = ?", [$value['robot_1'], $value['spel_naam']]);

                        if(!empty($value['score']) && !empty($score)) {
                            $speelSchema .= '<td>'.$score[0]['score'].'</td>';
                        } else {
                            $speelSchema .= '<td></td>';
                        }

        $speelSchema .= "</tr>";
}

$this->Set("speelSchema", $speelSchema);

?>