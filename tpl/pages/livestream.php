<div class="container livestream" data-aos="fade-down">
    <h1 class="title">Livestream</h1>
    <div class="videoBlock">
        <video id="livestreamVideo" poster="{assetsFolder}/images/poster.png">
            Je browser ondersteunt geen HTML5 video's.
        </video>
        <div class="videoComments">
            <div id="liveChat"></div>
            <div id="sendMessage">
                <div onclick="sendMessage()" class="input-icons">
                    <i class="send fas fa-chevron-right"></i>
                </div>
                <input style="height:100%" onkeydown="typeMessage(this)" type="text" id="liveChatInput"
                    class="input-field" placeholder="{bericht}" {disabled}>
            </div>
            <input type="radio" id="emojiCheckbox" {disabled}>
            <label for="emojiCheckbox" class="checker"></label>
            <div id="emojiPopUp"></div>
        </div>
        <div class="videoDetails">
            <div class="videoUpload">
                <span class="videoTitle" id="currentGame">Race</span>
                <span><i class="fas fa-robot"></i>&nbsp;<span id="currentRobot" style="font-weight: 700">ROBOT</span></span>
                <span><i class="far fa-eye"></i>&nbsp;<span id="viewerCounter">0</span> {VIEWERS}</span>
            </div>
            <div class="videoCamera">
                <button class="button small" onclick="cameraChange('stream')"><i
                        class="fas fa-video"></i>&nbsp;&nbsp;1</button>
                <button class="button small" onclick="cameraChange('dome')"><i
                        class="fas fa-video"></i>&nbsp;&nbsp;2</button>
            </div>
        </div>
    </div>
</div>

<div class="infoModalBox hideInformation">
    <div class="closeInfo">
        <i class="fas fa-times"></i>
    </div>
    <div class="container gamesInfo">
        <div class="row">
            <div class="col-md-6 gameItem" id="game1">
                <div>
                    <h3><b>Doolhof</b></h3>
                    <p>
                        Wanneer de “Start” commando wordt verstuurd naar de robot moet er een timer van start gaan die
                        pas eindigt wanneer de robot bij de finish is. De tijd moet worden verstuurd naar de server en
                        moet zichtbaar zijn in de interface.

                        De robot begint in het midden van de doolhof (te zien op de plattegrond).

                        Als de robot geheel van het pad is dan moet er een “Stop” commando worden verstuurd en wordt er
                        voor de robot geen tijd geregistreerd.

                        Robot mag met gedeeltes over de zwarte lijnen komen omdat de robot niet aan elke kant sensoren
                        heeft waardoor hij het niet kan waarnemen.

                        5 minuten de tijd om uit de doolhof te komen, als de robot het niet haalt binnen 5 min wordt er
                        een “Stop” commando verstuurd naar de robot en wordt er geen tijd geregistreerd.

                        Bij de “Finish” staat een obstakel (muur) die moet worden gedetecteerd door de ultrasonicsensor,
                        als de robot er 5 cm van is stopt hij en wordt de tijd verstuurd naar de server.
                    </p>
                </div>
            </div>
            <div class="col-md-6 gameItem" id="game2">
                <div>
                    <h3><b>Race</b></h3>
                    <p>
                        Wanneer de “Start” commando wordt verstuurd naar de robot moet er een timer van start gaan die
                        pas eindigt wanneer de robot bij de finish is. De tijd moet worden verstuurd naar de server en
                        moet zichtbaar zijn in de interface.

                        De robot begint in het midden van de doolhof (te zien op de plattegrond).

                        Als de robot geheel van het pad is dan moet er een “Stop” commando worden verstuurd en wordt er
                        voor de robot geen tijd geregistreerd.

                        Robot mag met gedeeltes over de zwarte lijnen komen omdat de robot niet aan elke kant sensoren
                        heeft waardoor hij het niet kan waarnemen.

                        5 minuten de tijd om uit de doolhof te komen, als de robot het niet haalt binnen 5 min wordt er
                        een “Stop” commando verstuurd naar de robot en wordt er geen tijd geregistreerd.

                        Bij de “Finish” staat een obstakel (muur) die moet worden gedetecteerd door de ultrasonicsensor,
                        als de robot er 5 cm van is stopt hij en wordt de tijd verstuurd naar de server.
                    </p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 gameItem" id="game3">
                <div>
                    <h3><b>Steen, papier, schaar</b></h3>
                    <p>
                        Dit spel bestaat uit 2 fasen.

                        Fase 1:

                        Iedereen speelt tegen iedereen een spel. Aan de hand van het aantal potjes gewonnen stijg je in
                        de poule ranglijst. Steen wint van Schaar. Schaar wint van Papier en Papier wint van Steen.

                        Fase 2:

                        Aan de hand van je positie krijg je een plaats in de knockout ronde toegewezen. Deze wordt
                        gunstiger naarmate je hoger in de 1e fase bent geëindigd.
                    </p>
                </div>
            </div>
            <div class="col-md-6 gameItem" id="game4">
                <div>
                    <h3><b>Tekening</b></h3>
                    <p>
                        De tekening challenge is een spel waarbij de robot een tekening maakt met een bepaald thema.

                        De robot krijgt een canvas waar hij in moet blijven.Voor meer dan 10 seconden buiten het canvas
                        gaan betekent dan ook een ongeldige tekening waarbij geen score kan worden toegekend.

                        De winnaar zal worden gekozen door middel van een poll die achteraf wordt gerouleerd tussen de
                        tekeningen waarbij alleen ingelogde gebruikers hun stem kunnen laten gelden.

                        * Bij gelijk gemiddelde wordt gekeken welk team als eerste klaar is
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Info button -->
<div class="infoBox">
    <i class="fas fa-info"></i>
</div>

<!-- Stats button -->
<div class="statsBox" onclick="location.href='bracket';">
    <i class="fas fa-trophy"></i>
</div>