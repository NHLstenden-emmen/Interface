<div class="container landing">
    <div id="landing">
        <h1 class="title" data-aos="fade-down">{TEAMS_TITLE}</h1>
        <p class="desc" data-aos="fade-down">{TEAMS_DESC}</p>
        <br>
        <a data-aos="fade-down" data-aos-duration="1000" class="button" href="/livestream">Livestream</a>
        <div class="row" id="teams" data-aos="fade-down" data-aos-duration="1500">
            <div class="col-sm-2">
                <img src="{assetsFolder}/images/team/1A/logo.png" title="Team A" alt="Team A">
                <p class="teamDesc">Team A</p>
            </div>
            <div class="col-sm-2">
                <img src="{assetsFolder}/images/team/1B/logo.png" title="Team B" alt="Team B">
                <p class="teamDesc">Team B</p>
            </div>
            <div class="col-sm-2">
                <img src="{assetsFolder}/images/team/1C/logo.png" title="Team C" alt="Team C">
                <p class="teamDesc">Team C</p>
            </div>
            <div class="col-sm-2">
                <img src="{assetsFolder}/images/team/1D/logo.png" title="Team D" alt="Team D">
                <p class="teamDesc">Team D</p>
            </div>
            <div class="col-sm-2">
                <img src="{assetsFolder}/images/team/1E/logo.png" title="Team E" alt="Team E">
                <p class="teamDesc">Team E</p>
            </div>
        </div>

        <i id="more" class="fas fa-chevron-down"></i>
    </div>

    <div id="introduce">
        <h3>{TEAMS_INTRODUCING}</h3>

        <div class="row">
	
            <!-- Team A -->
            <?php
				if(isset($_COOKIE['lang']) && $_COOKIE['lang'] == 'en' || $_COOKIE['lang'] == 'nl'){
					$langTeamDesc = "TeamDesc_" . strtoupper($_COOKIE['lang']);
				} else {
					$langTeamDesc = "TeamDesc_NL";
				}
			
                // Load description team A
                $A_TeamInfo = $DB->Select("SELECT * FROM teams WHERE TeamID = '1A' LIMIT 1", "");
                foreach($A_TeamInfo as $row){
                    $A_RobotName = $row['RobotName'];
                    $A_TeamDesc = $row[$langTeamDesc];
                }
            ?>
            <div class="col-sm-12 teamBlock" id="teamA" data-aos="fade-up">
                <div class="row">
                    <div class="col-sm-6">
                        <h4 class="teamTitle">
                            <?php echo $A_RobotName; ?> [A]
                        </h4>
                        <p class="teamDescription">
                            <?php echo $A_TeamDesc; ?>
                        </p>
                    </div>
                    <div class="col-sm-6 teamPhoto">
                        <img class="neonBorder" src="{assetsFolder}/images/team/1A/logo.png" title="Team A" alt="Team A"> 
                    </div>
                </div>
            </div>

            <!-- Team B -->
            <?php
                // Load description team B
                $B_TeamInfo = $DB->Select("SELECT * FROM teams WHERE TeamID = '1B' LIMIT 1", "");
                foreach($B_TeamInfo as $row){
                    $B_RobotName = $row['RobotName'];
                    $B_TeamDesc = $row[$langTeamDesc];
                }
            ?>
            <div class="col-sm-12 teamBlock" id="teamB" data-aos="fade-up">
                <div class="row">
                    <div class="col-sm-6 teamPhoto">
                        <img class="neonBorder" src="{assetsFolder}/images/team/1B/logo.png" title="Team B" alt="Team B"> 
                    </div>
                    <div class="col-sm-6" id="switchB">
                        <h4 class="teamTitle">
                            <?php echo $B_RobotName; ?> [B]
                        </h4>
                        <p class="teamDescription">
                            <?php echo $B_TeamDesc; ?>
                        </p>
                    </div>
                </div>
            </div>

            <!-- Team C -->
            <?php
                // Load description team C
                $C_TeamInfo = $DB->Select("SELECT * FROM teams WHERE TeamID = '1C' LIMIT 1", "");
                foreach($C_TeamInfo as $row){
                    $C_RobotName = $row['RobotName'];
                    $C_TeamDesc = $row[$langTeamDesc];
                }
            ?>
            <div class="col-sm-12 teamBlock" id="teamC" data-aos="fade-up">
                <div class="row">
                    <div class="col-sm-6">
                        <h4 class="teamTitle">
                            <?php echo $C_RobotName; ?> [C]
                        </h4>
                        <p class="teamDescription">
                            <?php echo $C_TeamDesc; ?>
                        </p>
                    </div>
                    <div class="col-sm-6 teamPhoto">
                        <img class="neonBorder" src="{assetsFolder}/images/team/1C/logo.png" title="Team C" alt="Team C"> 
                    </div>
                </div>
            </div>

            <!-- Team D -->
            <?php
                // Load description team D
                $D_TeamInfo = $DB->Select("SELECT * FROM teams WHERE TeamID = '1D' LIMIT 1", "");
                foreach($D_TeamInfo as $row){
                    $D_RobotName = $row['RobotName'];
                    $D_TeamDesc = $row[$langTeamDesc];
                }
            ?>
            <div class="col-sm-12 teamBlock" id="teamD" data-aos="fade-up">
                <div class="row">
                    <div class="col-sm-6 teamPhoto">
                        <img class="neonBorder" src="{assetsFolder}/images/team/1D/logo.png" title="Team D" alt="Team D"> 
                    </div>
                    <div class="col-sm-6" id="switchD">
                        <h4 class="teamTitle">
                            <?php echo $D_RobotName; ?> [D]
                        </h4>
                        <p class="teamDescription">
                            <?php echo $D_TeamDesc; ?>
                        </p>
                    </div>                    
                </div>
            </div>

            <!-- Team E -->
            <?php
                // Load description team E
                $E_TeamInfo = $DB->Select("SELECT * FROM teams WHERE TeamID = '1E' LIMIT 1", "");
                foreach($E_TeamInfo as $row){
                    $E_RobotName = $row['RobotName'];
                    $E_TeamDesc = $row[$langTeamDesc];
                }
            ?>
            <div class="col-sm-12 teamBlock" id="teamE" data-aos="fade-up">
                <div class="row">
                    <div class="col-sm-6">
                        <h4 class="teamTitle">
                            <?php echo $E_RobotName; ?> [E]
                        </h4>
                        <p class="teamDescription">
                            <?php echo $E_TeamDesc; ?>
                        </p>
                    </div>
                    <div class="col-sm-6 teamPhoto">
                        <img class="neonBorder" src="{assetsFolder}/images/team/1E/logo.png" title="Team E" alt="Team E"> 
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>