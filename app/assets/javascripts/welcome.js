$(document).ready(function(){

  $('#map3d').addClass('invisible');

  $('.destination').on('click', showEarth);

});

function showEarth() {
  $this = $(this);
  var places = $('.destination');
  var clicked_id = $this.attr('href').split('/')[2];

  for(var i = 0; i < places.length; i++) {
    var place = $(places[i]);
    var place_id = place.attr('href').split('/')[2];
    if ( place_id != clicked_id) {
      place.fadeOut(500);
      $('#map3d').delay(400).fadeTo(500, 1, function(){
        $this.delay(1000).fadeOut(500);
        // console.log($this);
      });
    }
  }
}



// function showNextArrow() {
//   $this = $(this);
//   $(this).find('img.next-arrow').first().fadeIn(200);
// }

// function hideNextArrow() {
//   $this = $(this);
//   $(this).find('img.next-arrow').first().fadeOut(200);
// }
