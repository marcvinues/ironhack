$(document).on('ready', function(){

  $('#b1').on('click', function(){
    $('h1').fadeToggle();
    $('p').fadeToggle();
  });
  $('#b3').on('click', function(){
    $('p').addClass('unicorn_mode');

  });
});
