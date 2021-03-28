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
            <input type="password" name="regPass1" placeholder="{_WACHTWOORD}" required><br />
            <input type="password" name="regPass2" placeholder="{HERHAAL_WACHTWOORD}" required><br />
            <button class="button" name="regSubmit" type="submit">{REGISTER}</button>
        </form>
    </div>
</div>