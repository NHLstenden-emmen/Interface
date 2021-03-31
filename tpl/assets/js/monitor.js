initializeMonitor();

// Set user
var user = "Guest";
function setUser(Username) {
  user = Username;
}

function monitorAction() {
  var ua = navigator.userAgent;

  // Prevent spam
  let spamHistory = [];

  // Keyboard
  $(document).bind("keydown", function (e) {
    if (spamHistory.length > 9) {
      spamHistory.shift();
      spamHistory.push(e.keyCode);
    } else {
      spamHistory.push(e.keyCode);
    }

    if (
      spamHistory[0] == spamHistory[1] &&
      spamHistory[1] == spamHistory[2] &&
      spamHistory[2] == spamHistory[3] &&
      spamHistory[3] == spamHistory[4] &&
      spamHistory[4] == spamHistory[5] &&
      spamHistory[5] == spamHistory[6] &&
      spamHistory[6] == spamHistory[7] &&
      spamHistory[7] == spamHistory[8] &&
      spamHistory[8] == spamHistory[9]
    ) {
      spamHistory.shift();
      spamHistory.push(e.keyCode);
    } else {
      // Keyboard
      $(document).ready(function () {
        var screenSize =
          window.screen.width * window.devicePixelRatio +
          "x" +
          window.screen.height * window.devicePixelRatio;
        
        $.post("/tpl/includes/monitorActions.php", {
          user: user,
          keyInt: e.keyCode,
          type: "Keyboard",
          device: ua,
          screen: screenSize,
          keyChar: String.fromCharCode(e.keyCode),
          url: window.location.href,
        });
      });
    }
  });

  $(document).ready(function () {
    $(document).click(function (event) {
      var screenSize =
        window.screen.width * window.devicePixelRatio +
        "x" +
        window.screen.height * window.devicePixelRatio;

        jQuery.fn.tagName = function() {
          return this.prop("tagName");
        };

      var clickTag = $(event.target).tagName();
      var clickID = $(event.target).attr("id");
      var clickClass = $(event.target).attr("class");
      var clickText = $(event.target).text();
      var clickSrc = $(event.target).attr("src");

      console.log(clickSrc);

      // Tag
      if (clickTag == undefined || clickTag == "NaN") {
        clickTag = "";
      } else {
        clickTag = clickTag.trim();
      }

      // ID
      if (clickID == undefined || clickID == "NaN" || clickID == "") {
        clickID = "No ID";
      } else {
        clickID = clickID.trim();
      }

      // Class
      if (clickClass == undefined || clickClass == "NaN" || clickClass == "") {
        clickClass = "No class";
      } else {
        clickClass = clickClass.trim();
      }

      // Text
      if (clickText == undefined || clickText == "NaN" || clickText == "" ) {
        clickText = "{NO-TEXT}";
      } else {
        clickText = "{" + clickText.trim() + "}";
      }

      // Src
      if (clickSrc == undefined || clickSrc == "NaN" || clickSrc == "") {
        clickSrc = "No src";
      } else {
        clickSrc = clickSrc.trim();
      }
      

      // Value voor DB
      var clickValue =
        "<" +
        clickTag +
        ">\n." +
        clickClass +
        "\n#" +
        clickID +
        "\n" +
        clickText +
        "\n" + 
        clickSrc;

      $(document).ready(function () {
        $.post("/tpl/includes/monitorActions.php", {
          user: user,
          keyInt: "",
          clickValue: clickValue,
          device: ua,
          screen: screenSize,
          type: "Left mouse",
          keyChar: "",
          url: window.location.href,
        });
      });
    });
  });
}

// Get PHP errors
function saveErrorsToDatabase() {
  var logFile = new XMLHttpRequest();
  logFile.open("GET", "/config/php.log", false);
  logFile.onreadystatechange = function () {
    if (logFile.readyState === 4) {
      if (logFile.status === 200 || logFile.status == 0) {
        var allLogs = logFile.responseText;
        if (allLogs != "") {
          $(document).ready(function () {
            $.post("/tpl/includes/monitorActions.php", {
              logFile: allLogs,
            });
          });
        }
      }
    }
  };
  logFile.send(null);
}

var intervalId = window.setInterval(function () {
  saveErrorsToDatabase();
}, 5000);

function initializeMonitor() {
  var url = window.location.href;
  if (!url.includes("login")) {
    if (!url.includes("register")) {
      monitorAction();
    }
  }
}
