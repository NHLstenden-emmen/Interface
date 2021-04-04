<div class="neonBlock ">
        <form method="POST">
            <button type="submit" name="schemesButton"><i class="far fa-calendar"></i> Maak schema</button>
        </form>
        <?php if($user->level == 2 || $user->level == 5) { ?>
        <form method="POST">
            <button type="submit" name="disqualyButton" style="color: red;"><i style="color: red;" class="fas fa-skull-crossbones"></i> Diskwalificeer</button>
        </form>
        <?php } ?>
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
                    <td class="link" data-link="/moderator/games/control/SPS">
                        <i class="fas fa-play"></i>
                    </td>
                </tr>
                <tr>
                    <td>Maze</td>
                    <td class="link" data-link="/moderator/games/control/maze">
                        <i class="fas fa-play"></i>
                    </td>
                </tr>
                <tr>
                    <td>Race</td>
                    <td class="link" data-link="/moderator/games/control/race">
                        <i class="fas fa-play"></i>
                    </td>
                </tr>
                <tr>
                    <td>Draw</td>
                    <td class="link" data-link="/moderator/games/control/draw">
                        <i class="fas fa-play"></i>
                    </td>
                </tr>
            </tbody>
        </table>
</div>