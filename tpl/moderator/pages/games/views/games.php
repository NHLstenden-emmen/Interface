<div class="container">
    <div class="selectMenu">
        <div class="row">
            <div class="col-md-4">
                <div class="neonBlock zoom" onclick="location.href='/moderator/games/schemes';">
                    <i class="far fa-calendar-alt"></i>
                </div>
            </div>
            <div class="col-md-4">
                <div class="neonBlock zoom" onclick="location.href='/moderator/camera';">
                    <i class="fas fa-video"></i>
                </div>
            </div>
            <div class="col-md-4">
                <div class="neonBlock zoom" onclick="location.href='/moderator/games';">
                    <i class="fas fa-gamepad"></i>
                </div>
            </div>
            <?php 
                if($user->id == 2) {
                echo '<div class="col-md-4">
                        <div class="neonBlock zoom link" data-link="/moderator/dashboards">
                            <i class="fas fa-tachometer-alt"></i>
                        </div>
                    </div>';
                }
            ?>

        </div>
    </div>
</div>