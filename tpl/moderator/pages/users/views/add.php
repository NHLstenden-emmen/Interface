<h1 class="title">Invite</h1>
<form id="editUser" method="POST">
    {updateError} <br>

    <label for="voorNaam">Voornaam: </label>
    <input type="text" id="voorNaam" name="voorNaam" placeholder="{VOORNAAM}" required>

    <label for="voorNaam">Achternaam: </label>
    <input type="text" name="achterNaam" placeholder="{ACHTERNAAM}" required>

    <label for="voorNaam">Email: </label>
    <input type="email" name="regEmail" placeholder="Emailadres" required>

    <button class="button" type="submit" name="submitAdd" required>{OPSLAAN}</button>
</form>
<style>
    .topPadding {
        padding: 0;
    }
</style>
