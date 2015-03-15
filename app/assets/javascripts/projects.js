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
        gutter: '.medium-gutter'
      }
    });
  });

  $('#media-modal').on('show.bs.modal', function (event) {
    var medium = $(event.relatedTarget).find("img"); // "a" element representing the medium
    var modal = $(this);

    if (medium.attr("typeofmedium") === 'photo') {
      modal.find('.modal-title').text(medium.attr("alt"));
      modal.find('.modal-body').append("<img alt='Image content' src='"+ medium.attr("link") + "' class='img-rounded'>");  
    } else {
      // Can't avoid warning message when embedding video, source:
      // https://code.google.com/p/google-cast-sdk/issues/detail?id=309
      embedthis = "<p><iframe width='600' height='372' src='" + medium.attr('link') + "' frameborder='0' allowfullscreen></iframe></p>";

      modal.find('.modal-title').text(medium.attr("alt"));
      modal.find('.modal-body').append(embedthis);
    }
    
  });

  $('#media-modal').on('hide.bs.modal', function (event) {
    var modal = $(this);

    modal.find('.modal-title').text("");
    modal.find('.modal-body').children().remove();        
  });
  

});



// VIMEO --> <p><iframe src="//player.vimeo.com/video/1747316?title=0&byline=0&portrait=0" width="410" height="270" frameborder="0"></iframe></p>
// YOUTUBE --> <p><div class="video youtube"><iframe width="410" height="270" src="//www.youtube.com/embed/8JMO-hxYRq4" frameborder="0" allowfullscreen></iframe></div></p>
