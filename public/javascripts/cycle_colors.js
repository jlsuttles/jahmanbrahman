(function($) {

  $.fn.cycleColors = function(colorList, time) {
    if (typeof(time) == 'undefined') time = 5000;
    var elem = $(this);
    var color = 0;

    nextColor = function() {
      elem.animate({backgroundColor: colorList[color]}, time, null, nextColor);
      color = (color + 1) % colorList.length;
    }

    nextColor();
  };

	$(document).ready(function(){
		
    $('#colors').cycleColors(['#600', '#660', '#060', '#066', '#006', '#606']);
  
	});	

})(jQuery);
