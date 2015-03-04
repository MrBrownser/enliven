// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() { 
  var $container = $('.media-container').imagesLoaded( function() {
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

  $("#picked-medium").on("click", function(event) {
      // PUT TO THE MODAL HEADER THE TITLE OF THE VIDEO
      // CHARGE THE VIDEO IN THE BODY
      console.log(event);
      // if medium.attr('typeofmedium') === 'photo'

      // end
      // video_link = $("#video-modal img").attr("link")
      // $("#embedded_video").append("<p><iframe src='" + video_link + "' width='410' height='270' frameborder='0'></iframe></p>");
      // embedthis = "<p><iframe width='410' height='270' src='//www.youtube.com/embed/8JMO-hxYRq4' frameborder='0' allowfullscreen></iframe></p>"
      
      // $("#embedded_media").children().remove();
      // $("#embedded_media").append(embedthis);
  });

});



// VIMEO --> <p><iframe src="//player.vimeo.com/video/1747316?title=0&byline=0&portrait=0" width="410" height="270" frameborder="0"></iframe></p>
// YOUTUBE --> <p><div class="video youtube"><iframe width="410" height="270" src="//www.youtube.com/embed/8JMO-hxYRq4" frameborder="0" allowfullscreen></iframe></div></p>
