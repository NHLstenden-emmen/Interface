<?php 
    $this->Set("extraCSS", '<link href="'.$this->Get("assetsFolder").'/css/overlays/overlay.css" rel="stylesheet">
                            <link href="'.$this->Get("assetsFolder").'/css/overlays/clock.css" rel="stylesheet">
                            <link href="'.$this->Get("assetsFolder").'/css/overlays/songindicator.css" rel="stylesheet">
                            <link rel="preconnect" href="https://fonts.gstatic.com">
                            <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">');
                            
    $this->Set("extraJS", '<script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
                            <script src="'.$this->Get("assetsFolder").'/js/overlays/components/songindicator.js"></script>
                            <script src="'.$this->Get("assetsFolder").'/js/overlays/components/jukebox.js"></script>
                            <script src="'.$this->Get("assetsFolder").'/js/overlays/components/confetti.js"></script>
                            <script src="'.$this->Get("assetsFolder").'/js/overlays/components/clock.js"></script>

                            <script src="'.$this->Get("assetsFolder").'/js/overlays/util.js"></script>

                            <script src="'.$this->Get("assetsFolder").'/js/overlays/components/racesounds.js"></script>


                            <script src="'.$this->Get("assetsFolder").'/js/overlays/teams/1A.js"></script>
                            <script src="'.$this->Get("assetsFolder").'/js/overlays/teams/1B.js"></script>
                            <script src="'.$this->Get("assetsFolder").'/js/overlays/teams/1C.js"></script>
                            <script src="'.$this->Get("assetsFolder").'/js/overlays/teams/1D.js"></script>
                            <script src="'.$this->Get("assetsFolder").'/js/overlays/teams/1E.js"></script>
                            
                            <script src="'.$this->Get("assetsFolder").'/js/overlays/main.js"></script>');
?> 