(function($) {
  $.extend($.prototype, {bouncyBouncy: function(newWidth, newHeight) {
    $(this).each(function() {
      var elem      = $(this),
          duration  = 600,
          easing    = 'easeOutBounce';

      var oldTop    = parseInt(elem.css('top')),
          oldLeft   = parseInt(elem.css('left')),
          oldWidth  = elem.css('width'),
          oldHeight = elem.css('height'),
          oldZindex = elem.css('z-index');

      if (isNaN(oldTop))  oldTop = 0;
      if (isNaN(oldLeft)) oldLeft = 0;

      if (typeof(newHeight) == "undefined") {
        newHeight = parseInt(oldHeight) * newWidth;
        newWidth  = parseInt(oldWidth) * newWidth;
      }

      elem.css({position: 'absolute'});

      var newTop    = oldTop - (newHeight / 3),
          newLeft   = oldLeft - (newWidth / 3);

      function front() {
        elem.css({zIndex: 1000});
      }

      function back() {
        elem.css({zIndex: oldZindex});
      }

      function bounceIn() {
        elem.stop();
        front();
        elem.animate({width:  newWidth + 'px', 
                      height: newHeight + 'px', 
                      top:    newTop + 'px', 
                      left:   newLeft + 'px'}, 
                      duration, easing);
      }

      function bounceOut() {
        elem.stop();
        elem.animate({width:  oldWidth, 
                      height: oldHeight, 
                      top:    oldTop, 
                      left:   oldLeft}, 
                      duration, easing, back);
      }

      elem.hover(bounceIn, bounceOut);
    });
  }});
})(jQuery);
