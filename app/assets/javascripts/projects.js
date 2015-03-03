// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  var $container = $('.media-container');

  $container.isotope({
    itemSelector: '.medium',
    animationEngine: 'best-available',
    resizable: false,
    masonry: { columnWidth: $container.width() / 4 }
  });

  $(window).smartresize(function(){
    $container.isotope({
      // update columnWidth to a percentage of container width
      masonry: { columnWidth: $container.width() / 4 }
    });
  });

  $(window).smartresize();
    
// $(function () {

  // Usar image loaded --> Mirar el USAGE del imagesLoaded

// initialize Isotope
// var $container = $('.media-container').isotope({

//     // main isotope options
//     itemSelector: '.medium',
//     layoutMode: 'masonry',
//     // options for masonry layout mode
//     masonry: {
//       columnWidth: '.medium',
//       gutter: '.medium-gutter'
//     }
// });

// // layout Isotope again after all images have loaded
// $container.imagesLoaded( function() {
//   console.log("Images loaded!");
//   $container.isotope('layout');
// });


// var $container = $('.media-container').imagesLoaded( function() {
//   $container.isotope({
//     // main isotope options
//     itemSelector: '.medium',
//     layoutMode: 'masonry',
//     // options for masonry layout mode
//     masonry: {
//       columnWidth: '.medium',
//       gutter: '.medium-gutter'
//     }
//   });
// });


// This one was working for the 2nd time we charge the page
  // $('.media-container').isotope({
  //   // main isotope options
  //   itemSelector: '.medium',
  //   layoutMode: 'masonry',
  //   // options for masonry layout mode
  //   masonry: {
  //     columnWidth: '.medium',
  //     gutter: '.medium-gutter'
  //   }
  // });

  $("#video-modal").on("click", function(event) {
    console.log(event)
    // video_link = $("#video-modal img").attr("link")
    // $("#embedded_video").append("<p><iframe src='" + video_link + "' width='410' height='270' frameborder='0'></iframe></p>");
    embedthis = "<p><iframe width='410' height='270' src='//www.youtube.com/embed/8JMO-hxYRq4' frameborder='0' allowfullscreen></iframe></p>"
    $("#embedded_video").children().remove();
    $("#embedded_video").append(embedthis);
  })

// VIMEO --> <p><iframe src="//player.vimeo.com/video/1747316?title=0&byline=0&portrait=0" width="410" height="270" frameborder="0"></iframe></p>
// YOUTUBE --> <p><div class="video youtube"><iframe width="410" height="270" src="//www.youtube.com/embed/8JMO-hxYRq4" frameborder="0" allowfullscreen></iframe></div></p>


});