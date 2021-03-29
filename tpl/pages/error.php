<div aria-live="polite" aria-atomic="true" style="position: relative; min-height: 200px">
	<!-- Position it -->
	<div style="position: absolute; top: 100px; right: 30px" id="hoi">
	</div>
</div>

<button onclick="javascript:hallo()">hoi</button>
<script>
	$(document).ready(function () {
		$(".toast").toast("show");
	});
	var i = 0;

	function hallo()
	{
		let Toast = document.createElement("div");
		Toast.setAttribute("role", "alert");
		Toast.setAttribute("aria-live", "assertive");
		Toast.setAttribute("aria-atomic", "true");
		Toast.setAttribute("class", "toast");
		Toast.setAttribute("data-autohide", "false");
		Toast.id = i++;

		let ToastImage = document.createElement("img");
		ToastImage.src = "{assetsFolder}/images/logo.png";


		let closeButton = document.createElement("button");
		closeButton.classList.add("ml-2", "mb-1", "close");
		closeButton.setAttribute("data-dismiss", "toast");
		closeButton.setAttribute("aria-label", "Close");

		let closeButtonSpan = document.createElement("span");
		closeButtonSpan.innerHTML = "&times;";
		closeButtonSpan.setAttribute("aria-hidden", "true");

		closeButton.appendChild(closeButtonSpan);

		let ToastHeader = document.createElement("div");
		ToastHeader.classList.add("toast-header");
		ToastHeader.appendChild(ToastImage);
		ToastHeader.appendChild(closeButton);

		let ToastBody = document.createElement("div");
		ToastBody.classList.add("toast-body");


		Toast.appendChild(ToastHeader);
		Toast.appendChild(ToastBody);


		document.querySelector("#hoi").appendChild(Toast);

		$('#' + Toast.id).toast('show');

		$('#' + Toast.id).on('hidden.bs.toast', function (e) {
			console.log(e.currentTarget.id);
		});
	}

</script>

<!-- <img src="..." class="rounded mr-2" alt="...">

<strong class="mr-auto">Bootstrap</strong>

<small class="text-muted">just now</small>

<button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
	
	<span aria-hidden="true">&times;</span>
	
</button> -->