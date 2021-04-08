<h4>Send data</h4>
<form method="POST">
	<input type="text" name="data" placeholder="Byte" required>
	<select name="bot" id="bot">
	
	  <option value="Wall-D">Wall-D</option>
	  <option value="BumbleBert">BumbleBert</option>
	  <option value="ROBot Jetten">ROBot Jetten</option>
	  <option value="BrokkoBot">BrokkoBot</option>
	  <option value="Dimitri">Dimitri</option>
	</select>
	<button type="submit" class="button">Versturen</button>
</form>
<br>
<?php
	foreach($botList as $bots){
		echo "Available bots: " . $bots;
	}
?>
<br><br><br>
<table>
    <thead>
        <tr>
            <th>Byte</th>
            <th>Beschrijving</th>
        </tr>
    </thead>
		<!-- Start / stop -->
		<tr>
			<td>0</td>
            <td>Standby / Stop</td>
		</tr>
		<tr>
			<td>1</td>
            <td>[Start] Race</td>
		</tr>
		<tr>
			<td>2</td>
            <td>[Start] Tekening</td>
		</tr>
		<tr>
			<td>3</td>
            <td>[Start] Doolhof</td>
		</tr>
		<tr>
			<td>4</td>
            <td>[Start] Steen, papier, schaar</td>
		</tr>
		<tr>
			<td>-</td>
			<td>-</td>
		</tr>
		
		<!-- Finish -->
		<tr>
			<td>11</td>
            <td>[Finish] Race</td>
		</tr>
		<tr>
			<td>12</td>
            <td>[Finish] Tekening</td>
		</tr>
		<tr>
			<td>13</td>
            <td>[Finish] Doolhof</td>
		</tr>
		<tr>
			<td>-</td>
			<td>-</td>
		</tr>
		<!-- SPS -->
		<tr>
			<td>5</td>
            <td>[SPS] Steen</td>
		</tr>
		<tr>
			<td>6</td>
            <td>[SPS] Papier</td>
		</tr>
		<tr>
			<td>7</td>
            <td>[SPS] Schaar</td>
		</tr>
		<tr>
			<td>8</td>
            <td>[SPS] Win</td>
		</tr>
		<tr>
			<td>9</td>
            <td>[SPS] Lose</td>
		</tr>
		<tr>
			<td>h</td>
            <td>[SPS] Draw</td>
		</tr>
    <tbody>
    </tbody>
</table>