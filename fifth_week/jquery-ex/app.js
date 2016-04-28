var phrase = [
  'I like pie.',
  'Add some of your own phrases here.',
  'i want to see the world burns.'
];
// var value = $('input').attr('value');
// var value = $("#in").val();
$('button').on('click',function(){
  var random = phrase[Math.floor(phrase.length*Math.random())];
  $('.ph').html(random);
});

  $( "input" ).on('keypress',function(event) {
  // var value = $("input").val();
  if ( event.keyCode == 13 ) {
     event.preventDefault();
     phrase.push($("input").val());
  }
});
$('a').on('click',function(){
  // $('p').toggle();

  $('li').prepend(phrase);
  $('.newcont').toggle();


});
