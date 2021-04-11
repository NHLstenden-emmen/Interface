<div class="container" data-aos="zoom-in-right">
    <div id="login">
        <h1 class="title">Login</h1>
    </div>
    <div class="neonBlock">
        {loginError}
        <form method="POST" id="loginForm" autocomplete="off">
            <input type="text" id="loginEmail" name="loginEmail" placeholder="{EMAIL}" required><br>
            <input type="password" id="loginPassword" name="loginPassword" placeholder="{PASSWORD}" required><br>
            <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response">
            <input type="hidden" name="action" value="login">
            <button class="button" name="loginSubmit" type="submit">Login</button>
            <a class="register" href="/register">{NO_ACCOUNT}</a>
            <a class="register" href="/resetpassword">{PASSWORD_RESET}</a>
        </form>
    </div>
</div>

<script>
    grecaptcha.ready(function() {
        grecaptcha.execute('6Lf47ZUaAAAAACWNEMMuL7uheIoWYWdKoJv93Re9', {action:'login'})
                  .then(function(token) {
            document.getElementById('g-recaptcha-response').value = token;
        });
    });
</script>