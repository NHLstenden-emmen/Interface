<div class="selectMenu">
    <div class="row">
        <div class="col-md-4">
            <div class="neonBlock zoom" onclick="location.href='/moderator/games/control';">
                <span class="details">Controle</span><i class="fas fa-play"></i>
            </div>
        </div>
        <?php if($user->id == 2) { ?>
        <div class="col-md-4">
            <div class="neonBlock zoom" onclick="location.href='/moderator/games/restart';">
                <span class="details">Restart</span><i class="fas fa-redo"></i>
            </div>
        </div>
        <?php } ?>
    </div>
</div>