<script>

// // var authorizationBasic = $.base64.btoa(clientId + ':' + clientSecret);
// var authorizationBasic = window.btoa(clientId + ':' + clientSecret);

// var request = new XMLHttpRequest();
// request.open('POST', "http://robotv.serverict.nl/livedata", true);
// request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');
// request.setRequestHeader('Authorization', 'Basic ' + authorizationBasic);
// request.setRequestHeader('Accept', 'application/json');
// request.send("username=John&password=Smith&grant_type=password");

// request.onreadystatechange = function () {
//     if (request.readyState === 4) {
//        alert(request.responseText);
//     }
// };
var username = prompt("hoi");
var password = promt("test");

console.log(username, password);
</script>