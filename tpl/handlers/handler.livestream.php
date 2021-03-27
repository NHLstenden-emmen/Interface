<?php 

$this->Set("extraCSS", '<link rel="stylesheet" href="'.$this->Get("assetsFolder").'/css/page/livestream.css">
                        <link rel="stylesheet" href="https://unpkg.com/plyr@3/dist/plyr.css">');
$this->Set("extraJS", '<script src="'.$this->Get("assetsFolder").'/js/page/livestream.js"></script>
                        <script src="'.$this->Get("assetsFolder").'/js/live/chat.js"></script>
                        <script src="https://unpkg.com/plyr@3.6.4/dist/plyr.min.js"></script>
                        <script src="https://cdn.polyfill.io/v2/polyfill.min.js?features=es6,Array.prototype.includes,CustomEvent,Object.entries,Object.values,URL"></script>                         
                        <script src="https://cdn.rawgit.com/video-dev/hls.js/18bb552/dist/hls.min.js"></script>
                        <script src= ""></script>
                        <script>launchLiveChat('.$user->id.')</script>');

?>