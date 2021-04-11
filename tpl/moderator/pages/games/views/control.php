<div class="neonBlock ">
        <?php if($user->level == 2) { ?>
        <form method="POST">
            <button type="submit" name="disqualifyButton" style="color: red;"><i style="color: red;" class="fas fa-skull-crossbones"></i> Diskwalificeer</button>
        </form>
        <form method="POST">
            <button type="submit" name="secondChance" style="color: red;"><i style="color: red;" class="fas fa-retry"></i> Second Chance</button>
        </form>
        <?php } ?>
        <form method="post">
            <table>
                <thead>
                    <tr>
                        <th>Naam</th>
                        <th><i class="fas fa-play"></i></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>SPS</td>
                        <td>
                            <i class="fas fa-play" onclick="startGame('SPS')"></i>
                        </td>
                    </tr>
                    <tr>
                        <td>Maze</td>
                        <td>
                           <i class="fas fa-play" onclick="startGame('maze')"></i>
                        </td>
                    </tr>
                    <tr>
                        <td>Race</td>
                        <td>
                            <i class="fas fa-play" onclick="startGame('race')"></i>
                        </td>
                    </tr>
                    <tr>
                        <td>Draw</td>
                        <td>
                           <i class="fas fa-play" onclick="startGame('draw')"></i>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
</div>
<script>

    const startGame = (game) => {
        const Http = new XMLHttpRequest();
        Http.open("POST", window.location.href);
        Http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        Http.send("gameSubmit="+game);


        Http.onreadystatechange = () => {
            console.log(Http.getResponseHeader("response"));
        }
    }

</script>