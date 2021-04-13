const toastHolder = document.getElementById("placeToast");


const generatePollButtons = (drawing, buttons) => {
    let buttonList = `<div class="mt-2 pt-2 border-top" style="border-top: 1px solid var(--sendHoverColor) !important"></div>
                        <div class="toast-button-holder">`;

    let onclick = drawing == true ? `sendDrawingPoll(this);` : `sendRegularPoll(this);`;
    const botOption = Object.keys(buttons)[0];

    buttons[botOption].forEach((element, index) => {
            buttonList += `<button data-option="`+botOption+`" data-stars="`+ parseInt(index+1) +`" type="button" class="button poll" onclick="`+onclick+`" data-dismiss="toast">`+element+`</button>`;
    });

    $('.poll').on('click', (e) => {
        console.log(e.currentTarget.parentElement.parentElement);
        e.currentTarget.parentElement.parentElement.style.opacity = "0";
    });
    buttonList += `</div>`;
    return buttonList;
}

const showPollToast = (id, drawing, message, buttons) => {
    buttons = generatePollButtons(drawing, buttons);
    let Toast = document.createElement("div");

    let toastClass = drawing == true ? `drawingpoll` : `regularpoll`;

    Toast.innerHTML = `<div id="`+id+`" class="`+toastClass+` toast closetoast" role="alert" aria-live="assertive" aria-atomic="true" data-autohide='false'>
                          <div class="toast-header">
                            <img src="/tpl/assets/images/server.png" class="rounded mr-2" alt="Server">
                            <strong class="mr-auto">Server</strong>
                            <small class="text-muted">`+ new Date().toLocaleTimeString("nl-NL") +`</small>
                            <div type="button" class="ml-2 mb-1 close poll" aria-label="Close" data-dismiss="toast"->
                              <span aria-hidden="true">&times;</span>
                            </div>
                          </div>
                          <div class="toast-body">
                            <span>`+ message +`</span>
                            `+ buttons  +`
                          </div>
                        </div>`;

    toastHolder.appendChild(Toast);

    $(`#${id}`).toast('show').on('hidden.bs.toast', (e) => {
        setTimeout(() => deleteToast(e.currentTarget.parentElement), 300);
    });
}

const showToast = (id, message, duration = undefined) => {
    let Toast = document.createElement("div");
    let autoHide = duration != undefined ? `data-autohide='true' data-delay='`+ (duration * 1000) +`'` : `data-autohide='false'`;

    Toast.innerHTML = `<div id="`+id+`" class="toast" role="alert" aria-live="assertive" aria-atomic="true" `+autoHide+`>
                          <div class="toast-header">
                            <img src="" class="rounded mr-2" alt="...">
                            <strong class="mr-auto">Bootstrap</strong>
                            <small class="text-muted">11 mins ago</small>
                            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="toast-body">
                            `+ message +`
                          </div>
                        </div>`;

    toastHolder.appendChild(Toast);

    $("#" +id).toast("show").on('hidden.bs.toast', (e) => {
        setTimeout(() => deleteToast(e.currentTarget.parentElement), 300);
    });
}

const showReadyToast = (id, message, bot, game, duration = undefined) => {
    let Toast = document.createElement("div");
    let autoHide = duration != undefined ? `data-autohide='true' data-delay='`+ (duration * 1000) +`'` : `data-autohide='false'`;

    Toast.innerHTML = `<div id="`+id+`" class="toast" role="alert" aria-live="assertive" aria-atomic="true" `+autoHide+`>
                          <div class="toast-header">
                            <img src="" class="rounded mr-2" alt="...">
                            <strong class="mr-auto">Bootstrap</strong>
                            <small class="text-muted">11 mins ago</small>
                            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="toast-body">
                            `+ message +`
                          </div>
                        </div>`;

    toastHolder.appendChild(Toast);

    $("#" +id).toast("show").on('hidden.bs.toast', (e) => {
        setTimeout(() => deleteToast(e.currentTarget.parentElement), 300);
    });
}

const showResultToast = (id, message, game, duration = undefined) => {
    let Toast = document.createElement("div");
    let autoHide = duration != undefined ? `data-autohide='true' data-delay='`+ (duration * 1000) +`'` : `data-autohide='false'`;

    Toast.innerHTML = `<div id="`+id+`" class="toast" role="alert" aria-live="assertive" aria-atomic="true" `+autoHide+`>
                          <div class="toast-header">
                            <img src="" class="rounded mr-2" alt="...">
                            <strong class="mr-auto">Bootstrap</strong>
                            <small class="text-muted">11 mins ago</small>
                            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="toast-body">
                            `+ message +`
                            <button class="button poll link" data-link="/bracket"><i class="fas fa-trophy"></i> Brackets</button>
                          </div>
                        </div>`;

    toastHolder.appendChild(Toast);

    $("#" +id).toast("show").on('hidden.bs.toast', (e) => {
        setTimeout(() => deleteToast(e.currentTarget.parentElement), 300);
    });
}


const deleteToast = (element) => {
   element.remove();
};