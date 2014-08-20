$(document).ready(function(){

  $('.next-arrow').hide();

  $('div.learn-more').hover(showNextArrow, hideNextArrow);


});


function showNextArrow() {
  $this = $(this);
  $(this).find('img.next-arrow').first().fadeIn(200);
}

function hideNextArrow() {
  $this = $(this);
  $(this).find('img.next-arrow').first().fadeOut(200);
}
