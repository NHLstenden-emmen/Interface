<link href="https://vjs.zencdn.net/7.8.4/video-js.css" rel="stylesheet" />

<div class="containerD">
    <div class="header">
        <div class="logoAndTeam neonBlock">
            <img src="{assetsFolder}/images/team/1D/logoResize.png" alt="Logo">    
            <h2>Team D</h2>
        </div>
        <button class="button">Uitloggen</button>
    </div>
    <div class="live neonBlock">
        <video id="my-video" class="video-js" controls preload="auto" width="100%" height="100%" data-setup="{}">
            <source src="/streams/dome.m3u8" type="application/vnd.apple.mpegurl" />
            <p class="vjs-no-js">
                Om deze video te kijken, moet JavaScript aan staan. Wellicht biedt de huidige browser ook geen 
                <a href="https://videojs.com/html5-video-support/" target="_blank">ondersteuning voor HTML5 video</a>
            </p>
        </video> 
    </div>
    <div id='test' class="currentStats neonBlock">
        <p class="currentTeam">Team D</p>
        <hr>
        <?php include ("changeTeamData.php"); ?>
    </div>
    <div class="controls neonBlock">
        <div id="gameMenu" class="selectGame">
            <img id="menu" onclick="menuVisible();refresh();" src="{assetsFolder}/images/team/1D/menu.png" alt="menu"> 
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
                <button type="submit" name="stop" value="stop" id="stop" class="stop stopClicked" onclick="stop()">Stop</button>
            </form>
        </div>
    </div>
    <div class="timeUntil neonBlock">
        <h3  id="next">Hierna</h3>
        <p id="time"><?php echo (isset($wedstrijden[0]) ? ($wedstrijden[0]['spel'].", tijdsduur: ".TimeGame($wedstrijden[0]['spel'])) : "Geen wedstrijden"); ?></p>
    </div>
        <?php include("getData.php"); ?>
    
</div>
<script>
    function makeActive(number)
    {
        var druk = document.getElementsByClassName("gameButton");
        for(var i = 0; i < druk.length; i++)
        {
            if(i === number)
            {
                var active = document.getElementsByClassName("active");
                if(active.length === 1)
                {
                    active[0].className = active[0].className.replace(" active", "");
                }
                druk[i].className += " active"; 
            }
        }
    }
    
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
    
    function play()
    {
        var startButton = document.getElementById("play");
        var stopButton = document.getElementById("stop");
        if(startButton.className !== "start startClicked")
        {
            startButton.className += " startClicked";
        }
        stopButton.className = stopButton.className.replace(" stopClicked", "");
    }
    
    function stop() 
    {
        var startButton = document.getElementById("play");
        var stopButton = document.getElementById("stop");
        startButton.className = startButton.className.replace(" startClicked", "");
        if(stopButton.className !== "stop stopClicked")
        {
            stopButton.className += " stopClicked";
        }
    }
    
    function refresh()
    {
        $("#refreshDIV").load("chances.php");
    }
    
    <?php
        if(isset($_POST["start"]))
        {
            echo "window.onload = function triggerPlay() 
            {
                play();
            }";
        }
    ?>
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    
    setInterval(refreshData, 180000);
    
    function refreshData() {
        $(".data").wrapAll("<div id='data' style='display: none'></div>");

        setTimeout(function() { 
            $("#data").load("../tpl/team/1D/getData.php");

            setTimeout(function() { 
                $(".data").unwrap();
            }, 25);

        }, 25);
    };
});
</script>

<script src="https://vjs.zencdn.net/7.8.4/video.js"></script>