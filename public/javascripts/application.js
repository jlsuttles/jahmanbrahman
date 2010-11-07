//http://github.com/nummi/JavaScript-Snippets
(function($) {
  // Adapted from Jonathan Snook
  $.fn.actAsSlideshow = function(options) {
    var opts = $.extend({}, $.fn.actAsSlideshow.defaults, options);

    return this.each(function() {
      var container = $(this);
      container.find('img:gt(0)').hide();
      setInterval(function(){
        container.find(':first-child').fadeOut()
                 .next('img').fadeIn(350)
                 .end().appendTo(container);
      }, opts.speed);
    });
  };

  $.fn.actAsSlideshow.defaults = { speed: 3500 };
	
	$(document).ready(function(){
		$('#slideshow').actAsSlideshow({ speed: 2000 });
		});	

})(jQuery);
