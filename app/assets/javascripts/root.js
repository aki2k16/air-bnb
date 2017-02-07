//自動スクロール
$(function (){
  var $window = $(window);

  $window.on('scroll', function (){
    if ($window.scrollTop() > 100 ) {
        $('#back-to-top').fadeIn('slow');
    }
  });

  $('button').click(function() {
    $('html,body').animate({scrollTop: 0}, 500, 'swing');
　});

//modal window
  //テキストリンクをクリックしたら
    $(document).on('click', '#log-in', function(){
      //body内の最後に<div id="modal-bg"></div>を挿入
      var modal = '<div id="modal-background"></div>'
        $("body").append(modal);

        //モーダルウィンドウを表示
        $("#modal-background").fadeIn("slow");
    });


});
