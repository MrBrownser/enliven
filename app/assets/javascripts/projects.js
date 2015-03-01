// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var $container = $('#media-container');
// init
$container.isotope({
  // options
  itemSelector: '.media',
  layoutMode: 'fitRows'
});

var $container = $('#media-container').isotope({
  // main isotope options
  itemSelector: '.media',
  layoutMode: 'masonry',
  // options for masonry layout mode
  masonry: {
    columnWidth: '.grid-sizer'
  }
})