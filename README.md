# RoboTV
Dit project is voor de livestream en de bestuuring van de robot voor project battlebots.


## Installatie localhost:
Om het project lokaal te laten werken ga naar uw apache folder en dan vervolgens naar conf/extra te gaan daar in vind u het bestand httpd-vhosts.conf <br />
Open dit bestand en voeg de volgnede regels aan toe:<br />
`<VirtualHost *:80>`<br />
`    DocumentRoot "D:\xampp\htdocs\RoboTV"`<br />
`    ServerName RoboTV`<br />
`</VirtualHost>`<br />
Zorg er voor dat de Servernaam **RoboTV** is<br /> <br />
Vervolgens moet u naar: <br />
`C:\Windows\System32\drivers\etc`<br />
gaan om het volgende toe te voegen.  <br />
**`127.0.0.1       RoboTV`** <br />
Wanneer dit gedaan is en uw xampp opnieuw is opgestard zou alles moeten werken.

## Installatie server:
Voor de installatie op een server maken we gebruik van proxmox. Maak verbinding met de webserver d.m.v. de inloggegevens die door de Netwerken groep zijn verstrekt.

## Live demo:

http://robotv.serverict.nl/
