<div aria-live="polite" aria-atomic="true" style="position: relative; min-height: 200px">
	<!-- Position it -->
	<div style="position: absolute; top: 0px; right: 30px" id="placeToast">
	</div>
</div>
<button onclick="javascript:Toast('TITEL', 'hallo')">place toast</button>

<script>

	var i = 0;
	var optionsList = { name: "John", age: 31, city: "New York" };

	function Toast(title, message, buttons = optionsList)
	{
		var current = new Date();

		let Toast = document.createElement("div");
		Toast.setAttribute("role", "alert");
		Toast.setAttribute("aria-live", "assertive");
		Toast.setAttribute("aria-atomic", "true");
		Toast.setAttribute("class", "toast");
		Toast.setAttribute("data-autohide", "false");
		Toast.id = i++;
		// logo of the toast
		let ToastImage = document.createElement("img");
		ToastImage.src = "{assetsFolder}/images/server.png";
		ToastImage.classList.add("rounded", "mr-2")
		ToastImage.alt = "Toast logo";
		
		// Title of the toast
		let ToastStrong = document.createElement("strong");
		ToastStrong.innerHTML = title;

		// save the time it was created at
		let ToastSmall = document.createElement("small");
		ToastSmall.classList.add("text-muted")
		ToastSmall.innerHTML = current.toLocaleTimeString('nl-NL');

		// button
		let closeButton = document.createElement("button");
		closeButton.classList.add("ml-2", "mb-1", "close");
		closeButton.setAttribute("data-dismiss", "toast");
		closeButton.setAttribute("aria-label", "Close");

		// span of the button
		let closeButtonSpan = document.createElement("span");
		closeButtonSpan.innerHTML = "&times;";
		closeButtonSpan.setAttribute("aria-hidden", "true");

		closeButton.appendChild(closeButtonSpan);

		let ToastHeader = document.createElement("div");
		ToastHeader.classList.add("toast-header");

		let ToastBody = document.createElement("div");
		ToastBody.classList.add("toast-body");
		// check if a button is needed in the toast

		if(buttons != null) {
			//buttons.
			for(var option in buttons) {
				var buttonElement = document.createElement("button");
				buttonElement.innerHTML = optionsList[option];
				buttonElement.setAttribute("onclick", "javascript:sendPoll('"+optionsList[option]+"')");
				ToastBody.appendChild(buttonElement);
    		}

		} else {
			ToastBody.appendChild(document.createTextNode(message));
		}

		// append the childs (the content) to the Toast
		ToastHeader.appendChild(ToastImage);
		ToastHeader.appendChild(ToastStrong);
		ToastHeader.appendChild(ToastSmall);
		ToastHeader.appendChild(closeButton);

		Toast.appendChild(ToastHeader);
		Toast.appendChild(ToastBody);

		// find the placeToast id and appendChild Toast to it
		document.querySelector("#placeToast").appendChild(Toast);
		// show the toast with the settings
		$('#' + Toast.id).toast('show');
		$('#' + Toast.id).on('hidden.bs.toast', function (e) {
			console.log(e.currentTarget.id);
		});
	}

</script>