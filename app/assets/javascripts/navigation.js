$(document).ready(function(){
  $('a.smooth-scroll').on('click', function(event) {
    event.preventDefault();
    $('html, body').animate({
      scrollTop: $($.attr(this, 'href')).offset().top-20
    }, 500);
  });
});
