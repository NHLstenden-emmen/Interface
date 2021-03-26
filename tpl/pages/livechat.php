<style>
* {
    margin: 0;
    padding: 0;
}

#liveChatView {
    margin-top: 150px;
    border: 1px black solid;
    width: 100%;
}

.container {
    width: 50vw;
    display: grid;
    margin: 2vw auto;
}

/* FEIKE */

ul {
    list-style: none;
    height: 400px;
    overflow-x: hidden;
    overflow-y: scroll;
}
 
li 
{
    height: 30px;
    background: #ccc;
    border-bottom: black 1px solid;
    text-align: right;
    padding-right: 15px;
}
  
</style>
<?php 

$is_logged_in = true; 
$username = "Remco";

?>

<meta name="color-scheme" content="dark light">

<div class="container">
    <ul id="chatMSG">
    </ul>
    <input onkeydown="typeMessage(this)" id="liveChatInput" placeholder="Tekst.." <?= ($is_logged_in/*userloggedinchec*/) ? "" : "disabled"; ?>>
    <button onclick="sendMessage()" <?= ($is_logged_in/*userloggedinchec*/) ? "" : "disabled"; ?>>Verstuur</button>
</div>

<script src="livechat.js"></script>
<script>

function typeMessage(ele) {
    if(event.key === 'Enter') 
    {
        sendMessage();        
    }
}
    launchLiveChat("<?= $username; ?>", "3");    
    scrollTableLoad();
</script>