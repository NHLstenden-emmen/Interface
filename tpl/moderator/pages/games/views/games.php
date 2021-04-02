<div class="container">
    <div class="selectMenu">
        <div class="row">
            <div class="col-md-4">
                <div class="neonBlock zoom" onclick="location.href='/moderator/games/schemes';">
                    <i class="far fa-calendar-alt"></i>
                </div>
            </div>
            <div class="col-md-4">
                <div class="neonBlock zoom" onclick="location.href='/moderator/games/start';">
                    <i class="fas fa-play"></i>
                </div>
            </div>
            <div class="col-md-4">
                <div class="neonBlock zoom" onclick="location.href='/moderator/games/stop';">
                    <i class="fas fa-stop"></i>
                </div>
            </div>  
            <?php if($user->id == 2) { ?>
            <div class="col-md-4">
                <div class="neonBlock zoom" onclick="location.href='/moderator/games/restart';">
                    <i class="fas fa-redo"></i>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>