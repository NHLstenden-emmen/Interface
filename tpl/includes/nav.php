  <div id="navbar" class="container-fluid" data-aos="fade-bottom">
    <div class="container nav">
      <img id="logo" class="zoom" title="RoboTV" src="{assetsFolder}/images/logo.png">
      <ul id="menu">
        <li><a href="/start">{NAV_HOME}</a></li>
        {dashboard}
        <li><a href="/teams">{NAV_TEAMS}</a></li>
        <li><a href="/livestream">{NAV_LIVESTREAM}</a></li>
        <li id="games-dropdown">
            <div class="dropdown">
              <span class="dropdownLink">{NAV_GAMES} <i class="fas fa-caret-down"></i></span>
              <div class="dropdown-content">
                <a href="/stats"><i class="fas fa-caret-right"></i> {NAV_STATS}</a>
                <a href="/scheme"><i class="fas fa-caret-right"></i> {NAV_SCHEME}</a>
                <a href="/rules"><i class="fas fa-caret-right"></i> {NAV_RULES}</a>
              </div>
            </div>
        </li>
        <li>
          <a href="?lang=change"><i class="language fas fa-language"></i></a>
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