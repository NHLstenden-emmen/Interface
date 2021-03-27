<form method="post">{updateError}<br />
    <label>{VOORNAAM}: <input type="text" name="voorNaam" placeholder="{VOORNAAM}" value="{voornaam}" required></label><br />
    <label>{ACHTERNAAM}: <input type="text" name="achterNaam" placeholder="{ACHTERNAAM}" value="{achternaam}" required></label><br />
    <label>Email: <input type="email" name="regEmail" placeholder="Emailadres" value="{email}" required></label><br />
    <label>{WACHTWOORD}: <input type="password" name="regPass1" placeholder="{WACHTWOORD}" ></label><br />
    <label>{HERHAAL_WACHTWOORD}: <input type="password" name="regPass2" placeholder="{HERHAAL_WACHTWOORD}" ></label><br />
    <input type="hidden" value="{user_id}" name="gebruikerID">
    <label>Level: {rankResult} </label><br />
    <label>Team: {teamResult} </label><br />
        </select>
        <br />
        <br />
    <button class="button" type="submit" name="submitEdit" required>{OPSLAAN}</button>
</form>