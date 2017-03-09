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

//予約フォームの日付入力画面。
$(function(){
  $('.datepicker').datetimepicker({
    format : "YYYY/MM/DD",
    icons: {
      previous: "fa fa-arrow-left",
      next: "fa fa-arrow-right"
    }
  });
  $('.datetimepicker').datetimepicker({
    format : "YYYY/MM/DD HH:mm",
    icons: {
      time: "fa fa-clock-o",
      date: "fa fa-calendar",
      up: "fa fa-arrow-up",
      down: "fa fa-arrow-down",
      previous: "fa fa-arrow-left",
      next: "fa fa-arrow-right"
    }
  });
});
