<div class="neonBlock"  data-aos="zoom-in-right">
    <h1 class="title">Overlays</h1>
    <br>
    <table>
        <thead>
            <tr>
                <th>Scene</th>
                <th>Actie</th>
            </tr>
        </thead>
        <tbody>
        <tr>
            <td>
                Stop
            </td>
            <td class="link" data-link="/moderator/camera/change/stop">
                <i class="fas fa-stop"></i>
            </td>
        </tr>
        <tr>
            <td>
                Confetti
            </td>
            <td class="link" data-link="/moderator/camera/change/conffetti">
                <i class="fas fa-play"></i>
            </td>
        </tr>
        </tbody>
    </table>
    <br />

    <h5 class="title">Countdown <i class="fas fa-music"></i></h5>
    <form method="POST">
        <button type="submit" name="prevTrack"><i class="fas fa-backward"></i></button>
    </form>
    <form method="POST">
        <button type="submit" name="nextTrack"><i class="fas fa-forward"></i></button>
    </form>
    <form method="POST">
        <label>Custom URL:<br /><input type="url" name="urlInput" placeholder="http://xxx/xx.mp3" required></label>
        <button type="submit" name="urlSubmit">Add</button>
    </form>

</div>        