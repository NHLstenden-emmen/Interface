  <div id="navbar" class="container-fluid" data-aos="fade-bottom">
    <div class="container nav">
      <img id="logo" class="zoom" title="RoboTV" src="{assetsFolder}/images/logo.png" onclick="document.location='start';">
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