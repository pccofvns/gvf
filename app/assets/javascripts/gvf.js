$(window).load(function() {
    var boxheight = $('#newsCarousel .carousel-inner').innerHeight();
    var itemlength = $('#newsCarousel .item').length;
    var triggerheight = Math.round(boxheight/itemlength+1);
	$('#newsCarousel .list-group-item').outerHeight(triggerheight);
});
$(document).ready(function() {
  $('#homeCarousel').carousel({
    interval: 10000
  });
  $('.dropdown-toggle').dropdown();

  	var clickEvent = false;
	$('#newsCarousel').carousel({
		interval:   4000	
	}).on('click', '.list-group li', function() {
			clickEvent = true;
			$('.list-group li').removeClass('active');
			$(this).addClass('active');		
	}).on('slid.bs.carousel', function(e) {
		if(!clickEvent) {
			var count = $('.list-group').children().length -1;
			var current = $('.list-group li.active');
			current.removeClass('active').next().addClass('active');
			var id = parseInt(current.data('slide-to'));
			if(count == id) {
				$('.list-group li').first().addClass('active');	
			}
		}
		clickEvent = false;
	});

});