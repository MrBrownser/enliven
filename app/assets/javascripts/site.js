// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function remove_flash() {
	$("#flash-msg").delay(5000).slideUp();
}

$(document).ready(function() {

	remove_flash();

	var $container2 = $('.best-projects-container').imagesLoaded( function() {
		$container2.isotope({
			// options
			itemSelector: '.one-project',
			animationEngine: 'best-available',
			resizable: false,
			masonry: {
				columnWidth: '.col-md-3',
				gutter: '.project-gutter'
			}
		});
	});
});