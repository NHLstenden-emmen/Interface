<div class="container">
    <div id="login">
        <h1 class="title">Login</h1>
    </div>
    <div class="neonBlock">
        {loginError}
        <form method="POST" autocomplete="off">
            <input type="text" name="loginEmail" placeholder="{EMAIL}" required><br>
            <input type="password" name="loginPassword" placeholder="{PASSWORD}" required><br>
            <button class="button" name="loginSubmit" type="submit">Login</button>            
            <a class="register" href="/register">{NO_ACCOUNT}</a>
        </form>
    </div>
</div>