  <div id="navbar" class="container-fluid" data-aos="fade-bottom">
    <div class="container nav">
      <img id="logo" title="RoboTV" src="{assetsFolder}/images/logo.png">
      <ul id="menu">
        <li><a href="start">{NAV_HOME}</a></li>
        <li><a href="teams">{NAV_TEAMS}</a></li>
        <li><a href="livestream">{NAV_LIVESTREAM}</a></li>
        <li id="games-dropdown">
            <div class="dropdown">
              <span class="dropdownLink">{NAV_GAMES} <i class="fas fa-caret-down"></i></span>
              <div class="dropdown-content">
                <a href="scheme"><i class="fas fa-caret-right"></i> {NAV_SCHEME}</a><br>
                <a href="rules"><i class="fas fa-caret-right"></i> {NAV_RULES}</a>
              </div>
            </div>
        </li>
        <li>
          <a href="#"><i class="language fas fa-language"></i></a>
        </li>
        <li>
          <a class="alternative-button" href="login">{NAV_LOGIN} &nbsp<i class="fas fa-sign-in-alt"></i></a>
          <a class="alternative-button" style="display: none;" href="login">{NAV_LOGOUT} &nbsp<i class="fas fa-sign-in-alt"></i></a>
        </li>
      </ul>
      <div class="mobileBurger">
        <div></div>
        <div></div>
        <div></div>
      </div>
    </div>
  </div>