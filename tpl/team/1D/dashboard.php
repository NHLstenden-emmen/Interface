<link href="https://vjs.zencdn.net/7.8.4/video-js.css" rel="stylesheet">
<link rel="stylesheet" href="/tpl/assets/css/team/1D/dashboardResponsive.css">

<div class="containerD">
    <div class="header">
        <div class="logoAndTeam neonBlock">
            <h2>Dashboard<span>Team D</span></h2>
        </div>
    </div>
    <div class="live neonBlock">
        <video id="my-video" class="video-js" controls preload="auto" width="100%" height="100%" data-setup="{}">
            <source id="streamSource" src="/streams/dome.m3u8" type="application/vnd.apple.mpegurl" />
            <p class="vjs-no-js">
                Om deze video te kijken, moet JavaScript aan staan. Wellicht biedt de huidige browser ook geen 
                <a href="https://videojs.com/html5-video-support/" target="_blank">ondersteuning voor HTML5 video</a>
            </p>
        </video> 
    </div>
    <div id='test' class="teamData neonBlock">
        <?php include ("changeTeamData.php"); ?>
        <h3>Beschrijving</h3>
        <form method="post">
            <textarea name="teamDescription"><?php echo $description; ?></textarea>
            <button type="submit" name="veranderenTeam" value="wijzig" class="button">Wijzig</button>
        </form>
    </div>
    <div class="controls neonBlock">
        <div id="gameMenu" class="selectGame">
            <img id="openLog" onclick="menuVisible();refresh();" src="{assetsFolder}/images/team/1D/menu.png" alt="menu"> 
            <div class="games" id="visible" style="display: none">
                <div class="logTeamD">
                    <?php include ("control.php"); ?>
                </div>
            </div>
        </div>
        <div class="startStop">
            <meta name="color-scheme" content="dark light">
            <form method="post" action="">
                <button type="submit" name="start" value="start" id="play" class="start" onclick="play()">Start</button>
            </form>
        </div>
    </div>
    <div id="nextGame" class="timeUntil neonBlock">
        <?php include("upcoming.php"); ?>
    </div>
    <?php include("getData.php"); ?>
</div>
<script>    
    function menuVisible()
    {
        var status = document.getElementById("visible");
        var blok = document.getElementById("gameMenu");
        if(status.style.display === "none")
        {
            status.style.display = "flex";
            blok.style.width = "60%";
        }
        else
        {
            status.style.display = "none";
            blok.style.width = "5%";
        }
    }
    
    <?php
        if(isset($_POST["start"]))
        {
            echo "window.onload = function triggerMenu() 
            {
                menuVisible();
            }";
        }
    ?>
        
    $(document).ready(function(){
        setInterval(refreshData, 120000);

        function refreshData() {
            $(".data").wrapAll("<div id='data' style='display: none'></div>");

            setTimeout(function() { 
                $("#data").load("../tpl/team/1D/getData.php");

                setTimeout(function() { 
                    $(".data").unwrap();
                }, 25);

            }, 25);
        };

        setInterval(refreshUpcoming, 60000);

        function refreshUpcoming() {
            $("#nextGame").load("../tpl/team/1D/upcoming.php");
        };
    });

//    function changeStream()
//    {
//        var videoPlayer = document.getElementById('my-video');
//        
//        console.log(videoPlayer);
//
//        var mp4Vid = document.getElementById("streamSource");
//
//        videoPlayer.pause();
//
//        mp4Vid.src = "";
//
//        videoPlayer.load();
//        videoPlayer.play();
//    }
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://vjs.zencdn.net/7.8.4/video.js"></script>