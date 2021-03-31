<?php 
$teamData = "";
foreach ($DB->Select("SELECT * FROM teams") as $key => $value) {
   $teamData.= '<tr>
                    <td data-label="Team">'.$value['TeamID'].'</td>
                    <td data-label="Robot Naam">'.$value['RobotName'].'</td>
                    <td data-label="Dashboard"> <a href="/dashboard/'.$value['TeamID'].'">Ga naar het dashboard</a> </td>
                    </td>
                 </tr>';
}

$this->Set("teamData", $teamData);

?>
<table>
	<thead>
		<tr>
			<th scope="col">Team</th>
			<th scope="col">Robot Naam</th>
			<th scope="col">Dashboard</th>
		</tr>
	</thead>
	<tbody>
		{teamData}
	</tbody>
</table>