if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
    var teamB = document.getElementById("switchB");
    var teamD = document.getElementById("switchD");
    var parentB = teamB.parentNode;
    var parentD = teamD.parentNode;

    parentB.insertBefore(teamB, parentB.firstChild);
    parentD.insertBefore(teamD, parentD.firstChild);
}