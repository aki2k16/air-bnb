$(function (){
  var $window = $(window);

  $window.on('scroll', function (){
    if ($window.scrollTop() > 100 ) {
        $('#back-to-top').show();
    }
  });
});

$(function(){
  $('button').click(function() {
    $('html,body').animate({scrollTop: 0}, 500, 'swing');
　});
});
