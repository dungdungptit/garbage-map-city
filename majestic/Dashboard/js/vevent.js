var currentVehicle = 0;
var appe = $('.noti-drop');
appe.html("");
function displayNotification() {
	if ($("#count").css("visibility") == "visible") {
		$("#count").css({ "visibility": "hidden" });
	}
}
function updateVevent() {
	$.getJSON("/majestic/Dashboard/php/api/post/R_vevent.php", {},
		function (data) {
			if (currentVehicle == 0) {
				appe.html("");
			}
			if (currentVehicle < data.data.count) {
				let check = 0;
				var classList = $("#modals-notification").prop("classList");
				for (let i = 0; i < classList.length; i++) {
					if (classList[i] === 'show') {
						check = 1;
					}
				}
				if (check == 0) {
					$("#count").css({
						"visibility": "visible"
					});
				}
				for (let i = currentVehicle; i < data.data.count; i++) {
					if (data.data[i].id > currentVehicle) {
						appe.append(`<a class="dropdown-item">
								<div class="item-thumbnail">
									<div class="item-icon bg-warning">
										<i class="mdi mdi-truck mx-0"></i>
									</div>
								</div>
								<div class="item-content">
									<h6 class="font-weight-normal">Vehicle event</h6>
									<p class="font-weight-light small-text mb-0 text-muted">
										ID = ${data.data[i].id_vehicle}<br>
										${data.data[i].error_title}.
									</p>
								</div>
							</a>`);
					}
				}
			}
			currentVehicle = data.data.count;
		}
	);
}

setInterval(updateVevent, 1000);

var currentBin = 0;
function updateEventBin() {
	$.getJSON("/majestic/Dashboard/php/api/post/R_bevent.php", {},
		function (data) {
			// var appe = $('.noti-drop');
			if (data.data.count > currentBin) {
				let check = 0;
				var classList = $("#modals-notification").prop("classList");
				for (let i = 0; i < classList.length; i++) {
					if (classList[i] === 'show') {
						check = 1;
					}
				}
				if (check == 0) {
					$("#count").css({
						"visibility": "visible"
					});
				}
				for (let i = currentBin; i < data.data.count; i++) {
					if (data.data[i].id > currentBin) {
						appe.append(`<a class="dropdown-item">
							<div class="item-thumbnail">
								<div class="item-icon bg-warning">
									<i class="mdi mdi-truck mx-0"></i>
								</div>
							</div>
							<div class="item-content">
								<h6 class="font-weight-normal">Bin event</h6>
								<p class="font-weight-light small-text mb-0 text-muted">
									ID = ${data.data[i].id_bin}<br>
									${data.data[i].status}.
								</p>
							</div>
						</a>`);
					}
				}
			}
			currentBin = data.data.count;
		}
	);
}

setInterval(updateEventBin, 1000);
