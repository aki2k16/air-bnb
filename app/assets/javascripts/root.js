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
$(document).on('ready page:load',function(){
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

//ツールチップ
$(document).on('mouseover', "a:has(.ttpShow)", function(e){
  $('body').append('<div id="ttpPanel">' +
          $(this).children('.ttpShow').html() + '</div>');
  $('#ttpPanel').css({top:(e.pageY+10) + 'px',
                left:(e.pageX+10) + 'px'}).fadeIn('fast');
}).mousemove(function(e){
  $('#ttpPanel').css({top:(e.pageY+10) + 'px',
                left:(e.pageX+10) + 'px'});
}).mouseout(function(){
  $('#ttpPanel').remove();
});

//モーダルウィンドウ
var mdwBtn = $('.modalBtn'),
    overlayOpacity = 0.7,
    fadeTime = 500;

mdwBtn.on('click', function(e) {
  e.preventDefault();

  var setMdw = $(this),
      setHref = setMdw.attr('href'),
      setSource = $(setHref).html(),
      wdHeight = $(window).height();

      $('body').append('<div id="mdOve"')

})

//バリデーション
$(document).on('keydown keyup keypress change focus blur', ".required", function(e){
    if($(this).val() == ''){
      $(this).css({backgroundColor: '#ffcccc'});
    } else {
      $(this).css({backgroundColor: '#fff'});
    }
  }).change();
