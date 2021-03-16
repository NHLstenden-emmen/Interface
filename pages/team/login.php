<?php
    $error = "";
    if (isset($_POST['email']) && isset($_POST['password'])) {

        $email = $_POST['email'];
        $pass = $_POST['password'];
        $loginInfo = $db->getTheUserPasswordForLogin($email);
        if ($loginInfo->num_rows === 0) { 
            $error = $lang['USERNOTFOUND'];
        }
        while ($result = $loginInfo->fetch_array(MYSQLI_ASSOC)){
            // this is a check if the password is correct
            if (password_verify($pass, $result['password'])) {
                // this is a checkbox check for the remember me check 
                if (!empty($_POST["remember"])) {
                    setcookie("member_login", $email);
                } else {
                    setcookie("member_login", '');
                }
                // this changes the cookie lang to the users database prefred lang
                setcookie("lang", $result['lang'], time()+(3600 * 24 * 30));

                // store values in session
                $_SESSION['email'] = $result['email'];
                $_SESSION['user_id'] = $result['user_id'];
                $_SESSION['Team'] = $result['Team'];
                
				echo "<script>window.location.href='home';</script>";
				exit;
            } else {
                $error = $lang['PASSWORDINCORRECT'];
            }
        }
    }
?>

<form method="POST">
	<input value="<?php if(isset($_COOKIE["member_login"])) { echo $_COOKIE["member_login"]; } ?>" type="text" name="email" placeholder="<?php echo $lang["E-MAIL"];?>" required>
	<input type="password" name="password" placeholder="<?php echo $lang["PASSWORD"];?>" required>
	<div class="error"><?php echo $error; ?></div>
	<label class="check">
		<input type="checkbox" name="remember" id="remember"
		<?php if(isset($_COOKIE["member_login"])) { ?> checked 
		<?php } ?> /><?php echo $lang["REMEMBER_EMAIL"];?>
	</label><br>
	<button class="inloggen" type="submit"><?php echo $lang["LOGIN"];?></button><br>
	<div class="vergeten">
		<a href="https://passwordreset.microsoftonline.com/?whr=nhlstenden.com" target=”_blank” class="vergeten-tekst"><?php echo $lang["FORGOT_YOUR_PASSWORD"];?> </a>
	</div>
</form>
