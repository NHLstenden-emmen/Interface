  <div id="navbar" class="container-fluid" data-aos="fade-bottom">
    <div class="container nav">
      <svg width="160" height="100" version="1.1" viewBox="0 5 26.458 20" xmlns="http://www.w3.org/2000/svg" xmlns:cc="http://creativecommons.org/ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
          <g id="logo" transform="translate(0 -268.54)">
          <g stroke-linecap="round">
            <g stroke-linejoin="round">
            <path id="right-wing" d="m17.836 279.42 4.4387 4.3907-4.4107 4.3128" fill="none" stroke-width="1.753"/>
            <path id="left-wing" d="m8.8509 279.41-4.6672 4.2634 4.4805 4.4496" fill="none" stroke-width="1.753"/>
            <path id="logo-body" d="m5.9221 283.69 4.4805 4.4496c1.9347-0.28567 3.9323-0.33321 5.867-0.0315l4.4107-4.3128-4.4387-4.3907c-1.8111 0.31945-3.9509 0.40781-5.6522 0.022z" stroke-width="1.7043"/>
            </g>
            <path id="eyes-background" d="m10.898 283.76h5.3267" fill="none" stroke-width="4.3485"/>
          </g>
          <circle id="eyes" cx="10.91" cy="283.81" r=".7269" />
          <circle id="eyes" cx="16.177" cy="283.81" r=".7269" />
          </g>
        </svg>
      <!--<img id="logo" class="zoom" title="RoboTV" src="{assetsFolder}/images/logo.png">-->
      <ul id="menu">
        <li><a href="/start">{NAV_HOME}</a></li>
        {dashboard}
        <li><a href="/teams">{NAV_TEAMS}</a></li>
        <li><a href="/livestream">{NAV_LIVESTREAM}</a></li>
        <li id="games-dropdown">
            <div class="dropdown">
              <span class="dropdownLink">{NAV_GAMES} <i class="fas fa-caret-down"></i></span>
              <div class="dropdown-content">
                <!-- <i class="fas fa-caret-right"></i> -->
                <a href="/stats">{NAV_STATS}</a>
                <a href="/scheme">{NAV_SCHEME}</a>
                <a href="/rules">{NAV_RULES}</a>
              </div>
            </div>
        </li>
        <li>
          <?php
            // check if there is a cookie for lang set
            if(!isset($_COOKIE['lang'])){ ?>
              <input type="checkbox" name="languageSwitch" id="borderBlock" onchange="document.location.href='?lang=change';"/>
            <?php } // change the button to a dutch button cause the lang is set to english
            else if($_COOKIE['lang'] == 'en'){ ?>
              <input type="checkbox" name="languageSwitch" id="borderBlock" onchange="document.location.href='?lang=change';" checked/>
            <?php }// change the button to a english button cause the lang is set to dutch
            else if($_COOKIE['lang'] == 'nl'){ ?>
              <input type="checkbox" name="languageSwitch" id="borderBlock" onchange="document.location.href='?lang=change';"/>
            <?php }
          ?>
          <label id="langSwitchKnop" for="borderBlock">
            <div id="knoppie"></div>
            <div id="Dutch">Dutch</div>
            <div id="English">English</div>
          </label>
        </li>
        <li>
          {login}
        </li>
      </ul>
      <div class="mobileBurger">
        <div></div>
        <div></div>
        <div></div>
      </div>
    </div>
  </div>