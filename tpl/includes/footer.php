    <footer>
        
    </footer>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>


    <script src="{assetsFolder}/js/app.js"></script>
    <script src="{assetsFolder}/js/monitor.js"></script>

    {extraJS}

    <!-- Monitor acties [TESTDAG] --> 
    <?php 

    if ($user->logged_in){
        $monitor = $user->email;	
    } else {
        $monitor = "Guest";
    }

    ?>
    <script> 
        setUser('<?php echo $monitor; ?>');
        AOS.init(); 
    </script>
</body>
</html>