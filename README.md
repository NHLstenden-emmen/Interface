# RoboTV

Dit project is voor de livestream en de bestuuring van de robot voor project battlebots.

## Installatie localhost:

Om het project lokaal te laten werken ga naar uw apache folder en dan vervolgens naar conf/extra te gaan daar in vind u het bestand httpd-vhosts.conf <br />
Open dit bestand en voeg de volgnede regels aan toe:<br />
`<VirtualHost *:80>` <br />
` DocumentRoot "D:\xampp\htdocs\RoboTV"` <br />
` ServerName RoboTV` <br />
`</VirtualHost>` <br />
Zorg er voor dat de Servernaam **RoboTV** is<br /> <br />
Vervolgens moet u naar: <br />
`C:\Windows\System32\drivers\etc`<br />
gaan om het volgende toe te voegen. <br />
**`127.0.0.1 RoboTV`** <br />
Wanneer dit gedaan is en uw xampp opnieuw is opgestard zou alles moeten werken.

## Live Stream setup with OBS

Om gebruik te maken van de livestream pagina moet je de volgende software/hardware klaar hebben.

-   Open Broadcaster Software Geinstaleerd
-   Een werkende camera
    Wanneer OBS is geinstaleerd staat onder in een blok genaamd Source's.

### Camera Activeren

Klik daar op het + icontje en selecteer **Video Capture Device**<br />
Selecteer vervolgens de camera output die je zou willen gebruiken.

### Voeg de overlay toe

Klik daar op het + icontje en selecteer **Browser** <br />
Voer vervolgens een naam in en klik op **OK** <br />
Er komt dan een groot blok tevoorschijn waarin je een Input velt staat die om een url vraagt. Voer daar dit url in: http://robotv.serverict.nl/overlay.php <br />
Zorg er voor dat de overlay boven de camera source hebt staan. Dit zorgt er namelijk voor dat de overlay zichtbaar is. <br />

### Verbinding met de stream

In OBS staat een controls panal met een knop om naar de **settings** te gaan klik daar op<br />
Ga vervolgens naar de tap Streams<br />
Selecteer vervolgens bij **Service** en dan **Custom...**<br />
Er Staan nu 2 input velden waar de volgende informatie moet worden ingevuld.<br />

-   Server: rtmp://194.171.181.139:49155/live
-   Stream Key: **dome** of **stream** er zijn namelijk 2 streams beschikbaar.<br />

Ga vervolgens naar de tap Output<br />
Verander hier de volgnede velden.<br />

-   VideoBitrate: 2800 Kbps
-   Audio Bitrate: 64
-   Encoder: Hardware
-   (Selecteer de volgende checkbox om de laatste setting aan te passen) Enable Advanced Encoder Settings
-   Encoder Preset: Low-Latency

Deze Settings moeten zo laag gezet worden anders crest de server van school.

## Installatie server:

Voor de installatie op een server maken we gebruik van proxmox. Maak verbinding met de webserver d.m.v. de inloggegevens die door de Netwerken groep zijn verstrekt.

## Live demo:

http://robotv.serverict.nl/
