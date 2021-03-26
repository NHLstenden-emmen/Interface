<?php
    $error = "";
    if (isset($_POST['username']) && isset($_POST['password'])) {

        $username = $_POST['username'];
        $password = $_POST['password'];

        // het mysql block
            $env = include '.env.php';
            // include the env file pagina
            $host = $env['DB_HOST'];
            $user = $env['DB_USERNAME'];
            $pass = $env['DB_PASSWORD'];
            $table = $env['DB_TABLE'];
            $conn = @mysqli_connect($host,$user,$pass, $table);
            
            if(!$conn)
            {
                DIE("could not connect". mysqli_connect_error($conn));
            }

            $username = htmlspecialchars($username);

            if ($stmt = $conn->prepare("SELECT * FROM users WHERE username = ?")) 
            {
                $stmt->bind_param("s", $username);
                $stmt->execute();
                $loginInfo = $stmt->get_result();
                $stmt->free_result();
                $stmt->close();
            }
        
        // het mysql block
        if(isset($loginInfo)){
            if ($loginInfo->num_rows === 0) { 
                $error = $lang['USERNOTFOUND'];
            }
       
            while ($result = $loginInfo->fetch_array(MYSQLI_ASSOC)){
                // this is a check if the password is correct
                if (password_verify($password, $result['password'])) {
                    // this is a checkbox check for the remember me check 
                    if (!empty($_POST["remember"])) {
                        setcookie("member_login", $username);
                    } else {
                        setcookie("member_login", '');
                    }
                    // this changes the cookie lang to the users database prefred lang
                    setcookie("lang", $result['lang'], time()+(3600 * 24 * 30));

                    // store values in session
                    $_SESSION['user_id'] = $result['user_id'];
                    $_SESSION['username'] = $result['username'];
                    $_SESSION['Team'] = $result['team'];
                    
                    echo "<script>window.location.href='dashboard';</script>";
                    exit;
                } else {
                    $error = $lang['PASSWORDINCORRECT'];
                }
            }
        } else {
            echo "<script>alert('Er ging iets fout bij het inloggen.');</script>";
        }
    }
?>

<div id="neoBlockContainer">
    <div class="neonBlock Content">
        <h1 class="blockTitle">{LOGIN}</h1>
        <form method="POST">
            <div class="error"><?php echo $error; ?></div>
            <input value="<?php if(isset($_COOKIE["member_login"])) { echo $_COOKIE["member_login"]; } ?>" type="text" name="username" placeholder="{USERNAME}" required>
            <input type="password" name="password" placeholder="{PASSWORD}" required>
            <label class="check">
                <input type="checkbox" name="remember" id="remember"
                <?php if(isset($_COOKIE["member_login"])) { ?> checked 
                <?php } ?> /> {REMEMBER_USERNAME}
            </label><br>
            <button class="inloggen" type="submit">{LOGIN}</button><br>
        </form>
    </div>
</div>