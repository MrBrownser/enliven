// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() { 
  var $container = $('.media-container').imagesLoaded( function() {
    console.log("All images loaded!");
    $container.isotope({
      // options
      itemSelector: '.medium',
      animationEngine: 'best-available',
      resizable: false,
      masonry: {
        columnWidth: '.medium',
        gutter: '.medium-gutter',
      }
    });
  });
  
  $("#video-modal").on("click", function(event) {
    console.log(event)
    // video_link = $("#video-modal img").attr("link")
    // $("#embedded_video").append("<p><iframe src='" + video_link + "' width='410' height='270' frameborder='0'></iframe></p>");
    embedthis = "<p><iframe width='410' height='270' src='//www.youtube.com/embed/8JMO-hxYRq4' frameborder='0' allowfullscreen></iframe></p>"
    $("#embedded_video").children().remove();
    $("#embedded_video").append(embedthis);
  });
  
});

// VIMEO --> <p><iframe src="//player.vimeo.com/video/1747316?title=0&byline=0&portrait=0" width="410" height="270" frameborder="0"></iframe></p>
// YOUTUBE --> <p><div class="video youtube"><iframe width="410" height="270" src="//www.youtube.com/embed/8JMO-hxYRq4" frameborder="0" allowfullscreen></iframe></div></p>
