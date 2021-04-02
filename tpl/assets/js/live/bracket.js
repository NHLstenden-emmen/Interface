var bracketsHolder = document.querySelector("#bracketsHolder");

class Brackets {
    phase = -1;

    #clear() {
        var children = bracketsHolder.children;
        for(var i = 0; i < children.length; i++) {
            children[i].classList.add("closing");
        }
        setTimeout(() => {bracketsHolder.innerHTML = null}, 1500);
    }

    #setupPhase0(jsonObject) {
        bracketsHolder.innerHTML = `
        <div id="leaderboard" class="neonBorder">
            <div class="scoreRow heading">
                <div class="place num">#</div>
                <div class="team">Team</div>
                <div class="sps game">SPS</div>
                <div class="maze game">Maze</div>
                <div class="race game">Race</div>
                <div class="draw game">Draw</div>
                <div class="tot game">Tot</div>
            </div>
            <div id="place1" class="scoreRow">
                <div class="place num">1</div>
                <div class="team"></div>
                <div class="sps game"></div>
                <div class="maze game"></div>
                <div class="race game"></div>
                <div class="draw game"></div>
                <div class="tot game"></div>
            </div>
            <div id="place2" class="scoreRow">
                <div class="place num">2</div>
                <div class="team"></div>
                <div class="sps game"></div>
                <div class="maze game"></div>
                <div class="race game"></div>
                <div class="draw game"></div>
                <div class="tot game"></div>
            </div>
            <div id="place3" class="scoreRow">
                <div class="place num">3</div>
                <div class="team"></div>
                <div class="sps game"></div>
                <div class="maze game"></div>
                <div class="race game"></div>
                <div class="draw game"></div>
                <div class="tot game"></div>
            </div>
            <div id="place4" class="scoreRow">
                <div class="place num">4</div>
                <div class="team"></div>
                <div class="sps game"></div>
                <div class="maze game"></div>
                <div class="race game"></div>
                <div class="draw game"></div>
                <div class="tot game"></div>
            </div>
            <div id="place5" class="scoreRow">
                <div class="place num">5</div>
                <div class="team"></div>
                <div class="sps game"></div>
                <div class="maze game"></div>
                <div class="race game"></div>
                <div class="draw game"></div>
                <div class="tot game"></div>
            </div>
        </div>
        `
        bracketsHolder.style = "height: 510px";

        this.#updateLeaderboard(jsonObject.leaderboard);
    }

    #setupPhase1(jsonObject) {
        bracketsHolder.innerHTML = `
        <div id="match1" class="match neonBorder" style="left: 0px; top: 0px;">
            <div class="matchId">1</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match2" class="match neonBorder" style="left: 0px; top: 100px;">
            <div class="matchId">2</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match3" class="match neonBorder" style="left: 0px; top: 200px;">
            <div class="matchId">3</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match4" class="match neonBorder" style="left: 0px; top: 300px;">
            <div class="matchId">4</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match5" class="match neonBorder" style="left: 0px; top: 400px;">
            <div class="matchId">5</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match6" class="match neonBorder" style="left: 220px; top: 0px;">
            <div class="matchId">6</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match7" class="match neonBorder" style="left: 220px; top: 100px;">
            <div class="matchId">7</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match8" class="match neonBorder" style="left: 220px; top: 200px;">
            <div class="matchId">8</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match9" class="match neonBorder" style="left: 220px; top: 300px;">
            <div class="matchId">9</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match10" class="match neonBorder" style="left: 220px; top: 400px;">
            <div class="matchId">10</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>

        <div id="scoreboard" class="neonBorder">
            <div class="scoreRow heading">Scoreboard</div>
            <div id="place1" class="scoreRow">
                <div class="place num">1</div>
                <div class="team"></div>
                <div class="score num"></div>
            </div>
            <div id="place2" class="scoreRow">
                <div class="place num">2</div>
                <div class="team"></div>
                <div class="score num"></div>
            </div>
            <div id="place3" class="scoreRow">
                <div class="place num">3</div>
                <div class="team"></div>
                <div class="score num"></div>
            </div>
            <div id="place4" class="scoreRow">
                <div class="place num">4</div>
                <div class="team"></div>
                <div class="score num"></div>
            </div>
            <div id="place5" class="scoreRow">
                <div class="place num">5</div>
                <div class="team"></div>
                <div class="score num"></div>
            </div>
        </div>
        `
        bracketsHolder.style = "height: 510px";

        this.#updateMatches(jsonObject.matches);
        this.#updateScoreboard(jsonObject.scoreboard);
    }

    #setupPhase2(jsonObject) {
        bracketsHolder.innerHTML = `
        <div id="match1" class="match neonBorder" style="left: 0px; top: 0px;">
            <div class="matchId">1</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match2" class="match neonBorder" style="left: 250px; top: 150px;">
            <div class="matchId">2</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match3" class="match neonBorder" style="left: 250px; top: 0px;">
            <div class="matchId">3</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match4" class="match neonBorder" style="left: 0px; top: 300px;">
            <div class="matchId">4</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match5" class="match neonBorder" style="left: 250px; top: 300px;">
            <div class="matchId">5</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match6" class="match neonBorder" style="left: 500px; top: 75px;">
            <div class="matchId">6</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match7" class="match neonBorder" style="left: 500px; top: 225px;">
            <div class="matchId">7</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match8" class="match neonBorder" style="left: 750px; top: 150px;">
            <div class="matchId">8</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        `
        bracketsHolder.style = "height: 410px";

        this.#updateMatches(jsonObject.matches);
    }

    #updateMatches(matches) {
        for(var i = 0; i < matches.length; i++) {
            var match = bracketsHolder.querySelector("#match" + matches[i].id);
            var top = match.querySelector(".top");
            var bottom = match.querySelector(".bottom");
            if(!matches[i].team1.startsWith("<")) {
                top.innerHTML = matches[i].team1;
            } else {
                top.innerHTML = null;
            }
            if(!matches[i].team2.startsWith("<")) {
                bottom.innerHTML = matches[i].team2;
            } else {
                bottom.innerHTML = null;
            }
            if('winner' in matches[i]) {
                if(matches[i].winner == matches[i].team1) {
                    bottom.classList.add("lost");
                } else if(matches[i].winner == matches[i].team2) {
                    top.classList.add("lost");
                }
            }
        }
    }

    #updateScoreboard(scoreboard) {
        scoreboard = this.#sortScoreboard(scoreboard);
        for(var i = 1; i <= scoreboard.length; i++) {
            var placement = bracketsHolder.querySelector("#place" + i);
            placement.querySelector(".team").innerHTML = scoreboard[i-1][0];
            placement.querySelector(".score").innerHTML = scoreboard[i-1][1];
        }
    }

    #sortScoreboard(scoreboard) {
        return Object.entries(scoreboard).sort((a,b) => (a[1] < b[1]) ? 1 : ((b[1] < a[1]) ? -1 : a[0] > b[0] ? 1 : b[0] > a[0] ? -1 : 0));
    }

    #updateLeaderboard(leaderboard) {
        console.log(leaderboard);
        this.#sortLeaderboard(leaderboard);

        for(var i = 1; i <= leaderboard.length; i++) {
            var placement = bracketsHolder.querySelector("#place" + i);
            placement.querySelector(".team").innerHTML = leaderboard[i-1].name;
            placement.querySelector(".maze").innerHTML = leaderboard[i-1].MAZE;
            placement.querySelector(".race").innerHTML = leaderboard[i-1].RACE;
            placement.querySelector(".draw").innerHTML = leaderboard[i-1].DRAW;
            placement.querySelector(".sps").innerHTML = leaderboard[i-1].SPS;
            placement.querySelector(".tot").innerHTML = parseInt(leaderboard[i-1].MAZE) + parseInt(leaderboard[i-1].RACE) + parseInt(leaderboard[i-1].DRAW) + parseInt(leaderboard[i-1].SPS);
        };
    }

    #sortLeaderboard(leaderboard) {
        return leaderboard.sort((a,b) => {
            var aTot = parseInt(a.MAZE) + parseInt(a.RACE) + parseInt(a.DRAW) + parseInt(a.SPS);
            var bTot = parseInt(b.MAZE) + parseInt(b.RACE) + parseInt(b.DRAW) + parseInt(b.SPS);
            return (aTot < bTot) ? 1 : ((bTot < aTot) ? -1 : a.name > b.name ? 1 : b.name > a.name ? -1 : 0);
        });
    }

    parseJSON(json) {
        try {
            var jsonObject = JSON.parse(json);
            if(jsonObject && 'phase' in jsonObject) {
                if(this.phase != jsonObject.phase) {
                    this.phase = jsonObject.phase;
                    var timeout = 0;
                    if(bracketsHolder.hasChildNodes) {
                        this.#clear();
                        timeout = 1500;
                    }
                    setTimeout(() => {
                        switch(jsonObject.phase) {
                            case 0:
                                this.#setupPhase0(jsonObject);
                                break;
                            case 1: 
                                this.#setupPhase1(jsonObject);
                                break;
                            case 2:
                                this.#setupPhase2(jsonObject);
                                break;
                            default:
                                bracketsHolder.style = null;
                                console.log("Unknown phase for brackets");
                                break;
                        }
                    }, timeout);
                } else {
                    switch(jsonObject.phase) {
                        case 0:
                            this.#updateLeaderboard(jsonObject.leaderboard);
                            break;
                        case 1: 
                            this.#updateMatches(jsonObject.matches);
                            this.#updateScoreboard(jsonObject.scoreboard);
                            break;
                        case 2:
                            this.#updateMatches(jsonObject.matches);
                            break;
                        default:
                            console.log("Unknown phase for brackets");
                            break;
                    }
                }
            }
        } catch (e) {
            console.error(e);
        }
    }
}

var brackets        = new Brackets();
var webSocketData   = new WebSocket("ws://77.162.30.112:49151");
var staticData      = new XMLHttpRequest();

staticData.open("GET", "/livedata", true);
staticData.setRequestHeader("battlebots", "leaderboard");
staticData.send();

webSocketData.addEventListener("message", (evt) => {
    brackets.parseJSON(evt.data);
});

xmlhttp.addEventListener("readystatechange", () => {
    if (xmlhttp.readyState == XMLHttpRequest.DONE) {   // XMLHttpRequest.DONE == 4
        brackets.parseJSON(JSON.parse(this.getResponseHeader("livedata")).json);
    }
});