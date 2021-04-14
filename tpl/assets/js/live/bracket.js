const bracketsHolder = document.querySelector("#bracketsHolder");
const bracketsTitle = document.querySelector("#brackets > h1");

class Brackets {
    phase = -1;
    lastPhases =
        {0:undefined,
            1:undefined,
            2:undefined,
            3:undefined,
            4:undefined,
            5:undefined};
    curPhase = "";

    #clear() {
        const children = bracketsHolder.children;
        for(let i = 0; i < children.length; i++) {
            children[i].classList.add("closing");
        }
        setTimeout(() => {bracketsHolder.innerHTML = null}, 1500);
    }

    #setupPhase0(jsonObject) {  // Leaderboard (1x leaderboard)
        bracketsTitle.innerHTML = 'Leaderboard';
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

    #setupPhase1(jsonObject) {  // Starting matches SPS (10x match, 1x scoreboard)
        bracketsTitle.innerHTML = 'SPS - First round';
        bracketsHolder.innerHTML = `
        <div id="match1" class="match neonBorder" style="left: 0; top: 0;">
            <div class="matchId">1</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match2" class="match neonBorder" style="left: 0; top: 100px;">
            <div class="matchId">2</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match3" class="match neonBorder" style="left: 0; top: 200px;">
            <div class="matchId">3</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match4" class="match neonBorder" style="left: 0; top: 300px;">
            <div class="matchId">4</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match5" class="match neonBorder" style="left: 0; top: 400px;">
            <div class="matchId">5</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match6" class="match neonBorder" style="left: 220px; top: 0;">
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

        <div id="scoreboard" class="neonBorder" style="left: 450px; top: 0;">
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
        this.#updateScoreboard(this.#sortScoreboard(jsonObject.scoreboard));
    }

    #setupPhase2(jsonObject) {  // Bracket SPS (8x match)
        bracketsTitle.innerHTML = 'SPS - Knockout';
        bracketsHolder.innerHTML = `
        <div id="match1" class="match neonBorder" style="left: 0; top: 0;">
            <div class="matchId">1</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match2" class="match neonBorder" style="left: 250px; top: 150px;">
            <div class="matchId">2</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match3" class="match neonBorder" style="left: 250px; top: 0;">
            <div class="matchId">3</div>
            <div class="teamLabel top"></div>
            <div class="teamLabel bottom"></div>
        </div>
        <div id="match4" class="match neonBorder" style="left: 0; top: 300px;">
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

    #setupPhase3(jsonObject) {  // Laps Race (1x lapdisplay, 1x scoreboard)
        bracketsTitle.innerHTML = 'Race';
        bracketsHolder.innerHTML = `
        <div id="lapdisplay1" class="lapdisplay neonBorder">
            <div class="scoreRow heading">
                <div class="team">Laptime</div>
                <div id="lap1" class="num time">1</div>
                <div id="lap2" class="num time">2</div>
                <div id="lap3" class="num time">3</div>
                <div id="lap4" class="num time">4</div>
                <div id="lap5" class="num time">5</div>
                <div id="avg" class="num time avg">AVG</div>
            </div>
            <div id="team1" class="scoreRow">
                <div class="team"></div>
                <div id="lap1" class="num time"></div>
                <div id="lap2" class="num time"></div>
                <div id="lap3" class="num time"></div>
                <div id="lap4" class="num time"></div>
                <div id="lap5" class="num time"></div>
                <div id="avg" class="num time avg"></div>
            </div>
            <div id="team2" class="scoreRow">
                <div class="team"></div>
                <div id="lap1" class="num time"></div>
                <div id="lap2" class="num time"></div>
                <div id="lap3" class="num time"></div>
                <div id="lap4" class="num time"></div>
                <div id="lap5" class="num time"></div>
                <div id="avg" class="num time avg"></div>
            </div>
            <div id="team3" class="scoreRow">
                <div class="team"></div>
                <div id="lap1" class="num time"></div>
                <div id="lap2" class="num time"></div>
                <div id="lap3" class="num time"></div>
                <div id="lap4" class="num time"></div>
                <div id="lap5" class="num time"></div>
                <div id="avg" class="num time avg"></div>
            </div>
            <div id="team4" class="scoreRow">
                <div class="team"></div>
                <div id="lap1" class="num time"></div>
                <div id="lap2" class="num time"></div>
                <div id="lap3" class="num time"></div>
                <div id="lap4" class="num time"></div>
                <div id="lap5" class="num time"></div>
                <div id="avg" class="num time avg"></div>
            </div>
            <div id="team5" class="scoreRow">
                <div class="team"></div>
                <div id="lap1" class="num time"></div>
                <div id="lap2" class="num time"></div>
                <div id="lap3" class="num time"></div>
                <div id="lap4" class="num time"></div>
                <div id="lap5" class="num time"></div>
                <div id="avg" class="num time avg"></div>
            </div>
        </div>

        <div id="scoreboard" class="neonBorder" style="left: 750px; top: 0px;">
            <div class="scoreRow heading">Leaderboard</div>
            <div id="place1" class="scoreRow">
                <div class="place num">1</div>
                <div class="team"></div>
                <div class="score num time"></div>
            </div>
            <div id="place2" class="scoreRow">
                <div class="place num">2</div>
                <div class="team"></div>
                <div class="score num time"></div>
            </div>
            <div id="place3" class="scoreRow">
                <div class="place num">3</div>
                <div class="team"></div>
                <div class="score num time"></div>
            </div>
            <div id="place4" class="scoreRow">
                <div class="place num">4</div>
                <div class="team"></div>
                <div class="score num time"></div>
            </div>
            <div id="place5" class="scoreRow">
                <div class="place num">5</div>
                <div class="team"></div>
                <div class="score num time"></div>
            </div>
        </div>
        `
        bracketsHolder.style = "height: 510px";

        this.#updateScoreboard(this.#updateLapDisplay(jsonObject.times, jsonObject.curPos));
    }

    #setupPhase4(jsonObject) {  // Times maze (1x scoreboard)
        bracketsTitle.innerHTML = 'Maze';
        bracketsHolder.innerHTML = `
        <div id="scoreboard" class="neonBorder" style="left: 0px; top: 0px;">
            <div class="scoreRow heading">Leaderboard</div>
            <div id="place1" class="scoreRow">
                <div class="place num">1</div>
                <div class="team"></div>
                <div class="score num time"></div>
            </div>
            <div id="place2" class="scoreRow">
                <div class="place num">2</div>
                <div class="team"></div>
                <div class="score num time"></div>
            </div>
            <div id="place3" class="scoreRow">
                <div class="place num">3</div>
                <div class="team"></div>
                <div class="score num time"></div>
            </div>
            <div id="place4" class="scoreRow">
                <div class="place num">4</div>
                <div class="team"></div>
                <div class="score num time"></div>
            </div>
            <div id="place5" class="scoreRow">
                <div class="place num">5</div>
                <div class="team"></div>
                <div class="score num time"></div>
            </div>
        </div>
        `
        bracketsHolder.style = "height: 510px";


        const scoreboard = this.#reverseSortScoreboard(jsonObject.scoreboard);

        for(let i = 0; i < scoreboard.length; i++) {
            scoreboard[i][1] = this.#millisToTimestamp(scoreboard[i][1]);
        }

        this.#updateScoreboard(scoreboard);
    }

    #setupPhase5(jsonObject) {  // Voteresults (1x stars)
        bracketsTitle.innerHTML = 'Draw';

        bracketsHolder.innerHTML = `
        <div class="starDisplay neonBorder" style="background-color: #280f5f55; padding: 10px; width: 790px;" >
            <svg class="svg-def" style="display: none;">
                <defs>
                    <filter id="strokeGlow" y="-10" x="-10" width="250" height="150">
                        <feOffset in="StrokePaint" dx="0" dy="0" result="centeredOffset"></feOffset>
                        <feGaussianBlur in="centeredOffset" stdDeviation="2" result="blur1"></feGaussianBlur>
                        <feGaussianBlur in="centeredOffset" stdDeviation="5" result="blur2"></feGaussianBlur>
                        <feGaussianBlur in="centeredOffset" stdDeviation="2" result="blur3"></feGaussianBlur>
                        <feMerge>
                            <feMergeNode in="blur3"></feMergeNode>
                            <feMergeNode in="blur2"></feMergeNode>
                            <feMergeNode in="blur1"></feMergeNode>
                            <feMergeNode in="SourceGraphic"></feMergeNode>
                        </feMerge>
                    </filter>
                </defs>
            </svg>
            <div class="starColumn">
                <div id="starName-0" class="starName"></div>
                <div class="stars">
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-0-4" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-0-4);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-0-3" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-0-3);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-0-2" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-0-2);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-0-1" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-0-1);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-0-0" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-0-0);"/>
                    </svg>
                </div>
            </div>
            <div class="starColumn">
                <div id="starName-1" class="starName"></div>
                <div class="stars">
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-1-4" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-1-4);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-1-3" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-1-3);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-1-2" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-1-2);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-1-1" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-1-1);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-1-0" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-1-0);"/>
                    </svg>
                </div>
            </div>
            <div class="starColumn">
                <div id="starName-2" class="starName"></div>
                <div class="stars">
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-2-4" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-2-4);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-2-3" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-2-3);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-2-2" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-2-2);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-2-1" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-2-1);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-2-0" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-2-0);"/>
                    </svg>
                </div>
            </div>
            <div class="starColumn">
                <div id="starName-3" class="starName"></div>
                <div class="stars">
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-3-4" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-3-4);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-3-3" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-3-3);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-3-2" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-3-2);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-3-1" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-3-1);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-3-0" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-3-0);"/>
                    </svg>
                </div>
            </div>
            <div class="starColumn">
                <div id="starName-4" class="starName"></div>
                <div class="stars">
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-4-4" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-4-4);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-4-3" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-4-3);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-4-2" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-4-2);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-4-1" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-4-1);"/>
                    </svg>
                    <svg viewBox="0 0 50 47.552826" height="20mm" width="20mm">
                        <defs>
                            <linearGradient id="gradient-4-0" x1="0" x2="0" y1="100%" y2="0">
                                <stop class="fill" stop-color="var(--primaryColor)" offset="0%"></stop>
                                <stop stop-color="#00000000" offset="0%"></stop>
                            </linearGradient>
                        </defs>
                        <path class="starBorder" d="m 25,1.25 7.29057,14.77231 16.302213,2.36885 -11.796393,11.49864 2.784751,16.23634 -14.581142,-7.66576 -14.581143,7.66576 2.784752,-16.23634 -11.7963926,-11.49864 16.3022126,-2.36885 z"/>
                        <path class="starFill" d="m 25,6 5.871322,11.8966 13.128676,1.90771 -9.499999,9.26021 2.242645,13.07563 -11.742645,-6.17348 -11.742646,6.17348 2.242647,-13.07563 -9.4999998,-9.26021 13.1286758,-1.90771 z" style="fill: url(#gradient-4-0);"/>
                    </svg>
                </div>
            </div>
        </div>
        `
        bracketsHolder.style = "height: 420px";

        this.#fillStars(jsonObject.results);
    }

    #sortResults(results) {
        return Object.entries(results).sort((a,b) => a[0] > b[0] ? 1 : a[0] < b[0] ? -1 : 0);
    }

    #fillStars(results) {
        results = this.#sortResults(results);
        let finished = false;
        let star = 0;
        let fill = 0;

        for(let i = 0; i < results.length; i++) {
            bracketsHolder.querySelector("#starName-" + i).innerHTML = results[i][0];
            results[i][1] -= 0.01;
            for(let j = 0; j < 5; j++) {
                bracketsHolder.querySelector("#gradient-" + i + "-" + star + " > .fill").setAttribute('offset', 0 + "%");
            }
        }
        setTimeout(() => {
            let animation = setInterval(() => {
                fill++;
                finished = true;
                for(let i = 0; i < results.length; i++) {
                    if(results[i][1] > 0) {
                        results[i][1] -= 0.01;
                        finished = false;
                        bracketsHolder.querySelector("#gradient-" + i + "-" + star + " > .fill").setAttribute('offset', fill + "%");
                    }
                }

                if(fill == 100) {
                    fill = 0;
                    const audio = new Audio("/tpl/assets/sound/stars.wav");
                    audio.play();
                    star++;
                }

                if(finished || star >= 5) {
                    clearInterval(animation);
                }
            }, 10);
        }, 1500);
    }

    #updateMatches(matches) {
        for(let i = 0; i < matches.length; i++) {
            const match = bracketsHolder.querySelector("#match" + matches[i].id);
            const top = match.querySelector(".top");
            const bottom = match.querySelector(".bottom");
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
        for(let i = 1; i <= scoreboard.length; i++) {
            const placement = bracketsHolder.querySelector("#place" + i);
            placement.querySelector(".team").innerHTML = scoreboard[i-1][0];
            placement.querySelector(".score").innerHTML = scoreboard[i-1][1];
        }
    }

    #sortScoreboard(scoreboard) {
        return Object.entries(scoreboard).sort((a,b) => (a[1] < b[1]) ? 1 : ((b[1] < a[1]) ? -1 : a[0] > b[0] ? 1 : b[0] > a[0] ? -1 : 0));
    }

    #reverseSortScoreboard(scoreboard) {
        return Object.entries(scoreboard).sort((a,b) => (a[1] == 0 && b[1] == 0) ? 0 : (a[1] == 0) ? 1 : (b[1] == 0) ? -1 : (a[1] < b[1]) ? -1 : ((b[1] < a[1]) ? 1 : a[0] > b[0] ? -1 : b[0] > a[0] ? 1 : 0));
    }

    #updateLeaderboard(leaderboard) {
        this.#sortLeaderboard(leaderboard);

        for(let i = 1; i <= leaderboard.length; i++) {
            const placement = bracketsHolder.querySelector("#place" + i);
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
            const aTot = parseInt(a.MAZE) + parseInt(a.RACE) + parseInt(a.DRAW) + parseInt(a.SPS);
            const bTot = parseInt(b.MAZE) + parseInt(b.RACE) + parseInt(b.DRAW) + parseInt(b.SPS);
            return (aTot < bTot) ? 1 : ((bTot < aTot) ? -1 : a.name > b.name ? 1 : b.name > a.name ? -1 : 0);
        });
    }

    #millisToTimestamp(millis) {
        millis = Math.round(parseInt(millis)*1000)/1000;
        const min = Math.floor(millis / 60000);
        const sec = (millis % 60000) / 1000;
        if(min > 0) {
            if(min >= 5) {
                return "WTF";
            }
            return String(min) + ":" + (sec < 10 ? "0" : "") + sec.toFixed(3);
        }
        return String(sec.toFixed(3));
    }

    #updateLapDisplay(times, curPos) {
        let scoreboard = new Map();

        times = this.#sortTimes(times);

        for(var i = 0; i < times.length; i++) {
            // Update display
            const team = bracketsHolder.querySelector("#team" + String(parseInt(i) + 1));
            team.querySelector(".team").innerHTML = times[i].name;

            if(times[i].pos == curPos) {
                team.classList.add("selected");
            } else {
                team.classList.remove("selected");
            }

            // Calc avg
            let count = 0;
            let avg = 0;
            for(let j = 1; j <= 5; j++) {
                if('lap' + String(j) in times[i]) {
                    const time = times[i]['lap' + String(j)];
                    team.querySelector("#lap" + j).innerHTML = this.#millisToTimestamp(time);
                    avg += time;
                    if(time != 0) {
                        count++;
                    }
                }
            }

            if(count > 0) {
                avg /= count;
            }

            team.querySelector("#avg").innerHTML = this.#millisToTimestamp(avg);

            // Add avg to scoreboard
            scoreboard[times[i].name] = avg;
        }

        scoreboard = this.#reverseSortScoreboard(scoreboard);

        for(var i = 0; i < scoreboard.length; i++) {
            scoreboard[i][1] = this.#millisToTimestamp(scoreboard[i][1]);
        }

        return scoreboard;
    }

    #sortTimes(times) {
        return times.sort((a,b) => {
            return a.pos - b.pos;
        });
    }

    showPhase(ind) {
        if(ind in this.lastPhases) {
            if(this.lastPhases[ind] != undefined) {
                this.parseJSON(this.lastPhases[ind]);
            }
        }
    }

    #updatePhaseButtons() {
        for(let i = 0; i < 6; i++) {
            let button = document.querySelector("#buttonPhase" + i);
            if(this.lastPhases[i] != undefined) {
                button.classList.remove("locked");
            } else {
                button.classList.add("locked");
            }
        }
    }

    parseJSON(json) {
        try {
            const jsonObject = JSON.parse(json);
            if(jsonObject && 'phase' in jsonObject && json != this.curPhase) {
                if(this.phase != jsonObject.phase) {
                    this.phase = jsonObject.phase;
                    let timeout = 0;
                    if(bracketsHolder.hasChildNodes) {
                        this.#clear();
                        timeout = 1500;
                    }
                    setTimeout(() => {
                        switch(jsonObject.phase) {
                            case -1:
                                this.lastPhases =
                                    {0:undefined,
                                        1:undefined,
                                        2:undefined,
                                        3:undefined,
                                        4:undefined,
                                        5:undefined};
                                bracketsHolder.style = null;
                                break;
                            case 0:
                                this.#setupPhase0(jsonObject);
                                break;
                            case 1:
                                this.#setupPhase1(jsonObject);
                                break;
                            case 2:
                                this.#setupPhase2(jsonObject);
                                break;
                            case 3:
                                this.#setupPhase3(jsonObject);
                                break;
                            case 4:
                                this.#setupPhase4(jsonObject);
                                break;
                            case 5:
                                this.#setupPhase5(jsonObject);
                                break;
                            default:
                                this.#clear();
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
                        case 3:
                            this.#updateScoreboard(this.#updateLapDisplay(jsonObject.times, jsonObject.curPos));
                            break;
                        case 4:
                            const scoreboard = this.#reverseSortScoreboard(jsonObject.scoreboard);

                            for(let i = 0; i < scoreboard.length; i++) {
                                scoreboard[i][1] = this.#millisToTimestamp(scoreboard[i][1]);
                            }

                            this.#updateScoreboard(scoreboard);
                            break;
                        case 5:
                            this.#fillStars(jsonObject.results);
                            break;
                    }
                }

                if(jsonObject.phase in this.lastPhases) {
                    this.lastPhases[jsonObject.phase] = json;
                }
                this.#updatePhaseButtons();
                this.curPhase = json;
            }
        } catch (e) {
            console.error(e);
        }
    }
}

let webSocketData;

const openWebSockets = () => {
    webSocketData = new WebSocket("ws://77.162.30.112:49151");

    webSocketData.addEventListener("message", (evt) => {
        brackets.parseJSON(evt.data);
    });

    webSocketData.addEventListener("close", (e) => {
        console.log("Connection closed due to: " + e + ", trying to reconnect in 1 second.");
        setTimeout(() => openWebSockets(), 1000);
    });
}

const brackets = new Brackets();
const staticData = new XMLHttpRequest();

document.addEventListener("DOMContentLoaded", () => {
    openWebSockets();
});

staticData.open("GET", "/api?data=bracket", true);
staticData.send();

staticData.addEventListener("readystatechange", () => {
    if (staticData.readyState == 4 && staticData.status == 200) {
        for(let i = 0; i < 6; i++) {
            if(staticData.getResponseHeader("bracket-"+i) != "null") {
                brackets.lastPhases[i] = JSON.parse(staticData.getResponseHeader("bracket-" + i));
            }
        }
        if(staticData.getResponseHeader("bracket") instanceof Object) {
            console.log("hoi")
        }
        brackets.parseJSON(JSON.parse(staticData.getResponseHeader("bracket")));
    }
});
