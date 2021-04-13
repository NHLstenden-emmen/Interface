<iframe name="action_zone" style="display:none"></iframe>
<script>
    const requestRegularPoll = () => {
        let opties = document.getElementById("pollOptie");
        let vraag = document.getElementById("pollText");
        let lengte = document.getElementById("pollLength");

        const Http = new XMLHttpRequest();
        Http.open("POST", window.location.href);
        Http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        Http.send("question="+vraag.value+ "&opties="+opties.value+ "&lengte=" + lengte.value);

        opties.value = "";
        vraag.value ="";
        lengte.value ="";
        Http.onreadystatechange = () => {
            console.log(Http.getResponseHeader("response"));
        }
    }
</script>
<div class="neonBlock"  data-aos="zoom-in-right">
    <h1 class="title">Cameracontrol</h1>
    <br>
    <div class="row">
        <div class="col-md-7">
            <div> 
                <img src="http://foscam.serverict.nl/videostream.cgi?user=user&pwd=user_12" style="width: 680px; height: 480px; user-select: none; user-drag: none" draggable="false">
                <div style="position: absolute; bottom: 0px;">{joyStick}</div>
            </div>
        </div>
        <div class="col-md-5">
            <h5 class="title">Cameragegevens</h5>
            <p>
                Gebruikersnaam: user <br />
                Wachtwoord: user_12 <br />
            </p>

                <br /> <br />
                <?php if($user->level == 4) {?>
                        <h5 class="title">Polls</h5>
                    <label><input id="pollText" type="text" placeholder="Pollvraag.."</label><br /><br />
                    <label><input id="pollOptie" type="text"  placeholder="Opties (gescheiden door een komma)"></label><br />
                    <label><input id="pollLength" type="number"  placeholder="Lengte in seconds"></label><br />
                    <button id="submitForm" onclick="requestRegularPoll()"><i class="fas fa-poll"></i> Send</button>
                <?php } ?>
        </div>
    </div>
</div>        