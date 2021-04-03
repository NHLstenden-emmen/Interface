const hideRob = () => {
setTimeout(
    function() {            
        $("#terrorRob").removeClass("showRob");
        $("#terrorRob").addClass("hideRob");
        removeRob();
    }, 5000);
}

const removeRob = () => {
setTimeout(
    function() {
        $("#terrorRob").removeClass("hideRob");
    }, 1000);
}

const readyBot1E = () => {
      $("#terrorRob").addClass("showRob");
      hideRob();
}