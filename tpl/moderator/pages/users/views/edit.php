<h1 class="title">Bewerk gebruiker</h1>
<form id="editUser" method="POST">
    {updateError} <br>

    <label for="voorNaam">Voornaam: </label>
    <input type="text" id="voorNaam" name="voorNaam" placeholder="{VOORNAAM}" value="{voornaam}" required>

    <label for="voorNaam">Achternaam: </label>
    <input type="text" name="achterNaam" placeholder="{ACHTERNAAM}" value="{achternaam}" required>
    
    <label for="voorNaam">Email: </label>
    <input type="email" name="regEmail" placeholder="Emailadres" value="{email}" required>

    <label for="voorNaam">Wachtwoord: (niet verplicht veld)</label>
    <input type="password" name="regPass1" placeholder="{WACHTWOORD}">
    
    <label for="voorNaam">Herhaal wachtwoord: (niet verplicht veld)</label>
    <input type="password" name="regPass2" placeholder="{HERHAAL_WACHTWOORD}" >
    
    <label for="levelSelect">Level:</label>
    {rankResult}
    <label for="teamSelect">Team: </label>
    {teamResult}
    <input type="hidden" value="{user_id}" name="gebruikerID">

    <button class="button" type="submit" name="submitEdit" required>{OPSLAAN}</button>
</form>
<style>
    .topPadding {
        padding: 0;}
</style>