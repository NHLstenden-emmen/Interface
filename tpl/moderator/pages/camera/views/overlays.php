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
        <style>
            form {
                margin: 10px;
            }
        </style>
    <h5 class="title">Countdown <i class="fas fa-music"></i></h5>
    <div class="row">
    <form method="POST">
        <button type="submit" name="prevTrack"><i class="fas fa-backward"></i></button>
    </form>
    <form method="POST">
        <button type="submit" name="nextTrack"><i class="fas fa-forward"></i></button>
    </form></div>
    <form method="POST" style="margin: 0;">
    <input type="url" name="urlInput" placeholder="http://xxx/xx.mp3" required>
        <br /><button type="submit" name="urlSubmit">Add</button>
    </form>
</div>