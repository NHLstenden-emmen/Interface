<h1 class="title">Bewerk gebruiker</h1>
<form id="editUser" method="POST">
    {updateError} <br>

    <label for="voorNaam">Voornaam: </label>
    <input type="text" id="voorNaam" name="voorNaam" placeholder="{VOORNAAM}" value="{firstName}" required>

    <label for="voorNaam">Achternaam: </label>
    <input type="text" name="achterNaam" placeholder="{ACHTERNAAM}" value="{lastName}" required>
    
    <label for="voorNaam">Email: </label>
    <input type="email" name="regEmail" placeholder="Emailadres" value="{Email}" required>

    <label for="levelSelect">Level:</label>
    {rankResult}
    <label for="teamSelect">Team: </label>
    {teamResult}
    <input type="hidden" value="{userID}" name="gebruikerID">

    <button type="submit" name="submitEdit" required>{OPSLAAN}</button>

    <form method="post">
        <input type="hidden" value="{userID}" name="gebruikerID">
        <button type="submit" name="pwReset" {disabled}>{WACHTWOORD_RESET}</button>
    </form>
</form>
<style>
    .topPadding {
        padding: 0;
    }
</style>