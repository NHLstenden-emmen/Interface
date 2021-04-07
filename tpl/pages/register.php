<div class="container">
    <div id="login">
        <h1 class="title">{REGISTER}</h1>
    </div>
    <div class="neonBlock">
        {regError}
        <form method="post" autocomplete="off">
            <br />
            <input type="text" name="voorNaam" placeholder="{VOORNAAM}" required><br />
            <input type="text" name="achterNaam" placeholder="{ACHTERNAAM}" required><br />
            <input type="email" name="regEmail" placeholder="{EMAIL}" required><br />
            <input type="password" name="regPass1" placeholder="{WACHTWOORD}" required><br />
            <input type="password" name="regPass2" placeholder="{HERHAAL_WACHTWOORD}" required><br />
			<input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response">
            <button class="button" name="regSubmit" type="submit">{REGISTER}</button>
        </form>
    </div>
</div>

<script>
    grecaptcha.ready(function() {
    // do request for recaptcha token
    // response is promise with passed token
        grecaptcha.execute('6Lf47ZUaAAAAACWNEMMuL7uheIoWYWdKoJv93Re9', {action:'register'})
                  .then(function(token) {
            // add token value to form
            document.getElementById('g-recaptcha-response').value = token;
        });
    });
</script>