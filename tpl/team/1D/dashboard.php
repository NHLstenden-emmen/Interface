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
        <h3>Beschrijving <span id="languageIndication">NL</span></h3>
        <form method="post">
            <textarea name="teamDescription" id="NL"><?php echo $descriptionNl; ?></textarea>
            <button type="submit" name="changeTeamNL" value="change" class="button" id="descriptionButton">Wijzig</button>
            <button type="button" onclick="changeDescriptionLanguage()" class="button">Taal &rlarr;</button>
        </form>
    </div>
    <div class="controls neonBlock">
        <div id="gameMenu" class="selectGame">
            <img id="openLog" onclick="menuVisible();" src="{assetsFolder}/images/team/1D/menu.png" alt="menu"> 
            <div class="games" id="visible" style="display: none">
                <div class="logTeamD">
                    <?php include ("control.php"); ?>
                </div>
            </div>
        </div>
        <div class="startStop">
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
    // Functie voor het openen van het logboek
    function menuVisible() {
        var status = document.getElementById("visible");
        var blok = document.getElementById("gameMenu");
        if(status.style.display === "none") {
            status.style.display = "flex";
            blok.style.width = "60%";
        } else {
            status.style.display = "none";
            blok.style.width = "5%";
        }
    }
    
    <?php
        // Automatisch openen logboek nadat op start is geklikt
        if(isset($_POST["start"])) {
            echo "window.onload = function triggerMenu() {
                menuVisible();
            }";
        }
    ?>
    
    // Functie voor het wijzigen van de taal van de beschrijving
    function changeDescriptionLanguage() {
        var nl = document.getElementById('NL');
        var en = document.getElementById('EN');
        var language = document.getElementById('languageIndication');
        var button = document.getElementById('descriptionButton');
        
        if(nl !== null) {
            nl.innerHTML = "<?php echo $descriptionEn; ?>";
            nl.id = "EN";
            language.innerHTML = "EN";
            button.name = "changeTeamEN";
        } else {
            en.innerHTML = "<?php echo $descriptionNl; ?>";
            en.id = "NL";
            language.innerHTML = "NL";
            button.name = "changeTeamNL";
        }
    }
    
    // Refreshen van het huidige spel en de gegevens van de spellen
    $(document).ready(function(){
        setInterval(refreshData, 120000);

        function refreshData() {
            $(".data").wrapAll("<div id='data' style='display: none'></div>");

            setTimeout(function() { 
                $("#data").load("/tpl/team/1D/getData.php");

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
</script>

<script src="{assetsFolder}/js/jquery_3.5.1.min.js"></script>
<script src="https://vjs.zencdn.net/7.8.4/video.js"></script>