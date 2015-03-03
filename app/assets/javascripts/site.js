// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(remove_flash);

function remove_flash() {
	$("#flash-msg").delay(5000).slideUp();
 }
