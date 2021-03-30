<?php
    // Wijzigen teamdata
    if(isset($_POST["veranderenTeam"]) && !empty("teamDescription"))
    {
        $newDescription = $filter->sanatizeInput($_POST["teamDescription"], "string");
        $DB->Update("UPDATE teams SET TeamDesc = ? WHERE TeamID = ?", [$newDescription, "1D"]);
    }
    
    // Ophalen teamdata
    $teamData = $DB->Select("SELECT TeamDesc FROM teams WHERE TeamID = ?", ["1D"]);
    $description = $teamData[0]["TeamDesc"];
?>

<link href="https://vjs.zencdn.net/7.8.4/video-js.css" rel="stylesheet" />

<div class="containerD">
    <div class="header">
        <div class="logoAndTeam neonBlock">
            <h2>Dashboard<span>Team D</span></h2>
        </div>
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
    <div id='test' class="teamData neonBlock">
        <h3>Beschrijving</h3>
        <form method="post">
            <textarea name="teamDescription"><?php echo $description; ?></textarea>
            <button type="submit" name="veranderenTeam" value="wijzig" class="button">Wijzig</button>
        </form>
        <?php include ("changeTeamData.php"); ?>
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
<!--                <button type="submit" name="stop" value="stop" id="stop" class="stop stopClicked" onclick="stop()">Stop</button>-->
            </form>
        </div>
    </div>
    <div id="nextGame" class="timeUntil neonBlock">
        <?php include("upcoming.php"); ?>
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
        if(startButton.className !== "start startClicked")
        {
            startButton.className += " startClicked";
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
                menuVisible();
            }";
        }
    ?>
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
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
    
    setInterval(refreshUpcoming, 1800);
    
    function refreshUpcoming() {
        $("#nextGame").load("../tpl/team/1D/upcoming.php");
        console.log("ho");
    };
});
</script>

<script src="https://vjs.zencdn.net/7.8.4/video.js"></script>


<link rel="stylesheet" href="/tpl/assets/css/team/1D/dashboardResponsive.css">