<?php
    session_start();
    // all passwords and secrets that are not supposed to be on github
    // change the example.env.php to .env.php
    $env = include '.env.php';

    // get the current location / path of the page
    $pagePath = basename($_SERVER['REQUEST_URI'], '.php');
    if (strpos($pagePath, '?') !== false) {   
        $pagePath = substr($pagePath, 0, strpos($pagePath, "?")); 
    }

    // main dependencies

	include 'inc/socket.php';
	$socket = new Socket(49153, "194.171.181.139");

    include 'inc/select.php';
    include 'inc/header.php';
    
    // build the website
    include 'inc/navbar.php';
    include 'pages/content.php';
    include 'inc/footer.php';
    include 'inc/background.php';
?>